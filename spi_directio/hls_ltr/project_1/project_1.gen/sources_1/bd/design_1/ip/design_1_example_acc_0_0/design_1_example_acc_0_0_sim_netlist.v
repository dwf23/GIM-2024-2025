// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Feb 20 11:08:54 2025
// Host        : Lindsey_laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/GIM/hls_ltr/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/design_1_example_acc_0_0_sim_netlist.v
// Design      : design_1_example_acc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_example_acc_0_0,example_acc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "example_acc,Vivado 2024.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module design_1_example_acc_0_0
   (alpha_transmit_line_ap_vld,
    alpha_transmit_line_ap_ack,
    s_axi_control_ARADDR,
    s_axi_control_ARREADY,
    s_axi_control_ARVALID,
    s_axi_control_AWADDR,
    s_axi_control_AWREADY,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_RDATA,
    s_axi_control_RREADY,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_WDATA,
    s_axi_control_WREADY,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    ap_clk,
    ap_rst_n,
    interrupt,
    alpha_transmit_line);
  output alpha_transmit_line_ap_vld;
  input alpha_transmit_line_ap_ack;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [4:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [4:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 alpha_transmit_line DATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME alpha_transmit_line, LAYERED_METADATA undef" *) output [0:0]alpha_transmit_line;

  wire \<const0> ;
  wire [0:0]alpha_transmit_line;
  wire alpha_transmit_line_ap_ack;
  wire alpha_transmit_line_ap_vld;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [15:0]\^s_axi_control_RDATA ;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [31:16]NLW_inst_s_axi_control_RDATA_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RDATA[31] = \<const0> ;
  assign s_axi_control_RDATA[30] = \<const0> ;
  assign s_axi_control_RDATA[29] = \<const0> ;
  assign s_axi_control_RDATA[28] = \<const0> ;
  assign s_axi_control_RDATA[27] = \<const0> ;
  assign s_axi_control_RDATA[26] = \<const0> ;
  assign s_axi_control_RDATA[25] = \<const0> ;
  assign s_axi_control_RDATA[24] = \<const0> ;
  assign s_axi_control_RDATA[23] = \<const0> ;
  assign s_axi_control_RDATA[22] = \<const0> ;
  assign s_axi_control_RDATA[21] = \<const0> ;
  assign s_axi_control_RDATA[20] = \<const0> ;
  assign s_axi_control_RDATA[19] = \<const0> ;
  assign s_axi_control_RDATA[18] = \<const0> ;
  assign s_axi_control_RDATA[17] = \<const0> ;
  assign s_axi_control_RDATA[16] = \<const0> ;
  assign s_axi_control_RDATA[15:0] = \^s_axi_control_RDATA [15:0];
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "5'b00001" *) 
  (* ap_ST_fsm_state2 = "5'b00010" *) 
  (* ap_ST_fsm_state3 = "5'b00100" *) 
  (* ap_ST_fsm_state4 = "5'b01000" *) 
  (* ap_ST_fsm_state5 = "5'b10000" *) 
  design_1_example_acc_0_0_example_acc inst
       (.alpha_transmit_line(alpha_transmit_line),
        .alpha_transmit_line_ap_ack(alpha_transmit_line_ap_ack),
        .alpha_transmit_line_ap_vld(alpha_transmit_line_ap_vld),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR({s_axi_control_AWADDR[4:2],1'b0,1'b0}),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA({NLW_inst_s_axi_control_RDATA_UNCONNECTED[31:16],\^s_axi_control_RDATA }),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[15:0]}),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB({1'b0,1'b0,s_axi_control_WSTRB[1:0]}),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ORIG_REF_NAME = "example_acc" *) 
