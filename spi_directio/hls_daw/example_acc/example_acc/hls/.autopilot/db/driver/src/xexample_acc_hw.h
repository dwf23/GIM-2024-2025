// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.1 (64-bit)
// Tool Version Limit: 2024.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of w1
//        bit 31~0 - w1[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of w2
//        bit 31~0 - w2[31:0] (Read/Write)
// 0x1c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XEXAMPLE_ACC_CONTROL_ADDR_W1_DATA 0x10
#define XEXAMPLE_ACC_CONTROL_BITS_W1_DATA 32
#define XEXAMPLE_ACC_CONTROL_ADDR_W2_DATA 0x18
#define XEXAMPLE_ACC_CONTROL_BITS_W2_DATA 32

