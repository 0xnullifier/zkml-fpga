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
#include "xmsm.h"

extern XMsm_Config XMsm_ConfigTable[];

#ifdef SDT
XMsm_Config *XMsm_LookupConfig(UINTPTR BaseAddress) {
	XMsm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMsm_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMsm_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMsm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMsm_Initialize(XMsm *InstancePtr, UINTPTR BaseAddress) {
	XMsm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMsm_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMsm_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMsm_Config *XMsm_LookupConfig(u16 DeviceId) {
	XMsm_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMSM_NUM_INSTANCES; Index++) {
		if (XMsm_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMsm_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMsm_Initialize(XMsm *InstancePtr, u16 DeviceId) {
	XMsm_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMsm_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMsm_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

