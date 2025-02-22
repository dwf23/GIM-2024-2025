// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XPULSE_GEN_H
#define XPULSE_GEN_H

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
#include "xpulse_gen_hw.h"

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
} XPulse_gen_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XPulse_gen;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XPulse_gen_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XPulse_gen_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XPulse_gen_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XPulse_gen_ReadReg(BaseAddress, RegOffset) \
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
int XPulse_gen_Initialize(XPulse_gen *InstancePtr, UINTPTR BaseAddress);
XPulse_gen_Config* XPulse_gen_LookupConfig(UINTPTR BaseAddress);
#else
int XPulse_gen_Initialize(XPulse_gen *InstancePtr, u16 DeviceId);
XPulse_gen_Config* XPulse_gen_LookupConfig(u16 DeviceId);
#endif
int XPulse_gen_CfgInitialize(XPulse_gen *InstancePtr, XPulse_gen_Config *ConfigPtr);
#else
int XPulse_gen_Initialize(XPulse_gen *InstancePtr, const char* InstanceName);
int XPulse_gen_Release(XPulse_gen *InstancePtr);
#endif

u32 XPulse_gen_Get_return(XPulse_gen *InstancePtr);


#ifdef __cplusplus
}
#endif

#endif
