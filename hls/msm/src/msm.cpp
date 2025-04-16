#include "msm.hpp"

/////  BLS12-381 Curve
//! Curve information:
//! * Base element_t : q =
//! 4002409555221667393417789825735904156556882819939007885332058136124031650490837864442687629129015664037894272559787
//! * Scalar element_t : r =
//! 52435875175126190479447740508185965837690552500527637822603658699938581184513
//! * valuation(q - 1, 2) = 1
//! * valuation(r - 1, 2) = 32
//! * G1 curve equation: y^2 = x^3 + 4
//! * G2 curve equation: y^2 = x^3 + Fq2(4, 4)

element_t modInverse(element_t in_a, element_t in_m)
{
  element_t result = 0;
  ap_int<NUM_OVERALL_BITWIDTH> a = in_a, m = in_m;
  ap_int<NUM_OVERALL_BITWIDTH> m0 = in_m;
  ap_int<NUM_OVERALL_BITWIDTH> y = 0, x = 1, q = 0, t1 = 0;
  ap_int<NUM_OVERALL_BITWIDTH> t2 = 0, a1 = 0, m1 = 0, y1 = 0, x1 = 0, q_times_y = 0;

  if (m == 1)
    return 0;

  while (a > 1)
  {
    // q is quotient
    y1 = 0, x1 = 0, q_times_y = 0;
    t2 = y;
    q = a / m;
    // m is remainder now
    m1 = a % m;
    a1 = m;

    // Update y and x
    q_times_y = q * y;
    y1 = x - q_times_y;
    x1 = t2;

    // Update final results
    m = m1;
    a = a1;
    x = x1;
    y = y1;
  }
  // Make x positive
  if (x < 0)
  {
    x += m0;
  }

  result = (element_t)x;
  return result;
}

void point_doubling(element_t &rlt_x_q, element_t &rlt_y_q, element_t x1, element_t y1)
{
  // the case of infinity point
  if (y1 == 0)
  {
    rlt_x_q = 0;
    rlt_y_q = 0;
    return;
  }

  element_t q;
  q.range(1 * BREAKDOWN_BITWIDTH - 1, 0 * BREAKDOWN_BITWIDTH) = Q_VALUE0;
  q.range(2 * BREAKDOWN_BITWIDTH - 1, 1 * BREAKDOWN_BITWIDTH) = Q_VALUE1;
  q.range(3 * BREAKDOWN_BITWIDTH - 1, 2 * BREAKDOWN_BITWIDTH) = Q_VALUE2;
  q.range(4 * BREAKDOWN_BITWIDTH - 1, 3 * BREAKDOWN_BITWIDTH) = Q_VALUE3;
  q.range(5 * BREAKDOWN_BITWIDTH - 1, 4 * BREAKDOWN_BITWIDTH) = Q_VALUE4;
  q.range(6 * BREAKDOWN_BITWIDTH - 1, 5 * BREAKDOWN_BITWIDTH) = Q_VALUE5;

  element_t x1_sq = (x1 * x1) % q;
  element_t numerator = (3 * x1_sq) % q;
  element_t denominator = (2 * y1) % q;
  element_t denominator_inv = modInverse(denominator, q);
  element_t lambda = (numerator * denominator_inv) % q;

  // x3 = lambda^2 - 2*x1
  element_t lambda_sq = (lambda * lambda) % q;
  element_t x3 = (lambda_sq + q - (2 * x1) % q) % q;

  // y3 = lambda * (x1 - x3) - y1
  element_t x_diff = (x1 + q - x3) % q;
  element_t lambda_x_diff = (lambda * x_diff) % q;
  element_t y3 = (lambda_x_diff + q - y1) % q;

  rlt_y_q = y3;
  rlt_x_q = x3;
}

