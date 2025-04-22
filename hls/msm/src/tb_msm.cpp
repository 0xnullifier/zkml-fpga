#include "msm.hpp"
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <iomanip>
#include <string>

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

element_t hex_string_to_element(const std::string &hex_str)
{
    element_t result = 0;
    size_t len = hex_str.size();

    // Only process at most 64 characters (256 bits) from right to left
    size_t effective_len = std::min(len, size_t(64));

    for (int i = 0; i < 4; ++i)
    {
        int start_pos = static_cast<int>(effective_len) - 16 * (i + 1);
        if (start_pos < 0)
            start_pos = 0;

        int chunk_len;
        if (i == 3 && start_pos == 0)
        {
            chunk_len = std::min(16, static_cast<int>(effective_len));
        }
        else
        {
            chunk_len = std::min(16, static_cast<int>(effective_len) - start_pos);
        }

        if (chunk_len <= 0)
            break;

        std::string chunk = hex_str.substr(len - effective_len + start_pos, chunk_len);

        uint64_t limb = std::stoull(chunk, nullptr, 16);

        // Ensure we don't shift beyond the bit width of element_t
        if (i * 64 < BASE_BITWIDTH)
        {
            result |= (static_cast<element_t>(limb) << (i * 64));
        }
    }

    return result;
}
// Write element_t to a stream as 96-character hex
void write_element_to_stream(std::ostream &os, const element_t &value)
{
    for (int i = 3; i >= 0; --i)
    {
        uint64_t limb = static_cast<uint64_t>(value.range((i + 1) * 64 - 1, i * 64));
        os << std::uppercase << std::hex << std::setfill('0') << std::setw(16) << limb;
    }
}

void to_affine(
    element_t &x,
    element_t &y,
    element_t &z)
{
    element_t z_inv = modInverse(z, base_field);
    element_t x_affine = (x * z_inv) % (element_t)base_field;
    element_t y_affine = (y * z_inv) % (element_t)base_field;
    x = x_affine;
    y = y_affine;
    z = 1;
}
void scalar_mult_single(
    element_t &result_x,
    element_t &result_y,
    element_t &result_z,
    element_t &result_t,
    element_t base_x,
    element_t base_y,
    element_t base_z,
    element_t base_t,
    element_t scalar)
{
    // intial to identitiy point
    result_x = 0;
    result_y = 1;
    result_z = 1; // Initialize result_z to 1 for proper Jacobian representation
    result_t = 0;
    element_t temp_x = 0, temp_y = 1, temp_z = 1, temp_t = 0, doubled_x = 0, doubled_y = 0, doubled_z = 0, doubled_t = 0;

    // Use binary method (double-and-add) from LSB to MSB
SCALAR_MULT_LOOP:
    for (int i = 0; i < SCALAR_ITERATION_BIT; i++)
    {

#pragma HLS PIPELINE II = 1
        bool bit = scalar[i];

        if (bit)
        {
            edwards_point_add(result_x, result_y, result_z, result_t, base_x, base_y, base_z, base_t, temp_x, temp_y, temp_z, temp_t);
            result_x = temp_x;
            result_y = temp_y;
            result_z = temp_z;
            result_t = temp_t;
        }

        edwards_point_double(base_x, base_y, base_z, base_t, doubled_x, doubled_y, doubled_z, doubled_t);
        base_x = doubled_x;
        base_y = doubled_y;
        base_z = doubled_z;
        base_t = doubled_t;
    }
}

