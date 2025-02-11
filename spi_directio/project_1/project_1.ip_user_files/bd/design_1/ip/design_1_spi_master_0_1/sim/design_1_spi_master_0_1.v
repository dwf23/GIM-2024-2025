// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:spi_master:1.0
// IP Revision: 2113948003

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_spi_master_0_1 (
  miso_ap_vld,
  data_out_ap_vld,
  data_in_ap_vld,
  ap_clk,
  ap_rst,
  sclk,
  cs,
  mosi,
  miso,
  data_out,
  data_in
);

input wire miso_ap_vld;
input wire data_out_ap_vld;
output wire data_in_ap_vld;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *)
input wire ap_clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 sclk DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sclk, LAYERED_METADATA undef" *)
output wire [0 : 0] sclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 cs DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cs, LAYERED_METADATA undef" *)
output wire [0 : 0] cs;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 mosi DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mosi, LAYERED_METADATA undef" *)
output wire [0 : 0] mosi;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 miso DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME miso, LAYERED_METADATA undef" *)
input wire [0 : 0] miso;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_out DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out, LAYERED_METADATA undef" *)
input wire [31 : 0] data_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in DATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in, LAYERED_METADATA undef" *)
output wire [31 : 0] data_in;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SIM_INST = "" *)
  spi_master inst (
    .miso_ap_vld(miso_ap_vld),
    .data_out_ap_vld(data_out_ap_vld),
    .data_in_ap_vld(data_in_ap_vld),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .sclk(sclk),
    .cs(cs),
    .mosi(mosi),
    .miso(miso),
    .data_out(data_out),
    .data_in(data_in)
  );
endmodule
