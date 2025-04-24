// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of x_array
//        bit 31~0 - x_array[31:0] (Read/Write)
// 0x14 : Data signal of x_array
//        bit 31~0 - x_array[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of y_array
//        bit 31~0 - y_array[31:0] (Read/Write)
// 0x20 : Data signal of y_array
//        bit 31~0 - y_array[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of z_array
//        bit 31~0 - z_array[31:0] (Read/Write)
// 0x2c : Data signal of z_array
//        bit 31~0 - z_array[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of t_array
//        bit 31~0 - t_array[31:0] (Read/Write)
// 0x38 : Data signal of t_array
//        bit 31~0 - t_array[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of result_x
//        bit 31~0 - result_x[31:0] (Read/Write)
// 0x44 : Data signal of result_x
//        bit 31~0 - result_x[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of result_y
//        bit 31~0 - result_y[31:0] (Read/Write)
// 0x50 : Data signal of result_y
//        bit 31~0 - result_y[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of result_z
//        bit 31~0 - result_z[31:0] (Read/Write)
// 0x5c : Data signal of result_z
//        bit 31~0 - result_z[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of result_t
//        bit 31~0 - result_t[31:0] (Read/Write)
// 0x68 : Data signal of result_t
//        bit 31~0 - result_t[63:32] (Read/Write)
// 0x6c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XMSM_CONTROL_ADDR_X_ARRAY_DATA  0x10
#define XMSM_CONTROL_BITS_X_ARRAY_DATA  64
#define XMSM_CONTROL_ADDR_Y_ARRAY_DATA  0x1c
#define XMSM_CONTROL_BITS_Y_ARRAY_DATA  64
#define XMSM_CONTROL_ADDR_Z_ARRAY_DATA  0x28
#define XMSM_CONTROL_BITS_Z_ARRAY_DATA  64
#define XMSM_CONTROL_ADDR_T_ARRAY_DATA  0x34
#define XMSM_CONTROL_BITS_T_ARRAY_DATA  64
#define XMSM_CONTROL_ADDR_RESULT_X_DATA 0x40
#define XMSM_CONTROL_BITS_RESULT_X_DATA 64
#define XMSM_CONTROL_ADDR_RESULT_Y_DATA 0x4c
#define XMSM_CONTROL_BITS_RESULT_Y_DATA 64
#define XMSM_CONTROL_ADDR_RESULT_Z_DATA 0x58
#define XMSM_CONTROL_BITS_RESULT_Z_DATA 64
#define XMSM_CONTROL_ADDR_RESULT_T_DATA 0x64
#define XMSM_CONTROL_BITS_RESULT_T_DATA 64

