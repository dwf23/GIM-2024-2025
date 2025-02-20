//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Thu Feb 20 11:06:57 2025
//Host        : Lindsey_laptop running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (alpha_transmit_line_0,
    alpha_transmit_line_ap_ack_0,
    alpha_transmit_line_ap_vld_0);
  output [0:0]alpha_transmit_line_0;
  input alpha_transmit_line_ap_ack_0;
  output alpha_transmit_line_ap_vld_0;

  wire [0:0]alpha_transmit_line_0;
  wire alpha_transmit_line_ap_ack_0;
  wire alpha_transmit_line_ap_vld_0;

  design_1 design_1_i
       (.alpha_transmit_line_0(alpha_transmit_line_0),
        .alpha_transmit_line_ap_ack_0(alpha_transmit_line_ap_ack_0),
        .alpha_transmit_line_ap_vld_0(alpha_transmit_line_ap_vld_0));
endmodule
