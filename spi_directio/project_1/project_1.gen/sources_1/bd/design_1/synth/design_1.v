//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
//Date        : Sun Feb  9 20:45:33 2025
//Host        : Lindsey_laptop running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=2,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=3,da_zynq_ultra_ps_e_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (cs_0,
    miso_0,
    miso_ap_vld_0,
    mosi_0,
    sclk_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.CS_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.CS_0, LAYERED_METADATA undef" *) output [0:0]cs_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MISO_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MISO_0, LAYERED_METADATA undef" *) input [0:0]miso_0;
  input miso_ap_vld_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MOSI_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MOSI_0, LAYERED_METADATA undef" *) output [0:0]mosi_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.SCLK_0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.SCLK_0, LAYERED_METADATA undef" *) output [0:0]sclk_0;

  wire [0:0]cs_0;
  wire [0:0]miso_0;
  wire miso_ap_vld_0;
  wire [0:0]mosi_0;
  wire [0:0]rst_ps8_0_99M_peripheral_reset;
  wire [0:0]sclk_0;
  wire [31:0]spi_master_0_data_in;
  wire spi_master_0_data_in_ap_vld;
  wire [31:0]spi_master_logic_0_data_out;
  wire spi_master_logic_0_data_out_ap_vld;
  wire zynq_ultra_ps_e_0_pl_clk0;
  wire zynq_ultra_ps_e_0_pl_resetn0;

  design_1_rst_ps8_0_99M_0 rst_ps8_0_99M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(zynq_ultra_ps_e_0_pl_resetn0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_reset(rst_ps8_0_99M_peripheral_reset),
        .slowest_sync_clk(zynq_ultra_ps_e_0_pl_clk0));
  design_1_spi_master_0_1 spi_master_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst(rst_ps8_0_99M_peripheral_reset),
        .cs(cs_0),
        .data_in(spi_master_0_data_in),
        .data_in_ap_vld(spi_master_0_data_in_ap_vld),
        .data_out(spi_master_logic_0_data_out),
        .data_out_ap_vld(spi_master_logic_0_data_out_ap_vld),
        .miso(miso_0),
        .miso_ap_vld(miso_ap_vld_0),
        .mosi(mosi_0),
        .sclk(sclk_0));
  design_1_spi_master_logic_0_0 spi_master_logic_0
       (.ap_clk(zynq_ultra_ps_e_0_pl_clk0),
        .ap_rst(rst_ps8_0_99M_peripheral_reset),
        .data_in(spi_master_0_data_in),
        .data_in_ap_vld(spi_master_0_data_in_ap_vld),
        .data_out(spi_master_logic_0_data_out),
        .data_out_ap_vld(spi_master_logic_0_data_out_ap_vld));
  design_1_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       (.maxigp2_arready(1'b0),
        .maxigp2_awready(1'b0),
        .maxigp2_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_bresp({1'b0,1'b0}),
        .maxigp2_bvalid(1'b0),
        .maxigp2_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_rid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .maxigp2_rlast(1'b0),
        .maxigp2_rresp({1'b0,1'b0}),
        .maxigp2_rvalid(1'b0),
        .maxigp2_wready(1'b0),
        .maxihpm0_lpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
        .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
        .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0));
endmodule
