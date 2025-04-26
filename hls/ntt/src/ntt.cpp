#include "ntt.hpp"
#include <iostream>

// Modular addition of two 64-bit values
u64 add(u64 a, u64 b)
{
#pragma HLS inline

    u65 result = a + b;

    bool overflow = result.get_bit(64);
    result.set_bit(64, false);
    if (overflow)
    {
        result = result + EPSILON;
    }

    return result.range(63, 0);
}

// Reduce a large value to the field modulus
template <int WIDTH>
u64 reduce(ap_uint<WIDTH> input)
{
#pragma HLS inline

    u32 e = (WIDTH > 128) ? input.range(159, 128) : 0;
    u32 a = (WIDTH > 96) ? input.range(127, 96) : 0;
    u32 b = input.range(95, 64);
    u32 c = input.range(63, 32);
    u32 d = input.range(31, 0);

    u2 dab_sign, bc_sign, sign;
    u32 dab, bc;
    u64 result;

    u33 ab_sum = a + b;
    (dab_sign, dab) = d - ab_sum;
    sign[1] = (dab_sign[1] & ~dab_sign[0]);
    sign[0] = (dab_sign[1] & dab_sign[0]);
    (bc_sign, bc) = b + c - e - sign;

    if (bc_sign[0])
    {
        if (bc_sign[1])
            result = (bc, dab) - EPSILON;
        else
            result = (bc, dab) + EPSILON;
    }
    else
    {
        result = (bc, dab);
    }

    return result;
}

template <class T>
u64 multiply_by_twiddle(T value, int exponent)
{
#pragma HLS function_instantiate variable = exponent
#pragma HLS inline recursive

    // Choose appropriate width based on exponent size
    if (exponent > 21)
    {
        u160 shifted = ((u160)value) << (3 * exponent);
        return reduce(shifted);
    }
    else if (exponent > 10)
    {
        u128 shifted = ((u128)value) << (3 * exponent);
        return reduce(shifted);
    }
    else
    {
        u96 shifted = ((u96)value) << (3 * exponent);
        return reduce(shifted);
    }
}

// Modular multiplication
u64 multiply(u64 a, u64 b)
{
#pragma HLS inline recursive

    u128 product = a * b;
    return reduce(product);
}

void butterfly_gs(u64 *even_out, u64 *odd_out, u64 *even_in, u64 *odd_in, int twiddle_exp)
{
#pragma HLS function_instantiate variable = twiddle_exp
#pragma HLS inline recursive

    u64 sum = add(*even_in, *odd_in);

    u65 diff = (u65)(*even_in) - (u65)(*odd_in) + (u65)MODULUS;

    *even_out = sum;
    *odd_out = multiply_by_twiddle<u65>(diff, twiddle_exp);
}

// Process one stage of the NTT for size 64
v64u64 process_ntt_stage(v64u64 input, int stage_num)
{
#pragma HLS function_instantiate variable = stage_num
    const int SIZE = 64;
    int stride = (SIZE >> (stage_num + 1));
    int twiddle_step = 1 << stage_num;
    v64u64 output;

stage_loop:
    for (size_t i = 0; i < SIZE / 2; i++)
    {
#pragma HLS unroll
        // Calculate indices for butterfly operation
        int even_idx = (i % stride) + (i / stride) * 2 * stride;
        int odd_idx = even_idx + stride;
        int twiddle_exp = (i % stride) * twiddle_step;

        // For the last stage, bit-reverse the output indices
        if (stage_num == 5)
        {
            // Apply bit-reversal permutation on final stage
            butterfly_gs(&output[((ap_uint<6>)even_idx).reverse()],
                         &output[((ap_uint<6>)odd_idx).reverse()],
                         &input[even_idx],
                         &input[odd_idx],
                         twiddle_exp);
        }
        else
        {
            butterfly_gs(&output[even_idx],
                         &output[odd_idx],
                         &input[even_idx],
                         &input[odd_idx],
                         twiddle_exp);
        }
    }

    return output;
}

