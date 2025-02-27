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

void XExample_acc_Start(XExample_acc *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_AP_CTRL) & 0x80;
    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XExample_acc_IsDone(XExample_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XExample_acc_IsIdle(XExample_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XExample_acc_IsReady(XExample_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XExample_acc_EnableAutoRestart(XExample_acc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XExample_acc_DisableAutoRestart(XExample_acc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_AP_CTRL, 0);
}

u32 XExample_acc_Get_return(XExample_acc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_AP_RETURN);
    return Data;
}
void XExample_acc_InterruptGlobalEnable(XExample_acc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_GIE, 1);
}

void XExample_acc_InterruptGlobalDisable(XExample_acc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_GIE, 0);
}

void XExample_acc_InterruptEnable(XExample_acc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_IER);
    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_IER, Register | Mask);
}

void XExample_acc_InterruptDisable(XExample_acc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_IER);
    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_IER, Register & (~Mask));
}

void XExample_acc_InterruptClear(XExample_acc *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XExample_acc_WriteReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_ISR, Mask);
}

u32 XExample_acc_InterruptGetEnabled(XExample_acc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_IER);
}

u32 XExample_acc_InterruptGetStatus(XExample_acc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XExample_acc_ReadReg(InstancePtr->Control_BaseAddress, XEXAMPLE_ACC_CONTROL_ADDR_ISR);
}

