#include <iostream>
#include <complex>

elem_t mod_add(elem_t x, elem_t y)
{
    wide_elem_t sum = x + y;

    if (sum >= PRIME_MOD)
    {
        sum -= PRIME_MOD;
    }

    return sum;
}

elem_t mod_sub(elem_t x, elem_t y)
{
    wide_elem_t diff;

    if (x >= y)
    {
        diff = x - y;
    }
    else
    {
        diff = PRIME_MOD - y + x;
    }

    return diff;
}

elem_t mod_mul(elem_t x, elem_t y)
{
    wide_elem_t prod = x * y;

    elem_t upper = prod >> 64;
    elem_t lower = prod;

    elem_t reduced = lower - upper * (PRIME_MOD - 1);

    if (reduced >= PRIME_MOD)
    {
        reduced -= PRIME_MOD;
    }

    return reduced;
}

elem_t mod_pow(elem_t base, uint32_t exp)
{
    elem_t result = 1;
    elem_t current = base;

    while (exp > 0)
    {
        if (exp & 1)
        {
            result = mod_mul(result, current);
        }
        current = mod_mul(current, current);
        exp >>= 1;
    }

    return result;
}

void init_twiddle_factors()
{
    OMEGA_2_12[0] = 1;
    for (int i = 1; i < 4096; i++)
    {
        OMEGA_2_12[i] = mod_mul(OMEGA_2_12[i - 1], ROOT_UNITY);
    }

    inv_OMEGA_2_12[0] = 1;
    for (int i = 1; i < 4096; i++)
    {
        inv_OMEGA_2_12[i] = mod_mul(inv_OMEGA_2_12[i - 1], INV_ROOT);
    }
}

uint32_t bit_reverse(uint32_t x, uint32_t bits)
{
    uint32_t result = 0;
    for (uint32_t i = 0; i < bits; i++)
    {
        result = (result << 1) | (x & 1);
        x >>= 1;
    }
    return result;
}

void bit_reverse_permutation(elem_t *data, uint32_t n)
{
    uint32_t bits = log2(n);

    for (uint32_t i = 0; i < n; i++)
    {
        uint32_t rev_i = bit_reverse(i, bits);

        if (i < rev_i)
        {
            elem_t temp = data[i];
            data[i] = data[rev_i];
            data[rev_i] = temp;
        }
    }
}

void fft_cooley_tukey(elem_t *data, uint32_t n, bool inverse)
{
    bit_reverse_permutation(data, n);

    for (uint32_t len = 2; len <= n; len <<= 1)
    {
        uint32_t half_len = len >> 1;
        uint32_t step = 4096 / len;

        for (uint32_t start = 0; start < n; start += len)
        {
            for (uint32_t j = 0; j < half_len; j++)
            {
                uint32_t idx = j * step;
                elem_t twiddle = inverse ? inv_OMEGA_2_12[idx] : OMEGA_2_12[idx];

                elem_t even = data[start + j];
                elem_t odd = data[start + j + half_len];
                elem_t term = mod_mul(twiddle, odd);

                data[start + j] = mod_add(even, term);
                data[start + j + half_len] = mod_sub(even, term);
            }
        }
    }

    if (inverse)
    {
        for (uint32_t i = 0; i < n; i++)
        {
            data[i] = mod_mul(data[i], inv_n);
        }
    }
}

void four_step_fft(elem_t *data, uint32_t n, bool inverse)
{
    uint32_t sqrt_n = sqrt(n);

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        fft_cooley_tukey(&data[i * sqrt_n], sqrt_n, inverse);
    }

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        for (uint32_t j = 0; j < sqrt_n; j++)
        {
            uint32_t idx = (i * j) % n;
            elem_t twiddle = inverse ? inv_OMEGA_2_12[idx] : OMEGA_2_12[idx];
            data[i * sqrt_n + j] = mod_mul(data[i * sqrt_n + j], twiddle);
        }
    }

    elem_t *temp = new elem_t[n];
    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        for (uint32_t j = 0; j < sqrt_n; j++)
        {
            temp[j * sqrt_n + i] = data[i * sqrt_n + j];
        }
    }

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        fft_cooley_tukey(&temp[i * sqrt_n], sqrt_n, inverse);
    }

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        for (uint32_t j = 0; j < sqrt_n; j++)
        {
            data[i * sqrt_n + j] = temp[j * sqrt_n + i];
        }
    }

    delete[] temp;
}

