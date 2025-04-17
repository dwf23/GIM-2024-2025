// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Feb 19 23:34:17 2025
// Host        : LAPTOP-DP0OJSK0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/design_1_example_acc_0_0_stub.v
// Design      : design_1_example_acc_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "example_acc,Vivado 2024.1" *)
module design_1_example_acc_0_0(data_in_ap_vld, data_in_ap_ack, 
  s_axi_control_ARADDR, s_axi_control_ARREADY, s_axi_control_ARVALID, 
  s_axi_control_AWADDR, s_axi_control_AWREADY, s_axi_control_AWVALID, 
  s_axi_control_BREADY, s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_RDATA, 
  s_axi_control_RREADY, s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_WDATA, 
  s_axi_control_WREADY, s_axi_control_WSTRB, s_axi_control_WVALID, ap_clk, ap_rst_n, ap_done, 
  ap_idle, ap_ready, ap_start, ap_return, data_in)
/* synthesis syn_black_box black_box_pad_pin="data_in_ap_vld,data_in_ap_ack,s_axi_control_ARADDR[4:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[4:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_rst_n,ap_done,ap_idle,ap_ready,ap_start,ap_return[31:0],data_in[0:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input data_in_ap_vld;
  output data_in_ap_ack;
  input [4:0]s_axi_control_ARADDR;
  output s_axi_control_ARREADY;
  input s_axi_control_ARVALID;
  input [4:0]s_axi_control_AWADDR;
  output s_axi_control_AWREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  output [31:0]s_axi_control_RDATA;
  input s_axi_control_RREADY;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input [31:0]s_axi_control_WDATA;
  output s_axi_control_WREADY;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input ap_start;
  output [31:0]ap_return;
  input [0:0]data_in;
endmodule
