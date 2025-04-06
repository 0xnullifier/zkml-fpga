#include "ecc.h"
#include <stdio.h>
#include <string.h>

// The BN128 curve is defined as: y^2 = x^3 + 3
// The group order is: 21888242871839275222246405745257275088548364400416034343698204186575808495617

const field_t CURVE_B = {
    0x7A17CAA950AD28D7, 0x1F6AC17AE15521B9,
    0x334BFBC7E34A3BC2, 0x2260E4A92BEC9F93};

const ec_point_t GENERATOR = {
    {// x-coordinate
     0x8E83B5D102BC2026, 0xDCEB1935497B0172,
     0xE8CE5A12B0C72CF3, 0x00F8235F1EB07B11},
    {// y-coordinate
     0xAB752E4B8E69E461, 0x8E98F6C98598D35F,
     0x8B5DD3A3906D7E5C, 0x17F1D3A73197D794},
    false // is_infinity
};

// #pragma HLS INLINE
void ec_init_infinity(ec_point_t *point)
{
    // // #pragma HLS ARRAY_PARTITION variable = point->x complete
    // // #pragma HLS ARRAY_PARTITION variable = point->y complete

    field_init(point->x);
    field_init(point->y);
    point->is_infinity = true;
}

// #pragma HLS INLINE
void ec_set_generator(ec_point_t *point)
{
    // #pragma HLS ARRAY_PARTITION variable = point->x complete
    // #pragma HLS ARRAY_PARTITION variable = point->y complete

    field_copy(point->x, GENERATOR.x);
    field_copy(point->y, GENERATOR.y);
    point->is_infinity = false;
}

// Initialize a Jacobian point to infinity
// #pragma HLS INLINE
void ec_init_infinity_jacobian(ec_point_jacobian_t *point)
{
    // #pragma HLS ARRAY_PARTITION variable = point->x complete
    // #pragma HLS ARRAY_PARTITION variable = point->y complete
    // #pragma HLS ARRAY_PARTITION variable = point->z complete

    field_init(point->x);
    field_init(point->y);
    field_init(point->z);
    point->is_infinity = true;
}

// Convert from affine to Jacobian coordinates
// #pragma HLS INLINE
void ec_affine_to_jacobian(ec_point_jacobian_t *out, const ec_point_t *in)
{
    // #pragma HLS ARRAY_PARTITION variable = out->x complete
    // #pragma HLS ARRAY_PARTITION variable = out->y complete
    // #pragma HLS ARRAY_PARTITION variable = out->z complete
    // #pragma HLS ARRAY_PARTITION variable = in->x complete
    // #pragma HLS ARRAY_PARTITION variable = in->y complete

    if (in->is_infinity)
    {
        ec_init_infinity_jacobian(out);
    }
    else
    {
        field_copy(out->x, in->x);
        field_copy(out->y, in->y);
        field_set_one(out->z);
        out->is_infinity = false;
    }
}

// Convert from Jacobian to affine coordinates
// #pragma HLS INLINE
void ec_jacobian_to_affine(ec_point_t *out, const ec_point_jacobian_t *in)
{
    // #pragma HLS ARRAY_PARTITION variable = out->x complete
    // #pragma HLS ARRAY_PARTITION variable = out->y complete
    // #pragma HLS ARRAY_PARTITION variable = in->x complete
    // #pragma HLS ARRAY_PARTITION variable = in->y complete
    // #pragma HLS ARRAY_PARTITION variable = in->z complete

    if (in->is_infinity)
    {
        ec_init_infinity(out);
        return;
    }

    // Check if z is zero (should not happen for valid points)
    bool z_is_zero = true;
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        if (in->z[i] != 0)
        {
            z_is_zero = false;
            break;
        }
    }

    if (z_is_zero)
    {
        ec_init_infinity(out);
        return;
    }

    field_t z_inv, z_inv_squared, z_inv_cubed;
    field_inv(z_inv, in->z);
    field_sqr(z_inv_squared, z_inv);
    field_mul(z_inv_cubed, z_inv_squared, z_inv);

    field_mul(out->x, in->x, z_inv_squared);
    field_mul(out->y, in->y, z_inv_cubed);
    out->is_infinity = false;
}

