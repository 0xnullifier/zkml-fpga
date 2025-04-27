#include <ap_int.h>
#include <hls_stream.h>

#define T 3
#define RF 8
#define RP 57

typedef ap_int<256> element;

const ap_ufixed<256, 256> base_field = "21888242871839275222246405745257275088548364400416034343698204186575808495617";

extern "C"
{
    void poseidon_hash(
        const ap_uint<256> *input,
        ap_uint<256> *output,
        int num_blocks)
    {
#pragma HLS interface m_axi port = input offset = slave bundle = gmem0
#pragma HLS interface m_axi port = output offset = slave bundle = gmem1
#pragma HLS interface s_axilite port = num_blocks bundle = control
#pragma HLS interface s_axilite port = return bundle = control
        element p = (element)base_field;

        ap_uint<256> rc[(RF + RP) * T];
        ap_uint<256> mds[T][T];

    block_loop:
        for (int blk = 0; blk < num_blocks; ++blk)
        {
#pragma HLS pipeline II = 1
            ap_uint<256> state[T];
            for (int i = 0; i < T - 1; ++i)
            {
                state[i] = input[blk * (T - 1) + i];
            }
            state[T - 1] = 0;

        round_loop:
            for (int r = 0; r < RF + RP; ++r)
            {
                for (int i = 0; i < T; ++i)
                {
#pragma HLS unroll
                    ap_uint<256> tmp = state[i] + rc[r * T + i];
                    state[i] = (tmp >= p) ? (element)(tmp - p) : (element)tmp;
                }
                if (r < RF / 2 || r >= RF / 2 + RP)
                {
                    for (int i = 0; i < T; ++i)
                    {
#pragma HLS unroll
                        ap_uint<256> x2 = (state[i] * state[i]) % p;
                        ap_uint<256> x4 = (x2 * x2) % p;
                        state[i] = (x4 * state[i]) % p;
                    }
                }
                else
                {
                    ap_uint<256> x2 = (state[0] * state[0]) % p;
                    ap_uint<256> x4 = (x2 * x2) % p;
                    state[0] = (x4 * state[0]) % p;
                }
                ap_uint<256> tmp_state[T];
                for (int i = 0; i < T; ++i)
                {
#pragma HLS unroll
                    ap_uint<256> acc = 0;
                    for (int j = 0; j < T; ++j)
                    {
#pragma HLS unroll
                        acc += state[j] * mds[i][j];
                    }
                    tmp_state[i] = acc % p;
                }
                for (int i = 0; i < T; ++i)
                {
#pragma HLS unroll
                    state[i] = tmp_state[i];
                }
            }
            output[blk] = state[0];
        }
    }
}