(* ap_ST_fsm_state1 = "5'b00001" *) (* ap_ST_fsm_state2 = "5'b00010" *) (* ap_ST_fsm_state3 = "5'b00100" *) 
(* ap_ST_fsm_state4 = "5'b01000" *) (* ap_ST_fsm_state5 = "5'b10000" *) (* hls_module = "yes" *) 
module design_1_example_acc_0_0_example_acc
   (ap_clk,
    ap_rst_n,
    alpha_transmit_line,
    alpha_transmit_line_ap_vld,
    alpha_transmit_line_ap_ack,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_AWADDR,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_ARADDR,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_BRESP,
    interrupt);
  input ap_clk;
  input ap_rst_n;
  output [0:0]alpha_transmit_line;
  output alpha_transmit_line_ap_vld;
  input alpha_transmit_line_ap_ack;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [4:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [4:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire [0:0]alpha_transmit_line;
  wire alpha_transmit_line_ap_ack;
  wire alpha_transmit_line_ap_ack_int_regslice;
  wire alpha_transmit_line_ap_vld;
  wire alpha_transmit_line_int_regslice;
  wire alpha_transmit_line_reg;
  wire ap_CS_fsm_state1;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state5;
  wire [4:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [3:0]ap_sig_allocacmp_i_1;
  wire ap_start;
  wire data_p2;
  wire grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg;
  wire grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_5;
  wire grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_6;
  wire grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_7;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_11;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_12;
  wire i_fu_4210_out;
  wire interrupt;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [15:0]\^s_axi_control_RDATA ;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [15:0]w1;
  wire [15:0]w1_read_reg_85;
  wire [15:0]w2;
  wire [15:0]w2_read_reg_80;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RDATA[31] = \<const0> ;
  assign s_axi_control_RDATA[30] = \<const0> ;
  assign s_axi_control_RDATA[29] = \<const0> ;
  assign s_axi_control_RDATA[28] = \<const0> ;
  assign s_axi_control_RDATA[27] = \<const0> ;
  assign s_axi_control_RDATA[26] = \<const0> ;
  assign s_axi_control_RDATA[25] = \<const0> ;
  assign s_axi_control_RDATA[24] = \<const0> ;
  assign s_axi_control_RDATA[23] = \<const0> ;
  assign s_axi_control_RDATA[22] = \<const0> ;
  assign s_axi_control_RDATA[21] = \<const0> ;
  assign s_axi_control_RDATA[20] = \<const0> ;
  assign s_axi_control_RDATA[19] = \<const0> ;
  assign s_axi_control_RDATA[18] = \<const0> ;
  assign s_axi_control_RDATA[17] = \<const0> ;
  assign s_axi_control_RDATA[16] = \<const0> ;
  assign s_axi_control_RDATA[15:0] = \^s_axi_control_RDATA [15:0];
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \alpha_transmit_line_reg_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(alpha_transmit_line_int_regslice),
        .Q(alpha_transmit_line_reg),
        .R(1'b0));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_state1),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state5),
        .R(ap_rst_n_inv));
  design_1_example_acc_0_0_example_acc_control_s_axi control_s_axi_U
       (.\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .Q(ap_CS_fsm_state1),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .\int_w1_reg[15]_0 (w1),
        .\int_w2_reg[15]_0 (w2),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR[4:2]),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(\^s_axi_control_RDATA ),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA[15:0]),
        .s_axi_control_WSTRB(s_axi_control_WSTRB[1:0]),
        .s_axi_control_WVALID(s_axi_control_WVALID));
  design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_11_1 grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60
       (.D(ap_NS_fsm[2:1]),
        .Q({ap_CS_fsm_state2,ap_CS_fsm_state1}),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .ap_sig_allocacmp_i_1(ap_sig_allocacmp_i_1),
        .ap_start(ap_start),
        .grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg),
        .int_ap_start_reg(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_7),
        .\or_i3_i_i_fu_36_reg[10]_0 (grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_5),
        .\or_i3_i_i_fu_36_reg[15]_0 (w2_read_reg_80),
        .\or_i3_i_i_fu_36_reg[15]_1 (w1_read_reg_85),
        .\or_i3_i_i_fu_36_reg[26]_0 (grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_6));
  FDRE #(
    .INIT(1'b0)) 
    grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_7),
        .Q(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_31_1 grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69
       (.D(ap_NS_fsm[4:3]),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .SR(ap_rst_n_inv),
        .alpha_transmit_line_ap_ack_int_regslice(alpha_transmit_line_ap_ack_int_regslice),
        .alpha_transmit_line_int_regslice(alpha_transmit_line_int_regslice),
        .alpha_transmit_line_reg(alpha_transmit_line_reg),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_rst_n(ap_rst_n),
        .ap_sig_allocacmp_i_1(ap_sig_allocacmp_i_1),
        .\bit_reg_116_reg[0]_0 (grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_11),
        .\bit_reg_116_reg[0]_1 (grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_5),
        .\bit_reg_116_reg[0]_2 (grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_6),
        .data_p2(data_p2),
        .grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_12),
        .i_fu_4210_out(i_fu_4210_out));
  FDRE #(
    .INIT(1'b0)) 
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_12),
        .Q(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .R(ap_rst_n_inv));
  design_1_example_acc_0_0_example_acc_regslice_both regslice_both_alpha_transmit_line_U
       (.D(ap_NS_fsm[0]),
        .Q({ap_CS_fsm_state5,ap_CS_fsm_state4,ap_CS_fsm_state1}),
        .SR(ap_rst_n_inv),
        .alpha_transmit_line(alpha_transmit_line),
        .alpha_transmit_line_ap_ack(alpha_transmit_line_ap_ack),
        .alpha_transmit_line_ap_ack_int_regslice(alpha_transmit_line_ap_ack_int_regslice),
        .alpha_transmit_line_ap_vld(alpha_transmit_line_ap_vld),
        .alpha_transmit_line_int_regslice(alpha_transmit_line_int_regslice),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_start(ap_start),
        .data_p2(data_p2),
        .\data_p2_reg[0]_0 (grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_11),
        .i_fu_4210_out(i_fu_4210_out));
  FDRE \w1_read_reg_85_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[0]),
        .Q(w1_read_reg_85[0]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[10]),
        .Q(w1_read_reg_85[10]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[11]),
        .Q(w1_read_reg_85[11]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[12]),
        .Q(w1_read_reg_85[12]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[13]),
        .Q(w1_read_reg_85[13]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[14]),
        .Q(w1_read_reg_85[14]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[15]),
        .Q(w1_read_reg_85[15]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[1]),
        .Q(w1_read_reg_85[1]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[2]),
        .Q(w1_read_reg_85[2]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[3]),
        .Q(w1_read_reg_85[3]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[4]),
        .Q(w1_read_reg_85[4]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[5]),
        .Q(w1_read_reg_85[5]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[6]),
        .Q(w1_read_reg_85[6]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[7]),
        .Q(w1_read_reg_85[7]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[8]),
        .Q(w1_read_reg_85[8]),
        .R(1'b0));
  FDRE \w1_read_reg_85_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w1[9]),
        .Q(w1_read_reg_85[9]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[0]),
        .Q(w2_read_reg_80[0]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[10]),
        .Q(w2_read_reg_80[10]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[11]),
        .Q(w2_read_reg_80[11]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[12]),
        .Q(w2_read_reg_80[12]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[13]),
        .Q(w2_read_reg_80[13]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[14]),
        .Q(w2_read_reg_80[14]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[15]),
        .Q(w2_read_reg_80[15]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[1]),
        .Q(w2_read_reg_80[1]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[2]),
        .Q(w2_read_reg_80[2]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[3]),
        .Q(w2_read_reg_80[3]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[4]),
        .Q(w2_read_reg_80[4]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[5]),
        .Q(w2_read_reg_80[5]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[6]),
        .Q(w2_read_reg_80[6]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[7]),
        .Q(w2_read_reg_80[7]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[8]),
        .Q(w2_read_reg_80[8]),
        .R(1'b0));
  FDRE \w2_read_reg_80_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state1),
        .D(w2[9]),
        .Q(w2_read_reg_80[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "example_acc_control_s_axi" *) 
module design_1_example_acc_0_0_example_acc_control_s_axi
   (SR,
    interrupt,
    \FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[2]_0 ,
    ap_start,
    \int_w2_reg[15]_0 ,
    \int_w1_reg[15]_0 ,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_RVALID,
    s_axi_control_RDATA,
    ap_clk,
    ap_rst_n,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    Q,
    s_axi_control_BREADY,
    s_axi_control_AWVALID,
    s_axi_control_RREADY,
    s_axi_control_WDATA,
    ap_done,
    s_axi_control_AWADDR);
  output [0:0]SR;
  output interrupt;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output ap_start;
  output [15:0]\int_w2_reg[15]_0 ;
  output [15:0]\int_w1_reg[15]_0 ;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output [15:0]s_axi_control_RDATA;
  input ap_clk;
  input ap_rst_n;
  input [4:0]s_axi_control_ARADDR;
  input s_axi_control_ARVALID;
  input s_axi_control_WVALID;
  input [1:0]s_axi_control_WSTRB;
  input [0:0]Q;
  input s_axi_control_BREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_RREADY;
  input [15:0]s_axi_control_WDATA;
  input ap_done;
  input [2:0]s_axi_control_AWADDR;

  wire \FSM_onehot_rstate[1]_i_1_n_3 ;
  wire \FSM_onehot_rstate[2]_i_1_n_3 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_3 ;
  wire \FSM_onehot_wstate[2]_i_1_n_3 ;
  wire \FSM_onehot_wstate[3]_i_1_n_3 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [0:0]Q;
  wire [0:0]SR;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_start;
  wire ar_hs;
  wire auto_restart_status_i_1_n_3;
  wire auto_restart_status_reg_n_3;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_3;
  wire int_ap_start1;
  wire int_ap_start_i_1_n_3;
  wire int_auto_restart_i_1_n_3;
  wire int_auto_restart_i_2_n_3;
  wire int_gie_i_1_n_3;
  wire int_gie_reg_n_3;
  wire int_ier10_out;
  wire \int_ier_reg_n_3_[0] ;
  wire int_interrupt0;
  wire int_isr7_out;
  wire \int_isr[0]_i_1_n_3 ;
  wire \int_isr[1]_i_1_n_3 ;
  wire \int_isr_reg_n_3_[0] ;
  wire \int_isr_reg_n_3_[1] ;
  wire int_task_ap_done;
  wire int_task_ap_done0__4;
  wire int_task_ap_done_i_1_n_3;
  wire [15:0]int_w10;
  wire \int_w1[15]_i_1_n_3 ;
  wire [15:0]\int_w1_reg[15]_0 ;
  wire [15:0]int_w20;
  wire \int_w2[15]_i_1_n_3 ;
  wire [15:0]\int_w2_reg[15]_0 ;
  wire interrupt;
  wire p_0_in;
  wire [7:2]p_2_in;
  wire [15:4]rdata;
  wire \rdata[0]_i_1_n_3 ;
  wire \rdata[0]_i_2_n_3 ;
  wire \rdata[15]_i_3_n_3 ;
  wire \rdata[15]_i_4_n_3 ;
  wire \rdata[1]_i_1_n_3 ;
  wire \rdata[1]_i_2_n_3 ;
  wire \rdata[2]_i_1_n_3 ;
  wire \rdata[3]_i_1_n_3 ;
  wire \rdata[7]_i_1_n_3 ;
  wire \rdata[9]_i_1_n_3 ;
  wire \rdata[9]_i_2_n_3 ;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [2:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [15:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [15:0]s_axi_control_WDATA;
  wire [1:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire waddr;
  wire \waddr_reg_n_3_[2] ;
  wire \waddr_reg_n_3_[3] ;
  wire \waddr_reg_n_3_[4] ;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF277)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[1]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_RREADY),
        .I1(s_axi_control_RVALID),
        .I2(s_axi_control_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[2]_i_1_n_3 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_3 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_3 ),
        .Q(s_axi_control_RVALID),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF0C1D1D)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_AWVALID),
        .I3(s_axi_control_BREADY),
        .I4(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'hF444)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[3]_i_1_n_3 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_3 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_3 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_3 ),
        .Q(s_axi_control_BVALID),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_2_in[7]),
        .I1(ap_start),
        .I2(Q),
        .I3(auto_restart_status_reg_n_3),
        .O(auto_restart_status_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_3),
        .Q(auto_restart_status_reg_n_3),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q),
        .I1(ap_start),
        .O(ap_idle));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_2_in[2]),
        .R(SR));
  LUT4 #(
    .INIT(16'h4F44)) 
    int_ap_ready_i_1
       (.I0(p_2_in[7]),
        .I1(ap_done),
        .I2(int_task_ap_done0__4),
        .I3(int_ap_ready),
        .O(int_ap_ready_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_3),
        .Q(int_ap_ready),
        .R(SR));
  LUT5 #(
    .INIT(32'hFBBBF888)) 
    int_ap_start_i_1
       (.I0(p_2_in[7]),
        .I1(ap_done),
        .I2(int_ap_start1),
        .I3(s_axi_control_WDATA[0]),
        .I4(ap_start),
        .O(int_ap_start_i_1_n_3));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    int_ap_start_i_2
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(\waddr_reg_n_3_[2] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .I4(\waddr_reg_n_3_[4] ),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_ap_start1));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_3),
        .Q(ap_start),
        .R(SR));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(int_auto_restart_i_2_n_3),
        .I4(p_2_in[7]),
        .O(int_auto_restart_i_1_n_3));
  LUT4 #(
    .INIT(16'h2000)) 
    int_auto_restart_i_2
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_3_[4] ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(int_auto_restart_i_2_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_3),
        .Q(p_2_in[7]),
        .R(SR));
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\waddr_reg_n_3_[2] ),
        .I3(int_auto_restart_i_2_n_3),
        .I4(int_gie_reg_n_3),
        .O(int_gie_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_3),
        .Q(int_gie_reg_n_3),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \int_ier[1]_i_1 
       (.I0(\waddr_reg_n_3_[2] ),
        .I1(\waddr_reg_n_3_[3] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .I4(\waddr_reg_n_3_[4] ),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_ier10_out));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_control_WDATA[0]),
        .Q(\int_ier_reg_n_3_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(int_ier10_out),
        .D(s_axi_control_WDATA[1]),
        .Q(p_0_in),
        .R(SR));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(\int_isr_reg_n_3_[0] ),
        .I1(\int_isr_reg_n_3_[1] ),
        .I2(int_gie_reg_n_3),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(SR));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_isr7_out),
        .I2(\int_ier_reg_n_3_[0] ),
        .I3(ap_done),
        .I4(\int_isr_reg_n_3_[0] ),
        .O(\int_isr[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \int_isr[0]_i_2 
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(\waddr_reg_n_3_[2] ),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(s_axi_control_WVALID),
        .I4(\waddr_reg_n_3_[4] ),
        .I5(s_axi_control_WSTRB[0]),
        .O(int_isr7_out));
  LUT5 #(
    .INIT(32'hF777F888)) 
    \int_isr[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_isr7_out),
        .I2(p_0_in),
        .I3(ap_done),
        .I4(\int_isr_reg_n_3_[1] ),
        .O(\int_isr[1]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_3 ),
        .Q(\int_isr_reg_n_3_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_3 ),
        .Q(\int_isr_reg_n_3_[1] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h2E22FFFF2E222E22)) 
    int_task_ap_done_i_1
       (.I0(ap_done),
        .I1(auto_restart_status_reg_n_3),
        .I2(p_2_in[2]),
        .I3(ap_idle),
        .I4(int_task_ap_done0__4),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_3));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    int_task_ap_done_i_2
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(ar_hs),
        .O(int_task_ap_done0__4));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_3),
        .Q(int_task_ap_done),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w1_reg[15]_0 [0]),
        .O(int_w10[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w1_reg[15]_0 [10]),
        .O(int_w10[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w1_reg[15]_0 [11]),
        .O(int_w10[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w1_reg[15]_0 [12]),
        .O(int_w10[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w1_reg[15]_0 [13]),
        .O(int_w10[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w1_reg[15]_0 [14]),
        .O(int_w10[14]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \int_w1[15]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(\waddr_reg_n_3_[4] ),
        .I3(\waddr_reg_n_3_[2] ),
        .I4(\waddr_reg_n_3_[3] ),
        .O(\int_w1[15]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w1_reg[15]_0 [15]),
        .O(int_w10[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w1_reg[15]_0 [1]),
        .O(int_w10[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w1_reg[15]_0 [2]),
        .O(int_w10[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w1_reg[15]_0 [3]),
        .O(int_w10[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w1_reg[15]_0 [4]),
        .O(int_w10[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w1_reg[15]_0 [5]),
        .O(int_w10[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w1_reg[15]_0 [6]),
        .O(int_w10[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w1_reg[15]_0 [7]),
        .O(int_w10[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w1_reg[15]_0 [8]),
        .O(int_w10[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w1_reg[15]_0 [9]),
        .O(int_w10[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[0] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[0]),
        .Q(\int_w1_reg[15]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[10] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[10]),
        .Q(\int_w1_reg[15]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[11] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[11]),
        .Q(\int_w1_reg[15]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[12] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[12]),
        .Q(\int_w1_reg[15]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[13] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[13]),
        .Q(\int_w1_reg[15]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[14] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[14]),
        .Q(\int_w1_reg[15]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[15] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[15]),
        .Q(\int_w1_reg[15]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[1] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[1]),
        .Q(\int_w1_reg[15]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[2] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[2]),
        .Q(\int_w1_reg[15]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[3] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[3]),
        .Q(\int_w1_reg[15]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[4] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[4]),
        .Q(\int_w1_reg[15]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[5] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[5]),
        .Q(\int_w1_reg[15]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[6] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[6]),
        .Q(\int_w1_reg[15]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[7] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[7]),
        .Q(\int_w1_reg[15]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[8] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[8]),
        .Q(\int_w1_reg[15]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[9] 
       (.C(ap_clk),
        .CE(\int_w1[15]_i_1_n_3 ),
        .D(int_w10[9]),
        .Q(\int_w1_reg[15]_0 [9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w2_reg[15]_0 [0]),
        .O(int_w20[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w2_reg[15]_0 [10]),
        .O(int_w20[10]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w2_reg[15]_0 [11]),
        .O(int_w20[11]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w2_reg[15]_0 [12]),
        .O(int_w20[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w2_reg[15]_0 [13]),
        .O(int_w20[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w2_reg[15]_0 [14]),
        .O(int_w20[14]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \int_w2[15]_i_1 
       (.I0(\waddr_reg_n_3_[3] ),
        .I1(s_axi_control_WVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\waddr_reg_n_3_[4] ),
        .I4(\waddr_reg_n_3_[2] ),
        .O(\int_w2[15]_i_1_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[15]_i_2 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w2_reg[15]_0 [15]),
        .O(int_w20[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w2_reg[15]_0 [1]),
        .O(int_w20[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w2_reg[15]_0 [2]),
        .O(int_w20[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w2_reg[15]_0 [3]),
        .O(int_w20[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w2_reg[15]_0 [4]),
        .O(int_w20[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w2_reg[15]_0 [5]),
        .O(int_w20[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w2_reg[15]_0 [6]),
        .O(int_w20[6]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(\int_w2_reg[15]_0 [7]),
        .O(int_w20[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w2_reg[15]_0 [8]),
        .O(int_w20[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(\int_w2_reg[15]_0 [9]),
        .O(int_w20[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[0] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[0]),
        .Q(\int_w2_reg[15]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[10] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[10]),
        .Q(\int_w2_reg[15]_0 [10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[11] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[11]),
        .Q(\int_w2_reg[15]_0 [11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[12] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[12]),
        .Q(\int_w2_reg[15]_0 [12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[13] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[13]),
        .Q(\int_w2_reg[15]_0 [13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[14] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[14]),
        .Q(\int_w2_reg[15]_0 [14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[15] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[15]),
        .Q(\int_w2_reg[15]_0 [15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[1] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[1]),
        .Q(\int_w2_reg[15]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[2] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[2]),
        .Q(\int_w2_reg[15]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[3] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[3]),
        .Q(\int_w2_reg[15]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[4] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[4]),
        .Q(\int_w2_reg[15]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[5] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[5]),
        .Q(\int_w2_reg[15]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[6] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[6]),
        .Q(\int_w2_reg[15]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[7] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[7]),
        .Q(\int_w2_reg[15]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[8] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[8]),
        .Q(\int_w2_reg[15]_0 [8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[9] 
       (.C(ap_clk),
        .CE(\int_w2[15]_i_1_n_3 ),
        .D(int_w20[9]),
        .Q(\int_w2_reg[15]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000F0F0CCAAF0F0)) 
    \rdata[0]_i_1 
       (.I0(\int_w1_reg[15]_0 [0]),
        .I1(\int_w2_reg[15]_0 [0]),
        .I2(\rdata[0]_i_2_n_3 ),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \rdata[0]_i_2 
       (.I0(\int_ier_reg_n_3_[0] ),
        .I1(\int_isr_reg_n_3_[0] ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(ap_start),
        .I5(int_gie_reg_n_3),
        .O(\rdata[0]_i_2_n_3 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[10]_i_1 
       (.I0(\int_w2_reg[15]_0 [10]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [10]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[10]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[11]_i_1 
       (.I0(\int_w2_reg[15]_0 [11]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [11]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[11]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[12]_i_1 
       (.I0(\int_w2_reg[15]_0 [12]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [12]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[12]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[13]_i_1 
       (.I0(\int_w2_reg[15]_0 [13]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [13]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[13]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[14]_i_1 
       (.I0(\int_w2_reg[15]_0 [14]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [14]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[14]));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[15]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(ar_hs));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[15]_i_2 
       (.I0(\int_w2_reg[15]_0 [15]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [15]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    \rdata[15]_i_3 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[15]_i_3_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \rdata[15]_i_4 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[15]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF44400400)) 
    \rdata[1]_i_1 
       (.I0(s_axi_control_ARADDR[2]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(\int_w1_reg[15]_0 [1]),
        .I4(\int_w2_reg[15]_0 [1]),
        .I5(\rdata[1]_i_2_n_3 ),
        .O(\rdata[1]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h4055400540504000)) 
    \rdata[1]_i_2 
       (.I0(s_axi_control_ARADDR[4]),
        .I1(\int_isr_reg_n_3_[1] ),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(p_0_in),
        .I5(int_task_ap_done),
        .O(\rdata[1]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'h0000CC000000AAF0)) 
    \rdata[2]_i_1 
       (.I0(\int_w1_reg[15]_0 [2]),
        .I1(\int_w2_reg[15]_0 [2]),
        .I2(p_2_in[2]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[2]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h0000CC000000AAF0)) 
    \rdata[3]_i_1 
       (.I0(\int_w1_reg[15]_0 [3]),
        .I1(\int_w2_reg[15]_0 [3]),
        .I2(int_ap_ready),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[3]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[4]_i_1 
       (.I0(\int_w2_reg[15]_0 [4]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [4]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[5]_i_1 
       (.I0(\int_w2_reg[15]_0 [5]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [5]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[6]_i_1 
       (.I0(\int_w2_reg[15]_0 [6]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [6]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[6]));
  LUT6 #(
    .INIT(64'h0000CC000000AAF0)) 
    \rdata[7]_i_1 
       (.I0(\int_w1_reg[15]_0 [7]),
        .I1(\int_w2_reg[15]_0 [7]),
        .I2(p_2_in[7]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[7]_i_1_n_3 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rdata[8]_i_1 
       (.I0(\int_w2_reg[15]_0 [8]),
        .I1(\rdata[15]_i_3_n_3 ),
        .I2(\int_w1_reg[15]_0 [8]),
        .I3(\rdata[15]_i_4_n_3 ),
        .O(rdata[8]));
  LUT4 #(
    .INIT(16'h8880)) 
    \rdata[9]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_ARADDR[0]),
        .I3(s_axi_control_ARADDR[1]),
        .O(\rdata[9]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h0000CC000000AAF0)) 
    \rdata[9]_i_2 
       (.I0(\int_w1_reg[15]_0 [9]),
        .I1(\int_w2_reg[15]_0 [9]),
        .I2(interrupt),
        .I3(s_axi_control_ARADDR[4]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[9]_i_2_n_3 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[0]_i_1_n_3 ),
        .Q(s_axi_control_RDATA[0]),
        .R(\rdata[9]_i_1_n_3 ));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[10]),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[11]),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[12]),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[13]),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[14]),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[15]),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[1]_i_1_n_3 ),
        .Q(s_axi_control_RDATA[1]),
        .R(\rdata[9]_i_1_n_3 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[2]_i_1_n_3 ),
        .Q(s_axi_control_RDATA[2]),
        .R(\rdata[9]_i_1_n_3 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[3]_i_1_n_3 ),
        .Q(s_axi_control_RDATA[3]),
        .R(\rdata[9]_i_1_n_3 ));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[4]),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[5]),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[6]),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[7]_i_1_n_3 ),
        .Q(s_axi_control_RDATA[7]),
        .R(\rdata[9]_i_1_n_3 ));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(rdata[8]),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(ar_hs),
        .D(\rdata[9]_i_2_n_3 ),
        .Q(s_axi_control_RDATA[9]),
        .R(\rdata[9]_i_1_n_3 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(waddr));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_3_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_3_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_3_[4] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "example_acc_example_acc_Pipeline_VITIS_LOOP_11_1" *) 
module design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_11_1
   (D,
    \or_i3_i_i_fu_36_reg[10]_0 ,
    \or_i3_i_i_fu_36_reg[26]_0 ,
    int_ap_start_reg,
    SR,
    ap_clk,
    ap_rst_n,
    grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
    Q,
    ap_start,
    ap_sig_allocacmp_i_1,
    \or_i3_i_i_fu_36_reg[15]_0 ,
    \or_i3_i_i_fu_36_reg[15]_1 );
  output [1:0]D;
  output \or_i3_i_i_fu_36_reg[10]_0 ;
  output \or_i3_i_i_fu_36_reg[26]_0 ;
  output int_ap_start_reg;
  input [0:0]SR;
  input ap_clk;
  input ap_rst_n;
  input grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg;
  input [1:0]Q;
  input ap_start;
  input [3:0]ap_sig_allocacmp_i_1;
  input [15:0]\or_i3_i_i_fu_36_reg[15]_0 ;
  input [15:0]\or_i3_i_i_fu_36_reg[15]_1 ;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]add_ln11_fu_82_p2;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_3;
  wire ap_loop_init;
  wire ap_rst_n;
  wire [3:0]ap_sig_allocacmp_i_1;
  wire ap_start;
  wire \bit_reg_116[0]_i_10_n_3 ;
  wire \bit_reg_116[0]_i_11_n_3 ;
  wire \bit_reg_116[0]_i_12_n_3 ;
  wire \bit_reg_116[0]_i_13_n_3 ;
  wire \bit_reg_116[0]_i_4_n_3 ;
  wire \bit_reg_116[0]_i_5_n_3 ;
  wire \bit_reg_116[0]_i_8_n_3 ;
  wire \bit_reg_116[0]_i_9_n_3 ;
  wire [15:0]bitstream_fu_107_p3;
  wire data1;
  wire data10;
  wire data11;
  wire data12;
  wire data13;
  wire data14;
  wire data15;
  wire data16;
  wire data17;
  wire data18;
  wire data19;
  wire data2;
  wire data20;
  wire data21;
  wire data22;
  wire data23;
  wire data24;
  wire data25;
  wire data26;
  wire data27;
  wire data28;
  wire data29;
  wire data30;
  wire data31;
  wire data4;
  wire data5;
  wire data6;
  wire data7;
  wire data8;
  wire data9;
  wire grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready;
  wire grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg;
  wire [1:0]i_fu_40;
  wire i_fu_40_0;
  wire int_ap_start_reg;
  wire \or_i3_i_i_fu_36_reg[10]_0 ;
  wire [15:0]\or_i3_i_i_fu_36_reg[15]_0 ;
  wire [15:0]\or_i3_i_i_fu_36_reg[15]_1 ;
  wire \or_i3_i_i_fu_36_reg[26]_0 ;
  wire \or_i3_i_i_fu_36_reg_n_3_[0] ;
  wire \or_i3_i_i_fu_36_reg_n_3_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(i_fu_40[0]),
        .I1(i_fu_40[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .O(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h88880888)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg),
        .I1(ap_rst_n),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(i_fu_40[1]),
        .I4(i_fu_40[0]),
        .O(ap_enable_reg_pp0_iter1_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_3),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \bit_reg_116[0]_i_10 
       (.I0(data26),
        .I1(data24),
        .I2(ap_sig_allocacmp_i_1[0]),
        .I3(ap_sig_allocacmp_i_1[1]),
        .I4(data27),
        .I5(data25),
        .O(\bit_reg_116[0]_i_10_n_3 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \bit_reg_116[0]_i_11 
       (.I0(data18),
        .I1(data16),
        .I2(ap_sig_allocacmp_i_1[0]),
        .I3(ap_sig_allocacmp_i_1[1]),
        .I4(data19),
        .I5(data17),
        .O(\bit_reg_116[0]_i_11_n_3 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \bit_reg_116[0]_i_12 
       (.I0(data30),
        .I1(data28),
        .I2(ap_sig_allocacmp_i_1[0]),
        .I3(ap_sig_allocacmp_i_1[1]),
        .I4(data31),
        .I5(data29),
        .O(\bit_reg_116[0]_i_12_n_3 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \bit_reg_116[0]_i_13 
       (.I0(data22),
        .I1(data20),
        .I2(ap_sig_allocacmp_i_1[0]),
        .I3(ap_sig_allocacmp_i_1[1]),
        .I4(data23),
        .I5(data21),
        .O(\bit_reg_116[0]_i_13_n_3 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \bit_reg_116[0]_i_2 
       (.I0(\bit_reg_116[0]_i_4_n_3 ),
        .I1(\bit_reg_116[0]_i_5_n_3 ),
        .I2(ap_sig_allocacmp_i_1[3]),
        .I3(ap_sig_allocacmp_i_1[2]),
        .I4(\bit_reg_116[0]_i_8_n_3 ),
        .I5(\bit_reg_116[0]_i_9_n_3 ),
        .O(\or_i3_i_i_fu_36_reg[10]_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \bit_reg_116[0]_i_3 
       (.I0(\bit_reg_116[0]_i_10_n_3 ),
        .I1(\bit_reg_116[0]_i_11_n_3 ),
        .I2(ap_sig_allocacmp_i_1[3]),
        .I3(ap_sig_allocacmp_i_1[2]),
        .I4(\bit_reg_116[0]_i_12_n_3 ),
        .I5(\bit_reg_116[0]_i_13_n_3 ),
        .O(\or_i3_i_i_fu_36_reg[26]_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \bit_reg_116[0]_i_4 
       (.I0(data10),
        .I1(data8),
        .I2(ap_sig_allocacmp_i_1[0]),
        .I3(ap_sig_allocacmp_i_1[1]),
        .I4(data11),
        .I5(data9),
        .O(\bit_reg_116[0]_i_4_n_3 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \bit_reg_116[0]_i_5 
       (.I0(data2),
        .I1(\or_i3_i_i_fu_36_reg_n_3_[0] ),
        .I2(ap_sig_allocacmp_i_1[0]),
        .I3(ap_sig_allocacmp_i_1[1]),
        .I4(\or_i3_i_i_fu_36_reg_n_3_[3] ),
        .I5(data1),
        .O(\bit_reg_116[0]_i_5_n_3 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \bit_reg_116[0]_i_8 
       (.I0(data14),
        .I1(data12),
        .I2(ap_sig_allocacmp_i_1[0]),
        .I3(ap_sig_allocacmp_i_1[1]),
        .I4(data15),
        .I5(data13),
        .O(\bit_reg_116[0]_i_8_n_3 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \bit_reg_116[0]_i_9 
       (.I0(data6),
        .I1(data4),
        .I2(ap_sig_allocacmp_i_1[0]),
        .I3(ap_sig_allocacmp_i_1[1]),
        .I4(data7),
        .I5(data5),
        .O(\bit_reg_116[0]_i_9_n_3 ));
  design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init_0 flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .Q(i_fu_40),
        .SR(SR),
        .\ap_CS_fsm_reg[2] (Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_loop_init_int_reg_0(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready),
        .grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg));
  LUT6 #(
    .INIT(64'hFFFF8FFF88888888)) 
    grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg_i_1
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(i_fu_40[1]),
        .I4(i_fu_40[0]),
        .I5(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg),
        .O(int_ap_start_reg));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i_fu_40[0]_i_1 
       (.I0(i_fu_40[0]),
        .O(add_ln11_fu_82_p2[0]));
  LUT3 #(
    .INIT(8'h8A)) 
    \i_fu_40[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .O(i_fu_40_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i_fu_40[1]_i_3 
       (.I0(i_fu_40[0]),
        .I1(i_fu_40[1]),
        .O(add_ln11_fu_82_p2[1]));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_40_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(add_ln11_fu_82_p2[0]),
        .Q(i_fu_40[0]),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_40_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(add_ln11_fu_82_p2[1]),
        .Q(i_fu_40[1]),
        .R(ap_loop_init));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[0]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [0]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [0]),
        .O(bitstream_fu_107_p3[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[10]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [10]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [10]),
        .O(bitstream_fu_107_p3[10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[11]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [11]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [11]),
        .O(bitstream_fu_107_p3[11]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[12]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [12]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [12]),
        .O(bitstream_fu_107_p3[12]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[13]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [13]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [13]),
        .O(bitstream_fu_107_p3[13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[14]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [14]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [14]),
        .O(bitstream_fu_107_p3[14]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[15]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [15]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [15]),
        .O(bitstream_fu_107_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[1]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [1]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [1]),
        .O(bitstream_fu_107_p3[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[2]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [2]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [2]),
        .O(bitstream_fu_107_p3[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[3]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [3]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [3]),
        .O(bitstream_fu_107_p3[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[4]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [4]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [4]),
        .O(bitstream_fu_107_p3[4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[5]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [5]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [5]),
        .O(bitstream_fu_107_p3[5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[6]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [6]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [6]),
        .O(bitstream_fu_107_p3[6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[7]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [7]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [7]),
        .O(bitstream_fu_107_p3[7]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[8]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [8]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [8]),
        .O(bitstream_fu_107_p3[8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \or_i3_i_i_fu_36[9]_i_1 
       (.I0(\or_i3_i_i_fu_36_reg[15]_0 [9]),
        .I1(i_fu_40[0]),
        .I2(i_fu_40[1]),
        .I3(\or_i3_i_i_fu_36_reg[15]_1 [9]),
        .O(bitstream_fu_107_p3[9]));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[0]),
        .Q(\or_i3_i_i_fu_36_reg_n_3_[0] ),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[10] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[10]),
        .Q(data10),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[11] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[11]),
        .Q(data11),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[12] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[12]),
        .Q(data12),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[13] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[13]),
        .Q(data13),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[14] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[14]),
        .Q(data14),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[15] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[15]),
        .Q(data15),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[16] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(\or_i3_i_i_fu_36_reg_n_3_[0] ),
        .Q(data16),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[17] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data1),
        .Q(data17),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[18] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data2),
        .Q(data18),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[19] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(\or_i3_i_i_fu_36_reg_n_3_[3] ),
        .Q(data19),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[1]),
        .Q(data1),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[20] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data4),
        .Q(data20),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[21] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data5),
        .Q(data21),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[22] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data6),
        .Q(data22),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[23] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data7),
        .Q(data23),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[24] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data8),
        .Q(data24),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[25] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data9),
        .Q(data25),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[26] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data10),
        .Q(data26),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[27] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data11),
        .Q(data27),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[28] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data12),
        .Q(data28),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[29] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data13),
        .Q(data29),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[2]),
        .Q(data2),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[30] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data14),
        .Q(data30),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[31] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(data15),
        .Q(data31),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[3]),
        .Q(\or_i3_i_i_fu_36_reg_n_3_[3] ),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[4]),
        .Q(data4),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[5] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[5]),
        .Q(data5),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[6] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[6]),
        .Q(data6),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[7] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[7]),
        .Q(data7),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[8] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[8]),
        .Q(data8),
        .R(ap_loop_init));
  FDRE #(
    .INIT(1'b0)) 
    \or_i3_i_i_fu_36_reg[9] 
       (.C(ap_clk),
        .CE(i_fu_40_0),
        .D(bitstream_fu_107_p3[9]),
        .Q(data9),
        .R(ap_loop_init));
endmodule

(* ORIG_REF_NAME = "example_acc_example_acc_Pipeline_VITIS_LOOP_31_1" *) 
module design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_31_1
   (ap_enable_reg_pp0_iter1,
    D,
    ap_sig_allocacmp_i_1,
    alpha_transmit_line_int_regslice,
    \bit_reg_116_reg[0]_0 ,
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg,
    SR,
    ap_clk,
    alpha_transmit_line_ap_ack_int_regslice,
    Q,
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
    ap_rst_n,
    i_fu_4210_out,
    ap_done,
    alpha_transmit_line_reg,
    \bit_reg_116_reg[0]_1 ,
    \bit_reg_116_reg[0]_2 ,
    data_p2);
  output ap_enable_reg_pp0_iter1;
  output [1:0]D;
  output [3:0]ap_sig_allocacmp_i_1;
  output alpha_transmit_line_int_regslice;
  output \bit_reg_116_reg[0]_0 ;
  output grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg;
  input [0:0]SR;
  input ap_clk;
  input alpha_transmit_line_ap_ack_int_regslice;
  input [2:0]Q;
  input grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg;
  input ap_rst_n;
  input i_fu_4210_out;
  input ap_done;
  input alpha_transmit_line_reg;
  input \bit_reg_116_reg[0]_1 ;
  input \bit_reg_116_reg[0]_2 ;
  input data_p2;

  wire [1:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire alpha_transmit_line_ap_ack_int_regslice;
  wire alpha_transmit_line_int_regslice;
  wire alpha_transmit_line_reg;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_rst_n;
  wire [3:0]ap_sig_allocacmp_i_1;
  wire \bit_reg_116_reg[0]_0 ;
  wire \bit_reg_116_reg[0]_1 ;
  wire \bit_reg_116_reg[0]_2 ;
  wire data_p2;
  wire flow_control_loop_pipe_sequential_init_U_n_17;
  wire flow_control_loop_pipe_sequential_init_U_n_18;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg;
  wire [5:1]i_2_fu_73_p2;
  wire i_fu_42;
  wire i_fu_4210_out;
  wire \i_fu_42_reg_n_3_[0] ;
  wire \i_fu_42_reg_n_3_[1] ;
  wire \i_fu_42_reg_n_3_[2] ;
  wire \i_fu_42_reg_n_3_[3] ;
  wire \i_fu_42_reg_n_3_[4] ;
  wire \i_fu_42_reg_n_3_[5] ;
  wire [0:0]sel0;

  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \alpha_transmit_line_reg[0]_i_1 
       (.I0(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(alpha_transmit_line_ap_ack_int_regslice),
        .I3(Q[1]),
        .I4(alpha_transmit_line_reg),
        .O(alpha_transmit_line_int_regslice));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_18),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  FDRE \bit_reg_116_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_sequential_init_U_n_17),
        .Q(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \data_p2[0]_i_1 
       (.I0(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(alpha_transmit_line_ap_ack_int_regslice),
        .I4(data_p2),
        .O(\bit_reg_116_reg[0]_0 ));
  design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D({i_2_fu_73_p2,sel0}),
        .E(i_fu_42),
        .Q(Q),
        .SR(SR),
        .alpha_transmit_line_ap_ack_int_regslice(alpha_transmit_line_ap_ack_int_regslice),
        .\ap_CS_fsm_reg[4] (D),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_3),
        .ap_rst_n(ap_rst_n),
        .ap_sig_allocacmp_i_1(ap_sig_allocacmp_i_1),
        .\bit_reg_116_reg[0] (\bit_reg_116_reg[0]_1 ),
        .\bit_reg_116_reg[0]_0 (\bit_reg_116_reg[0]_2 ),
        .grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line),
        .grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_18),
        .grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_0(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg),
        .grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1(ap_enable_reg_pp0_iter1),
        .i_fu_4210_out(i_fu_4210_out),
        .\i_fu_42_reg[4] (flow_control_loop_pipe_sequential_init_U_n_17),
        .\i_fu_42_reg[5] ({\i_fu_42_reg_n_3_[5] ,\i_fu_42_reg_n_3_[4] ,\i_fu_42_reg_n_3_[3] ,\i_fu_42_reg_n_3_[2] ,\i_fu_42_reg_n_3_[1] ,\i_fu_42_reg_n_3_[0] }));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_42_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_42),
        .D(sel0),
        .Q(\i_fu_42_reg_n_3_[0] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_42_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_42),
        .D(i_2_fu_73_p2[1]),
        .Q(\i_fu_42_reg_n_3_[1] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_42_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_42),
        .D(i_2_fu_73_p2[2]),
        .Q(\i_fu_42_reg_n_3_[2] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_42_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_42),
        .D(i_2_fu_73_p2[3]),
        .Q(\i_fu_42_reg_n_3_[3] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_42_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_42),
        .D(i_2_fu_73_p2[4]),
        .Q(\i_fu_42_reg_n_3_[4] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
  FDRE #(
    .INIT(1'b0)) 
    \i_fu_42_reg[5] 
       (.C(ap_clk),
        .CE(i_fu_42),
        .D(i_2_fu_73_p2[5]),
        .Q(\i_fu_42_reg_n_3_[5] ),
        .R(flow_control_loop_pipe_sequential_init_U_n_3));
endmodule

(* ORIG_REF_NAME = "example_acc_flow_control_loop_pipe_sequential_init" *) 
module design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init
   (ap_loop_init_int_reg_0,
    D,
    E,
    \ap_CS_fsm_reg[4] ,
    ap_sig_allocacmp_i_1,
    \i_fu_42_reg[4] ,
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg,
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_0,
    SR,
    ap_clk,
    alpha_transmit_line_ap_ack_int_regslice,
    Q,
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1,
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
    \i_fu_42_reg[5] ,
    ap_rst_n,
    i_fu_4210_out,
    ap_done,
    \bit_reg_116_reg[0] ,
    \bit_reg_116_reg[0]_0 ,
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line);
  output [0:0]ap_loop_init_int_reg_0;
  output [5:0]D;
  output [0:0]E;
  output [1:0]\ap_CS_fsm_reg[4] ;
  output [3:0]ap_sig_allocacmp_i_1;
  output \i_fu_42_reg[4] ;
  output grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg;
  output grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_0;
  input [0:0]SR;
  input ap_clk;
  input alpha_transmit_line_ap_ack_int_regslice;
  input [2:0]Q;
  input grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1;
  input grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg;
  input [5:0]\i_fu_42_reg[5] ;
  input ap_rst_n;
  input i_fu_4210_out;
  input ap_done;
  input \bit_reg_116_reg[0] ;
  input \bit_reg_116_reg[0]_0 ;
  input grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line;

  wire [5:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire [0:0]SR;
  wire alpha_transmit_line_ap_ack_int_regslice;
  wire [1:0]\ap_CS_fsm_reg[4] ;
  wire ap_clk;
  wire ap_done;
  wire ap_done_cache;
  wire ap_done_cache_i_1__0_n_3;
  wire ap_done_reg1;
  wire ap_loop_init;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1__0_n_3;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire [3:0]ap_sig_allocacmp_i_1;
  wire \bit_reg_116_reg[0] ;
  wire \bit_reg_116_reg[0]_0 ;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_0;
  wire grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1;
  wire i_fu_4210_out;
  wire \i_fu_42[5]_i_5_n_3 ;
  wire \i_fu_42[5]_i_7_n_3 ;
  wire \i_fu_42_reg[4] ;
  wire [5:0]\i_fu_42_reg[5] ;
  wire icmp_ln31_fu_67_p2__4;

  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFFFF0D00)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_done_cache),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I2(ap_done_reg1),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\ap_CS_fsm_reg[4] [0]));
  LUT6 #(
    .INIT(64'hFFFF44F444444444)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_done),
        .I1(Q[2]),
        .I2(ap_done_cache),
        .I3(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I4(ap_done_reg1),
        .I5(Q[1]),
        .O(\ap_CS_fsm_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hA2220000)) 
    \ap_CS_fsm[4]_i_3 
       (.I0(icmp_ln31_fu_67_p2__4),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1),
        .I2(Q[1]),
        .I3(alpha_transmit_line_ap_ack_int_regslice),
        .I4(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .O(ap_done_reg1));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    ap_done_cache_i_1__0
       (.I0(ap_done_reg1),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I2(ap_done_cache),
        .O(ap_done_cache_i_1__0_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1__0_n_3),
        .Q(ap_done_cache),
        .R(SR));
  LUT6 #(
    .INIT(64'h3F00BFAA00000000)) 
    ap_enable_reg_pp0_iter1_i_1__0
       (.I0(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I1(alpha_transmit_line_ap_ack_int_regslice),
        .I2(Q[1]),
        .I3(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1),
        .I4(icmp_ln31_fu_67_p2__4),
        .I5(ap_rst_n),
        .O(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hFFFF5DDD)) 
    ap_loop_init_int_i_1__0
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(i_fu_4210_out),
        .I3(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I4(ap_done_reg1),
        .O(ap_loop_init_int_i_1__0_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1__0_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \bit_reg_116[0]_i_1 
       (.I0(\bit_reg_116_reg[0] ),
        .I1(\i_fu_42_reg[5] [4]),
        .I2(ap_loop_init),
        .I3(\bit_reg_116_reg[0]_0 ),
        .I4(i_fu_4210_out),
        .I5(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line),
        .O(\i_fu_42_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \bit_reg_116[0]_i_14 
       (.I0(\i_fu_42_reg[5] [0]),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_i_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \bit_reg_116[0]_i_15 
       (.I0(\i_fu_42_reg[5] [1]),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_i_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \bit_reg_116[0]_i_6 
       (.I0(\i_fu_42_reg[5] [3]),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_i_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \bit_reg_116[0]_i_7 
       (.I0(\i_fu_42_reg[5] [2]),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I2(ap_loop_init_int),
        .O(ap_sig_allocacmp_i_1[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF2A00AAAA)) 
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_i_1
       (.I0(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I1(alpha_transmit_line_ap_ack_int_regslice),
        .I2(Q[1]),
        .I3(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1),
        .I4(icmp_ln31_fu_67_p2__4),
        .I5(Q[0]),
        .O(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \i_fu_42[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\i_fu_42_reg[5] [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \i_fu_42[1]_i_1 
       (.I0(\i_fu_42_reg[5] [1]),
        .I1(ap_loop_init_int),
        .I2(\i_fu_42_reg[5] [0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0708)) 
    \i_fu_42[2]_i_1 
       (.I0(\i_fu_42_reg[5] [0]),
        .I1(\i_fu_42_reg[5] [1]),
        .I2(ap_loop_init_int),
        .I3(\i_fu_42_reg[5] [2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i_fu_42[3]_i_1 
       (.I0(\i_fu_42_reg[5] [1]),
        .I1(\i_fu_42_reg[5] [0]),
        .I2(\i_fu_42_reg[5] [2]),
        .I3(ap_loop_init_int),
        .I4(\i_fu_42_reg[5] [3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h007F0080)) 
    \i_fu_42[4]_i_1 
       (.I0(\i_fu_42_reg[5] [2]),
        .I1(\i_fu_42[5]_i_5_n_3 ),
        .I2(\i_fu_42_reg[5] [3]),
        .I3(ap_loop_init_int),
        .I4(\i_fu_42_reg[5] [4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h80AA000000000000)) 
    \i_fu_42[5]_i_1 
       (.I0(ap_loop_init_int),
        .I1(alpha_transmit_line_ap_ack_int_regslice),
        .I2(Q[1]),
        .I3(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1),
        .I4(icmp_ln31_fu_67_p2__4),
        .I5(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .O(ap_loop_init_int_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00D50000)) 
    \i_fu_42[5]_i_2 
       (.I0(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1),
        .I1(Q[1]),
        .I2(alpha_transmit_line_ap_ack_int_regslice),
        .I3(icmp_ln31_fu_67_p2__4),
        .I4(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .O(E));
  LUT6 #(
    .INIT(64'h00007FFF00008000)) 
    \i_fu_42[5]_i_3 
       (.I0(\i_fu_42_reg[5] [3]),
        .I1(\i_fu_42[5]_i_5_n_3 ),
        .I2(\i_fu_42_reg[5] [2]),
        .I3(\i_fu_42_reg[5] [4]),
        .I4(ap_loop_init),
        .I5(\i_fu_42_reg[5] [5]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \i_fu_42[5]_i_4 
       (.I0(\i_fu_42_reg[5] [2]),
        .I1(ap_loop_init),
        .I2(\i_fu_42_reg[5] [3]),
        .I3(\i_fu_42_reg[5] [5]),
        .I4(\i_fu_42_reg[5] [4]),
        .I5(\i_fu_42[5]_i_7_n_3 ),
        .O(icmp_ln31_fu_67_p2__4));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2A00)) 
    \i_fu_42[5]_i_5 
       (.I0(\i_fu_42_reg[5] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I3(\i_fu_42_reg[5] [0]),
        .O(\i_fu_42[5]_i_5_n_3 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_42[5]_i_6 
       (.I0(ap_loop_init_int),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .O(ap_loop_init));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hC0D5)) 
    \i_fu_42[5]_i_7 
       (.I0(\i_fu_42_reg[5] [1]),
        .I1(ap_loop_init_int),
        .I2(grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg),
        .I3(\i_fu_42_reg[5] [0]),
        .O(\i_fu_42[5]_i_7_n_3 ));
endmodule

(* ORIG_REF_NAME = "example_acc_flow_control_loop_pipe_sequential_init" *) 
module design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init_0
   (D,
    ap_loop_init_int_reg_0,
    SR,
    ap_clk,
    ap_rst_n,
    grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
    ap_enable_reg_pp0_iter1,
    Q,
    grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready,
    \ap_CS_fsm_reg[2] ,
    ap_start);
  output [1:0]D;
  output [0:0]ap_loop_init_int_reg_0;
  input [0:0]SR;
  input ap_clk;
  input ap_rst_n;
  input grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg;
  input ap_enable_reg_pp0_iter1;
  input [1:0]Q;
  input grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready;
  input [1:0]\ap_CS_fsm_reg[2] ;
  input ap_start;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]\ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_3;
  wire ap_enable_reg_pp0_iter1;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_3;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst_n;
  wire ap_start;
  wire grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready;
  wire grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg;

  LUT6 #(
    .INIT(64'hFFFF0D000D000D00)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_done_cache),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg),
        .I2(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready),
        .I3(\ap_CS_fsm_reg[2] [1]),
        .I4(\ap_CS_fsm_reg[2] [0]),
        .I5(ap_start),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0080AAAA00800080)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\ap_CS_fsm_reg[2] [1]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg),
        .I5(ap_done_cache),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h08FF0808)) 
    ap_done_cache_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg),
        .I4(ap_done_cache),
        .O(ap_done_cache_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_3),
        .Q(ap_done_cache),
        .R(SR));
  LUT6 #(
    .INIT(64'h5D5D5D5DFF5D5D5D)) 
    ap_loop_init_int_i_1
       (.I0(ap_rst_n),
        .I1(ap_loop_init_int),
        .I2(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(ap_loop_init_int_i_1_n_3));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_3),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \i_fu_40[1]_i_1 
       (.I0(ap_loop_init_int),
        .I1(grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg),
        .O(ap_loop_init_int_reg_0));
endmodule

(* ORIG_REF_NAME = "example_acc_regslice_both" *) 
module design_1_example_acc_0_0_example_acc_regslice_both
   (alpha_transmit_line_ap_ack_int_regslice,
    data_p2,
    alpha_transmit_line,
    alpha_transmit_line_ap_vld,
    i_fu_4210_out,
    D,
    ap_done,
    SR,
    ap_clk,
    \data_p2_reg[0]_0 ,
    Q,
    ap_enable_reg_pp0_iter1,
    alpha_transmit_line_ap_ack,
    ap_start,
    alpha_transmit_line_int_regslice);
  output alpha_transmit_line_ap_ack_int_regslice;
  output data_p2;
  output [0:0]alpha_transmit_line;
  output alpha_transmit_line_ap_vld;
  output i_fu_4210_out;
  output [0:0]D;
  output ap_done;
  input [0:0]SR;
  input ap_clk;
  input \data_p2_reg[0]_0 ;
  input [2:0]Q;
  input ap_enable_reg_pp0_iter1;
  input alpha_transmit_line_ap_ack;
  input ap_start;
  input alpha_transmit_line_int_regslice;

  wire [0:0]D;
  wire [2:0]Q;
  wire [0:0]SR;
  wire ack_in_t_i_1_n_3;
  wire [0:0]alpha_transmit_line;
  wire alpha_transmit_line_ap_ack;
  wire alpha_transmit_line_ap_ack_int_regslice;
  wire alpha_transmit_line_ap_vld;
  wire alpha_transmit_line_int_regslice;
  wire ap_clk;
  wire ap_done;
  wire ap_enable_reg_pp0_iter1;
  wire ap_start;
  wire \data_p1[0]_i_1_n_3 ;
  wire data_p2;
  wire \data_p2_reg[0]_0 ;
  wire i_fu_4210_out;
  wire load_p1;
  wire [1:0]next__0;
  wire [1:1]state;
  wire \state[0]_i_2_n_3 ;
  wire \state[1]_i_1_n_3 ;
  wire [1:0]state__0;

  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF00FF)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(Q[1]),
        .I1(alpha_transmit_line_ap_ack_int_regslice),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(state__0[1]),
        .I4(alpha_transmit_line_ap_ack),
        .I5(state__0[0]),
        .O(next__0[0]));
  LUT6 #(
    .INIT(64'hFC4C4C4C4C4C4C4C)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(alpha_transmit_line_ap_ack),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(alpha_transmit_line_ap_ack_int_regslice),
        .I4(Q[1]),
        .I5(ap_enable_reg_pp0_iter1),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDSE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "ZERO:01,TWO:10,ONE:11,iSTATE:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hF070FFFFFFF0F0F0)) 
    ack_in_t_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(Q[1]),
        .I2(alpha_transmit_line_ap_ack_int_regslice),
        .I3(alpha_transmit_line_ap_ack),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(ack_in_t_i_1_n_3));
  FDRE #(
    .INIT(1'b0)) 
    ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1_n_3),
        .Q(alpha_transmit_line_ap_ack_int_regslice),
        .R(SR));
  LUT6 #(
    .INIT(64'hA222A222FFFFA222)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(Q[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(alpha_transmit_line_ap_ack),
        .I4(Q[0]),
        .I5(ap_start),
        .O(D));
  LUT4 #(
    .INIT(16'hA222)) 
    \ap_CS_fsm[4]_i_2 
       (.I0(Q[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(alpha_transmit_line_ap_ack),
        .O(ap_done));
  LUT3 #(
    .INIT(8'h8F)) 
    ap_loop_init_int_i_2
       (.I0(alpha_transmit_line_ap_ack_int_regslice),
        .I1(Q[1]),
        .I2(ap_enable_reg_pp0_iter1),
        .O(i_fu_4210_out));
  LUT6 #(
    .INIT(64'hFB08FFFFFB080000)) 
    \data_p1[0]_i_1 
       (.I0(data_p2),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(alpha_transmit_line_int_regslice),
        .I4(load_p1),
        .I5(alpha_transmit_line),
        .O(\data_p1[0]_i_1_n_3 ));
  LUT6 #(
    .INIT(64'h8080FF0000800000)) 
    \data_p1[0]_i_2 
       (.I0(Q[1]),
        .I1(alpha_transmit_line_ap_ack_int_regslice),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(alpha_transmit_line_ap_ack),
        .O(load_p1));
  FDRE #(
    .INIT(1'b0)) 
    \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p1[0]_i_1_n_3 ),
        .Q(alpha_transmit_line),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\data_p2_reg[0]_0 ),
        .Q(data_p2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF7777777A0000000)) 
    \state[0]_i_2 
       (.I0(state),
        .I1(alpha_transmit_line_ap_ack),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(alpha_transmit_line_ap_ack_int_regslice),
        .I4(Q[1]),
        .I5(alpha_transmit_line_ap_vld),
        .O(\state[0]_i_2_n_3 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5DDDDDDD)) 
    \state[1]_i_1 
       (.I0(alpha_transmit_line_ap_vld),
        .I1(state),
        .I2(Q[1]),
        .I3(alpha_transmit_line_ap_ack_int_regslice),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(alpha_transmit_line_ap_ack),
        .O(\state[1]_i_1_n_3 ));
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_2_n_3 ),
        .Q(alpha_transmit_line_ap_vld),
        .R(SR));
  FDSE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_3 ),
        .Q(state),
        .S(SR));
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
