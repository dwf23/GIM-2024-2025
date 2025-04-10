// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XACCELERATOR_CONTROLLER_H
#define XACCELERATOR_CONTROLLER_H

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
#include "xaccelerator_controller_hw.h"

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
} XAccelerator_controller_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XAccelerator_controller;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XAccelerator_controller_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XAccelerator_controller_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XAccelerator_controller_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XAccelerator_controller_ReadReg(BaseAddress, RegOffset) \
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
int XAccelerator_controller_Initialize(XAccelerator_controller *InstancePtr, UINTPTR BaseAddress);
XAccelerator_controller_Config* XAccelerator_controller_LookupConfig(UINTPTR BaseAddress);
#else
int XAccelerator_controller_Initialize(XAccelerator_controller *InstancePtr, u16 DeviceId);
XAccelerator_controller_Config* XAccelerator_controller_LookupConfig(u16 DeviceId);
#endif
int XAccelerator_controller_CfgInitialize(XAccelerator_controller *InstancePtr, XAccelerator_controller_Config *ConfigPtr);
#else
int XAccelerator_controller_Initialize(XAccelerator_controller *InstancePtr, const char* InstanceName);
int XAccelerator_controller_Release(XAccelerator_controller *InstancePtr);
#endif

void XAccelerator_controller_Start(XAccelerator_controller *InstancePtr);
u32 XAccelerator_controller_IsDone(XAccelerator_controller *InstancePtr);
u32 XAccelerator_controller_IsIdle(XAccelerator_controller *InstancePtr);
u32 XAccelerator_controller_IsReady(XAccelerator_controller *InstancePtr);
void XAccelerator_controller_EnableAutoRestart(XAccelerator_controller *InstancePtr);
void XAccelerator_controller_DisableAutoRestart(XAccelerator_controller *InstancePtr);

void XAccelerator_controller_Set_expecting_input(XAccelerator_controller *InstancePtr, u32 Data);
u32 XAccelerator_controller_Get_expecting_input(XAccelerator_controller *InstancePtr);

void XAccelerator_controller_InterruptGlobalEnable(XAccelerator_controller *InstancePtr);
void XAccelerator_controller_InterruptGlobalDisable(XAccelerator_controller *InstancePtr);
void XAccelerator_controller_InterruptEnable(XAccelerator_controller *InstancePtr, u32 Mask);
void XAccelerator_controller_InterruptDisable(XAccelerator_controller *InstancePtr, u32 Mask);
void XAccelerator_controller_InterruptClear(XAccelerator_controller *InstancePtr, u32 Mask);
u32 XAccelerator_controller_InterruptGetEnabled(XAccelerator_controller *InstancePtr);
u32 XAccelerator_controller_InterruptGetStatus(XAccelerator_controller *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
