// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xposeidon_hash.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPoseidon_hash_CfgInitialize(XPoseidon_hash *InstancePtr, XPoseidon_hash_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_r_BaseAddress = ConfigPtr->Control_r_BaseAddress;
    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPoseidon_hash_Start(XPoseidon_hash *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_hash_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_AP_CTRL) & 0x80;
    XPoseidon_hash_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XPoseidon_hash_IsDone(XPoseidon_hash *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_hash_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XPoseidon_hash_IsIdle(XPoseidon_hash *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_hash_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XPoseidon_hash_IsReady(XPoseidon_hash *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_hash_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XPoseidon_hash_EnableAutoRestart(XPoseidon_hash *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_hash_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XPoseidon_hash_DisableAutoRestart(XPoseidon_hash *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_hash_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_AP_CTRL, 0);
}

void XPoseidon_hash_Set_input_r(XPoseidon_hash *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_hash_WriteReg(InstancePtr->Control_r_BaseAddress, XPOSEIDON_HASH_CONTROL_R_ADDR_INPUT_R_DATA, (u32)(Data));
    XPoseidon_hash_WriteReg(InstancePtr->Control_r_BaseAddress, XPOSEIDON_HASH_CONTROL_R_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XPoseidon_hash_Get_input_r(XPoseidon_hash *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_hash_ReadReg(InstancePtr->Control_r_BaseAddress, XPOSEIDON_HASH_CONTROL_R_ADDR_INPUT_R_DATA);
    Data += (u64)XPoseidon_hash_ReadReg(InstancePtr->Control_r_BaseAddress, XPOSEIDON_HASH_CONTROL_R_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XPoseidon_hash_Set_output_r(XPoseidon_hash *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_hash_WriteReg(InstancePtr->Control_r_BaseAddress, XPOSEIDON_HASH_CONTROL_R_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XPoseidon_hash_WriteReg(InstancePtr->Control_r_BaseAddress, XPOSEIDON_HASH_CONTROL_R_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XPoseidon_hash_Get_output_r(XPoseidon_hash *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_hash_ReadReg(InstancePtr->Control_r_BaseAddress, XPOSEIDON_HASH_CONTROL_R_ADDR_OUTPUT_R_DATA);
    Data += (u64)XPoseidon_hash_ReadReg(InstancePtr->Control_r_BaseAddress, XPOSEIDON_HASH_CONTROL_R_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XPoseidon_hash_Set_num_blocks(XPoseidon_hash *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_hash_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_NUM_BLOCKS_DATA, Data);
}

u32 XPoseidon_hash_Get_num_blocks(XPoseidon_hash *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPoseidon_hash_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_NUM_BLOCKS_DATA);
    return Data;
}

void XPoseidon_hash_InterruptGlobalEnable(XPoseidon_hash *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_hash_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_GIE, 1);
}

void XPoseidon_hash_InterruptGlobalDisable(XPoseidon_hash *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_hash_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_GIE, 0);
}

void XPoseidon_hash_InterruptEnable(XPoseidon_hash *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPoseidon_hash_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_IER);
    XPoseidon_hash_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_IER, Register | Mask);
}

void XPoseidon_hash_InterruptDisable(XPoseidon_hash *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XPoseidon_hash_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_IER);
    XPoseidon_hash_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_IER, Register & (~Mask));
}

void XPoseidon_hash_InterruptClear(XPoseidon_hash *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPoseidon_hash_WriteReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_ISR, Mask);
}

u32 XPoseidon_hash_InterruptGetEnabled(XPoseidon_hash *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPoseidon_hash_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_IER);
}

u32 XPoseidon_hash_InterruptGetStatus(XPoseidon_hash *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XPoseidon_hash_ReadReg(InstancePtr->Control_BaseAddress, XPOSEIDON_HASH_CONTROL_ADDR_ISR);
}

