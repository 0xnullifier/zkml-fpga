
#include "ntt.hpp"
#include <iostream>
#include <vector>

using namespace std;

vector<GF> get_test_vector()
{
    vector<GF> test_vector;

    for (int i = 0; i < 10; i++)
    {
        // add the test cases 0..10
        test_vector.push_back(GF(i));

        /* XXX aray: Fixed the constants below (need to bracket the [1 << p] and use 64 bit arithmetic). */

        // add the (1 << 31) - 10..(1 << 31) + 10
        test_vector.push_back(GF((1ull << 31) - 10 + i));
        test_vector.push_back(GF((1ull << 31) + i));

        // add the (1 << 32) - 10..(1 << 32) + 10
        test_vector.push_back(GF((1ull << 32) - 10 + i));
        test_vector.push_back(GF((1ull << 32) + i));

        // add the (1 << 63) - 10..(1 << 63) + 10
        test_vector.push_back(GF((1ull << 63) - 10 + i));
        test_vector.push_back(GF((1ull << 63) + i));

        // add the MODULUS - 10..MODULUS
        test_vector.push_back(MODULUS - GF(10 - i));
    }

    /*
    using Iter = std::vector<GF>::const_iterator;
    for (Iter it=test_vector.begin(); it != test_vector.end(); it++) {
      cout << (*it).to_string(10)<< endl;
    }

    cout << ZERO.to_string(10) << endl;
    cout << ONE.to_string(10) << endl;
    cout << TWO.to_string(10) << endl;
    cout << MODULUS.to_string(10) << endl;
    cout << EPSILON.to_string(10) << endl;
    cout << MASK.to_string(10) << endl;
    */

    return test_vector;
}

int arithmetic_test()
{
    cout << "Running arithmetic test." << endl;

    vector<GF> test_vector = get_test_vector();
    for (int i = 0; i < test_vector.size(); i++)
    {
        for (int j = 0; j < test_vector.size(); j++)
        {
            GF left = test_vector.at(i);
            GF right = test_vector.at(j);

            while (left >= MODULUS)
            {
                left -= MODULUS;
            }
            while (right >= MODULUS)
            {
                right -= MODULUS;
            }

            // check if addition is done correctly
            GF actual = to_canonical(add(left, right));
            GF expected = left + right;
            while (expected >= MODULUS)
            {
                expected -= MODULUS;
            }

            if (actual != expected)
            {
                cout << "Error: Compute " + left.to_string(10) + " + " + right.to_string(10) + ": expected " + expected.to_string(10) + " actual " + actual.to_string(10) << endl;
                return 1;
            }

            // check if subtraction is done correctly
            actual = to_canonical(sub(left, right));
            if (left >= right)
            {
                expected = left - right;
            }
            else
            {
                expected = MODULUS - (right - left);
            }

            if (actual != expected)
            {
                cout << "Error: Compute " + left.to_string(10) + " - " + right.to_string(10) + ": expected " + expected.to_string(10) + " actual " + actual.to_string(10) << endl;
                return 1;
            }

            // check if multiplication is done correctly
            actual = to_canonical(mult(left, right));
            {
                ap_ulong left_u64 = left.to_uint64();
                ap_ulong right_u64 = right.to_uint64();
                ap_ulong modulus_u64 = MODULUS.to_uint64();

                GF_MULT left_u128 = GF_MULT(left_u64);
                GF_MULT right_u128 = GF_MULT(right_u64);
                GF_MULT modulus_u128 = GF_MULT(modulus_u64);

                GF_MULT res_u128 = (left_u128 * right_u128) % modulus_u128;
                expected = GF(res_u128.to_uint64());
            }
            if (actual != expected)
            {
                cout << "Error: Compute " + left.to_string(10) + " * " + right.to_string(10) + ": expected " + expected.to_string(10) + " actual " + actual.to_string(10) << endl;
                return 1;
            }
        }
    }

    return 0;
}

int test_2_3_linear()
{
    GF in[8];
    for (int i = 0; i < 8; i++)
    {
        in[i] = ZERO;
    }

    in[0] = ONE;
    in[1] = TWO;

    NTT_2_3_in_place(in);

    GF expected_out[8] = {GF(0x0000000000000003), GF(0xfffffffefe000002), GF(0x0002000000000001), GF(0xfffffdff00000202), GF(0xffffffff00000000),
                          GF(0x0000000002000001), GF(0xfffdffff00000002), GF(0x000001fffffffe01)};

    for (int i = 0; i < 8; i++)
    {
        if (in[i] != expected_out[i])
        {
            cout << "Error: NTT result [" << i << "] should be "
                 << expected_out[i].to_string(10) << ", but the output is "
                 << in[i].to_string(10) << endl;
            return 1;
        }
    }

    return 0;
}

int test_2_12_linear()
{
    GF in[4096];
    for (int i = 0; i < 4096; i++)
    {
        in[i] = ZERO;
    }

    in[0] = ONE;
    in[1] = TWO;

    NTT_2_12_in_place(in);

    // we only test the first eight elements
    GF expected_out[8] = {GF(0x0000000000000003), GF(0xe586a3342b3bf96c), GF(0x0ca769003b43919f), GF(0x28b1a9691a680e3c), GF(0x3b1e55b017fdb2e4),
                          GF(0x309d8a339a00ae6a), GF(0xdc13ebf6fd47c483), GF(0xc12decfb84bb920e)};

    for (int i = 0; i < 8; i++)
    {
        if (in[i] != expected_out[i])
        {
            cout << "Error: NTT result [" << i << "] should be "
                 << expected_out[i].to_string(10) << ", but the output is "
                 << in[i].to_string(10) << endl;
            return 1;
        }
    }

    return 0;
}

int test_2_3_fully_random()
{
    GF in[8] = {GF(0xcef967e3e1d0860e), GF(0x44be7570bcd4f9df), GF(0xf4848ed283e858f2), GF(0xa3a3a47eeb6f76f6), GF(0xa12d1d0b69c4108b),
                GF(0xeb285d19459ef6c3), GF(0x10d812558ad9c103), GF(0xd19d3e319d1b6b4a)};
    NTT_2_3_in_place(in);

    GF expected_out[8] = {GF(0x1aaadb56e555836b), GF(0x975bcb9d395a282f), GF(0x69055db04cf94815), GF(0x963cdab11477cc1c), GF(0xd05b70dbcf57ddad),
                          GF(0xed14bc2fbdc30962), GF(0x6c8e69de2cabb133), GF(0x9c83c8e1d49cd861)};

    for (int i = 0; i < 8; i++)
    {
        if (in[i] != expected_out[i])
        {
            cout << "Error: NTT result [" << i << "] should be "
                 << expected_out[i].to_string(10) << ", but the output is "
                 << in[i].to_string(10) << endl;
            return 1;
        }
    }

    return 0;
}

int ntt_test()
{
    cout << "Running NTT test." << endl;

    int res = test_2_3_linear();
    if (res != 0)
    {
        return res;
    }

    res = test_2_12_linear();
    if (res != 0)
    {
        return res;
    }

    res = test_2_3_fully_random();
    if (res != 0)
    {
        return res;
    }

    return 0;
}

int main()
{
    arithmetic_test();
    ntt_test();
    return 0;
}