void six_step_fft(elem_t *data, uint32_t n, bool inverse)
{
    uint32_t sqrt_n = sqrt(n);

    elem_t *temp = new elem_t[n];
    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        for (uint32_t j = 0; j < sqrt_n; j++)
        {
            temp[j * sqrt_n + i] = data[i * sqrt_n + j];
        }
    }
    memcpy(data, temp, n * sizeof(elem_t));

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        fft_cooley_tukey(&data[i * sqrt_n], sqrt_n, inverse);
    }

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        for (uint32_t j = 0; j < sqrt_n; j++)
        {
            uint32_t idx = (i * j) % n;
            elem_t twiddle = inverse ? inv_OMEGA_2_12[idx] : OMEGA_2_12[idx];
            data[i * sqrt_n + j] = mod_mul(data[i * sqrt_n + j], twiddle);
        }
    }

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        for (uint32_t j = 0; j < sqrt_n; j++)
        {
            temp[j * sqrt_n + i] = data[i * sqrt_n + j];
        }
    }
    memcpy(data, temp, n * sizeof(elem_t));

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        fft_cooley_tukey(&data[i * sqrt_n], sqrt_n, inverse);
    }

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        for (uint32_t j = 0; j < sqrt_n; j++)
        {
            temp[j * sqrt_n + i] = data[i * sqrt_n + j];
        }
    }
    memcpy(data, temp, n * sizeof(elem_t));

    delete[] temp;
}

void block_transpose(elem_t *dst, elem_t *src, uint32_t n)
{

    for (uint32_t i = 0; i < n; i += BLOCK_SIZE)
    {
        for (uint32_t j = 0; j < n; j += BLOCK_SIZE)
        {
            for (uint32_t bi = 0; bi < BLOCK_SIZE && i + bi < n; bi++)
            {
                for (uint32_t bj = 0; bj < BLOCK_SIZE && j + bj < n; bj++)
                {
                    dst[(j + bj) * n + (i + bi)] = src[(i + bi) * n + (j + bj)];
                }
            }
        }
    }
}

class NTTProcessor
{
private:
    hls::stream<elem_t> inter_streams[8];

    elem_t buffer_a[4096][64];
    elem_t buffer_b[64][4096];

    elem_t scratch[8192];

public:
    void butterfly_op(elem_t &x, elem_t &y, elem_t twiddle)
    {
        elem_t temp = x;
        x = mod_add(x, mod_mul(twiddle, y));
        y = mod_sub(temp, mod_mul(twiddle, y));
    }

    void process_stage(elem_t *data, uint32_t n, uint32_t stage, bool inverse)
    {
#pragma HLS pipeline II = 4

        uint32_t distance = 1 << stage;
        uint32_t num_groups = n / (2 * distance);

        for (uint32_t group = 0; group < num_groups; group++)
        {
            for (uint32_t offset = 0; offset < distance; offset++)
            {
                uint32_t idx_even = 2 * group * distance + offset;
                uint32_t idx_odd = idx_even + distance;

                uint32_t twiddle_idx = offset * (n / (2 * distance));
                elem_t twiddle = inverse ? inv_OMEGA_2_12[twiddle_idx] : OMEGA_2_12[twiddle_idx];

                butterfly_op(data[idx_even], data[idx_odd], twiddle);
            }
        }
    }

