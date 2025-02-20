// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XEXAMPLE_ACC_H
#define XEXAMPLE_ACC_H

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
#include "xexample_acc_hw.h"

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
} XExample_acc_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XExample_acc;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XExample_acc_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XExample_acc_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XExample_acc_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XExample_acc_ReadReg(BaseAddress, RegOffset) \
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
int XExample_acc_Initialize(XExample_acc *InstancePtr, UINTPTR BaseAddress);
XExample_acc_Config* XExample_acc_LookupConfig(UINTPTR BaseAddress);
#else
int XExample_acc_Initialize(XExample_acc *InstancePtr, u16 DeviceId);
XExample_acc_Config* XExample_acc_LookupConfig(u16 DeviceId);
#endif
int XExample_acc_CfgInitialize(XExample_acc *InstancePtr, XExample_acc_Config *ConfigPtr);
#else
int XExample_acc_Initialize(XExample_acc *InstancePtr, const char* InstanceName);
int XExample_acc_Release(XExample_acc *InstancePtr);
#endif

void XExample_acc_Start(XExample_acc *InstancePtr);
u32 XExample_acc_IsDone(XExample_acc *InstancePtr);
u32 XExample_acc_IsIdle(XExample_acc *InstancePtr);
u32 XExample_acc_IsReady(XExample_acc *InstancePtr);
void XExample_acc_EnableAutoRestart(XExample_acc *InstancePtr);
void XExample_acc_DisableAutoRestart(XExample_acc *InstancePtr);

void XExample_acc_Set_w1(XExample_acc *InstancePtr, u32 Data);
u32 XExample_acc_Get_w1(XExample_acc *InstancePtr);
void XExample_acc_Set_w2(XExample_acc *InstancePtr, u32 Data);
u32 XExample_acc_Get_w2(XExample_acc *InstancePtr);

void XExample_acc_InterruptGlobalEnable(XExample_acc *InstancePtr);
void XExample_acc_InterruptGlobalDisable(XExample_acc *InstancePtr);
void XExample_acc_InterruptEnable(XExample_acc *InstancePtr, u32 Mask);
void XExample_acc_InterruptDisable(XExample_acc *InstancePtr, u32 Mask);
void XExample_acc_InterruptClear(XExample_acc *InstancePtr, u32 Mask);
u32 XExample_acc_InterruptGetEnabled(XExample_acc *InstancePtr);
u32 XExample_acc_InterruptGetStatus(XExample_acc *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
