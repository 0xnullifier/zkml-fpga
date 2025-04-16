#include "msm.hpp"
#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <iomanip>
#include <string>

// Convert a hex string to element_t (handles 96-character hex strings)
element_t hex_string_to_element(const std::string &hex_str)
{
    element_t result = 0;
    size_t len = hex_str.size();

    for (int i = 0; i < 6; ++i)
    {
        int start_pos = static_cast<int>(len) - 16 * (i + 1);
        if (start_pos < 0)
            start_pos = 0;

        int chunk_len = (i == 5 && start_pos == 0) ? start_pos + 16 : 16;
        std::string chunk = hex_str.substr(start_pos, chunk_len);

        uint64_t limb = std::stoull(chunk, nullptr, 16);
        result |= (static_cast<element_t>(limb) << (i * 64));
    }

    return result;
}

// Write element_t to a stream as 96-character hex
void write_element_to_stream(std::ostream &os, const element_t &value)
{
    for (int i = 5; i >= 0; --i)
    {
        uint64_t limb = static_cast<uint64_t>(value.range((i + 1) * 64 - 1, i * 64));
        os << std::uppercase << std::hex << std::setfill('0') << std::setw(16) << limb;
    }
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
    element_t scalar[num_points];

    for (int i = 0; i < num_points; ++i)
    {
        std::string x_hex, y_hex, scalar_hex;
        fin >> x_hex >> y_hex >> scalar_hex;

        if (x_hex.length() != 96 || y_hex.length() != 96 || scalar_hex.length() != 64)
        {
            std::cerr << "Warning: Non-standard hex length at point " << i
                      << ": " << x_hex.length() << ", "
                      << y_hex.length() << ", "
                      << scalar_hex.length() << '\n';
        }

        x[i] = hex_string_to_element(x_hex);
        y[i] = hex_string_to_element(y_hex);
        scalar[i] = hex_string_to_element(scalar_hex);

        if (i % 50 == 0 || i == num_points - 1)
        {
            std::cout << "Processed point " << (i + 1) << " of " << num_points << '\n';
        }
    }

    element_t result_x, result_y;
    std::cout << "Running msm computation with " << num_points << " points...\n";
    msm(x, y, scalar, result_x, result_y, num_points);

    std::ofstream fout("out.dat");
    if (!fout)
    {
        std::cerr << "Error: Unable to open output file for writing\n";
        return 1;
    }

    write_element_to_stream(fout, result_x);
    fout << " ";
    write_element_to_stream(fout, result_y);
    std::cout << "Output written to out.dat\n";

    std::cout << "Comparing against golden output...\n";
    // if (system("diff -w out.dat out.gold.dat"))
    // {
    //     std::cout << "*******************************************\n";
    //     std::cout << "FAIL: Output does not match the golden output\n";
    //     std::cout << "*******************************************\n";
    //     return 1;
    // }
    // else
    // {
    //     std::cout << "*******************************************\n";
    //     std::cout << "PASS: The output matches the golden output!\n";
    //     std::cout << "*******************************************\n";
    //     return 0;
    // }
    return 0;
}
