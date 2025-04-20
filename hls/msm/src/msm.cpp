#include "msm.hpp"

/////  BN254 Curve
//! Curve information:
//! * Base field: q =
//!   21888242871839275222246405745257275088696311157297823662689037894645226208583
//! * Scalar field: r =
//!   21888242871839275222246405745257275088548364400416034343698204186575808495617
//! * valuation(q - 1, 2) = 1
//! * valuation(r - 1, 2) = 28
//! * G1 curve equation: y^2 = x^3 + 3
//! * G2 curve equation: y^2 = x^3 + B, where
//!    * B = 3/(u+9) where Fq2 is represented as Fq\[u\]/(u^2+1) =
//!      Fq2(19485874751759354771024239261021720505790618469301721065564631296452457478373,
//!      266929791119991161246907387137283842545076965332900288569378510910307636690)

// void point_doubling(element_t &rlt_x_q, element_t &rlt_y_q, element_t x1, element_t y1)
// {
//   // the case of infinity point
//   if (y1 == 0)
//   {
//     rlt_x_q = 0;
//     rlt_y_q = 0;
//     return;
//   }

//   element_t q = (element_t)base_field;
//   // q.range(1 * BREAKDOWN_BITWIDTH - 1, 0 * BREAKDOWN_BITWIDTH) = Q_VALUE0;
//   // q.range(2 * BREAKDOWN_BITWIDTH - 1, 1 * BREAKDOWN_BITWIDTH) = Q_VALUE1;
//   // q.range(3 * BREAKDOWN_BITWIDTH - 1, 2 * BREAKDOWN_BITWIDTH) = Q_VALUE2;
//   // q.range(4 * BREAKDOWN_BITWIDTH - 1, 3 * BREAKDOWN_BITWIDTH) = Q_VALUE3;

//   element_t x1_sq = (x1 * x1) % q;
//   element_t numerator = (3 * x1_sq) % q;
//   element_t denominator = (2 * y1) % q;
//   element_t denominator_inv = modInverse(denominator, q);
//   element_t lambda = (numerator * denominator_inv) % q;

//   // x3 = lambda^2 - 2*x1
//   element_t lambda_sq = (lambda * lambda) % q;
//   element_t x3 = (lambda_sq + q - (2 * x1) % q) % q;

//   // y3 = lambda * (x1 - x3) - y1
//   element_t x_diff = (x1 + q - x3) % q;
//   element_t lambda_x_diff = (lambda * x_diff) % q;
//   element_t y3 = (lambda_x_diff + q - y1) % q;

//   rlt_y_q = y3;
//   rlt_x_q = x3;
// }

// void point_addition(element_t &x3, element_t &y3, element_t x1, element_t y1, element_t x2, element_t y2)
// {
//   element_t q = (element_t)base_field;
//   // q.range(1 * BREAKDOWN_BITWIDTH - 1, 0 * BREAKDOWN_BITWIDTH) = Q_VALUE0;
//   // q.range(2 * BREAKDOWN_BITWIDTH - 1, 1 * BREAKDOWN_BITWIDTH) = Q_VALUE1;
//   // q.range(3 * BREAKDOWN_BITWIDTH - 1, 2 * BREAKDOWN_BITWIDTH) = Q_VALUE2;
//   // q.range(4 * BREAKDOWN_BITWIDTH - 1, 3 * BREAKDOWN_BITWIDTH) = Q_VALUE3;

//   if (x1 == 0 && y1 == 0)
//   {
//     x3 = x2;
//     y3 = y2;
//     return;
//   }
//   if (x2 == 0 && y2 == 0)
//   {
//     x3 = x1;
//     y3 = y1;
//     return;
//   }

