#ifndef BN128_ECC_H
#define BN128_ECC_H

#include <stdint.h>
#include <stdbool.h>

// Include field operations
#include "ff.h"

// Point representation in affine coordinates
typedef struct
{
    field_t x;
    field_t y;
    bool is_infinity;
} ec_point_t;

// Point representation in Jacobian coordinates (for faster computation)
typedef struct
{
    field_t x;
    field_t y;
    field_t z;
    bool is_infinity;
} ec_point_jacobian_t;

// Constants
extern const field_t CURVE_B; // b coefficient in curve equation y^2 = x^3 + b

// Generator point for the BN128 curve
extern const ec_point_t GENERATOR;

// Base point functions
void ec_init_infinity(ec_point_t *point);
void ec_init_infinity_jacobian(ec_point_jacobian_t *point);
void ec_set_generator(ec_point_t *point);

// Coordinate conversion
void ec_affine_to_jacobian(ec_point_jacobian_t *out, const ec_point_t *in);
void ec_jacobian_to_affine(ec_point_t *out, const ec_point_jacobian_t *in);

// Point operations
void ec_double(ec_point_t *out, const ec_point_t *p);
void ec_add(ec_point_t *out, const ec_point_t *p, const ec_point_t *q);
void ec_neg(ec_point_t *out, const ec_point_t *p);

// Jacobian point operations
void ec_double_jacobian(ec_point_jacobian_t *out, const ec_point_jacobian_t *p);
void ec_add_jacobian(ec_point_jacobian_t *out, const ec_point_jacobian_t *p, const ec_point_jacobian_t *q);
void ec_neg_jacobian(ec_point_jacobian_t *out, const ec_point_jacobian_t *p);

// Scalar multiplication
void ec_scalar_mul(ec_point_t *out, const ec_point_t *p, const uint64_t scalar[4]);
void ec_scalar_mul_double_and_add(ec_point_t *out, const ec_point_t *p, const uint64_t scalar[4]);
void ec_scalar_mul_window(ec_point_t *out, const ec_point_t *p, const uint64_t scalar[4], int window_size);

// Multi-scalar multiplication using Pippenger's algorithm
void ec_multi_scalar_mul_pippenger(
    ec_point_t *out,
    const ec_point_t *points,
    const uint64_t *scalars, // Array of num_points * 4 uint64_t values
    int num_points,
    int window_size);

// Point validation
bool ec_is_on_curve(const ec_point_t *p);
bool ec_is_infinity(const ec_point_t *p);

// Utility functions
void ec_print(const char *label, const ec_point_t *p);
bool ec_eq(const ec_point_t *p, const ec_point_t *q);

#endif // BN128_ECC_H