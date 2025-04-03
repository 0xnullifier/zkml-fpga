#include <stdint.h>
#include <stdbool.h>
#include "ff.h"

bool field_is_zero(const field_t f)
{
    for (int i = 0; i < 4; i++)
    {
        if (f[i] != 0)
            return false;
    }
    return true;
}

bool field_is_one(const field_t f)
{
    field_t one;
    field_set_one(one);

    for (int i = 0; i < 4; i++)
    {
        if (f[i] != one[i])
            return false;
    }
    return true;
}

// #pragma HLS INLINE
void field_init(field_t out)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        out[i] = 0;
    }
}

// #pragma HLS INLINE
void field_copy(field_t out, const field_t in)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    // #pragma HLS ARRAY_PARTITION variable = in complete
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        out[i] = in[i];
    }
}

// #pragma HLS INLINE
void field_set_one(field_t out)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    field_copy(out, ONE_MONT);
}

// Set field element from uint64_t value (converted to Montgomery form)
// #pragma HLS INLINE
void field_from_uint64(field_t out, uint64_t val)
{
#pragma HLS ARRAY_PARTITION variable = out complete
    out[0] = val;
    out[1] = 0;
    out[2] = 0;
    out[3] = 0;

    // Convert to Montgomery form
    field_t r_squared;
    field_copy(r_squared, R_SQUARED);
    field_t temp;
    field_copy(temp, out);
    field_mul(out, temp, r_squared);
}

// Check if two field elements are equal
// #pragma HLS INLINE
bool field_eq(const field_t a, const field_t b)
{
    // #pragma HLS ARRAY_PARTITION variable = a complete
    // #pragma HLS ARRAY_PARTITION variable = b complete
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        if (a[i] != b[i])
        {
            return false;
        }
    }
    return true;
}

// #pragma HLS INLINE
void field_mul(field_t out, const field_t a, const field_t b)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    // #pragma HLS ARRAY_PARTITION variable = a complete
    // #pragma HLS ARRAY_PARTITION variable = b complete

    uint64_t t[8] = {0};
    // #pragma HLS ARRAY_PARTITION variable = t complete

    uint64_t carry = 0;
    uint64_t m = 0;

    // Calculate t = a * b
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        carry = 0;
        for (int j = 0; j < 4; j++)
        {
            // #pragma HLS_PIPELINE II = 1
            uint64_t product_lo = (a[i] * b[j]) + t[i + j] + carry;
            uint64_t product_hi = (a[i] >> 32) * (b[j] >> 32) +
                                  ((a[i] >> 32) * (b[j] & 0xFFFFFFFF) >> 32) +
                                  ((a[i] & 0xFFFFFFFF) * (b[j] >> 32) >> 32);
            carry = product_hi + (product_lo >> 64);
            t[i + j] = product_lo;
        }
        t[i + 4] = carry;
    }

    carry = 0;
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        m = t[i] * INV;

        carry = 0;
        for (int j = 0; j < 4; j++)
        {
            // #pragma HLS UNROLL
            uint64_t product_lo = (m * FIELD_MODULUS[j]) + carry;
            uint64_t product_hi = (m >> 32) * (FIELD_MODULUS[j] >> 32) +
                                  ((m >> 32) * (FIELD_MODULUS[j] & 0xFFFFFFFF) >> 32) +
                                  ((m & 0xFFFFFFFF) * (FIELD_MODULUS[j] >> 32) >> 32);
            carry = product_hi + (product_lo >> 64);

            if (i + j < 8)
            {
                uint64_t sum = t[i + j] + product_lo;
                carry += (sum < t[i + j]) ? 1 : 0;
                t[i + j] = sum;
            }
        }

        while (carry > 0)
        {
            if (i + 4 < 8)
            {
                uint64_t sum = t[i + 4] + carry;
                carry = (sum < t[i + 4]) ? 1 : 0;
                t[i + 4] = sum;
            }
            else
            {
                break;
            }
        }
    }

    bool geq = true;
    for (int i = 3; i >= 0; i--)
    {
#pragma HLS UNROLL
        if (t[i + 4] > FIELD_MODULUS[i])
        {
            geq = true;
            break;
        }
        if (t[i + 4] < FIELD_MODULUS[i])
        {
            geq = false;
            break;
        }
    }

    if (geq)
    {
        carry = 0;
        for (int i = 0; i < 4; i++)
        {
            // #pragma HLS UNROLL
            uint64_t diff = t[i + 4] - FIELD_MODULUS[i] - carry;
            carry = (t[i + 4] < FIELD_MODULUS[i] + carry) ? 1 : 0;
            out[i] = diff;
        }
    }
    else
    {
        for (int i = 0; i < 4; i++)
        {
            // #pragma HLS UNROLL
            out[i] = t[i + 4];
        }
    }
}

