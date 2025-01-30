// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xaccelerator.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XAccelerator_CfgInitialize(XAccelerator *InstancePtr, XAccelerator_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XAccelerator_Start(XAccelerator *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_CTRL) & 0x80;
    XAccelerator_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XAccelerator_IsDone(XAccelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XAccelerator_IsIdle(XAccelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XAccelerator_IsReady(XAccelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XAccelerator_EnableAutoRestart(XAccelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XAccelerator_DisableAutoRestart(XAccelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_CTRL, 0);
}

XAccelerator_Return XAccelerator_Get_return(XAccelerator *InstancePtr) {
    XAccelerator_Return Data;

    Data.word_0 = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_RETURN + 0);
    Data.word_1 = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_RETURN + 4);
    Data.word_2 = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_RETURN + 8);
    Data.word_3 = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_RETURN + 12);
    Data.word_4 = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_RETURN + 16);
    Data.word_5 = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_RETURN + 20);
    Data.word_6 = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_RETURN + 24);
    Data.word_7 = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_AP_RETURN + 28);
    return Data;
}
void XAccelerator_Set_training(XAccelerator *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_TRAINING_DATA, Data);
}

u32 XAccelerator_Get_training(XAccelerator *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_TRAINING_DATA);
    return Data;
}

u32 XAccelerator_Get_w1_0_BaseAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_0_BASE);
}

u32 XAccelerator_Get_w1_0_HighAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_0_HIGH);
}

u32 XAccelerator_Get_w1_0_TotalBytes(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XACCELERATOR_CONTROL_ADDR_W1_0_HIGH - XACCELERATOR_CONTROL_ADDR_W1_0_BASE + 1);
}

u32 XAccelerator_Get_w1_0_BitWidth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_WIDTH_W1_0;
}

u32 XAccelerator_Get_w1_0_Depth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_DEPTH_W1_0;
}

u32 XAccelerator_Write_w1_0_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_W1_0_HIGH - XACCELERATOR_CONTROL_ADDR_W1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_w1_0_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_W1_0_HIGH - XACCELERATOR_CONTROL_ADDR_W1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAccelerator_Write_w1_0_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_W1_0_HIGH - XACCELERATOR_CONTROL_ADDR_W1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_w1_0_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_W1_0_HIGH - XACCELERATOR_CONTROL_ADDR_W1_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_0_BASE + offset + i);
    }
    return length;
}

u32 XAccelerator_Get_w1_1_BaseAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_1_BASE);
}

u32 XAccelerator_Get_w1_1_HighAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_1_HIGH);
}

u32 XAccelerator_Get_w1_1_TotalBytes(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XACCELERATOR_CONTROL_ADDR_W1_1_HIGH - XACCELERATOR_CONTROL_ADDR_W1_1_BASE + 1);
}

u32 XAccelerator_Get_w1_1_BitWidth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_WIDTH_W1_1;
}

u32 XAccelerator_Get_w1_1_Depth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_DEPTH_W1_1;
}

u32 XAccelerator_Write_w1_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_W1_1_HIGH - XACCELERATOR_CONTROL_ADDR_W1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_w1_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_W1_1_HIGH - XACCELERATOR_CONTROL_ADDR_W1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAccelerator_Write_w1_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_W1_1_HIGH - XACCELERATOR_CONTROL_ADDR_W1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_w1_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_W1_1_HIGH - XACCELERATOR_CONTROL_ADDR_W1_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W1_1_BASE + offset + i);
    }
    return length;
}

u32 XAccelerator_Get_w2_0_BaseAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_0_BASE);
}

u32 XAccelerator_Get_w2_0_HighAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_0_HIGH);
}

u32 XAccelerator_Get_w2_0_TotalBytes(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XACCELERATOR_CONTROL_ADDR_W2_0_HIGH - XACCELERATOR_CONTROL_ADDR_W2_0_BASE + 1);
}

u32 XAccelerator_Get_w2_0_BitWidth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_WIDTH_W2_0;
}

u32 XAccelerator_Get_w2_0_Depth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_DEPTH_W2_0;
}

u32 XAccelerator_Write_w2_0_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_W2_0_HIGH - XACCELERATOR_CONTROL_ADDR_W2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_0_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_w2_0_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_W2_0_HIGH - XACCELERATOR_CONTROL_ADDR_W2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_0_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAccelerator_Write_w2_0_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_W2_0_HIGH - XACCELERATOR_CONTROL_ADDR_W2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_0_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_w2_0_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_W2_0_HIGH - XACCELERATOR_CONTROL_ADDR_W2_0_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_0_BASE + offset + i);
    }
    return length;
}