EdwardsPoint bucket_sum(
    element_t x[NUM_WINDOWS][BUCKET_SIZE],
    element_t y[NUM_WINDOWS][BUCKET_SIZE],
    element_t z[NUM_WINDOWS][BUCKET_SIZE],
    element_t t[NUM_WINDOWS][BUCKET_SIZE])
{
    EdwardsPoint result;
    result.y = 1;
    result.z = 1;
    for (int i = 0; i < NUM_WINDOWS; i++)
    {
        EdwardsPoint window_sum;
        window_sum.y = 1;
        window_sum.z = 1;
        for (int j = 0; j < BUCKET_SIZE; j++)
        {
            if (x[i][j] == 0)
            {
                continue;
            }
            EdwardsPoint scalar_mult_result;
            scalar_mult_single(
                scalar_mult_result.x,
                scalar_mult_result.y,
                scalar_mult_result.z,
                scalar_mult_result.t,
                x[i][j],
                y[i][j],
                z[i][j],
                t[i][j],
                j);

            EdwardsPoint temp = window_sum;

            edwards_point_add(
                temp.x,
                temp.y,
                temp.z,
                temp.t,
                scalar_mult_result.x,
                scalar_mult_result.y,
                scalar_mult_result.z,
                scalar_mult_result.t,
                window_sum.x,
                window_sum.y,
                window_sum.z,
                window_sum.t);
        }

        EdwardsPoint scalar_mult_result;
        element_t scalar = ((element_t)1 << (element_t)(i * LOG_BUCKET_SIZE));
        std::cout << "Scalar: " << scalar << "\n";
        scalar_mult_single(
            scalar_mult_result.x,
            scalar_mult_result.y,
            scalar_mult_result.z,
            scalar_mult_result.t,
            window_sum.x,
            window_sum.y,
            window_sum.z,
            window_sum.t,
            scalar);

        if (scalar_mult_result.x == 0)
        {
            continue;
        }

        EdwardsPoint temp = result;

        edwards_point_add(
            temp.x,
            temp.y,
            temp.z,
            temp.t,
            scalar_mult_result.x,
            scalar_mult_result.y,
            scalar_mult_result.z,
            scalar_mult_result.t,
            result.x,
            result.y,
            result.z,
            result.t);
    }

    return result;
}

int main()
{
    const std::string input_path = "/home/terryadavis/utkarsh/zkml-fpga/hls/msm/dat/input.dat";
    std::ifstream fin(input_path);
    if (!fin)
    {
        std::cerr << "Error: Unable to open input file: " << input_path << "\n";
        return 1;
    }

    int num_points;
    fin >> num_points;
    fin.ignore(std::numeric_limits<std::streamsize>::max(), '\n'); // Skip rest of the line
    std::cout << "Number of points: " << num_points << '\n';

    element_t x[num_points];
    element_t y[num_points];
    element_t z[num_points];
    element_t t[num_points];
    element_t scalar[num_points];

    for (int i = 0; i < num_points; ++i)
    {
        std::string x_hex, y_hex, scalar_hex;
        fin >> x_hex >> y_hex >> scalar_hex;

        if (x_hex.length() != 64 || y_hex.length() != 64 || scalar_hex.length() != 64)
        {
            std::cerr << "Warning: Non-standard hex length at point " << i
                      << ": " << x_hex.length() << ", "
                      << y_hex.length() << ", "
                      << scalar_hex.length() << '\n';
        }

        x[i] = hex_string_to_element(x_hex);
        y[i] = hex_string_to_element(y_hex);
        z[i] = 1;
        t[i] = (x[i] * y[i]) % (element_t)base_field;
        scalar[i] = hex_string_to_element(scalar_hex);

        if (i % 50 == 0 || i == num_points - 1)
        {
            std::cout << "Processed point " << (i + 1) << " of " << num_points << '\n';
        }
    }

    element_t result_x[NUM_WINDOWS][BUCKET_SIZE];
    element_t result_y[NUM_WINDOWS][BUCKET_SIZE];
    element_t result_z[NUM_WINDOWS][BUCKET_SIZE];
    element_t result_t[NUM_WINDOWS][BUCKET_SIZE];

    msm(
        x,
        y,
        z,
        t,
        scalar,
        result_x,
        result_y,
        result_z,
        result_t,
        num_points);
    // aggregate points
    EdwardsPoint result = bucket_sum(
        result_x,
        result_y,
        result_z,
        result_t);
    std::cout << result.x << std::endl;
    std::cout << result.y << std::endl;
    to_affine(result.x, result.y, result.z);
    std::cout << "x: ";
    write_element_to_stream(std::cout, result.x);
    std::cout << "\ny: ";
    write_element_to_stream(std::cout, result.y);
    std::cout << "\n";
    return 0;
}