// NTT for size 2^6 (64)
v64u64 ntt_size_64(v64u64 input)
{
    const int STAGES = 6; // log2(64)
    v64u64 stage_data[STAGES + 1];
#pragma HLS array_partition variable = stage_data type = complete dim = 0
#pragma HLS pipeline II = 1

    stage_data[0] = input;

ntt_stages:
    for (size_t stage = 0; stage < STAGES; stage++)
    {
#pragma HLS unroll
        stage_data[stage + 1] = process_ntt_stage(stage_data[stage], stage);
    }

    return stage_data[STAGES];
}

// XOR permutation (used for efficient transpose operation)
v64u64 xor_permute(v64u64 input, ap_uint<6> offset)
{
    const int STAGES = 6; // log2(64)
    v64u64 stage_data[STAGES + 1];
#pragma HLS array_partition variable = stage_data type = complete dim = 0
#pragma HLS pipeline II = 1

    stage_data[0] = input;

permute_stages:
    for (size_t i = 0; i < STAGES; i++)
    {
        for (size_t j = 0; j < 64; j++)
        {
            // Apply XOR operation conditionally based on offset bit
            stage_data[i + 1][j] = stage_data[i][offset[i] ? j ^ (1 << i) : j];
        }
    }

    return stage_data[STAGES];
}

// Apply spatial permutation to 64x64 data blocks
void spatial_permute_64x64(hls::stream<v64u64> &output, hls::stream<v64u64> &input)
{
    for (size_t i = 0; i < 64; i++)
    {
#pragma HLS pipeline rewind
        output << xor_permute(input.read(), i);
    }
}

// Apply temporal permutation to 64x64 data blocks
void temporal_permute_64x64(hls::stream<v64u64> &output, hls::stream<v64u64> &input)
{
    u64 buffer[64][64];
#pragma HLS array_partition variable = buffer type = complete dim = 2
#pragma HLS dataflow

    // Read input data into buffer
    for (size_t i = 0; i < 64; i++)
    {
#pragma HLS pipeline rewind
        v64u64 vec = input.read();

        for (size_t j = 0; j < 64; j++)
        {
#pragma HLS unroll
            buffer[i][j] = vec[j];
        }
    }

    // Process and write output with permutation
    for (size_t i = 0; i < 64; i++)
    {
#pragma HLS pipeline rewind
        v64u64 vec;

        for (size_t j = 0; j < 64; j++)
        {
#pragma HLS unroll
            vec[j] = buffer[i ^ j][j];
        }

        output << vec;
    }
}

// Perform matrix transpose using XOR permutations
void transpose_matrix_64x64(hls::stream<v64u64> &output, hls::stream<v64u64> &input)
{
#pragma HLS dataflow
    hls::stream<v64u64> temp_streams[2];
    spatial_permute_64x64(temp_streams[0], input);
    temporal_permute_64x64(temp_streams[1], temp_streams[0]);
    spatial_permute_64x64(output, temp_streams[1]);
}

// Apply NTT to 64 vectors each of size 64
void ntt_64x64(hls::stream<v64u64> &output, hls::stream<v64u64> &input)
{
    for (size_t i = 0; i < 64; i++)
    {
#pragma HLS pipeline rewind
        output << ntt_size_64(input.read());
    }
}

// Multiply by twiddle factors for 64x64 matrix
void twiddle_multiply_64x64(hls::stream<v64u64> &output, hls::stream<v64u64> &input)
{
    for (size_t i = 0; i < 64; i++)
    {
#pragma HLS pipeline rewind

        v64u64 vec = input.read();

        for (size_t j = 1; j < 64; j++)
        {
#pragma HLS unroll
            vec[j] = multiply(vec[j], OMEGA_2_12[i * j]);
        }

        output << vec;
    }
}