// Point doubling in Jacobian coordinates
// #pragma HLS INLINE
void ec_double_jacobian(ec_point_jacobian_t *out, const ec_point_jacobian_t *p)
{
    // #pragma HLS ARRAY_PARTITION variable = out->x complete
    // #pragma HLS ARRAY_PARTITION variable = out->y complete
    // #pragma HLS ARRAY_PARTITION variable = out->z complete
    // #pragma HLS ARRAY_PARTITION variable = p->x complete
    // #pragma HLS ARRAY_PARTITION variable = p->y complete
    // #pragma HLS ARRAY_PARTITION variable = p->z complete

    if (p->is_infinity)
    {
        ec_init_infinity_jacobian(out);
        return;
    }

    // Check if y-coordinate is zero (point of order 2)
    bool y_is_zero = true;
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        if (p->y[i] != 0)
        {
            y_is_zero = false;
            break;
        }
    }

    if (y_is_zero)
    {
        ec_init_infinity_jacobian(out);
        return;
    }

    // Doubling formulas:
    // S = 4*X*Y^2
    // M = 3*X^2 + a*Z^4 (a=0 for BN128)
    // X' = M^2 - 2*S
    // Y' = M*(S - X') - 8*Y^4
    // Z' = 2*Y*Z

    field_t XX, YY, YYYY, ZZ, S, M, temp;

    field_sqr(XX, p->x); // XX = X^2
    field_sqr(YY, p->y); // YY = Y^2
    field_sqr(YYYY, YY); // YYYY = Y^4
    field_sqr(ZZ, p->z); // ZZ = Z^2

    // S = 4*X*YY
    field_mul(S, p->x, YY);
    field_add(S, S, S);
    field_add(S, S, S);

    // M = 3*XX + a*ZZ^2 (a=0 for BN128 so just 3*XX)
    field_add(M, XX, XX);
    field_add(M, M, XX);

    // X' = M^2 - 2*S
    field_sqr(out->x, M);
    field_add(temp, S, S);
    field_sub(out->x, out->x, temp);

    // Y' = M*(S - X') - 8*YYYY
    field_sub(temp, S, out->x);
    field_mul(out->y, M, temp);
    field_add(temp, YYYY, YYYY);
    field_add(temp, temp, temp);
    field_add(temp, temp, temp);
    field_sub(out->y, out->y, temp);

    // Z' = 2*Y*Z
    field_mul(out->z, p->y, p->z);
    field_add(out->z, out->z, out->z);

    out->is_infinity = false;
}

// Point addition in Jacobian coordinates
// #pragma HLS INLINE
void ec_add_jacobian(ec_point_jacobian_t *out, const ec_point_jacobian_t *p, const ec_point_jacobian_t *q)
{
    // #pragma HLS ARRAY_PARTITION variable = out->x complete
    // #pragma HLS ARRAY_PARTITION variable = out->y complete
    // #pragma HLS ARRAY_PARTITION variable = out->z complete
    // #pragma HLS ARRAY_PARTITION variable = p->x complete
    // #pragma HLS ARRAY_PARTITION variable = p->y complete
    // #pragma HLS ARRAY_PARTITION variable = p->z complete
    // #pragma HLS ARRAY_PARTITION variable = q->x complete
    // #pragma HLS ARRAY_PARTITION variable = q->y complete
    // #pragma HLS ARRAY_PARTITION variable = q->z complete

    // Handle special cases
    if (p->is_infinity)
    {
        field_copy(out->x, q->x);
        field_copy(out->y, q->y);
        field_copy(out->z, q->z);
        out->is_infinity = q->is_infinity;
        return;
    }

    if (q->is_infinity)
    {
        field_copy(out->x, p->x);
        field_copy(out->y, p->y);
        field_copy(out->z, p->z);
        out->is_infinity = p->is_infinity;
        return;
    }

    // Check for doubling case
    field_t z1z1, z2z2, u1, u2, s1, s2, h, i, j, r, v;
    field_t temp1, temp2;

    field_sqr(z1z1, p->z);        // Z1Z1 = Z1^2
    field_sqr(z2z2, q->z);        // Z2Z2 = Z2^2
    field_mul(u1, p->x, z2z2);    // U1 = X1*Z2Z2
    field_mul(u2, q->x, z1z1);    // U2 = X2*Z1Z1
    field_mul(temp1, q->z, z2z2); // temp1 = Z2*Z2Z2
    field_mul(s1, p->y, temp1);   // S1 = Y1*Z2*Z2Z2
    field_mul(temp1, p->z, z1z1); // temp1 = Z1*Z1Z1
    field_mul(s2, q->y, temp1);   // S2 = Y2*Z1*Z1Z1

    field_sub(h, u2, u1); // H = U2-U1

    bool is_doubling = true;
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        if (h[i] != 0)
        {
            is_doubling = false;
            break;
        }
    }

    if (is_doubling)
    {
        // Check if the y-coordinates are negatives of each other
        field_add(temp1, s1, s2);

        bool y_is_negation = true;
        for (int i = 0; i < 4; i++)
        {
            // #pragma HLS UNROLL
            if (temp1[i] != 0)
            {
                y_is_negation = false;
                break;
            }
        }

        if (y_is_negation)
        {
            ec_init_infinity_jacobian(out);
        }
        else
        {
            ec_double_jacobian(out, p);
        }
        return;
    }

    // Standard addition
    field_add(i, h, h);   // I = 2*H
    field_sqr(i, i);      // I = I^2 = 4*H^2
    field_mul(j, h, i);   // J = H*I = H*4*H^2
    field_sub(r, s2, s1); // r = S2-S1
    field_add(r, r, r);   // r = 2*(S2-S1)
    field_mul(v, u1, i);  // V = U1*I = U1*4*H^2

    // X3 = r^2 - J - 2*V
    field_sqr(out->x, r);
    field_sub(out->x, out->x, j);
    field_add(temp1, v, v);
    field_sub(out->x, out->x, temp1);

    // Y3 = r*(V - X3) - 2*S1*J
    field_sub(temp1, v, out->x);
    field_mul(out->y, r, temp1);
    field_mul(temp1, s1, j);
    field_add(temp1, temp1, temp1);
    field_sub(out->y, out->y, temp1);

    // Z3 = ((Z1+Z2)^2 - Z1Z1 - Z2Z2) * H
    field_add(temp1, p->z, q->z);
    field_sqr(temp2, temp1);
    field_sub(temp2, temp2, z1z1);
    field_sub(temp2, temp2, z2z2);
    field_mul(out->z, temp2, h);

    out->is_infinity = false;
}