//   element_t lambda_num = (y2 + q - y1) % q;
//   element_t lambda_den = (x2 - x1 + q) % q;
//   element_t lambda_den_inv = modInverse(lambda_den, q);
//   element_t lambda = (lambda_num * lambda_den_inv) % q;
//   element_t lambda_sq = (lambda * lambda) % q;
//   x3 = (lambda_sq + q - (x1 + x2) % q) % q;
//   element_t x1_minus_x3 = (x1 + q - x3) % q;
//   element_t lambda_x1_minus_x3 = (lambda * x1_minus_x3) % q;
//   y3 = (lambda_x1_minus_x3 - y1 + q) % q;
// }

// void scalar_mult_single(element_t &result_x, element_t &result_y, element_t base_x, element_t base_y, element_t scalar)
// {
// #pragma HLS INLINE off

//   result_x = 0;
//   result_y = 0;

// // Use binary method (double-and-add) from LSB to MSB
// SCALAR_MULT_LOOP:
//   for (int i = 0; i < SCALAR_ITERATION_BIT; i++)
//   {
// #pragma HLS PIPELINE II = 1

//     if (((int)scalar[i]) == 1)
//     {
//       element_t temp_x = 0, temp_y = 0;
//       point_addition(temp_x, temp_y, result_x, result_y, base_x, base_y);
//       result_x = temp_x;
//       result_y = temp_y;
//     }

//     element_t doubled_x = 0, doubled_y = 0;
//     point_doubling(doubled_x, doubled_y, base_x, base_y);
//     base_x = doubled_x;
//     base_y = doubled_y;
//   }
// }

// void msm(
//     element_t *x_array,
//     element_t *y_array,
//     element_t *scalar_array,
//     element_t &result_x,
//     element_t &result_y,
//     int degree)
// {
// #pragma hls interface m_axi depth = max_degree offset = slave port = x_array bundle = x_array
// #pragma hls interface m_axi depth = max_degree offset = slave port = y_array bundle = y_array
// #pragma hls interface m_axi depth = max_degree offset = slave port = scalar_array bundle = scalar_array
// #pragma hls interface m_axi depth = 3 offset = slave port = result_x bundle = result_x
// #pragma hls interface m_axi depth = 3 offset = slave port = result_y bundle = result_y
// #pragma hls interface s_axilite port = degree
// #pragma hls interface s_axilite register port = return

//   // local arrays to store intermediate results
//   result_x = 0;
//   result_y = 0;
//   element_t intermediate_x = 0, intermediate_y = 0;

//   // process each point-scalar pair independently
// compute_loop:
//   for (int i = 0; i < degree; i++)
//   {
// #pragma hls pipeline ii = 1
//     scalar_mult_single(intermediate_x, intermediate_y, x_array[i], y_array[i], scalar_array[i]);
//     element_t temp_x = result_x;
//     element_t temp_y = result_y;
//     point_addition(result_x, result_y, temp_x, temp_y, intermediate_x, intermediate_y);
//   }
// }

/// JACOBIAN COORDINATES

element_t mul(element_t a, element_t b)
{
  return (a * b) % (element_t)base_field;
}

element_t sqr(element_t a)
{
  return mul(a, a);
}

// void jacobian_point_double(
//     element_t x2,
//     element_t y2,
//     element_t z2,
//     element_t &x4,
//     element_t &y4,
//     element_t &z4)
// {
// #pragma HLS INLINE
//   element_t q = (element_t)base_field;
//   element_t a = mont_sqr(x2);
//   element_t b = mont_sqr(y2);
//   element_t c = mont_sqr(b);
//   element_t d = mont_mul((element_t)mont5, mont_mul(x1, b));
//   element_t e = mont_mul((element_t)mont4, a);
//   element_t f = mont_sqr(e);
//   x4 = (f - mont_mul((element_t)mont2, d) + q) % q;
//   y4 = (mont_mul(e, (d - x3 + q) % q) - mont_mul((element_t)mont8, c) + q) % q;
//   z4 = mont_mul((element_t)mont2, mont_mul(y1, z1));
// }