// 2D NTT using dataflow architecture
void ntt_2d_dataflow(hls::stream<v64u64> &output, hls::stream<v64u64> &input)
{
#pragma HLS dataflow
    hls::stream<v64u64> temp_streams[3];

    // Step 1: NTT on rows
    ntt_64x64(temp_streams[0], input);

    // Step 2: Twiddle factor multiplication
    twiddle_multiply_64x64(temp_streams[1], temp_streams[0]);

    // Step 3: Transpose the matrix
    transpose_matrix_64x64(temp_streams[2], temp_streams[1]);

    // Step 4: NTT on columns (now rows after transpose)
    ntt_64x64(output, temp_streams[2]);
}

// 2D NTT using serial architecture
void ntt_2d_serial(hls::stream<v64u64> &output, hls::stream<v64u64> &input)
{
    u64 buffer[64][64];

row_processing:
    for (int i = 0; i < 64; i++)
    {
#pragma HLS pipeline rewind
        v64u64 vec = ntt_size_64(input.read());

        for (int j = 1; j < 64; j++)
        {
            vec[j] = multiply(vec[j], OMEGA_2_12[i * j]);
        }

        for (int j = 0; j < 64; j++)
        {
            buffer[i][j] = vec[j];
        }
    }

column_processing:
    for (int i = 0; i < 64; i++)
    {
#pragma HLS pipeline rewind
        v64u64 vec;

        for (int j = 0; j < 64; j++)
        {
            vec[j] = buffer[j][i];
        }

        vec = ntt_size_64(vec);

        output.write(vec);
    }
}

void xor_permute_spatial_4096x4096(hls::stream<v64u64> &output, hls::stream<u64> input[64], bool skip)
{
    for (size_t i = 0; i < 64; i++)
    {
        for (size_t j = 0; j < 64; j++)
        {
            for (size_t k = 0; k < 64; k++)
            {
#pragma HLS pipeline rewind
                v64u64 vec;

                for (size_t l = 0; l < 64; l++)
                {
#pragma HLS unroll
                    input[l] >> vec[l];
                }

                output << xor_permute(vec, skip ? 0 : i);
            }
        }
    }
}

void xor_permute_spatial_4096x4096(hls::stream<u64> output[64], hls::stream<u64> input[64], bool skip)
{
    for (size_t i = 0; i < 64; i++)
    {
        for (size_t j = 0; j < 64; j++)
        {
            for (size_t k = 0; k < 64; k++)
            {
#pragma HLS pipeline rewind
                v64u64 vec;

                for (size_t l = 0; l < 64; l++)
                {
#pragma HLS unroll
                    input[l] >> vec[l];
                }

                vec = xor_permute(vec, skip ? 0 : i);

                for (size_t l = 0; l < 64; l++)
                {
#pragma HLS unroll
                    output[l] << vec[l];
                }
            }
        }
    }
}

void memory_to_stream(hls::stream<u64> streams[4], u64 *memory, ap_uint<1> pass, int hbm_pc)
{
#pragma HLS function_instantiate variable = hbm_pc

    for (size_t i = 0; i < 64; i++)
    {
        for (size_t j = 0; j < 64; j++)
        {
            for (size_t k = 0; k < 64; k++)
            {
#pragma HLS pipeline rewind
                int address0, address1, address2, address3;
                if (pass == 0)
                {
                    address0 = _2_18 * 0 + _2_12 * k + 64 * i + j;
                    address1 = _2_18 * 1 + _2_12 * k + 64 * i + j;
                    address2 = _2_18 * 2 + _2_12 * k + 64 * i + j;
                    address3 = _2_18 * 3 + _2_12 * k + 64 * i + j;
                }
                else
                {
                    address0 = 4 * (_2_12 * (i ^ (4 * hbm_pc + 0)) + _2_6 * k + j) + 0;
                    address1 = 4 * (_2_12 * (i ^ (4 * hbm_pc + 1)) + _2_6 * k + j) + 1;
                    address2 = 4 * (_2_12 * (i ^ (4 * hbm_pc + 2)) + _2_6 * k + j) + 2;
                    address3 = 4 * (_2_12 * (i ^ (4 * hbm_pc + 3)) + _2_6 * k + j) + 3;
                }
                streams[0] << memory[address0];
                streams[1] << memory[address1];
                streams[2] << memory[address2];
                streams[3] << memory[address3];
            }
        }
    }
}