// Point doubling in affine coordinates
// #pragma HLS INLINE
void ec_double(ec_point_t *out, const ec_point_t *p)
{
    // #pragma HLS ARRAY_PARTITION variable = out->x complete
    // #pragma HLS ARRAY_PARTITION variable = out->y complete
    // #pragma HLS ARRAY_PARTITION variable = p->x complete
    // #pragma HLS ARRAY_PARTITION variable = p->y complete

    if (p->is_infinity)
    {
        ec_init_infinity(out);
        return;
    }

    // Check if y-coordinate is zero
    bool y_is_zero = true;
    for (int i = 0; i < 4; i++)
    {
        // #pragma HLS UNROLL
        if (p->y[i] != 0)
        {
            y_is_zero = false;
            break;
        }
    }

    if (y_is_zero)
    {
        ec_init_infinity(out);
        return;
    }

    // Convert to Jacobian coordinates
    ec_point_jacobian_t p_jac, out_jac;
    ec_affine_to_jacobian(&p_jac, p);

    // Double in Jacobian coordinates
    ec_double_jacobian(&out_jac, &p_jac);

    // Convert back to affine coordinates
    ec_jacobian_to_affine(out, &out_jac);
}

// Point addition in affine coordinates
// #pragma HLS INLINE
void ec_add(ec_point_t *out, const ec_point_t *p, const ec_point_t *q)
{
    // #pragma HLS ARRAY_PARTITION variable = out->x complete
    // #pragma HLS ARRAY_PARTITION variable = out->y complete
    // #pragma HLS ARRAY_PARTITION variable = p->x complete
    // #pragma HLS ARRAY_PARTITION variable = p->y complete
    // #pragma HLS ARRAY_PARTITION variable = q->x complete
    // #pragma HLS ARRAY_PARTITION variable = q->y complete

    // Handle special cases
    if (p->is_infinity)
    {
        field_copy(out->x, q->x);
        field_copy(out->y, q->y);
        out->is_infinity = q->is_infinity;
        return;
    }

    if (q->is_infinity)
    {
        field_copy(out->x, p->x);
        field_copy(out->y, p->y);
        out->is_infinity = p->is_infinity;
        return;
    }
    // Check for doubling case
    field_t u1, u2, s1, s2, h, i, j, r, v;
    field_t temp1, temp2;
    field_t z1z1, z2z2;
    // // #pragma HLS ARRAY_PARTITION variable = z1z1 complete
    // // #pragma HLS ARRAY_PARTITION variable = z2z2 complete

    field_sqr(z1z1, p->x);        // Z1Z1 = X1^2
    field_sqr(z2z2, q->x);        // Z2Z2 = X2^2
    field_mul(u1, p->x, z2z2);    // U1 = X1*Z2Z2
    field_mul(u2, q->x, z1z1);    // U2 = X2*Z1Z1
    field_mul(temp1, q->y, z2z2); // temp1 = Y2*Z2Z2
    field_mul(s1, p->y, temp1);   // S1 = Y1*Y2*Z2Z2
    field_mul(temp1, p->y, z1z1); // temp1 = Y1*Z1Z1
    field_mul(s2, q->y, temp1);   // S2 = Y2*Y1*Z1Z1

    field_sub(h, u2, u1); // H = U2-U1

    bool is_doubling = true;
    for (int i = 0; i < 4; i++)
    {
        // // #pragma HLS UNROLL
        if (h[i] != 0)
        {
            is_doubling = false;
            break;
        }
    }
}