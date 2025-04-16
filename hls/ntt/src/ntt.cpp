#include "ntt.hpp"

using namespace std;

// Perform addition of two GF elements
GF add_elements(GF x, GF y)
{
    GF sum = x + y;

    if (sum.get_bit(64))
    {
        sum.set_bit(64, false);
        sum = sum + EPSILON;
    }

    if (sum.get_bit(64))
    {
        sum.set_bit(64, false);
        sum = sum + EPSILON;
    }

    return sum;
}

// Perform subtraction of two GF elements
GF subtract_elements(GF x, GF y)
{
    GF diff = x - y;

    if (diff.get_bit(64))
    {
        diff.set_bit(64, false);
        diff = diff - EPSILON;
    }

    if (diff.get_bit(64))
    {
        diff.set_bit(64, false);
        diff = diff - EPSILON;
    }

    return diff;
}

// Compute the negation of a GF element
GF negate_element(GF val)
{
    return val.is_zero() ? val : MODULUS - to_canonical(val);
}

// Perform multiplication of two GF elements
GF multiply_elements(GF x, GF y)
{
    GF_MULT x_ext = GF_MULT(x.to_uint64());
    GF_MULT y_ext = GF_MULT(y.to_uint64());

    GF_MULT prod = x_ext * y_ext;

    GF low_part = GF((prod & MASK).to_uint64());
    GF high_part = GF((prod >> 64).to_uint64());

    GF high_upper = GF(high_part >> 32);
    GF high_lower = GF(high_part & EPSILON);

    GF temp = low_part - high_upper;
    if (temp.get_bit(64))
    {
        temp.set_bit(64, false);
        temp = temp - EPSILON;
    }

    GF temp2 = high_lower * EPSILON;

    GF result = temp + temp2;
    if (result.get_bit(64))
    {
        result.set_bit(64, false);
        result = result + EPSILON;
    }

    return result;
}

// Convert a GF element to its canonical form
GF to_canonical(GF val)
{
    return (val >= MODULUS) ? val - MODULUS : val;
}

// In-place NTT for size 8
void NTT_8_in_place(GF (&array)[8])
{
    const int size = 8;
    const int log_size = 3;

    typedef ap_uint<log_size> Index;

    GF temp;
    for (Index idx = Index(0);;)
    {
        Index rev_idx = idx;
        rev_idx.reverse();
        if (idx < rev_idx)
        {
            temp = array[rev_idx];
            array[rev_idx] = array[idx];
            array[idx] = temp;
        }

        idx++;
        if (idx.iszero())
        {
            break;
        }
    }

    int step = 1;
    for (int level = 1; level <= log_size; level++)
    {
        GF root = OMEGA[level];

        int offset = 0;
        while (offset < size)
        {
            GF omega = ONE;

            INDEX rk = k;
            rk.reverse();
            if (k < rk)
            {
                tmp = in[rk];
                in[rk] = in[k];
                in[k] = tmp;
            }

            k++;
            if (k.iszero())
            { // overflow
                break;
            }
        }

        int m = 1;
        for (int i = 1; i <= logn; i++)
        {
            // w_m is 2^i-th root of unity
            GF w_m = OMEGA[i];

            int k = 0;
            while (k < n)
            {
                // w = w_m^j at the start of every loop iteration
                GF w = ONE;

                for (int j = 0; j < m; j++)
                {
                    GF t = in[k + j + m];
                    t = mult(t, w);

                    GF tmp = in[k + j];
                    tmp = sub(tmp, t);

                    in[k + j + m] = tmp;
                    in[k + j] = add(in[k + j], t);

                    w = mult(w, w_m);
                }

                k += 2 * m;
            }

            m *= 2;
        }
    }
}

void NTT_2_12_in_place(GF (&in)[4096])
{
    const int n = 4096;
    const int logn = 12;

    typedef ap_uint<logn> INDEX;

    GF tmp;
    for (INDEX k = INDEX(0);;)
    {
        INDEX rk = k;
        rk.reverse();
        if (k < rk)
        {
            tmp = in[rk];
            in[rk] = in[k];
            in[k] = tmp;
        }

        k++;
        if (k.iszero())
        { // overflow
            break;
        }
    }

    int m = 1;
    for (int i = 1; i <= logn; i++)
    {
        // w_m is 2^i-th root of unity
        GF w_m = OMEGA[i];

        int k = 0;
        while (k < n)
        {
            // w = w_m^j at the start of every loop iteration
            GF w = ONE;

            for (int j = 0; j < m; j++)
            {
                GF t = in[k + j + m];
                t = mult(t, w);

                GF tmp = in[k + j];
                tmp = sub(tmp, t);

                in[k + j + m] = tmp;
                in[k + j] = add(in[k + j], t);

                w = mult(w, w_m);
            }

            k += 2 * m;
        }

        m *= 2;
    }
}