void stream_to_memory(u64 *memory, hls::stream<u64> streams[4], ap_uint<1> pass, int hbm_pc)
{
#pragma HLS function_instantiate variable = hbm_pc

    for (size_t i = 0; i < 64; i++)
    {
        for (size_t j = 0; j < 64; j++)
        {
            for (size_t k = 0; k < 64; k++)
            {
#pragma HLS pipeline rewind
                int address0, address1, address2, address3;
                if (pass == 0)
                {
                    address0 = 4 * (_2_12 * i + _2_6 * j + k) + 0;
                    address1 = 4 * (_2_12 * i + _2_6 * j + k) + 1;
                    address2 = 4 * (_2_12 * i + _2_6 * j + k) + 2;
                    address3 = 4 * (_2_12 * i + _2_6 * j + k) + 3;
                }
                else
                {
                    address0 = _2_18 * 0 + _2_12 * k + 64 * i + j;
                    address1 = _2_18 * 1 + _2_12 * k + 64 * i + j;
                    address2 = _2_18 * 2 + _2_12 * k + 64 * i + j;
                    address3 = _2_18 * 3 + _2_12 * k + 64 * i + j;
                }
                streams[0] >> memory[address0];
                streams[1] >> memory[address1];
                streams[2] >> memory[address2];
                streams[3] >> memory[address3];
            }
        }
    }
}

void ntt_2d_64x4096(hls::stream<v64u64> &output, hls::stream<v64u64> &input)
{
    for (size_t i = 0; i < 4096; i++)
    {
#pragma HLS dataflow
#ifdef NTT_2_12_DATAFLOW
        ntt_2d_dataflow(output, input);
#else
        ntt_2d_serial(output, input);
#endif
    }
}

void twiddle_multiply_4096x4096(hls::stream<u64> output[64], hls::stream<v64u64> &input, bool skip)
{
    for (size_t i = 0; i < 64; i++)
    {
        for (size_t j = 0; j < 64; j++)
        {
            for (size_t k = 0; k < 64; k++)
            {
#ifdef NTT_2_12_DATAFLOW
#pragma HLS pipeline rewind
#else
#pragma HLS pipeline rewind II = 32
#endif
                v64u64 vec = input.read();
            mul:
                for (size_t l = 0; l < 64; l++)
                {
                    ap_uint<12> row = 64 * i + j;
                    ap_uint<12> col = 64 * l + k;
                    ap_uint<24> rowTimesCol = skip ? (ap_uint<24>)0 : (row * col);
                    u64 twiddle = multiply(OMEGA_2_12[rowTimesCol.range(23, 12)], OMEGA_2_24[rowTimesCol.range(11, 0)]);
                    output[l] << multiply(vec[l], twiddle);
                }
            }
        }
    }
}