u32 XAccelerator_Get_w2_1_BaseAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_1_BASE);
}

u32 XAccelerator_Get_w2_1_HighAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_1_HIGH);
}

u32 XAccelerator_Get_w2_1_TotalBytes(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XACCELERATOR_CONTROL_ADDR_W2_1_HIGH - XACCELERATOR_CONTROL_ADDR_W2_1_BASE + 1);
}

u32 XAccelerator_Get_w2_1_BitWidth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_WIDTH_W2_1;
}

u32 XAccelerator_Get_w2_1_Depth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_DEPTH_W2_1;
}

u32 XAccelerator_Write_w2_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_W2_1_HIGH - XACCELERATOR_CONTROL_ADDR_W2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_w2_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_W2_1_HIGH - XACCELERATOR_CONTROL_ADDR_W2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAccelerator_Write_w2_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_W2_1_HIGH - XACCELERATOR_CONTROL_ADDR_W2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_w2_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_W2_1_HIGH - XACCELERATOR_CONTROL_ADDR_W2_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_W2_1_BASE + offset + i);
    }
    return length;
}

u32 XAccelerator_Get_bias_1_BaseAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE);
}

u32 XAccelerator_Get_bias_1_HighAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_1_HIGH);
}

u32 XAccelerator_Get_bias_1_TotalBytes(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XACCELERATOR_CONTROL_ADDR_BIAS_1_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE + 1);
}

u32 XAccelerator_Get_bias_1_BitWidth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_WIDTH_BIAS_1;
}

u32 XAccelerator_Get_bias_1_Depth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_DEPTH_BIAS_1;
}

u32 XAccelerator_Write_bias_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_BIAS_1_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_bias_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_BIAS_1_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAccelerator_Write_bias_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_BIAS_1_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_bias_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_BIAS_1_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_1_BASE + offset + i);
    }
    return length;
}

u32 XAccelerator_Get_bias_2_BaseAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE);
}

u32 XAccelerator_Get_bias_2_HighAddress(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_2_HIGH);
}

u32 XAccelerator_Get_bias_2_TotalBytes(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return (XACCELERATOR_CONTROL_ADDR_BIAS_2_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE + 1);
}

u32 XAccelerator_Get_bias_2_BitWidth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_WIDTH_BIAS_2;
}

u32 XAccelerator_Get_bias_2_Depth(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XACCELERATOR_CONTROL_DEPTH_BIAS_2;
}

u32 XAccelerator_Write_bias_2_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_BIAS_2_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE + (offset + i)*4) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_bias_2_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length)*4 > (XACCELERATOR_CONTROL_ADDR_BIAS_2_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(int *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE + (offset + i)*4);
    }
    return length;
}

u32 XAccelerator_Write_bias_2_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_BIAS_2_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE + offset + i) = *(data + i);
    }
    return length;
}

u32 XAccelerator_Read_bias_2_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr -> IsReady == XIL_COMPONENT_IS_READY);

    int i;

    if ((offset + length) > (XACCELERATOR_CONTROL_ADDR_BIAS_2_HIGH - XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE + 1))
        return 0;

    for (i = 0; i < length; i++) {
        *(data + i) = *(char *)(InstancePtr->Control_BaseAddress + XACCELERATOR_CONTROL_ADDR_BIAS_2_BASE + offset + i);
    }
    return length;
}

void XAccelerator_InterruptGlobalEnable(XAccelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_GIE, 1);
}

void XAccelerator_InterruptGlobalDisable(XAccelerator *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_GIE, 0);
}

void XAccelerator_InterruptEnable(XAccelerator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_IER);
    XAccelerator_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_IER, Register | Mask);
}

void XAccelerator_InterruptDisable(XAccelerator *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_IER);
    XAccelerator_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_IER, Register & (~Mask));
}

void XAccelerator_InterruptClear(XAccelerator *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XAccelerator_WriteReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_ISR, Mask);
}

u32 XAccelerator_InterruptGetEnabled(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_IER);
}

u32 XAccelerator_InterruptGetStatus(XAccelerator *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XAccelerator_ReadReg(InstancePtr->Control_BaseAddress, XACCELERATOR_CONTROL_ADDR_ISR);
}

