#include <stdio.h>
#include <stdlib.h>
#include "ecc.h"

int main()
{
    const int TEST_CASES = 10; // Number of test cases
    FILE *fin, *fp;

    ec_point_t result;
    ec_point_t expected;
    uint64_t scalar[4];

    fin = fopen("../dat/ecc.input.dat", "r");
    fp = fopen("../dat/ecc.out.dat", "w");

    if (!fin || !fp)
    {
        printf("Error: Unable to open input or output file.\n");
        return 1;
    }

    printf("Starting ECC scalar multiplication tests...\n");

    for (int i = 0; i < TEST_CASES; i++)
    {
        fscanf(fin, "%lx %lx %lx %lx", &scalar[0], &scalar[1], &scalar[2], &scalar[3]);
        for (int j = 0; j < 4; j++)
        {
            fscanf(fin, "%lx", &expected.x[j]);
        }
        for (int j = 0; j < 4; j++)
        {
            fscanf(fin, "%lx", &expected.y[j]);
        }
        fscanf(fin, "%d", (int *)&expected.is_infinity);

        // Perform scalar multiplication
        ec_scalar_mul(&result, &GENERATOR, scalar);

        // Write the result to the output file
        for (int j = 0; j < 4; j++)
        {
            fprintf(fp, "%016lx ", result.x[j]);
        }
        for (int j = 0; j < 4; j++)
        {
            fprintf(fp, "%016lx ", result.y[j]);
        }
        fprintf(fp, "%d\n", result.is_infinity);

        // Print the result to the console
        printf("Test %d: Scalar = 0x%016lx%016lx%016lx%016lx\n", i, scalar[3], scalar[2], scalar[1], scalar[0]);
        printf("Result: X = 0x%016lx%016lx%016lx%016lx, Y = 0x%016lx%016lx%016lx%016lx, Infinity = %d\n",
               result.x[3], result.x[2], result.x[1], result.x[0],
               result.y[3], result.y[2], result.y[1], result.y[0],
               result.is_infinity);
    }

    fclose(fp);
    fclose(fin);

    // Compare results with the golden output
    printf("Comparing against golden output data...\n");
    if (system("diff -w out.dat out.gold.dat"))
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
        fprintf(stdout, "*******************************************\n");
        return 1;
    }
    else
    {
        fprintf(stdout, "*******************************************\n");
        fprintf(stdout, "PASS: The output matches the golden output!\n");
        fprintf(stdout, "*******************************************\n");
        return 0;
    }
}