// void jacobian_point_add(
//     element_t x1,
//     element_t y1,
//     element_t z1,
//     element_t x2,
//     element_t y2,
//     element_t z2,
//     element_t &x3,
//     element_t &y3,
//     element_t &z3)
// {
// #pragma HLS INLINE
//   if (x1 == 0 && y1 == 0)
//   {
//     x3 = x2;
//     y3 = y2;
//     z3 = z2;
//     return;
//   }

//   element_t q = (element_t)base_field;
//   element_t z1z1 = mont_sqr(z1);
//   element_t z2z2 = mont_sqr(z2);
//   element_t u1 = mont_mul(x1, z2z2);
//   element_t u2 = mont_mul(x2, z1z1);
//   element_t z1Cubed = mont_mul(z1, z1z1);
//   element_t z2Cubed = mont_mul(z2, z2z2);
//   element_t s1 = mont_mul(y1, z2Cubed);
//   element_t s2 = mont_mul(y2, z1Cubed);

//   if (u1 == u2)
//   {
//     if (s1 != s2)
//     {
//       x3 = 0;
//       y3 = 0;
//       z3 = 0;
//       return;
//     }
//     else
//     {
//       jacobian_point_double(x1, y1, z1, x3, y3, z3);
//       return;
//     }
//   }

//   element_t h = (u2 - u1 + q) % q;
//   element_t i = mont_sqr(mont_mul((element_t)mont2, h));
//   element_t j = mont_mul(h, i);
//   element_t r = mont_mul((element_t)mont2, (s2 - s1 + q) % q);
//   element_t v = mont_mul(u1, i);
//   x3 = (mont_sqr(r) - j - mont_mul((element_t)mont2, v) + 2 * q) % q;
//   y3 = (mont_mul(r, (v - x3 + q) % q) - mont_mul((element_t)mont2, mont_mul(s1, j)) + q) % q;
//   element_t z3_temp = mont_sqr((z1 + z2) % q);
//   z3_temp = (z3_temp - z1z1 - z2z2 + 2 * q) % q;
//   z3 = mont_mul(h, z3_temp);
// }

/// EXTENDED TWISTED EDWARDS https://eprint.iacr.org/2008/522.pdf section 2.2

