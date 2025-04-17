// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Oct 19 11:09:18 2024
// Host        : RYN-B10-PC-13 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_accelerator_0_0_stub.v
// Design      : design_1_accelerator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "accelerator,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(w1_ce0, w1_ce1, w2_ce0, w2_ce1, bias_1_ce0, 
  bias_2_ce0, ap_clk, ap_rst, ap_done, ap_idle, ap_ready, ap_start, ap_return, w1_address0, w1_q0, 
  w1_address1, w1_q1, w2_address0, w2_q0, w2_address1, w2_q1, bias_1_address0, bias_1_q0, 
  bias_2_address0, bias_2_q0, training)
/* synthesis syn_black_box black_box_pad_pin="w1_ce0,w1_ce1,w2_ce0,w2_ce1,bias_1_ce0,bias_2_ce0,ap_rst,ap_done,ap_idle,ap_ready,ap_start,ap_return[255:0],w1_address0[1:0],w1_q0[15:0],w1_address1[1:0],w1_q1[15:0],w2_address0[1:0],w2_q0[15:0],w2_address1[1:0],w2_q1[15:0],bias_1_address0[0:0],bias_1_q0[15:0],bias_2_address0[0:0],bias_2_q0[15:0],training[15:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  output w1_ce0;
  output w1_ce1;
  output w2_ce0;
  output w2_ce1;
  output bias_1_ce0;
  output bias_2_ce0;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input ap_start;
  output [255:0]ap_return;
  output [1:0]w1_address0;
  input [15:0]w1_q0;
  output [1:0]w1_address1;
  input [15:0]w1_q1;
  output [1:0]w2_address0;
  input [15:0]w2_q0;
  output [1:0]w2_address1;
  input [15:0]w2_q1;
  output [0:0]bias_1_address0;
  input [15:0]bias_1_q0;
  output [0:0]bias_2_address0;
  input [15:0]bias_2_q0;
  input [15:0]training;
endmodule
