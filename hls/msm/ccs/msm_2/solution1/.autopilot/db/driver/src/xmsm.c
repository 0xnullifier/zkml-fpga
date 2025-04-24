// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmsm.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMsm_CfgInitialize(XMsm *InstancePtr, XMsm_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMsm_Set_x_array(XMsm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_X_ARRAY_DATA, (u32)(Data));
    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_X_ARRAY_DATA + 4, (u32)(Data >> 32));
}

u64 XMsm_Get_x_array(XMsm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_X_ARRAY_DATA);
    Data += (u64)XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_X_ARRAY_DATA + 4) << 32;
    return Data;
}

void XMsm_Set_y_array(XMsm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_Y_ARRAY_DATA, (u32)(Data));
    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_Y_ARRAY_DATA + 4, (u32)(Data >> 32));
}

u64 XMsm_Get_y_array(XMsm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_Y_ARRAY_DATA);
    Data += (u64)XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_Y_ARRAY_DATA + 4) << 32;
    return Data;
}

void XMsm_Set_z_array(XMsm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_Z_ARRAY_DATA, (u32)(Data));
    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_Z_ARRAY_DATA + 4, (u32)(Data >> 32));
}

u64 XMsm_Get_z_array(XMsm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_Z_ARRAY_DATA);
    Data += (u64)XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_Z_ARRAY_DATA + 4) << 32;
    return Data;
}

void XMsm_Set_t_array(XMsm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_T_ARRAY_DATA, (u32)(Data));
    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_T_ARRAY_DATA + 4, (u32)(Data >> 32));
}

u64 XMsm_Get_t_array(XMsm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_T_ARRAY_DATA);
    Data += (u64)XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_T_ARRAY_DATA + 4) << 32;
    return Data;
}

void XMsm_Set_result_x(XMsm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_X_DATA, (u32)(Data));
    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_X_DATA + 4, (u32)(Data >> 32));
}

u64 XMsm_Get_result_x(XMsm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_X_DATA);
    Data += (u64)XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_X_DATA + 4) << 32;
    return Data;
}

void XMsm_Set_result_y(XMsm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_Y_DATA, (u32)(Data));
    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_Y_DATA + 4, (u32)(Data >> 32));
}

u64 XMsm_Get_result_y(XMsm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_Y_DATA);
    Data += (u64)XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_Y_DATA + 4) << 32;
    return Data;
}

void XMsm_Set_result_z(XMsm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_Z_DATA, (u32)(Data));
    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_Z_DATA + 4, (u32)(Data >> 32));
}

u64 XMsm_Get_result_z(XMsm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_Z_DATA);
    Data += (u64)XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_Z_DATA + 4) << 32;
    return Data;
}

void XMsm_Set_result_t(XMsm *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_T_DATA, (u32)(Data));
    XMsm_WriteReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_T_DATA + 4, (u32)(Data >> 32));
}

u64 XMsm_Get_result_t(XMsm *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_T_DATA);
    Data += (u64)XMsm_ReadReg(InstancePtr->Control_BaseAddress, XMSM_CONTROL_ADDR_RESULT_T_DATA + 4) << 32;
    return Data;
}