    void ntt_64(elem_t *data, bool inverse)
    {
#pragma HLS dataflow

        for (uint32_t i = 0; i < 64; i++)
        {
            if (i < rev_i)
            {
                elem_t temp = data[i];
                data[i] = data[rev_i];
                data[rev_i] = temp;
            }
        }

        for (uint32_t stage = 0; stage < 6; stage++)
            process_stage(data, 64, stage, inverse);
    }

    if (inverse)
    {
        elem_t inv_n = mod_pow(64, PRIME_MOD - 2);
        for (uint32_t i = 0; i < 64; i++)
        {
            data[i] = mod_mul(data[i], inv_n);
        }
    }
}

void
ntt_64x64(elem_t matrix[][64], bool inverse)
{
#pragma HLS dataflow

    for (uint32_t row = 0; row < 64; row++)
    {
        elem_t row_data[64];

        for (uint32_t col = 0; col < 64; col++)
        {
            row_data[col] = matrix[row][col];
        }

        ntt_64(row_data, inverse);

        for (uint32_t col = 0; col < 64; col++)
        {
            matrix[row][col] = row_data[col];
        }
    }

    if (!inverse)
    {
        for (uint32_t row = 0; row < 64; row++)
        {
            for (uint32_t col = 0; col < 64; col++)
            {
                uint32_t idx = (row * col) % 4096;
                matrix[row][col] = mod_mul(matrix[row][col], OMEGA_2_12[idx]);
            }
        }
    }

    elem_t transposed[64][64];
    for (uint32_t row = 0; row < 64; row++)
    {
        for (uint32_t col = 0; col < 64; col++)
        {
            transposed[col][row] = matrix[row][col];
        }
    }

    for (uint32_t row = 0; row < 64; row++)
    {
        elem_t row_data[64];

        for (uint32_t col = 0; col < 64; col++)
        {
            row_data[col] = transposed[row][col];
        }

        ntt_64(row_data, inverse);

        for (uint32_t col = 0; col < 64; col++)
        {
            transposed[row][col] = row_data[col];
        }
    }

    for (uint32_t row = 0; row < 64; row++)
    {
        for (uint32_t col = 0; col < 64; col++)
        {
            matrix[row][col] = transposed[col][row];
        }
    }

    if (inverse)
    {
        for (uint32_t row = 0; row < 64; row++)
        {
            for (uint32_t col = 0; col < 64; col++)
            {
                uint32_t idx = (row * col) % 4096;
                matrix[row][col] = mod_mul(mod_mul(matrix[row][col], inv_OMEGA_2_12[idx]), inv_n_squared);
            }
        }
    }
}

void stockham_ntt(elem_t *data, elem_t *temp, uint32_t n, bool inverse)
{
    uint32_t bits = log2(n);

    for (uint32_t stage = 0; stage < bits; stage++)
    {
        uint32_t m = 1 << stage;
        uint32_t m2 = m << 1;

        for (uint32_t k = 0; k < n; k += m2)
        {
            for (uint32_t j = 0; j < m; j++)
            {
                uint32_t idx = (n / m2) * j;
                elem_t twiddle = inverse ? inv_OMEGA_2_12[idx] : OMEGA_2_12[idx];

                uint32_t src_even = k + j;
                uint32_t src_odd = src_even + m;
                uint32_t dst_even = (k >> 1) + j;
                uint32_t dst_odd = dst_even + (n >> 1);

                temp[dst_even] = mod_add(data[src_even], data[src_odd]);
                temp[dst_odd] = mod_mul(mod_sub(data[src_even], data[src_odd]), twiddle);
            }
        }

        elem_t *swap = data;
        data = temp;
        temp = swap;
    }

    if (inverse)
    {
        elem_t inv_n = mod_pow(n, PRIME_MOD - 2);
        for (uint32_t i = 0; i < n; i++)
        {
            data[i] = mod_mul(data[i], inv_n);
        }
    }
}

