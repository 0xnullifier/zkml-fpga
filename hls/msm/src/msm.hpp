#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdint.h>

#define __gmp_const const

#include "ap_int.h"
#include "ap_fixed.h"

// TODO: change this curve

// #define BLS12_377
#define BLS12_381 // Initially define BLS12_381, commented out for illustration

#ifdef BLS12_377
#undef BLS12_381
#endif

#ifdef BLS12_381
#undef BLS12_377
#endif

// Workload Parameters
constexpr int MAX_DEGREE = (1 << 24);

// Hardware Parameters
constexpr int PARALLEL_DEGREE = 1;
constexpr int HLS_STREAM_DEPTH = 4;
constexpr int BREAKDOWN_BITWIDTH = 64;

#ifdef BLS12_381
constexpr int NUM_OVERALL_BITWIDTH = (384 << 1);
constexpr int BASE_BITWIDTH = 384;
constexpr int HALF_BASE_BITWIDTH = (BASE_BITWIDTH >> 1);
constexpr int SCALAR_ITERATION_BIT = 256;
// constexpr element_t  Q_VALUE                        = 0x1A0111EA397FE69A4B1BA7B6434BACD764774B84F38512BF6730D2A0F6B0F6241EABFFFEB153FFFFB9FEFFFFFFFFAAAB;
constexpr uint64_t Q_VALUE0 = 0xB9FEFFFFFFFFAAAB;
constexpr uint64_t Q_VALUE1 = 0x1EABFFFEB153FFFF;
constexpr uint64_t Q_VALUE2 = 0x6730D2A0F6B0F624;
constexpr uint64_t Q_VALUE3 = 0x64774B84F38512BF;
constexpr uint64_t Q_VALUE4 = 0x4B1BA7B6434BACD7;
constexpr uint64_t Q_VALUE5 = 0x1A0111EA397FE69A;
#endif

constexpr int HOST_DATA_ARRAY_LENGTH = 200;

typedef ap_uint<BASE_BITWIDTH> element_t;
typedef ap_uint<NUM_OVERALL_BITWIDTH> element_t_full;

void point_addition(element_t &x3,
                    element_t &y3,
                    element_t x1,
                    element_t y1,
                    element_t x2,
                    element_t y2);

void point_doubling(element_t &rlt_x_q,
                    element_t &rlt_y_q,
                    element_t x1,
                    element_t y1);

element_t modInverse(element_t in_a, element_t in_m);
// void multi_scalar_multiplication(const char* points_csv_path, const char* scalars_csv_path);
void msm(
    element_t x_array[HOST_DATA_ARRAY_LENGTH],
    element_t y_array[HOST_DATA_ARRAY_LENGTH],
    element_t scalar_array[HOST_DATA_ARRAY_LENGTH],
    element_t &result_x,
    element_t &result_y,
    int degree);
