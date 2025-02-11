// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sun Feb  9 20:39:56 2025
// Host        : Lindsey_laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/testing_comm/spi_directio/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_spi_master_logic_0_0/design_1_spi_master_logic_0_0_sim_netlist.v
// Design      : design_1_spi_master_logic_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_spi_master_logic_0_0,spi_master_logic,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "spi_master_logic,Vivado 2024.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_spi_master_logic_0_0
   (data_out_ap_vld,
    data_in_ap_vld,
    ap_clk,
    ap_rst,
    data_out,
    data_in);
  output data_out_ap_vld;
  input data_in_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_out DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out, LAYERED_METADATA undef" *) output [31:0]data_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_in DATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_in, LAYERED_METADATA undef" *) input [31:0]data_in;

  wire \<const1> ;
  wire [31:0]data_in;
  wire data_in_ap_vld;
  wire [31:0]data_out;
  wire NLW_inst_data_out_ap_vld_UNCONNECTED;

  assign data_out_ap_vld = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "1'b1" *) 
  design_1_spi_master_logic_0_0_spi_master_logic inst
       (.ap_clk(1'b0),
        .ap_rst(1'b0),
        .data_in({1'b0,data_in[30:0]}),
        .data_in_ap_vld(data_in_ap_vld),
        .data_out(data_out),
        .data_out_ap_vld(NLW_inst_data_out_ap_vld_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "spi_master_logic" *) (* ap_ST_fsm_state1 = "1'b1" *) (* hls_module = "yes" *) 
module design_1_spi_master_logic_0_0_spi_master_logic
   (ap_clk,
    ap_rst,
    data_out,
    data_out_ap_vld,
    data_in,
    data_in_ap_vld);
  input ap_clk;
  input ap_rst;
  output [31:0]data_out;
  output data_out_ap_vld;
  input [31:0]data_in;
  input data_in_ap_vld;

  wire \<const0> ;
  wire [31:0]data_in;
  wire data_in_ap_vld;
  wire [31:0]data_out;

  assign data_out_ap_vld = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[0]_INST_0 
       (.I0(data_in_ap_vld),
        .O(data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[10]_INST_0 
       (.I0(data_in[9]),
        .I1(data_in_ap_vld),
        .O(data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[11]_INST_0 
       (.I0(data_in[10]),
        .I1(data_in_ap_vld),
        .O(data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[12]_INST_0 
       (.I0(data_in[11]),
        .I1(data_in_ap_vld),
        .O(data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[13]_INST_0 
       (.I0(data_in[12]),
        .I1(data_in_ap_vld),
        .O(data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[14]_INST_0 
       (.I0(data_in[13]),
        .I1(data_in_ap_vld),
        .O(data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[15]_INST_0 
       (.I0(data_in[14]),
        .I1(data_in_ap_vld),
        .O(data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[16]_INST_0 
       (.I0(data_in[15]),
        .I1(data_in_ap_vld),
        .O(data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[17]_INST_0 
       (.I0(data_in[16]),
        .I1(data_in_ap_vld),
        .O(data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[18]_INST_0 
       (.I0(data_in[17]),
        .I1(data_in_ap_vld),
        .O(data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[19]_INST_0 
       (.I0(data_in[18]),
        .I1(data_in_ap_vld),
        .O(data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[1]_INST_0 
       (.I0(data_in[0]),
        .I1(data_in_ap_vld),
        .O(data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[20]_INST_0 
       (.I0(data_in[19]),
        .I1(data_in_ap_vld),
        .O(data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[21]_INST_0 
       (.I0(data_in[20]),
        .I1(data_in_ap_vld),
        .O(data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[22]_INST_0 
       (.I0(data_in[21]),
        .I1(data_in_ap_vld),
        .O(data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[23]_INST_0 
       (.I0(data_in[22]),
        .I1(data_in_ap_vld),
        .O(data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[24]_INST_0 
       (.I0(data_in[23]),
        .I1(data_in_ap_vld),
        .O(data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[25]_INST_0 
       (.I0(data_in[24]),
        .I1(data_in_ap_vld),
        .O(data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[26]_INST_0 
       (.I0(data_in[25]),
        .I1(data_in_ap_vld),
        .O(data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[27]_INST_0 
       (.I0(data_in[26]),
        .I1(data_in_ap_vld),
        .O(data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[28]_INST_0 
       (.I0(data_in_ap_vld),
        .I1(data_in[27]),
        .O(data_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[29]_INST_0 
       (.I0(data_in_ap_vld),
        .I1(data_in[28]),
        .O(data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[2]_INST_0 
       (.I0(data_in[1]),
        .I1(data_in_ap_vld),
        .O(data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[30]_INST_0 
       (.I0(data_in_ap_vld),
        .I1(data_in[29]),
        .O(data_out[30]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_out[31]_INST_0 
       (.I0(data_in_ap_vld),
        .I1(data_in[30]),
        .O(data_out[31]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[3]_INST_0 
       (.I0(data_in[2]),
        .I1(data_in_ap_vld),
        .O(data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[4]_INST_0 
       (.I0(data_in[3]),
        .I1(data_in_ap_vld),
        .O(data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[5]_INST_0 
       (.I0(data_in[4]),
        .I1(data_in_ap_vld),
        .O(data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[6]_INST_0 
       (.I0(data_in[5]),
        .I1(data_in_ap_vld),
        .O(data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[7]_INST_0 
       (.I0(data_in[6]),
        .I1(data_in_ap_vld),
        .O(data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[8]_INST_0 
       (.I0(data_in[7]),
        .I1(data_in_ap_vld),
        .O(data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_out[9]_INST_0 
       (.I0(data_in[8]),
        .I1(data_in_ap_vld),
        .O(data_out[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
