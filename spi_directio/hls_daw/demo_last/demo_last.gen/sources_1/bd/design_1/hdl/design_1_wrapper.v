//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Sun Feb 16 00:46:35 2025
//Host        : LAPTOP-DP0OJSK0 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (data_out_0,
    data_out_ap_ack_0,
    data_out_ap_vld_0);
  output [31:0]data_out_0;
  input data_out_ap_ack_0;
  output data_out_ap_vld_0;

  wire [31:0]data_out_0;
  wire data_out_ap_ack_0;
  wire data_out_ap_vld_0;

  design_1 design_1_i
       (.data_out_0(data_out_0),
        .data_out_ap_ack_0(data_out_ap_ack_0),
        .data_out_ap_vld_0(data_out_ap_vld_0));
endmodule