// Point doubling in Extended Twisted Edwards coordinates
void edwards_point_double(
    element_t X1,
    element_t Y1,
    element_t Z1,
    element_t T1,
    element_t &X3,
    element_t &Y3,
    element_t &Z3,
    element_t &T3)
{

#pragma HLS INLINE OFF
#pragma HLS PIPELINE II = 1
  element_t q = (element_t)base_field;

  // A = X1^2
  element_t A = (X1 * X1) % q;

  // B = Y1^2
  element_t B = (Y1 * Y1) % q;

  // C = 2 * Z1^2
  element_t Z1_sq = (Z1 * Z1) % q;
  element_t C = (2 * Z1_sq) % q;

  // D = A
  element_t D = A;

  // E = ((X1 + Y1)^2 - A - B) = 2*X1*Y1
  element_t X1_plus_Y1 = (X1 + Y1) % q;
  element_t X1_plus_Y1_sq = (X1_plus_Y1 * X1_plus_Y1) % q;
  element_t E = (X1_plus_Y1_sq - A - B + 2 * q) % q;

  // G = D + B
  element_t G = (D + B) % q;

  // F = G - C
  element_t F = (G - C + q) % q; // Add q to ensure positive result

  // H = D - B
  element_t H = (D - B + q) % q; // Add q to ensure positive result

  X3 = (E * F) % q;

  Y3 = (G * H) % q;

  T3 = (E * H) % q;

  Z3 = (F * G) % q;
}
void edwards_point_add(
    element_t X1, element_t Y1, element_t Z1, element_t T1,
    element_t X2, element_t Y2, element_t Z2, element_t T2,
    element_t &X3, element_t &Y3, element_t &Z3, element_t &T3)
{
#pragma HLS INLINE off

  const element_t q = (element_t)base_field;
  const element_t two_q = (element_t)DOUBLE_Q;

  // Precomputations with branchless modulo logic
  element_t X1pY1 = (X1 + Y1 >= q) ? (element_t)(X1 + Y1 - q) : (element_t)(X1 + Y1);
  element_t X2pY2 = (X2 + Y2 >= q) ? (element_t)(X2 + Y2 - q) : (element_t)(X2 + Y2);

  element_t A, B, C, D, T1T2;

  A = (X1 * X2 >= q) ? (element_t)(X1 * X2 - q) : (element_t)(X1 * X2);
  B = (Y1 * Y2 >= q) ? (element_t)(Y1 * Y2 - q) : (element_t)(Y1 * Y2);
  C = (Z1 * Z2 >= q) ? (element_t)(Z1 * Z2 - q) : (element_t)(Z1 * Z2);
  T1T2 = (T1 * T2 >= q) ? (element_t)(T1 * T2 - q) : (element_t)(T1 * T2);
  D = ((element_t)curve_d * T1T2 >= q) ? (element_t)((element_t)curve_d * T1T2 - q) : (element_t)((element_t)curve_d * T1T2);

  element_t E = (X1pY1 * X2pY2 >= q) ? (element_t)(X1pY1 * X2pY2 - q) : (element_t)(X1pY1 * X2pY2);
  element_t F = (C >= D) ? (element_t)(C - D) : (element_t)(C - D + q);
  element_t G = (C + D >= q) ? (element_t)(C + D - q) : (element_t)(C + D);
  element_t H = (B >= A) ? (element_t)(B - A) : (element_t)(B - A + q);

  element_t AplusB = A + B;
  bool E_geq_AplusB = (E >= AplusB);
  element_t E_minus_AplusB = E_geq_AplusB ? (element_t)(E - AplusB) : (element_t)(E - AplusB + two_q);

  // Final output calculations (mod q style)
  element_t X3_tmp = (E_minus_AplusB * F >= q) ? (element_t)(E_minus_AplusB * F - q) : (element_t)(E_minus_AplusB * F);
  element_t Y3_tmp = (G * H >= q) ? (element_t)(G * H - q) : (element_t)(G * H);
  element_t T3_tmp = (E_minus_AplusB * H >= q) ? (element_t)(E_minus_AplusB * H - q) : (element_t)(E_minus_AplusB * H);
  element_t Z3_tmp = (F * G >= q) ? (element_t)(F * G - q) : (element_t)(F * G);

  // Assign results
  X3 = X3_tmp;
  Y3 = Y3_tmp;
  T3 = T3_tmp;
  Z3 = Z3_tmp;
}

// void scalar_mult_single(
//     element_t &result_x,
//     element_t &result_y,
//     element_t &result_z,
//     element_t &result_t,
//     element_t base_x,
//     element_t base_y,
//     element_t base_z,
//     element_t base_t,
//     element_t scalar)
// {
//   // intial to identitiy point
//   result_x = 0;
//   result_y = 1;
//   result_z = 1; // Initialize result_z to 1 for proper Jacobian representation
//   result_t = 0;
//   element_t temp_x = 0, temp_y = 1, temp_z = 1, temp_t = 0, doubled_x = 0, doubled_y = 0, doubled_z = 0, doubled_t = 0;

//   // Use binary method (double-and-add) from LSB to MSB
// SCALAR_MULT_LOOP:
//   for (int i = 0; i < SCALAR_ITERATION_BIT; i++)
//   {

// #pragma HLS PIPELINE II = 1
//     bool bit = scalar[i];

//     if (bit)
//     {
//       edwards_point_add(result_x, result_y, result_z, result_t, base_x, base_y, base_z, base_t, temp_x, temp_y, temp_z, temp_t);
//       result_x = temp_x;
//       result_y = temp_y;
//       result_z = temp_z;
//       result_t = temp_t;
//     }

