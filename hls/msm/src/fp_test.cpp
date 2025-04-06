#include <stdio.h>
#include <stdlib.h>
#include "ff.h"

int main()
{
    const int TEST_CASES = 10; // Number of test cases
    FILE *fin, *fp;

    field_t a, b, result, expected;

    fin = fopen("../dat/fp.input.dat", "r");
    fp = fopen("../dat/fp.out.dat", "w");

    if (!fin || !fp)
    {
        printf("Error: Unable to open input or output file.\n");
        return 1;
    }

    printf("Starting field arithmetic tests...\n");

    for (int i = 0; i < TEST_CASES; i++)
    {
        // Read inputs and expected result from input file
        for (int j = 0; j < 4; j++)
        {
            fscanf(fin, "%lx", &a[j]);
        }
        for (int j = 0; j < 4; j++)
        {
            fscanf(fin, "%lx", &b[j]);
        }
        for (int j = 0; j < 4; j++)
        {
            fscanf(fin, "%lx", &expected[j]);
        }

        // Perform field addition
        field_add(result, a, b);

        // Write the result to the output file
        for (int j = 0; j < 4; j++)
        {
            fprintf(fp, "%016lx ", result[j]);
        }
        fprintf(fp, "\n");

        // Print the result to the console
        printf("Test %d:\n", i);
        printf("A = 0x%016lx%016lx%016lx%016lx\n", a[3], a[2], a[1], a[0]);
        printf("B = 0x%016lx%016lx%016lx%016lx\n", b[3], b[2], b[1], b[0]);
        printf("Result = 0x%016lx%016lx%016lx%016lx\n", result[3], result[2], result[1], result[0]);
        printf("Expected = 0x%016lx%016lx%016lx%016lx\n", expected[3], expected[2], expected[1], expected[0]);

        // Check if the result matches the expected value
        if (!field_eq(result, expected))
        {
            printf("FAIL: Test %d failed.\n", i);
            fclose(fp);
            fclose(fin);
            return 1;
        }
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