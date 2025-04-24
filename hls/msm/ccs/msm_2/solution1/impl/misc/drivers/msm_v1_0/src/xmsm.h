// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMSM_H
#define XMSM_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmsm_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMsm_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMsm;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMsm_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMsm_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMsm_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMsm_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMsm_Initialize(XMsm *InstancePtr, UINTPTR BaseAddress);
XMsm_Config* XMsm_LookupConfig(UINTPTR BaseAddress);
#else
int XMsm_Initialize(XMsm *InstancePtr, u16 DeviceId);
XMsm_Config* XMsm_LookupConfig(u16 DeviceId);
#endif
int XMsm_CfgInitialize(XMsm *InstancePtr, XMsm_Config *ConfigPtr);
#else
int XMsm_Initialize(XMsm *InstancePtr, const char* InstanceName);
int XMsm_Release(XMsm *InstancePtr);
#endif


void XMsm_Set_x_array(XMsm *InstancePtr, u64 Data);
u64 XMsm_Get_x_array(XMsm *InstancePtr);
void XMsm_Set_y_array(XMsm *InstancePtr, u64 Data);
u64 XMsm_Get_y_array(XMsm *InstancePtr);
void XMsm_Set_z_array(XMsm *InstancePtr, u64 Data);
u64 XMsm_Get_z_array(XMsm *InstancePtr);
void XMsm_Set_t_array(XMsm *InstancePtr, u64 Data);
u64 XMsm_Get_t_array(XMsm *InstancePtr);
void XMsm_Set_result_x(XMsm *InstancePtr, u64 Data);
u64 XMsm_Get_result_x(XMsm *InstancePtr);
void XMsm_Set_result_y(XMsm *InstancePtr, u64 Data);
u64 XMsm_Get_result_y(XMsm *InstancePtr);
void XMsm_Set_result_z(XMsm *InstancePtr, u64 Data);
u64 XMsm_Get_result_z(XMsm *InstancePtr);
void XMsm_Set_result_t(XMsm *InstancePtr, u64 Data);
u64 XMsm_Get_result_t(XMsm *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