//     edwards_point_double(base_x, base_y, base_z, base_t, doubled_x, doubled_y, doubled_z, doubled_t);
//     base_x = doubled_x;
//     base_y = doubled_y;
//     base_z = doubled_z;
//     base_t = doubled_t;
//   }
// }

// Read point-scalar pairs from memory and stream them
void data_loader(
    element_t *x_array,
    element_t *y_array,
    element_t *z_array,
    element_t *t_array,
    element_t *scalar_array,
    int degree,
    hls::stream<element_t> &x_stream,
    hls::stream<element_t> &y_stream,
    hls::stream<element_t> &z_stream,
    hls::stream<element_t> &t_stream,
    hls::stream<element_t> &scalar_stream)
{
#pragma HLS INTERFACE m_axi port = x_array depth = MAX_DEGREE bundle = gmem0
#pragma HLS INTERFACE m_axi port = y_array depth = MAX_DEGREE bundle = gmem1
#pragma HLS INTERFACE m_axi port = z_array depth = MAX_DEGREE bundle = gmem2
#pragma HLS INTERFACE m_axi port = t_array depth = MAX_DEGREE bundle = gmem2
#pragma HLS INTERFACE m_axi port = scalar_array depth = MAX_DEGREE bundle = gmem3
#pragma HLS INTERFACE s_axilite port = degree
#pragma HLS INTERFACE s_axilite port = return

DATA_LOAD_LOOP:
  for (int i = 0; i < degree; i++)
  {
#pragma HLS PIPELINE II = 1
    x_stream.write(x_array[i]);
    y_stream.write(y_array[i]);
    z_stream.write(z_array[i]);
    t_stream.write(t_array[i]);
    scalar_stream.write(scalar_array[i]);
  }
}

// // Accumulate all points by adding them together
// void point_accumulator(
//     hls::stream<EdwardsPoint> &in_stream,
//     element_t &result_x,
//     element_t &result_y,
//     element_t &result_z,
//     element_t &result_t,
//     int degree)
// {
// #pragma HLS INTERFACE m_axi port = result_x bundle = gmem_result
// #pragma HLS INTERFACE m_axi port = result_y bundle = gmem_result
// #pragma HLS INTERFACE m_axi port = result_z bundle = gmem_result
// #pragma HLS INTERFACE s_axilite port = degree
// #pragma HLS INTERFACE s_axilite port = return

//   // Initialize result to identity element (point at infinity in Jacobian coordinates)
//   result_x = 0;
//   result_y = 1;
//   result_z = 1;
//   result_t = 0;
//   element_t temp_x = 0, temp_y = 1, temp_z = 1, temp_t = 0;

// CCUMULATOR_LOOP:
//   for (int i = 0; i < degree; i++)
//   {
// #pragma HLS PIPELINE II = 1
//     EdwardsPoint point = in_stream.read();
//     edwards_point_add(
//         temp_x,
//         temp_y,
//         temp_z,
//         temp_t,
//         point.x,
//         point.y,
//         point.z,
//         point.t,
//         result_x,
//         result_y,
//         result_z,
//         result_t);
//     temp_x = result_x;
//     temp_y = result_y;
//     temp_z = result_z;
//     temp_t = result_t;
//   }
// }

/// PIPPENGERS CONTROL

void partition_scalar(
    hls::stream<element_t> &scalar_stream,
    int scalar_point_buffer[NUM_WINDOWS])
{
  element_t scalar = scalar_stream.read();
PARTITION_SCALAR:
  for (int i = 0; i < NUM_WINDOWS - 1; i++)
  {
#pragma HLS PIPELINE II = 1
    int partition = scalar.range((i + 1) * LOG_BUCKET_SIZE - 1, i * LOG_BUCKET_SIZE);
    scalar_point_buffer[i] = partition;
  }
  scalar_point_buffer[NUM_WINDOWS - 1] = scalar.range(BASE_BITWIDTH - 1, (NUM_WINDOWS - 1) * LOG_BUCKET_SIZE);
}

