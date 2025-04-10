// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xaccelerator_controller.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAccelerator_controller_CfgInitialize(XAccelerator_controller *InstancePtr, XAccelerator_controller_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAccelerator_controller_Start(XAccelerator_controller *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_controller_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAccelerator_controller_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAccelerator_controller_IsDone(XAccelerator_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_controller_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAccelerator_controller_IsIdle(XAccelerator_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_controller_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAccelerator_controller_IsReady(XAccelerator_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_controller_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAccelerator_controller_EnableAutoRestart(XAccelerator_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_controller_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAccelerator_controller_DisableAutoRestart(XAccelerator_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_controller_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_AP_CTRL, 0);
}

void XAccelerator_controller_Set_expecting_input(XAccelerator_controller *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_controller_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_EXPECTING_INPUT_DATA, Data);
}

u32 XAccelerator_controller_Get_expecting_input(XAccelerator_controller *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_controller_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_EXPECTING_INPUT_DATA);
    return Data;
}

void XAccelerator_controller_InterruptGlobalEnable(XAccelerator_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_controller_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_GIE, 1);
}

void XAccelerator_controller_InterruptGlobalDisable(XAccelerator_controller *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_controller_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_GIE, 0);
}

void XAccelerator_controller_InterruptEnable(XAccelerator_controller *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccelerator_controller_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_IER);
    XAccelerator_controller_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_IER, Register | Mask);
}

void XAccelerator_controller_InterruptDisable(XAccelerator_controller *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccelerator_controller_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_IER);
    XAccelerator_controller_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAccelerator_controller_InterruptClear(XAccelerator_controller *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_controller_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_ISR, Mask);
}

u32 XAccelerator_controller_InterruptGetEnabled(XAccelerator_controller *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccelerator_controller_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_IER);
}

u32 XAccelerator_controller_InterruptGetStatus(XAccelerator_controller *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccelerator_controller_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROLLER_CONTROL_ADDR_ISR);
}

