// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XACCELERATOR_H
#define XACCELERATOR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xaccelerator_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XAccelerator_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAccelerator;

typedef u32 word_type;

typedef struct {
    u32 word_0;
    u32 word_1;
    u32 word_2;
    u32 word_3;
    u32 word_4;
    u32 word_5;
    u32 word_6;
    u32 word_7;
} XAccelerator_Return;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAccelerator_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAccelerator_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAccelerator_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAccelerator_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XAccelerator_Initialize(XAccelerator *InstancePtr, UINTPTR BaseAddress);
XAccelerator_Config* XAccelerator_LookupConfig(UINTPTR BaseAddress);
#else
int XAccelerator_Initialize(XAccelerator *InstancePtr, u16 DeviceId);
XAccelerator_Config* XAccelerator_LookupConfig(u16 DeviceId);
#endif
int XAccelerator_CfgInitialize(XAccelerator *InstancePtr, XAccelerator_Config *ConfigPtr);
#else
int XAccelerator_Initialize(XAccelerator *InstancePtr, const char* InstanceName);
int XAccelerator_Release(XAccelerator *InstancePtr);
#endif

void XAccelerator_Start(XAccelerator *InstancePtr);
u32 XAccelerator_IsDone(XAccelerator *InstancePtr);
u32 XAccelerator_IsIdle(XAccelerator *InstancePtr);
u32 XAccelerator_IsReady(XAccelerator *InstancePtr);
void XAccelerator_EnableAutoRestart(XAccelerator *InstancePtr);
void XAccelerator_DisableAutoRestart(XAccelerator *InstancePtr);
XAccelerator_Return XAccelerator_Get_return(XAccelerator *InstancePtr);

void XAccelerator_Set_training(XAccelerator *InstancePtr, u32 Data);
u32 XAccelerator_Get_training(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w1_0_BaseAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w1_0_HighAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w1_0_TotalBytes(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w1_0_BitWidth(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w1_0_Depth(XAccelerator *InstancePtr);
u32 XAccelerator_Write_w1_0_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Read_w1_0_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Write_w1_0_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Read_w1_0_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Get_w1_1_BaseAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w1_1_HighAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w1_1_TotalBytes(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w1_1_BitWidth(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w1_1_Depth(XAccelerator *InstancePtr);
u32 XAccelerator_Write_w1_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Read_w1_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Write_w1_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Read_w1_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Get_w2_0_BaseAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w2_0_HighAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w2_0_TotalBytes(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w2_0_BitWidth(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w2_0_Depth(XAccelerator *InstancePtr);
u32 XAccelerator_Write_w2_0_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Read_w2_0_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Write_w2_0_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Read_w2_0_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Get_w2_1_BaseAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w2_1_HighAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w2_1_TotalBytes(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w2_1_BitWidth(XAccelerator *InstancePtr);
u32 XAccelerator_Get_w2_1_Depth(XAccelerator *InstancePtr);
u32 XAccelerator_Write_w2_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Read_w2_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Write_w2_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Read_w2_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Get_bias_1_BaseAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_bias_1_HighAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_bias_1_TotalBytes(XAccelerator *InstancePtr);
u32 XAccelerator_Get_bias_1_BitWidth(XAccelerator *InstancePtr);
u32 XAccelerator_Get_bias_1_Depth(XAccelerator *InstancePtr);
u32 XAccelerator_Write_bias_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Read_bias_1_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Write_bias_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Read_bias_1_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Get_bias_2_BaseAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_bias_2_HighAddress(XAccelerator *InstancePtr);
u32 XAccelerator_Get_bias_2_TotalBytes(XAccelerator *InstancePtr);
u32 XAccelerator_Get_bias_2_BitWidth(XAccelerator *InstancePtr);
u32 XAccelerator_Get_bias_2_Depth(XAccelerator *InstancePtr);
u32 XAccelerator_Write_bias_2_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Read_bias_2_Words(XAccelerator *InstancePtr, int offset, word_type *data, int length);
u32 XAccelerator_Write_bias_2_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);
u32 XAccelerator_Read_bias_2_Bytes(XAccelerator *InstancePtr, int offset, char *data, int length);

void XAccelerator_InterruptGlobalEnable(XAccelerator *InstancePtr);
void XAccelerator_InterruptGlobalDisable(XAccelerator *InstancePtr);
void XAccelerator_InterruptEnable(XAccelerator *InstancePtr, u32 Mask);
void XAccelerator_InterruptDisable(XAccelerator *InstancePtr, u32 Mask);
void XAccelerator_InterruptClear(XAccelerator *InstancePtr, u32 Mask);
u32 XAccelerator_InterruptGetEnabled(XAccelerator *InstancePtr);
u32 XAccelerator_InterruptGetStatus(XAccelerator *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
