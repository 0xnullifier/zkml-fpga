# ZKML Fpga

The aim of the project is to implement a zkml framework on the fpga board and outperform the existing zkml frameworks running on cpu

# Benchmarks

## Emprical Runs

All the following schemes were benchmarked on Intel(R) Core(TM) i7-8700K CPU @ 3.70GHz. These were all tested on a standard configuration with no specialized hardware acceleration.

Here's a clean table format for:

| Scheme           | Model        | Prover Time (s)  | Verifier Time (s)  |   Proof Size         |
|------------------|--------------|------------------|--------------------|----------------------|
| vCNN(groth16)    | vgg11        | 132.2            | 0.043              |         127b         |
| zkCNN            | Vgg11        | 20.4             | 2                  |      109.906250 kb   |
| MSCProof         | vgg11        | 2.9              | 5                  |        43kb          |
| EZKL             | lenet5       | 20.5             | 0.04               |         32b          |

**NOTE**: zkCNN implementation is not zero knowledge hence the prover times are really not reflective with others

## Asymptotic Complexity

| Scheme           | Prover Complexity | Verifier Complexity |  Communication Complexity |
|------------------|-------------------|----------------------|--------------------------|
| vCNN             | O(n log n)        | O(log n)             |     O(1)                 |
| zkCNN            | O(n^2)            | O(1)                 |     O(n^2)               |
| MSCProof         | O(n log^2 n)      | O(log n)             |     O(nlogn)             |
| EZKL             | ---               | O(log n)             |    O(1)                  |

# Road Map

The current plan is to implement the primitives of bn254 curve for a polynomial commitment scheme (PCS) and build up to a complete ZKML framework with two main plan of actions

## Implementation Approaches

### Baked R1CS

**PROS**:

- Will significantly improve current framework
- Smaller proof size

**CONS**:

- Not flexible for all models
- CNNs are particularly challenging

### General Sumcheck Prover

**PROS**:

- Faster prover times
- Can handle more complex computations

**CONS**:

- Very large prover size
- High bandwidth requirements

## Road map and todo

- [x] Benchmark existing schemes
- [x] Implement finite field (FF) operations with faster Montgomery reduction
- [x] Implement elliptic curve cryptography (ECC) and multi-scalar multiplication with Pippenger's algorithm
- [x] Implement fast Number Theoretic Transform (NTT) for polynomial operations
- [ ] Implement hyperKZG polynomial commitment scheme
- [ ] Develop circuit-backed R1CS (Rank-1 Constraint System)
- [ ] Implement a general prover framework based on sumcheck protocol
- [ ] Port the implementation to FPGA with custom optimizations
- [ ] Benchmark FPGA implementation against CPU implementations

## FPGA Implementation Goals

Our FPGA implementation aims to achieve:

1. 10-100x speedup for prover operations compared to CPU implementations
2. Reduced power consumption for ZK proof generation
3. Specialized hardware pathways for common ZKML operations
4. Parallel processing of independent proof components

## Directory structure

```bash
hls
├── primitives     # Multi-scalar multiplication implementation
│   ├── ccs        #  compilation scripts *.tcl
│   ├── dat        # Test data files
│   └── src        # Source code
│       ├── ecc.cpp          # ECC implementation
│       ├── ecc.h            # ECC header file
│       ├── ecc_test.cpp     # Test cases for ECC
│       ├── ff.cpp           # Finite field operations
│       ├── ff.h             # Finite field header file
│       └── fp_test.cpp      # Test cases for finite field operations
└── pcs            # Polynomial commitment scheme
    ├── ccs        # Constraints and compilation settings
    ├── data       # Data files for PCS testing
    └── src        # Source code
        ├── pcs.cpp          # PCS implementation
        ├── pcs.h            # PCS header file
        └── pcs_test.cpp     # Test cases for PCS
```
