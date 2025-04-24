#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_directio.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_x_stream_cap_bc;
static AESL_RUNTIME_BC __xlx_x_stream_V_size_Reader("../tv/stream_size/stream_size_in_x_stream.dat");
unsigned int ap_apatb_y_stream_cap_bc;
static AESL_RUNTIME_BC __xlx_y_stream_V_size_Reader("../tv/stream_size/stream_size_in_y_stream.dat");
unsigned int ap_apatb_z_stream_cap_bc;
static AESL_RUNTIME_BC __xlx_z_stream_V_size_Reader("../tv/stream_size/stream_size_in_z_stream.dat");
unsigned int ap_apatb_t_stream_cap_bc;
static AESL_RUNTIME_BC __xlx_t_stream_V_size_Reader("../tv/stream_size/stream_size_in_t_stream.dat");
unsigned int ap_apatb_scalar_stream_cap_bc;
static AESL_RUNTIME_BC __xlx_scalar_stream_V_size_Reader("../tv/stream_size/stream_size_in_scalar_stream.dat");
unsigned int ap_apatb_out_stream_cap_bc;
static AESL_RUNTIME_BC __xlx_out_stream_V_size_Reader("../tv/stream_size/stream_size_out_out_stream.dat");
using hls::sim::Byte;
struct __cosim_s32__ { char data[32]; };
struct __cosim_s128__ { char data[128]; };
extern "C" void pippenger_control(__cosim_s32__*, __cosim_s32__*, __cosim_s32__*, __cosim_s32__*, __cosim_s32__*, __cosim_s128__*);
extern "C" void apatb_pippenger_control_hw(volatile void * __xlx_apatb_param_x_stream, volatile void * __xlx_apatb_param_y_stream, volatile void * __xlx_apatb_param_z_stream, volatile void * __xlx_apatb_param_t_stream, volatile void * __xlx_apatb_param_scalar_stream, volatile void * __xlx_apatb_param_out_stream) {
using hls::sim::createStream;
auto* sx_stream = createStream((hls::stream<__cosim_s32__>*)__xlx_apatb_param_x_stream);
auto* sy_stream = createStream((hls::stream<__cosim_s32__>*)__xlx_apatb_param_y_stream);
auto* sz_stream = createStream((hls::stream<__cosim_s32__>*)__xlx_apatb_param_z_stream);
auto* st_stream = createStream((hls::stream<__cosim_s32__>*)__xlx_apatb_param_t_stream);
auto* sscalar_stream = createStream((hls::stream<__cosim_s32__>*)__xlx_apatb_param_scalar_stream);
  //Create input buffer for out_stream
  ap_apatb_out_stream_cap_bc = __xlx_out_stream_V_size_Reader.read_size();
  __cosim_s128__* __xlx_out_stream_input_buffer= new __cosim_s128__[ap_apatb_out_stream_cap_bc];
auto* sout_stream = createStream((hls::stream<__cosim_s128__>*)__xlx_apatb_param_out_stream);
  // DUT call
  pippenger_control(sx_stream->data<__cosim_s32__>(), sy_stream->data<__cosim_s32__>(), sz_stream->data<__cosim_s32__>(), st_stream->data<__cosim_s32__>(), sscalar_stream->data<__cosim_s32__>(), sout_stream->data<__cosim_s128__>());
sx_stream->transfer((hls::stream<__cosim_s32__>*)__xlx_apatb_param_x_stream);
sy_stream->transfer((hls::stream<__cosim_s32__>*)__xlx_apatb_param_y_stream);
sz_stream->transfer((hls::stream<__cosim_s32__>*)__xlx_apatb_param_z_stream);
st_stream->transfer((hls::stream<__cosim_s32__>*)__xlx_apatb_param_t_stream);
sscalar_stream->transfer((hls::stream<__cosim_s32__>*)__xlx_apatb_param_scalar_stream);
sout_stream->transfer((hls::stream<__cosim_s128__>*)__xlx_apatb_param_out_stream);
}
