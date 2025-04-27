// filepath: /home/terryadavis/utkarsh/zkml-fpga/hls/ntt/src/ntt_tb.cpp
#include <iostream>
#include <fstream>
#include <cstring>
#include <vector>
#include "ntt.hpp"
#include "timer.hpp"

using namespace std;

// Test for different NTT sizes
bool test_ntt_2_24();

int main()
{
    cout << "===== Starting NTT Testbench =====" << endl;

    bool all_passed = true;

    // Test NTT size 2^24
    cout << "\n----- Testing NTT 2^24 -----" << endl;
    all_passed &= test_ntt_2_24();

    if (all_passed)
    {
        cout << "\n===== All Tests Passed! =====" << endl;
        return EXIT_SUCCESS;
    }
    else
    {
        cout << "\n===== Some Tests Failed! =====" << endl;
        return EXIT_FAILURE;
    }
}

bool test_ntt_2_24()
{
    Timer timer;
    long long stopTime;

    // Size for 2^24 NTT
    const int N = (1 << 24);

    cout << "[INFO] Loading test vectors" << endl;
    string lineIn, lineOut;
    ifstream fin("in_fully_random_2_24.txt");
    ifstream fout("out_fully_random_2_24.txt");

    if (fin.fail() || fout.fail())
    {
        cerr << "[ERROR] Test vectors not found. Generate with `make testvectors`." << endl;
        return false;
    }

    cout << "[INFO] Allocating memory for input and output" << endl;
    u64 *expected_out = new u64[N];
    u64 *inputs = new u64[N];
    u64 *outputs = new u64[N];

    cout << "[INFO] Reading test vectors" << endl;
    TIME(
        for (int i = 0; i < _2_24; i++) {
            getline(fin, lineIn);
            getline(fout, lineOut);
            inputs[i] = stoull(lineIn);
            expected_out[i] = stoull(lineOut);
        });

    // Create 16 separate pointers for each segment of input/output arrays
    // Each pointer represents 1/16 of the total array (for HBM simulation)
    u64 *in_segments[16];
    u64 *out_segments[16];
    for (int i = 0; i < 16; i++)
    {
        in_segments[i] = &inputs[i * (N / 16)];
        out_segments[i] = &outputs[i * (N / 16)];
    }

    cout << "[INFO] Running NTT operation" << endl;
    TIME(
        // Using the ntt_2_24 function directly which handles both passes internally
        ntt_2_24(
            in_segments[0], in_segments[1], in_segments[2], in_segments[3],
            in_segments[4], in_segments[5], in_segments[6], in_segments[7],
            in_segments[8], in_segments[9], in_segments[10], in_segments[11],
            in_segments[12], in_segments[13], in_segments[14], in_segments[15],
            out_segments[0], out_segments[1], out_segments[2], out_segments[3],
            out_segments[4], out_segments[5], out_segments[6], out_segments[7],
            out_segments[8], out_segments[9], out_segments[10], out_segments[11],
            out_segments[12], out_segments[13], out_segments[14], out_segments[15]););
    cout << "[INFO] Validating results" << endl;
    bool passed = true;
    int error_count = 0;
    const int max_errors_to_print = 10;

    for (int i = 0; i < N; i++)
    {
        if (inputs[i] != expected_out[i])
        {
            if (error_count < max_errors_to_print)
            {
                cout << "[ERROR] Mismatch at index " << i << ": "
                     << "Expected: " << expected_out[i]
                     << ", Got: " << inputs[i] << endl;
            }
            error_count++;
            passed = false;
        }
    }

    if (!passed)
    {
        cout << "[FAIL] Total mismatches: " << error_count << " out of " << N << " values" << endl;
    }
    else
    {
        cout << "[PASS] All " << N << " values match expected outputs" << endl;
    }

    // Clean up
    delete[] expected_out;
    delete[] inputs;
    delete[] outputs;

    return passed;
}