// Add point to the appropriate bucket based on scalar partitioning
void add_point_to_bucket(
    EdwardsPoint &bucket_point,
    element_t x, element_t y, element_t z, element_t t)
{
  element_t new_bucket_point_x = 0, new_bucket_point_y = 0;
  element_t new_bucket_point_z = 0, new_bucket_point_t = 0;

  if (bucket_point.x == 0 && bucket_point.y == 0)
  {
    // If the bucket is empty, initialize it with the new point
    bucket_point.x = 0;
    bucket_point.y = 1;
    bucket_point.z = 1;
    bucket_point.t = 0;
  }

  edwards_point_add(
      bucket_point.x, bucket_point.y, bucket_point.z, bucket_point.t,
      x, y, z, t,
      new_bucket_point_x, new_bucket_point_y, new_bucket_point_z, new_bucket_point_t);

  bucket_point.x = new_bucket_point_x;
  bucket_point.y = new_bucket_point_y;
  bucket_point.z = new_bucket_point_z;
  bucket_point.t = new_bucket_point_t;
}

// Process all points from the input streams and fill the buckets
void process_points(
    hls::stream<element_t> &x_stream,
    hls::stream<element_t> &y_stream,
    hls::stream<element_t> &z_stream,
    hls::stream<element_t> &t_stream,
    hls::stream<element_t> &scalar_stream,
    EdwardsPoint (&buckets)[NUM_WINDOWS][BUCKET_SIZE]) // Pass buckets by reference
{

  int scalar_partition_buffer[NUM_WINDOWS];
#pragma HLS ARRAY_PARTITION variable = scalar_partition_buffer type = cyclic factor = 2 dim = 1
#pragma HLS BIND_STORAGE variable = scalar_partition_buffer type = RAM_T2P impl = BRAM
MAIN_LOOP:
  while (!x_stream.empty())
  {
#pragma HLS LOOP_TRIPCOUNT min = 1 max = MAX_DEGREE
    element_t x = x_stream.read();
    element_t y = y_stream.read();
    element_t z = z_stream.read();
    element_t t = t_stream.read();

    // Partition the scalar into windows
    partition_scalar(scalar_stream, scalar_partition_buffer);

  PUT_INTO_BUCKETS_LOOP:
    for (int j = 0; j < NUM_WINDOWS; j++)
    {
#pragma HLS PIPELINE II = 1
      int scalar_partition = scalar_partition_buffer[j];
      add_point_to_bucket(buckets[j][scalar_partition], x, y, z, t);
    }
  }
}

// Compute the sum of a single window's buckets
void aggregate_and_output_results(EdwardsPoint (&buckets)[NUM_WINDOWS][BUCKET_SIZE], hls::stream<EdwardsPoint> &out_stream)
{
AGGREGATE_AND_OUT:

  for (int i = 0; i < NUM_WINDOWS; i++)
  {
#pragma HLS PIPELINE II = 1
    for (int j = 0; j < BUCKET_SIZE; j++)
    {
#pragma HLS PIPELINE II = 1
      out_stream.write(buckets[i][j]);
    }
  }
}

