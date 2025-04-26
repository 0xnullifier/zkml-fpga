#ifndef _ARITHMETIC_H_
#define _ARITHMETIC_H_

#include <ap_int.h>
#define _2_6 64
#define _2_12 4096
#define _2_18 262144
#define _2_24 16777216

typedef ap_uint<160> u160;
typedef ap_uint<128> u128;
typedef ap_uint<96> u96;
typedef ap_uint<65> u65;
typedef ap_uint<64> u64;
typedef ap_uint<33> u33;
typedef ap_uint<32> u32;
typedef ap_uint<6> u6;
typedef ap_uint<2> u2;

const u32 EPSILON = u32((1ull << 32) - 1);
const u64 MODULUS = u64(0xFFFFFFFF00000001);

u64 add(u64 left, u64 right);
u64 sub(u64 left, u64 right);
u64 mult(u64 left, u64 right);
void gs_butterfly(u64 *out_even, u64 *out_odd, u64 *in_even, u64 *in_odd, int exp);
#endif

#ifndef _NTT_H_
#define _NTT_H_
#include <hls_vector.h>
#include <hls_stream.h>
#include "omega.hpp"

typedef hls::vector<u64, 64> v64u64;
typedef hls::vector<u64, 4> v4u64;

v64u64 ntt_2_6(v64u64 in);

void ntt_2_12_dataflow(hls::stream<v64u64> &out, hls::stream<v64u64> &in);
void ntt_2_12_serial(hls::stream<v64u64> &out, hls::stream<v64u64> &in);

v64u64 xor_permute_spatial(v64u64 in, ap_uint<6> offset);

extern "C"
{
    void ntt_2_24(u64 *out0, u64 *out1, u64 *out2, u64 *out3, u64 *out4, u64 *out5, u64 *out6, u64 *out7, u64 *out8, u64 *out9, u64 *out10, u64 *out11, u64 *out12, u64 *out13, u64 *out14, u64 *out15, u64 *in0, u64 *in1, u64 *in2, u64 *in3, u64 *in4, u64 *in5, u64 *in6, u64 *in7, u64 *in8, u64 *in9, u64 *in10, u64 *in11, u64 *in12, u64 *in13, u64 *in14, u64 *in15);
}
#endif