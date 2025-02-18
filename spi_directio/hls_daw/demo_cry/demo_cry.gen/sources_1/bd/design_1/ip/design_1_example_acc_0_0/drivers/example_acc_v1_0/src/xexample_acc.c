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

void XExample_acc_Set_w1(XExample_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_W1_DATA, Data);
}

u32 XExample_acc_Get_w1(XExample_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_W1_DATA);
    return Data;
}

void XExample_acc_Set_w2(XExample_acc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_W2_DATA, Data);
}

u32 XExample_acc_Get_w2(XExample_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_W2_DATA);
    return Data;
}

