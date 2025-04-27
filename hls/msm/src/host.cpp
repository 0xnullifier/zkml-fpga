#include "cmdlineparser.h"
#include <fstream>
#include <iostream>
#include <cstring>
#include <vector>
#include <iomanip>
#include <string>

// XRT includes
#include "xrt/xrt_bo.h"
#include "xrt/xrt_device.h"
#include "xrt/xrt_kernel.h"
#include "experimental/xrt_xclbin.h"
#include "experimental/xrt_ip.h"

// User includes
#include "msm.hpp"
#include "timer.hpp"

using namespace std;

// Helper function to convert hex string to element_t
element_t hex_string_to_element(const std::string &hex_str)
{
    element_t result = 0;
    size_t len = hex_str.size();
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

        if (i * 64 < BASE_BITWIDTH)
        {
            result |= (static_cast<element_t>(limb) << (i * 64));
        }
    }
    return result;
}

// Write element_t to a stream as hex
void write_element_to_stream(std::ostream &os, const element_t &value)
{
    for (int i = 3; i >= 0; --i)
    {
        uint64_t limb = static_cast<uint64_t>(value.range((i + 1) * 64 - 1, i * 64));
        os << std::uppercase << std::hex << std::setfill('0') << std::setw(16) << limb;
    }
}

// Convert from projective to affine coordinates
void to_affine(element_t &x, element_t &y, element_t &z)
{
    element_t q = (element_t)base_field;

    // Compute modular inverse of z
    element_t a = z;
    element_t m = q;
    element_t y_inv = 0, x_inv = 1;

    while (a > 1)
    {
        element_t quotient = a / m;
        element_t temp = m;
        m = a % m;
        a = temp;

        temp = y_inv;
        y_inv = x_inv - quotient * y_inv;
        x_inv = temp;
    }

    if (x_inv < 0)
        x_inv += q;

    element_t z_inv = x_inv;
    x = (x * z_inv) % q;
    y = (y * z_inv) % q;
    z = 1;
}

