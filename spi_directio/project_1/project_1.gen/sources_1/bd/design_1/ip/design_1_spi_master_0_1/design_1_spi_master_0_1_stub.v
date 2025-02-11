// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Feb  9 20:45:25 2025
// Host        : Lindsey_laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/testing_comm/spi_directio/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_spi_master_0_1/design_1_spi_master_0_1_stub.v
// Design      : design_1_spi_master_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_spi_master_0_1,spi_master,{}" *) (* CORE_GENERATION_INFO = "design_1_spi_master_0_1,spi_master,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=spi_master,x_ipVersion=1.0,x_ipCoreRevision=2113948003,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "HLS" *) (* X_CORE_INFO = "spi_master,Vivado 2024.2" *) (* hls_module = "yes" *) 
module design_1_spi_master_0_1(miso_ap_vld, data_out_ap_vld, data_in_ap_vld, 
  ap_clk, ap_rst, sclk, cs, mosi, miso, data_out, data_in)
/* synthesis syn_black_box black_box_pad_pin="miso_ap_vld,data_out_ap_vld,data_in_ap_vld,ap_rst,sclk[0:0],cs[0:0],mosi[0:0],miso[0:0],data_out[31:0],data_in[31:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */;
  input miso_ap_vld;
  input data_out_ap_vld;
  output data_in_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sclk DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sclk, LAYERED_METADATA undef" *) output [0:0]sclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 cs DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cs, LAYERED_METADATA undef" *) output [0:0]cs;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mosi DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mosi, LAYERED_METADATA undef" *) output [0:0]mosi;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 miso DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME miso, LAYERED_METADATA undef" *) input [0:0]miso;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_out DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out, LAYERED_METADATA undef" *) input [31:0]data_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in, LAYERED_METADATA undef" *) output [31:0]data_in;
endmodule