void ntt_2d_large(elem_t *data, uint32_t n, bool inverse)
{
    uint32_t sqrt_n = sqrt(n);
    elem_t *temp = new elem_t[n];

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        stockham_ntt(&data[i * sqrt_n], temp, sqrt_n, inverse);
    }

    block_transpose(temp, data, sqrt_n);
    memcpy(data, temp, n * sizeof(elem_t));

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        for (uint32_t j = 0; j < sqrt_n; j++)
        {
            uint32_t idx = (i * j) % n;
            if (!inverse)
            {
                data[i * sqrt_n + j] = mod_mul(data[i * sqrt_n + j], OMEGA_2_12[idx]);
            }
            else
            {
                data[i * sqrt_n + j] = mod_mul(data[i * sqrt_n + j], inv_OMEGA_2_12[idx]);
            }
        }
    }

    for (uint32_t i = 0; i < sqrt_n; i++)
    {
        stockham_ntt(&data[i * sqrt_n], temp, sqrt_n, inverse);
    }

    block_transpose(temp, data, sqrt_n);
    memcpy(data, temp, n * sizeof(elem_t));

    delete[] temp;
}

void process_ntt(elem_t *output, elem_t *input, uint32_t size, bool inverse)
{
    static bool tables_initialized = false;
    if (!tables_initialized)
    {
        init_twiddle_factors();
        tables_initialized = true;
    }

    if (size <= 64)
    {
        memcpy(output, input, size * sizeof(elem_t));
        ntt_64(output, inverse);
    }
    else if (size <= 4096)
    {
        elem_t *temp = new elem_t[size];
        memcpy(output, input, size * sizeof(elem_t));
        stockham_ntt(output, temp, size, inverse);
        delete[] temp;
    }
    else
    {
        memcpy(output, input, size * sizeof(elem_t));
        ntt_2d_large(output, size, inverse);
    }
}
}
;

extern "C"
{
    void ntt_transform_kernel(
        elem_t *output0, elem_t *output1, elem_t *output2, elem_t *output3,
        elem_t *output4, elem_t *output5, elem_t *output6, elem_t *output7,
        elem_t *input0, elem_t *input1, elem_t *input2, elem_t *input3,
        elem_t *input4, elem_t *input5, elem_t *input6, elem_t *input7,
        uint32_t size, bool inverse)
    {
#pragma HLS INTERFACE m_axi port = output0 bundle = gmem0
#pragma HLS INTERFACE m_axi port = output1 bundle = gmem1
#pragma HLS INTERFACE m_axi port = output2 bundle = gmem2
#pragma HLS INTERFACE m_axi port = output3 bundle = gmem3
#pragma HLS INTERFACE m_axi port = output4 bundle = gmem4
#pragma HLS INTERFACE m_axi port = output5 bundle = gmem5
#pragma HLS INTERFACE m_axi port = output6 bundle = gmem6
#pragma HLS INTERFACE m_axi port = output7 bundle = gmem7
#pragma HLS INTERFACE m_axi port = input0 bundle = gmem0
#pragma HLS INTERFACE m_axi port = input1 bundle = gmem1
#pragma HLS INTERFACE m_axi port = input2 bundle = gmem2
#pragma HLS INTERFACE m_axi port = input3 bundle = gmem3
#pragma HLS INTERFACE m_axi port = input4 bundle = gmem4
#pragma HLS INTERFACE m_axi port = input5 bundle = gmem5
#pragma HLS INTERFACE m_axi port = input6 bundle = gmem6
#pragma HLS INTERFACE m_axi port = input7 bundle = gmem7

        NTTProcessor processor;

        uint32_t block_size = size / 8;

#pragma HLS DATAFLOW
        processor.process_ntt(output0, input0, block_size, inverse);
        processor.process_ntt(output1, input1, block_size, inverse);
        processor.process_ntt(output2, input2, block_size, inverse);
        processor.process_ntt(output3, input3, block_size, inverse);
        processor.process_ntt(output4, input4, block_size, inverse);
        processor.process_ntt(output5, input5, block_size, inverse);
        processor.process_ntt(output6, input6, block_size, inverse);
        processor.process_ntt(output7, input7, block_size, inverse);
    }
}