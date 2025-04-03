// This code is the basis for pcs code. This may be moved to cpu
// All HLS pragmas are commented out to avoid testing errors
// ============================================================
// BN128 Field Operations
// ============================================================
// All the ff arthemetic functions are implemented in Montgomery form
// to avoid the expensive division operations. See More on Montgomery reduction here https://en.wikipedia.org/wiki/Montgomery_modular_multiplication
// The field is defined over the BN128 curve, which is a pairing-friendly elliptic curve.
// The field is a prime field of order p, where p is a large prime number.
// The field elements are represented as 4 uint64_t values, which together form a 256-bit number.
// The field operations include addition, subtraction, multiplication, squaring, inversion, and exponentiation.

// The BN128 prime field modulus
// p = 21888242871839275222246405745257275088696311157297823662689037894645226208583

const uint64_t FIELD_MODULUS[4] = {
    0x3C208C16D87CFD47, 0x97816A916871CA8D,
    0xB85045B68181585D, 0x30644E72E131A029};

// Montgomery reduction parameters
const uint64_t R_SQUARED[4] = {
    0xF32CFC5B538AFA89, 0xB5E71911D44501FB,
    0x47AB1EFF0A417FF6, 0x06D89F71CAB8351F};

const uint64_t ONE_MONT[4] = {
    0xB443B9B74B8255D9, 0x829D70CE98512121,
    0x3291E2A96F0A12B9, 0x1B7ABE8F70154C05};

const uint64_t INV = 0x87D20782E4866389;

typedef uint64_t field_t[4];

bool field_is_zero(const field_t f);
bool field_is_one(const field_t f);
void field_init(field_t out);
void field_copy(field_t out, const field_t in);
void field_copy(field_t out, const field_t in);
void field_set_one(field_t out);
void field_from_uint64(field_t out, uint64_t val);
bool field_eq(const field_t a, const field_t b);
void field_mul(field_t out, const field_t a, const field_t b);
void field_sqr(field_t out, const field_t a);
void field_add(field_t out, const field_t a, const field_t b);
void field_sub(field_t out, const field_t a, const field_t b);
void field_neg(field_t out, const field_t a);
void field_pow(field_t out, const field_t base, const uint64_t exponent[4]);
void field_inv(field_t out, const field_t a);
void field_div(field_t out, const field_t a, const field_t b);