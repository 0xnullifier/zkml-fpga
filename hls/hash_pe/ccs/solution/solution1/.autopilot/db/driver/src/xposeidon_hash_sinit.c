// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xposeidon_hash.h"

extern XPoseidon_hash_Config XPoseidon_hash_ConfigTable[];

#ifdef SDT
XPoseidon_hash_Config *XPoseidon_hash_LookupConfig(UINTPTR BaseAddress) {
	XPoseidon_hash_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XPoseidon_hash_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XPoseidon_hash_ConfigTable[Index].Control_r_BaseAddress == BaseAddress) {
			ConfigPtr = &XPoseidon_hash_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPoseidon_hash_Initialize(XPoseidon_hash *InstancePtr, UINTPTR BaseAddress) {
	XPoseidon_hash_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPoseidon_hash_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPoseidon_hash_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XPoseidon_hash_Config *XPoseidon_hash_LookupConfig(u16 DeviceId) {
	XPoseidon_hash_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPOSEIDON_HASH_NUM_INSTANCES; Index++) {
		if (XPoseidon_hash_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPoseidon_hash_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPoseidon_hash_Initialize(XPoseidon_hash *InstancePtr, u16 DeviceId) {
	XPoseidon_hash_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPoseidon_hash_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPoseidon_hash_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

