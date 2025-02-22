// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xpulse_gen.h"

extern XPulse_gen_Config XPulse_gen_ConfigTable[];

#ifdef SDT
XPulse_gen_Config *XPulse_gen_LookupConfig(UINTPTR BaseAddress) {
	XPulse_gen_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XPulse_gen_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XPulse_gen_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XPulse_gen_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPulse_gen_Initialize(XPulse_gen *InstancePtr, UINTPTR BaseAddress) {
	XPulse_gen_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPulse_gen_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPulse_gen_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XPulse_gen_Config *XPulse_gen_LookupConfig(u16 DeviceId) {
	XPulse_gen_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XPULSE_GEN_NUM_INSTANCES; Index++) {
		if (XPulse_gen_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XPulse_gen_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XPulse_gen_Initialize(XPulse_gen *InstancePtr, u16 DeviceId) {
	XPulse_gen_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XPulse_gen_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XPulse_gen_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