// #pragma HLS INLINE
void field_sqr(field_t out, const field_t a)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    // #pragma HLS ARRAY_PARTITION variable = a complete
    field_mul(out, a, a);
}

// #pragma HLS INLINE
void field_add(field_t out, const field_t a, const field_t b)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    // #pragma HLS ARRAY_PARTITION variable = a complete
    // #pragma HLS ARRAY_PARTITION variable = b complete

    uint64_t carry = 0;
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        uint64_t sum = a[i] + b[i] + carry;
        carry = (sum < a[i] || (sum == a[i] && carry)) ? 1 : 0;
        out[i] = sum;
    }

    if (carry ||
        (out[3] > FIELD_MODULUS[3]) ||
        (out[3] == FIELD_MODULUS[3] && out[2] > FIELD_MODULUS[2]) ||
        (out[3] == FIELD_MODULUS[3] && out[2] == FIELD_MODULUS[2] && out[1] > FIELD_MODULUS[1]) ||
        (out[3] == FIELD_MODULUS[3] && out[2] == FIELD_MODULUS[2] && out[1] == FIELD_MODULUS[1] && out[0] >= FIELD_MODULUS[0]))
    {

        uint64_t borrow = 0;
        for (int i = 0; i < 4; i++)
        {
            // #pragma HLS UNROLL
            uint64_t diff = out[i] - FIELD_MODULUS[i] - borrow;
            borrow = (out[i] < FIELD_MODULUS[i] + borrow) ? 1 : 0;
            out[i] = diff;
        }
    }
}

// Subtract two field elements
// #pragma HLS INLINE
void field_sub(field_t out, const field_t a, const field_t b)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    // #pragma HLS ARRAY_PARTITION variable = a complete
    // #pragma HLS ARRAY_PARTITION variable = b complete

    uint64_t borrow = 0;
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        uint64_t diff = a[i] - b[i] - borrow;
        borrow = (a[i] < b[i] + borrow) ? 1 : 0;
        out[i] = diff;
    }

    if (borrow)
    {
        uint64_t carry = 0;
        for (int i = 0; i < 4; i++)
        {
            // #pragma HLS UNROLL
            uint64_t sum = out[i] + FIELD_MODULUS[i] + carry;
            carry = (sum < out[i]) ? 1 : 0;
            out[i] = sum;
        }
    }
}

// #pragma HLS INLINE
void field_neg(field_t out, const field_t a)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    // #pragma HLS ARRAY_PARTITION variable = a complete

    // Check if input is zero
    bool is_zero = true;
    for (int i = 0; i < 4; i++)
    {
#pragma HLS UNROLL
        if (a[i] != 0)
        {
            is_zero = false;
            break;
        }
    }

    if (is_zero)
    {
        field_init(out); // Zero is its own additive inverse
    }
    else
    {
        uint64_t borrow = 0;
        for (int i = 0; i < 4; i++)
        {
            // #pragma HLS UNROLL
            uint64_t diff = FIELD_MODULUS[i] - a[i] - borrow;
            borrow = (FIELD_MODULUS[i] < a[i] + borrow) ? 1 : 0;
            out[i] = diff;
        }
    }
}

// #pragma HLS INLINE
void field_pow(field_t out, const field_t base, const uint64_t exponent[4])
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    // #pragma HLS ARRAY_PARTITION variable = base complete
    // #pragma HLS ARRAY_PARTITION variable = exponent complete

    field_t result;
    field_set_one(result);

    field_t temp;
    field_copy(temp, base);

    for (int i = 0; i < 4; i++)
    {
#pragma HLS UNROLL
        uint64_t e = exponent[i];
        for (int j = 0; j < 64; j++)
        {
#pragma HLS PIPELINE II = 1
            if (e & 1)
            {
                field_mul(result, result, temp);
            }
            field_sqr(temp, temp);
            e >>= 1;
        }
    }

    field_copy(out, result);
}

// #pragma HLS INLINE
void field_inv(field_t out, const field_t a)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    // #pragma HLS ARRAY_PARTITION variable = a complete

    // p - 2 = 21888242871839275222246405745257275088696311157297823662689037894645226208581
    const uint64_t EXPONENT[4] = {
        0x3C208C16D87CFD45, 0x97816A916871CA8D,
        0xB85045B68181585D, 0x30644E72E131A029};

    field_pow(out, a, EXPONENT);
}

// #pragma HLS INLINE
void field_div(field_t out, const field_t a, const field_t b)
{
    // #pragma HLS ARRAY_PARTITION variable = out complete
    // #pragma HLS ARRAY_PARTITION variable = a complete
    // #pragma HLS ARRAY_PARTITION variable = b complete

    field_t b_inv;
    field_inv(b_inv, b);
    field_mul(out, a, b_inv);
}
