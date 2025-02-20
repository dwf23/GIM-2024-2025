// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xexample_acc.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XExample_acc_CfgInitialize(XExample_acc *InstancePtr, XExample_acc_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XExample_acc_Set_start_r(XExample_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_START_R_DATA, Data);
}

u32 XExample_acc_Get_start_r(XExample_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_START_R_DATA);
    return Data;
}

