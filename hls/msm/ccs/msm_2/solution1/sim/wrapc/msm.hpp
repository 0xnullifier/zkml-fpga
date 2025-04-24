#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <stdint.h>
#define __gmp_const const
#include "ap_int.h"
#include "ap_fixed.h"
#include "hls_stream.h"
#include <hls_vector.h>

// TODO: change this curve
#define BN254 // Initially define BLS12_381, commented out for illustration

// Workload Parameters
constexpr int MAX_DEGREE = (1 << 24);

// Hardware Parameters
constexpr int PARALLEL_DEGREE = 1;
constexpr int HLS_STREAM_DEPTH = 64;
constexpr int BREAKDOWN_BITWIDTH = 64;

#ifdef BN254
constexpr int NUM_OVERALL_BITWIDTH = (256 << 1);
constexpr int BASE_BITWIDTH = 256;
constexpr int HALF_BASE_BITWIDTH = (BASE_BITWIDTH >> 1);
constexpr int SCALAR_ITERATION_BIT = 256;
// constexpr element_t  Q_VALUE = 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47;
constexpr uint64_t Q_VALUE0 = 0x3c208c16d87cfd47;
constexpr uint64_t Q_VALUE1 = 0x97816a916871ca8d;
constexpr uint64_t Q_VALUE2 = 0xb85045b68181585d;
constexpr uint64_t Q_VALUE3 = 0x30644e72e131a029;
#endif

constexpr int HOST_DATA_ARRAY_LENGTH = 32;

typedef ap_uint<BASE_BITWIDTH> element_t;
typedef ap_uint<NUM_OVERALL_BITWIDTH> element_t_full;

const ap_ufixed<256, 256> base_field = "21888242871839275222246405745257275088548364400416034343698204186575808495617";
const ap_ufixed<256, 256> curve_d = "9706598848417545097372247223557719406784115219466060233080913168975159366771";
const ap_ufixed<256, 256> DOUBLE_Q = "43776485743678550444492811490514550177096728800832068687396408373151616991234";
const int NUM_WINDOWS = 26;
const int LOG_BUCKET_SIZE = 10;
constexpr int BUCKET_SIZE = (1 << LOG_BUCKET_SIZE);
constexpr int MASK = (1 << LOG_BUCKET_SIZE) - 1;
// montgomery constants
// const ap_ufixed<256, 256> R = "0x8000000000000000000000000000000000000000000000000000000000000000";
// const ap_ufixed<256, 256> Rinv = "20088805678394726921759213903638900068543150413902805005818532058113355872039";
// const ap_ufixed<256, 256> PDash = "53136398234517616390802881779408744441731054475759557628235741817019879023497";
// const ap_ufixed<256, 256> mont4 = "12701749756239638624677912564803064819576857758302891452024789069373997194042";
// const ap_ufixed<256, 256> mont2 = "6350874878119819312338956282401532409788428879151445726012394534686998597021";
// const ap_ufixed<256, 256> mont3 = "20470433753099366579631637296230936159030798897376080420363110749353110999823";
// const ap_ufixed<256, 256> mont8 = "3515256640640002027109419384348854550457404359307959241360540244102768179501";

// Structure to hold a point
struct EdwardsPoint
{
    element_t x;
    element_t y;
    element_t z;
    element_t t;
};

struct BucketResult
{
    EdwardsPoint point;
    ap_uint<LOG_BUCKET_SIZE> bucket_index;
    ap_uint<5> window_index;
};

void edwards_point_add(
    element_t X1, element_t Y1, element_t Z1, element_t T1,
    element_t X2, element_t Y2, element_t Z2, element_t T2,
    element_t &X3, element_t &Y3, element_t &Z3, element_t &T3);

void edwards_point_double(
    element_t X1,
    element_t Y1,
    element_t Z1,
    element_t T1,
    element_t &X3,
    element_t &Y3,
    element_t &Z3,
    element_t &T3);

extern "C"
{

    void msm(
        element_t *x_array,
        element_t *y_array,
        element_t *z_array,
        element_t *t_array,
        element_t *scalar_array,
        element_t result_x[NUM_WINDOWS][BUCKET_SIZE],
        element_t result_y[NUM_WINDOWS][BUCKET_SIZE],
        element_t result_z[NUM_WINDOWS][BUCKET_SIZE],
        element_t result_t[NUM_WINDOWS][BUCKET_SIZE],
        int degree);
}
