//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Feb  9 20:45:33 2025
//Host        : Lindsey_laptop running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (cs_0,
    miso_0,
    miso_ap_vld_0,
    mosi_0,
    sclk_0);
  output [0:0]cs_0;
  input [0:0]miso_0;
  input miso_ap_vld_0;
  output [0:0]mosi_0;
  output [0:0]sclk_0;

  wire [0:0]cs_0;
  wire [0:0]miso_0;
  wire miso_ap_vld_0;
  wire [0:0]mosi_0;
  wire [0:0]sclk_0;

  design_1 design_1_i
       (.cs_0(cs_0),
        .miso_0(miso_0),
        .miso_ap_vld_0(miso_ap_vld_0),
        .mosi_0(mosi_0),
        .sclk_0(sclk_0));
endmodule