extern "C"
{
    void ntt_2_24_pass(u64 *out0, u64 *out1, u64 *out2, u64 *out3, u64 *out4, u64 *out5, u64 *out6, u64 *out7,
                       u64 *out8, u64 *out9, u64 *out10, u64 *out11, u64 *out12, u64 *out13, u64 *out14, u64 *out15,
                       u64 *in0, u64 *in1, u64 *in2, u64 *in3, u64 *in4, u64 *in5, u64 *in6, u64 *in7,
                       u64 *in8, u64 *in9, u64 *in10, u64 *in11, u64 *in12, u64 *in13, u64 *in14, u64 *in15, int pass)
    {
        hls::stream<v64u64> vector_streams[2];
        hls::stream<u64> scalar_streams0[64];
        hls::stream<u64> scalar_streams1[64];
        hls::stream<u64> scalar_streams2[64];
        u64 *in_ptrs[16] = {in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15};
        u64 *out_ptrs[16] = {out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15};

#pragma HLS dataflow

        bool skip_permute1 = (pass == 0);
        bool skip_twiddle = (pass == 1);
        bool skip_permute2 = (pass == 1);

        // Memory to stream conversion
        for (size_t pc = 0; pc < 16; pc++)
        {
#pragma HLS unroll
            memory_to_stream(&scalar_streams0[4 * pc], in_ptrs[pc], pass, pc);
        }

        // Main processing pipeline
        xor_permute_spatial_4096x4096(vector_streams[0], scalar_streams0, skip_permute1);
        ntt_2d_64x4096(vector_streams[1], vector_streams[0]);
        twiddle_multiply_4096x4096(scalar_streams1, vector_streams[1], skip_twiddle);
        xor_permute_spatial_4096x4096(scalar_streams2, scalar_streams1, skip_permute2);

        // Stream to memory conversion
        for (size_t pc = 0; pc < 16; pc++)
        {
#pragma HLS unroll
            stream_to_memory(out_ptrs[pc], &scalar_streams2[4 * pc], pass, pc);
        }
    }

    void ntt_2_24(u64 *out0, u64 *out1, u64 *out2, u64 *out3, u64 *out4, u64 *out5, u64 *out6, u64 *out7,
                  u64 *out8, u64 *out9, u64 *out10, u64 *out11, u64 *out12, u64 *out13, u64 *out14, u64 *out15,
                  u64 *in0, u64 *in1, u64 *in2, u64 *in3, u64 *in4, u64 *in5, u64 *in6, u64 *in7,
                  u64 *in8, u64 *in9, u64 *in10, u64 *in11, u64 *in12, u64 *in13, u64 *in14, u64 *in15)
    {
#pragma HLS interface mode = m_axi port = out0 bundle = gmem0
#pragma HLS interface mode = m_axi port = out1 bundle = gmem1
#pragma HLS interface mode = m_axi port = out2 bundle = gmem2
#pragma HLS interface mode = m_axi port = out3 bundle = gmem3
#pragma HLS interface mode = m_axi port = out4 bundle = gmem4
#pragma HLS interface mode = m_axi port = out5 bundle = gmem5
#pragma HLS interface mode = m_axi port = out6 bundle = gmem6
#pragma HLS interface mode = m_axi port = out7 bundle = gmem7
#pragma HLS interface mode = m_axi port = out8 bundle = gmem8
#pragma HLS interface mode = m_axi port = out9 bundle = gmem9
#pragma HLS interface mode = m_axi port = out10 bundle = gmem10
#pragma HLS interface mode = m_axi port = out11 bundle = gmem11
#pragma HLS interface mode = m_axi port = out12 bundle = gmem12
#pragma HLS interface mode = m_axi port = out13 bundle = gmem13
#pragma HLS interface mode = m_axi port = out14 bundle = gmem14
#pragma HLS interface mode = m_axi port = out15 bundle = gmem15
#pragma HLS interface mode = m_axi port = in0 bundle = gmem0
#pragma HLS interface mode = m_axi port = in1 bundle = gmem1
#pragma HLS interface mode = m_axi port = in2 bundle = gmem2
#pragma HLS interface mode = m_axi port = in3 bundle = gmem3
#pragma HLS interface mode = m_axi port = in4 bundle = gmem4
#pragma HLS interface mode = m_axi port = in5 bundle = gmem5
#pragma HLS interface mode = m_axi port = in6 bundle = gmem6
#pragma HLS interface mode = m_axi port = in7 bundle = gmem7
#pragma HLS interface mode = m_axi port = in8 bundle = gmem8
#pragma HLS interface mode = m_axi port = in9 bundle = gmem9
#pragma HLS interface mode = m_axi port = in10 bundle = gmem10
#pragma HLS interface mode = m_axi port = in11 bundle = gmem11
#pragma HLS interface mode = m_axi port = in12 bundle = gmem12
#pragma HLS interface mode = m_axi port = in13 bundle = gmem13
#pragma HLS interface mode = m_axi port = in14 bundle = gmem14
#pragma HLS interface mode = m_axi port = in15 bundle = gmem15

        // First pass: in -> out
        ntt_2_24_pass(out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15,
                      in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, 0);

        // Second pass: out -> in
        ntt_2_24_pass(in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15,
                      out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, 1);
    }
}