void pippenger_control(
    hls::stream<element_t> &x_stream,
    hls::stream<element_t> &y_stream,
    hls::stream<element_t> &z_stream,
    hls::stream<element_t> &t_stream,
    hls::stream<element_t> &scalar_stream,
    hls::stream<EdwardsPoint> &out_stream)
{
#pragma HLS INTERFACE mode = ap_fifo port = x_stream bundle = gmem0
#pragma HLS INTERFACE mode = ap_fifo port = y_stream bundle = gmem1
#pragma HLS INTERFACE mode = ap_fifo port = z_stream bundle = gmem2
#pragma HLS INTERFACE mode = ap_fifo port = t_stream bundle = gmem2
#pragma HLS INTERFACE mode = ap_fifo port = scalar_stream bundle = gmem3
#pragma HLS INTERFACE mode = ap_fifo port = out_stream bundle = gmem4
  // Define buckets array with proper allocation and memory optimization
  EdwardsPoint buckets[NUM_WINDOWS][BUCKET_SIZE];
#pragma HLS BIND_STORAGE variable = buckets type = RAM_T2P impl = URAM
#pragma HLS ARRAY_PARTITION variable = buckets type = cyclic factor = 2 dim = 2

  // Process all input points
  process_points(x_stream, y_stream, z_stream, t_stream, scalar_stream, buckets);

  // Aggregate results and write to output stream
  aggregate_and_output_results(buckets, out_stream);
}

void WriteBack(
    hls::stream<EdwardsPoint> &point_result_stream,
    element_t result_x[NUM_WINDOWS][BUCKET_SIZE],
    element_t result_y[NUM_WINDOWS][BUCKET_SIZE],
    element_t result_z[NUM_WINDOWS][BUCKET_SIZE],
    element_t result_t[NUM_WINDOWS][BUCKET_SIZE])
{
  for (int i = 0; i < NUM_WINDOWS; i++)
  {
    for (int j = 0; j < BUCKET_SIZE; j++)
    {
      EdwardsPoint out = point_result_stream.read();
      result_x[i][j] = out.x;
      result_y[i][j] = out.y;
      result_z[i][j] = out.z;
      result_t[i][j] = out.t;
    }
  }
}

extern "C"
{
  // // Top-level function with streaming interfaces
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
      int degree)
  {
#pragma HLS INTERFACE mode = m_axi port = x_array bundle = gmem0
#pragma HLS INTERFACE mode = m_axi port = y_array bundle = gmem1
#pragma HLS INTERFACE mode = m_axi port = z_array bundle = gmem2
#pragma HLS INTERFACE mode = m_axi port = t_array bundle = gmem3
#pragma HLS INTERFACE mode = m_axi port = result_x bundle = gmem0
#pragma HLS INTERFACE mode = m_axi port = result_y bundle = gmem1
#pragma HLS INTERFACE mode = m_axi port = result_z bundle = gmem2
#pragma HLS INTERFACE mode = m_axi port = result_t bundle = gmem3

    static hls::stream<element_t> x_point_stream("x_point_stream");
    static hls::stream<element_t> y_point_stream("y_point_stream");
    static hls::stream<element_t> z_point_stream("z_point_stream");
    static hls::stream<element_t> t_point_stream("t_point_stream");
    static hls::stream<element_t> scalar_point_stream("scalar_point_stream");

    static hls::stream<EdwardsPoint> point_result_stream("point_result_stream");

#pragma HLS STREAM variable = x_point_stream depth = HLS_STREAM_DEPTH
#pragma HLS STREAM variable = y_point_stream depth = HLS_STREAM_DEPTH
#pragma HLS STREAM variable = z_point_stream depth = HLS_STREAM_DEPTH
#pragma HLS STREAM variable = scalar_point_stream depth = HLS_STREAM_DEPTH
#pragma HLS STREAM variable = point_result_stream depth = HLS_STREAM_DEPTH
#pragma HLS DATAFLOW
    data_loader(x_array, y_array, z_array, t_array, scalar_array, degree, x_point_stream, y_point_stream, z_point_stream, t_point_stream, scalar_point_stream);

    pippenger_control(
        x_point_stream,
        y_point_stream,
        z_point_stream,
        t_point_stream,
        scalar_point_stream,
        point_result_stream);

    WriteBack(
        point_result_stream,
        result_x,
        result_y,
        result_z,
        result_t);
  }
}