int main(int argc, char **argv)
{
    Timer timer;
    long long stopTime;

    sda::utils::CmdLineParser parser;
    parser.addSwitch("--xclbin_file", "-x", "input binary file string", "");
    parser.addSwitch("--device_id", "-d", "device index", "0");
    parser.addSwitch("--input_file", "-i", "input data file", "input.dat");
    parser.addSwitch("--num_points", "-n", "number of points to process", "100");
    parser.parse(argc, argv);

    if (argc < 3)
    {
        parser.printHelp();
        return EXIT_FAILURE;
    }

    int device_index = stoi(parser.value("device_id"));
    cout << "[INFO] Open device[" << device_index << "]" << endl;
    auto device = xrt::device(device_index);

    string binaryFile = parser.value("xclbin_file");
    cout << "[INFO] Load xclbin: " << binaryFile << endl;
    auto uuid = device.load_xclbin(binaryFile);

    string krnl_name = "msm";
    cout << "[INFO] Fetch compute kernel: " << krnl_name << endl;
    auto kernel = xrt::kernel(device, uuid, krnl_name, xrt::kernel::cu_access_mode::exclusive);

    string input_file = parser.value("input_file");
    int num_points = stoi(parser.value("num_points"));

    ifstream fin(input_file);
    if (!fin)
    {
        cerr << "[ERROR] Unable to open input file: " << input_file << endl;
        return EXIT_FAILURE;
    }

    string first_line;
    getline(fin, first_line);
    try
    {
        num_points = stoi(first_line);
        cout << "[INFO] Number of points from file: " << num_points << endl;
    }
    catch (...)
    {
        fin.seekg(0);
    }

    size_t point_size_bytes = sizeof(element_t) * num_points;
    cout << "[INFO] Allocating host buffers for " << num_points << " points ("
         << point_size_bytes << " bytes each)" << endl;

    element_t *x_array = new element_t[num_points];
    element_t *y_array = new element_t[num_points];
    element_t *z_array = new element_t[num_points];
    element_t *t_array = new element_t[num_points];
    element_t *scalar_array = new element_t[num_points];

    cout << "[INFO] Loading input data" << endl;
    for (int i = 0; i < num_points; i++)
    {
        string x_hex, y_hex, scalar_hex;
        if (!(fin >> x_hex >> y_hex >> scalar_hex))
        {
            cerr << "[WARNING] Reached end of file after " << i << " points" << endl;
            num_points = i;
            break;
        }

        x_array[i] = hex_string_to_element(x_hex);
        y_array[i] = hex_string_to_element(y_hex);
        z_array[i] = 1;                                                 // Initialize to projective coordinate with z=1
        t_array[i] = (x_array[i] * y_array[i]) % (element_t)base_field; // T = X*Y in extended coordinates
        scalar_array[i] = hex_string_to_element(scalar_hex);

        if (i % 100 == 0)
            cout << "[INFO] Loaded " << i << " points" << endl;
    }
    cout << "[INFO] Loaded " << num_points << " points" << endl;

    cout << "[INFO] Allocating device buffers" << endl;
    xrt::bo bo_x(device, point_size_bytes, kernel.group_id(0));
    xrt::bo bo_y(device, point_size_bytes, kernel.group_id(1));
    xrt::bo bo_z(device, point_size_bytes, kernel.group_id(2));
    xrt::bo bo_t(device, point_size_bytes, kernel.group_id(3));
    xrt::bo bo_scalar(device, point_size_bytes, kernel.group_id(4));

    size_t result_size_bytes = sizeof(element_t) * NUM_WINDOWS * BUCKET_SIZE;
    xrt::bo bo_result_x(device, result_size_bytes, kernel.group_id(5));
    xrt::bo bo_result_y(device, result_size_bytes, kernel.group_id(6));
    xrt::bo bo_result_z(device, result_size_bytes, kernel.group_id(7));
    xrt::bo bo_result_t(device, result_size_bytes, kernel.group_id(8));

    cout << "[INFO] Writing data to device buffers" << endl;
    bo_x.write(x_array);
    bo_y.write(y_array);
    bo_z.write(z_array);
    bo_t.write(t_array);
    bo_scalar.write(scalar_array);

    cout << "[INFO] Syncing data to device" << endl;
    TIMEFOR(bo_x.sync(XCL_BO_SYNC_BO_TO_DEVICE));
    TIMEFOR(bo_y.sync(XCL_BO_SYNC_BO_TO_DEVICE));
    TIMEFOR(bo_z.sync(XCL_BO_SYNC_BO_TO_DEVICE));
    TIMEFOR(bo_t.sync(XCL_BO_SYNC_BO_TO_DEVICE));
    TIMEFOR(bo_scalar.sync(XCL_BO_SYNC_BO_TO_DEVICE));

    cout << "[INFO] Running MSM kernel" << endl;
    TIME(auto run = kernel(bo_x, bo_y, bo_z, bo_t, bo_scalar, bo_result_x, bo_result_y, bo_result_z, bo_result_t, num_points);
         run.wait());

    cout << "[INFO] Reading results from device" << endl;
    element_t result_x[NUM_WINDOWS][BUCKET_SIZE];
    element_t result_y[NUM_WINDOWS][BUCKET_SIZE];
    element_t result_z[NUM_WINDOWS][BUCKET_SIZE];
    element_t result_t[NUM_WINDOWS][BUCKET_SIZE];

    TIMEFOR(bo_result_x.sync(XCL_BO_SYNC_BO_FROM_DEVICE));
    TIMEFOR(bo_result_y.sync(XCL_BO_SYNC_BO_FROM_DEVICE));
    TIMEFOR(bo_result_z.sync(XCL_BO_SYNC_BO_FROM_DEVICE));
    TIMEFOR(bo_result_t.sync(XCL_BO_SYNC_BO_FROM_DEVICE));

    bo_result_x.read(result_x);
    bo_result_y.read(result_y);
    bo_result_z.read(result_z);
    bo_result_t.read(result_t);

    cout << "[INFO] Processing MSM results" << endl;

    // TODO: add the aggeragation code

    // Cleanup
    delete[] x_array;
    delete[] y_array;
    delete[] z_array;
    delete[] t_array;
    delete[] scalar_array;

    cout << "[INFO] MSM completed successfully" << endl;
    return EXIT_SUCCESS;
}