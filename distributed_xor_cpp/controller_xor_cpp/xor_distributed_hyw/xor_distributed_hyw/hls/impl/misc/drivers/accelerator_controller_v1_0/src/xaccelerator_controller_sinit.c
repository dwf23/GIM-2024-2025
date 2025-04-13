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
#include "xaccelerator_controller.h"

extern XAccelerator_controller_Config XAccelerator_controller_ConfigTable[];

#ifdef SDT
XAccelerator_controller_Config *XAccelerator_controller_LookupConfig(UINTPTR BaseAddress) {
	XAccelerator_controller_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XAccelerator_controller_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XAccelerator_controller_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XAccelerator_controller_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAccelerator_controller_Initialize(XAccelerator_controller *InstancePtr, UINTPTR BaseAddress) {
	XAccelerator_controller_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAccelerator_controller_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAccelerator_controller_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XAccelerator_controller_Config *XAccelerator_controller_LookupConfig(u16 DeviceId) {
	XAccelerator_controller_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XACCELERATOR_CONTROLLER_NUM_INSTANCES; Index++) {
		if (XAccelerator_controller_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XAccelerator_controller_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XAccelerator_controller_Initialize(XAccelerator_controller *InstancePtr, u16 DeviceId) {
	XAccelerator_controller_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XAccelerator_controller_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XAccelerator_controller_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

