// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xpulse_gen.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPulse_gen_CfgInitialize(XPulse_gen *InstancePtr, XPulse_gen_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPulse_gen_Set_start_r(XPulse_gen *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPulse_gen_WriteReg(InstancePtr->Control_BaseAddress, XPULSE_GEN_CONTROL_ADDR_START_R_DATA, Data);
}

u32 XPulse_gen_Get_start_r(XPulse_gen *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPulse_gen_ReadReg(InstancePtr->Control_BaseAddress, XPULSE_GEN_CONTROL_ADDR_START_R_DATA);
    return Data;
}