void point_addition(element_t &x3, element_t &y3, element_t x1, element_t y1, element_t x2, element_t y2)
{
  element_t q;
  q.range(1 * BREAKDOWN_BITWIDTH - 1, 0 * BREAKDOWN_BITWIDTH) = Q_VALUE0;
  q.range(2 * BREAKDOWN_BITWIDTH - 1, 1 * BREAKDOWN_BITWIDTH) = Q_VALUE1;
  q.range(3 * BREAKDOWN_BITWIDTH - 1, 2 * BREAKDOWN_BITWIDTH) = Q_VALUE2;
  q.range(4 * BREAKDOWN_BITWIDTH - 1, 3 * BREAKDOWN_BITWIDTH) = Q_VALUE3;
  q.range(5 * BREAKDOWN_BITWIDTH - 1, 4 * BREAKDOWN_BITWIDTH) = Q_VALUE4;
  q.range(6 * BREAKDOWN_BITWIDTH - 1, 5 * BREAKDOWN_BITWIDTH) = Q_VALUE5;

  if (x1 == 0 && y1 == 0)
  {
    x3 = x2;
    y3 = y2;
    return;
  }
  if (x2 == 0 && y2 == 0)
  {
    x3 = x1;
    y3 = y1;
    return;
  }

  element_t lambda_num = (y2 + q - y1) % q;
  element_t lambda_den = (x2 - x1 + q) % q;
  element_t lambda_den_inv = modInverse(lambda_den, q);
  element_t lambda = (lambda_num * lambda_den_inv) % q;
  element_t lambda_sq = (lambda * lambda) % q;
  x3 = (lambda_sq + q - (x1 + x2) % q) % q;
  element_t x1_minus_x3 = (x1 + q - x3) % q;
  element_t lambda_x1_minus_x3 = (lambda * x1_minus_x3) % q;
  y3 = (lambda_x1_minus_x3 - y1 + q) % q;
}

void scalar_mult_single(element_t &result_x, element_t &result_y, element_t base_x, element_t base_y, element_t scalar)
{
#pragma HLS INLINE off

  result_x = 0;
  result_y = 0;

// Use binary method (double-and-add) from LSB to MSB
SCALAR_MULT_LOOP:
  for (int i = 0; i < SCALAR_ITERATION_BIT; i++)
  {
#pragma HLS PIPELINE II = 1

    if (((int)scalar[i]) == 1)
    {
      element_t temp_x = 0, temp_y = 0;
      point_addition(temp_x, temp_y, result_x, result_y, base_x, base_y);
      result_x = temp_x;
      result_y = temp_y;
    }

    element_t doubled_x = 0, doubled_y = 0;
    point_doubling(doubled_x, doubled_y, base_x, base_y);
    base_x = doubled_x;
    base_y = doubled_y;
  }
}

void msm(
    element_t x_array[HOST_DATA_ARRAY_LENGTH],
    element_t y_array[HOST_DATA_ARRAY_LENGTH],
    element_t scalar_array[HOST_DATA_ARRAY_LENGTH],
    element_t &result_x,
    element_t &result_y,
    int degree)
{
#pragma HLS INTERFACE m_axi depth = MAX_DEGREE offset = slave port = x_array bundle = x_array
#pragma HLS INTERFACE m_axi depth = MAX_DEGREE offset = slave port = y_array bundle = y_array
#pragma HLS INTERFACE m_axi depth = MAX_DEGREE offset = slave port = scalar_array bundle = scalar_array
#pragma HLS INTERFACE m_axi depth = 3 offset = slave port = result_x bundle = result_x
#pragma HLS INTERFACE m_axi depth = 3 offset = slave port = result_y bundle = result_y
#pragma HLS INTERFACE s_axilite port = degree
#pragma HLS INTERFACE s_axilite register port = return

  // Local arrays to store intermediate results
  result_x = 0;
  result_y = 0;
  element_t intermediate_x = 0, intermediate_y = 0;

  // Process each point-scalar pair independently
COMPUTE_LOOP:
  for (int i = 0; i < degree; i++)
  {
#pragma HLS PIPELINE II = 2
    scalar_mult_single(intermediate_x, intermediate_y, x_array[i], y_array[i], scalar_array[i]);
    element_t temp_x = result_x;
    element_t temp_y = result_y;
    point_addition(result_x, result_y, temp_x, temp_y, intermediate_x, intermediate_y);
  }
}