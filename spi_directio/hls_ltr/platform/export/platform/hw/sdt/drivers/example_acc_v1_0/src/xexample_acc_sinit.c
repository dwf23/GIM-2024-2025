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
#include "xexample_acc.h"

extern XExample_acc_Config XExample_acc_ConfigTable[];

#ifdef SDT
XExample_acc_Config *XExample_acc_LookupConfig(UINTPTR BaseAddress) {
	XExample_acc_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XExample_acc_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XExample_acc_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XExample_acc_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XExample_acc_Initialize(XExample_acc *InstancePtr, UINTPTR BaseAddress) {
	XExample_acc_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XExample_acc_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XExample_acc_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XExample_acc_Config *XExample_acc_LookupConfig(u16 DeviceId) {
	XExample_acc_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XEXAMPLE_ACC_NUM_INSTANCES; Index++) {
		if (XExample_acc_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XExample_acc_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XExample_acc_Initialize(XExample_acc *InstancePtr, u16 DeviceId) {
	XExample_acc_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XExample_acc_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XExample_acc_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

