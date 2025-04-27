// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XPOSEIDON_HASH_H
#define XPOSEIDON_HASH_H

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
#include "xposeidon_hash_hw.h"

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
    u64 Control_r_BaseAddress;
    u64 Control_BaseAddress;
} XPoseidon_hash_Config;
#endif

typedef struct {
    u64 Control_r_BaseAddress;
    u64 Control_BaseAddress;
    u32 IsReady;
} XPoseidon_hash;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPoseidon_hash_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPoseidon_hash_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPoseidon_hash_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPoseidon_hash_ReadReg(BaseAddress, RegOffset) \
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
int XPoseidon_hash_Initialize(XPoseidon_hash *InstancePtr, UINTPTR BaseAddress);
XPoseidon_hash_Config* XPoseidon_hash_LookupConfig(UINTPTR BaseAddress);
#else
int XPoseidon_hash_Initialize(XPoseidon_hash *InstancePtr, u16 DeviceId);
XPoseidon_hash_Config* XPoseidon_hash_LookupConfig(u16 DeviceId);
#endif
int XPoseidon_hash_CfgInitialize(XPoseidon_hash *InstancePtr, XPoseidon_hash_Config *ConfigPtr);
#else
int XPoseidon_hash_Initialize(XPoseidon_hash *InstancePtr, const char* InstanceName);
int XPoseidon_hash_Release(XPoseidon_hash *InstancePtr);
#endif

void XPoseidon_hash_Start(XPoseidon_hash *InstancePtr);
u32 XPoseidon_hash_IsDone(XPoseidon_hash *InstancePtr);
u32 XPoseidon_hash_IsIdle(XPoseidon_hash *InstancePtr);
u32 XPoseidon_hash_IsReady(XPoseidon_hash *InstancePtr);
void XPoseidon_hash_EnableAutoRestart(XPoseidon_hash *InstancePtr);
void XPoseidon_hash_DisableAutoRestart(XPoseidon_hash *InstancePtr);

void XPoseidon_hash_Set_input_r(XPoseidon_hash *InstancePtr, u64 Data);
u64 XPoseidon_hash_Get_input_r(XPoseidon_hash *InstancePtr);
void XPoseidon_hash_Set_output_r(XPoseidon_hash *InstancePtr, u64 Data);
u64 XPoseidon_hash_Get_output_r(XPoseidon_hash *InstancePtr);
void XPoseidon_hash_Set_num_blocks(XPoseidon_hash *InstancePtr, u32 Data);
u32 XPoseidon_hash_Get_num_blocks(XPoseidon_hash *InstancePtr);

void XPoseidon_hash_InterruptGlobalEnable(XPoseidon_hash *InstancePtr);
void XPoseidon_hash_InterruptGlobalDisable(XPoseidon_hash *InstancePtr);
void XPoseidon_hash_InterruptEnable(XPoseidon_hash *InstancePtr, u32 Mask);
void XPoseidon_hash_InterruptDisable(XPoseidon_hash *InstancePtr, u32 Mask);
void XPoseidon_hash_InterruptClear(XPoseidon_hash *InstancePtr, u32 Mask);
u32 XPoseidon_hash_InterruptGetEnabled(XPoseidon_hash *InstancePtr);
u32 XPoseidon_hash_InterruptGetStatus(XPoseidon_hash *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
