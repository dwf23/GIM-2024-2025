// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Feb 17 21:48:48 2025
// Host        : LAPTOP-DP0OJSK0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_example_acc_0_0_sim_netlist.v
// Design      : design_1_example_acc_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu3eg-sfvc784-1-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_example_acc_0_0,example_acc,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "example_acc,Vivado 2024.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (data_out_ap_ack,
    data_out_ap_vld,
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
    ap_done,
    ap_idle,
    ap_ready,
    ap_start,
    ap_return,
    data_out,
    start_r);
  input data_out_ap_ack;
  output data_out_ap_vld;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [4:0]s_axi_control_ARADDR;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ap_return DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef" *) output [31:0]ap_return;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 data_out DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME data_out, LAYERED_METADATA undef" *) output [31:0]data_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 start_r DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME start_r, LAYERED_METADATA undef" *) input start_r;

  wire \<const0> ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst_n;
  wire ap_start;
  wire [31:0]data_out;
  wire data_out_ap_ack;
  wire data_out_ap_vld;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [31:0]NLW_inst_ap_return_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign ap_return[31] = \<const0> ;
  assign ap_return[30] = \<const0> ;
  assign ap_return[29] = \<const0> ;
  assign ap_return[28] = \<const0> ;
  assign ap_return[27] = \<const0> ;
  assign ap_return[26] = \<const0> ;
  assign ap_return[25] = \<const0> ;
  assign ap_return[24] = \<const0> ;
  assign ap_return[23] = \<const0> ;
  assign ap_return[22] = \<const0> ;
  assign ap_return[21] = \<const0> ;
  assign ap_return[20] = \<const0> ;
  assign ap_return[19] = \<const0> ;
  assign ap_return[18] = \<const0> ;
  assign ap_return[17] = \<const0> ;
  assign ap_return[16] = \<const0> ;
  assign ap_return[15] = \<const0> ;
  assign ap_return[14] = \<const0> ;
  assign ap_return[13] = \<const0> ;
  assign ap_return[12] = \<const0> ;
  assign ap_return[11] = \<const0> ;
  assign ap_return[10] = \<const0> ;
  assign ap_return[9] = \<const0> ;
  assign ap_return[8] = \<const0> ;
  assign ap_return[7] = \<const0> ;
  assign ap_return[6] = \<const0> ;
  assign ap_return[5] = \<const0> ;
  assign ap_return[4] = \<const0> ;
  assign ap_return[3] = \<const0> ;
  assign ap_return[2] = \<const0> ;
  assign ap_return[1] = \<const0> ;
  assign ap_return[0] = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
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
  (* ap_ST_fsm_state1 = "3'b001" *) 
  (* ap_ST_fsm_state2 = "3'b010" *) 
  (* ap_ST_fsm_state3 = "3'b100" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_example_acc inst
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_return(NLW_inst_ap_return_UNCONNECTED[31:0]),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .data_out(data_out),
        .data_out_ap_ack(data_out_ap_ack),
        .data_out_ap_vld(data_out_ap_vld),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR({s_axi_control_AWADDR[4:2],1'b0,1'b0}),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .start_r(1'b0));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "5" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_state1 = "3'b001" *) 
(* ap_ST_fsm_state2 = "3'b010" *) (* ap_ST_fsm_state3 = "3'b100" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_example_acc
   (ap_clk,
    ap_rst_n,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    data_out_ap_ack,
    data_out,
    data_out_ap_vld,
    start_r,
    ap_return,
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
    s_axi_control_BRESP);
  input ap_clk;
  input ap_rst_n;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  input data_out_ap_ack;
  output [31:0]data_out;
  output data_out_ap_vld;
  input [0:0]start_r;
  output [31:0]ap_return;
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

  wire \<const0> ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_clk;
  wire ap_condition_196;
  wire ap_done;
  wire ap_idle;
  wire ap_loop_init;
  wire ap_ready;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire [0:0]ap_sig_allocacmp_w1_13_load;
  wire ap_start;
  wire control_s_axi_U_n_0;
  wire control_s_axi_U_n_1;
  wire control_s_axi_U_n_10;
  wire control_s_axi_U_n_11;
  wire control_s_axi_U_n_12;
  wire control_s_axi_U_n_13;
  wire control_s_axi_U_n_14;
  wire control_s_axi_U_n_15;
  wire control_s_axi_U_n_16;
  wire control_s_axi_U_n_17;
  wire control_s_axi_U_n_18;
  wire control_s_axi_U_n_19;
  wire control_s_axi_U_n_2;
  wire control_s_axi_U_n_20;
  wire control_s_axi_U_n_21;
  wire control_s_axi_U_n_22;
  wire control_s_axi_U_n_23;
  wire control_s_axi_U_n_24;
  wire control_s_axi_U_n_25;
  wire control_s_axi_U_n_26;
  wire control_s_axi_U_n_27;
  wire control_s_axi_U_n_28;
  wire control_s_axi_U_n_29;
  wire control_s_axi_U_n_3;
  wire control_s_axi_U_n_30;
  wire control_s_axi_U_n_31;
  wire control_s_axi_U_n_4;
  wire control_s_axi_U_n_5;
  wire control_s_axi_U_n_6;
  wire control_s_axi_U_n_7;
  wire control_s_axi_U_n_8;
  wire control_s_axi_U_n_9;
  wire [31:0]data_out;
  wire data_out_ap_ack;
  wire data_out_ap_ack_int_regslice;
  wire data_out_ap_vld;
  wire [31:0]data_out_int_regslice;
  wire flow_control_loop_pipe_U_n_1;
  wire flow_control_loop_pipe_U_n_2;
  wire i1_fu_660;
  wire \i1_fu_66[2]_i_1_n_0 ;
  wire [4:0]i1_fu_66_reg;
  wire [4:1]i_fu_145_p2;
  wire [31:0]p_1_in;
  wire regslice_both_data_out_U_n_36;
  wire regslice_both_data_out_U_n_40;
  wire regslice_both_data_out_U_n_41;
  wire regslice_both_data_out_U_n_42;
  wire regslice_both_data_out_U_n_43;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [4:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [0:0]w1;
  wire [31:0]w1_13_fu_74_reg;
  wire [31:1]w1_2_fu_115_p2;
  wire [31:0]w2_12_fu_70;
  wire [31:0]w2_2_fu_130_p2;

  assign ap_return[31] = \<const0> ;
  assign ap_return[30] = \<const0> ;
  assign ap_return[29] = \<const0> ;
  assign ap_return[28] = \<const0> ;
  assign ap_return[27] = \<const0> ;
  assign ap_return[26] = \<const0> ;
  assign ap_return[25] = \<const0> ;
  assign ap_return[24] = \<const0> ;
  assign ap_return[23] = \<const0> ;
  assign ap_return[22] = \<const0> ;
  assign ap_return[21] = \<const0> ;
  assign ap_return[20] = \<const0> ;
  assign ap_return[19] = \<const0> ;
  assign ap_return[18] = \<const0> ;
  assign ap_return[17] = \<const0> ;
  assign ap_return[16] = \<const0> ;
  assign ap_return[15] = \<const0> ;
  assign ap_return[14] = \<const0> ;
  assign ap_return[13] = \<const0> ;
  assign ap_return[12] = \<const0> ;
  assign ap_return[11] = \<const0> ;
  assign ap_return[10] = \<const0> ;
  assign ap_return[9] = \<const0> ;
  assign ap_return[8] = \<const0> ;
  assign ap_return[7] = \<const0> ;
  assign ap_return[6] = \<const0> ;
  assign ap_return[5] = \<const0> ;
  assign ap_return[4] = \<const0> ;
  assign ap_return[3] = \<const0> ;
  assign ap_return[2] = \<const0> ;
  assign ap_return[1] = \<const0> ;
  assign ap_return[0] = \<const0> ;
  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_data_out_U_n_42),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_data_out_U_n_41),
        .Q(ap_CS_fsm_state2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_data_out_U_n_40),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst_n_inv));
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_example_acc_control_s_axi control_s_axi_U
       (.D(p_1_in),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .\FSM_onehot_wstate_reg[2]_0 (s_axi_control_WREADY),
        .O({control_s_axi_U_n_0,control_s_axi_U_n_1,control_s_axi_U_n_2,control_s_axi_U_n_3,control_s_axi_U_n_4,control_s_axi_U_n_5,control_s_axi_U_n_6,control_s_axi_U_n_7}),
        .Q(w1),
        .S(flow_control_loop_pipe_U_n_2),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[1] (data_out_int_regslice[31:1]),
        .ap_clk(ap_clk),
        .ap_loop_init(ap_loop_init),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .\data_p2_reg[31] ({ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .\int_w1_reg[0]_0 (ap_sig_allocacmp_w1_13_load),
        .\int_w1_reg[15]_0 ({control_s_axi_U_n_8,control_s_axi_U_n_9,control_s_axi_U_n_10,control_s_axi_U_n_11,control_s_axi_U_n_12,control_s_axi_U_n_13,control_s_axi_U_n_14,control_s_axi_U_n_15}),
        .\int_w1_reg[23]_0 ({control_s_axi_U_n_16,control_s_axi_U_n_17,control_s_axi_U_n_18,control_s_axi_U_n_19,control_s_axi_U_n_20,control_s_axi_U_n_21,control_s_axi_U_n_22,control_s_axi_U_n_23}),
        .\int_w1_reg[31]_0 ({control_s_axi_U_n_24,control_s_axi_U_n_25,control_s_axi_U_n_26,control_s_axi_U_n_27,control_s_axi_U_n_28,control_s_axi_U_n_29,control_s_axi_U_n_30,control_s_axi_U_n_31}),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR[4:2]),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .w1_13_fu_74_reg(w1_13_fu_74_reg),
        .w1_2_fu_115_p2(w1_2_fu_115_p2),
        .w2_2_fu_130_p2(w2_2_fu_130_p2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_example_acc_flow_control_loop_pipe flow_control_loop_pipe_U
       (.D(data_out_int_regslice[0]),
        .E(flow_control_loop_pipe_U_n_1),
        .Q({ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .S(flow_control_loop_pipe_U_n_2),
        .ap_clk(ap_clk),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_reg_0(regslice_both_data_out_U_n_36),
        .ap_start(ap_start),
        .data_out_ap_ack_int_regslice(data_out_ap_ack_int_regslice),
        .\data_p2_reg[0] (w1),
        .w1_13_fu_74_reg(w1_13_fu_74_reg[0]),
        .w2_2_fu_130_p2(w2_2_fu_130_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \i1_fu_66[1]_i_1 
       (.I0(i1_fu_66_reg[0]),
        .I1(i1_fu_66_reg[1]),
        .O(i_fu_145_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \i1_fu_66[2]_i_1 
       (.I0(i1_fu_66_reg[0]),
        .I1(i1_fu_66_reg[1]),
        .I2(i1_fu_66_reg[2]),
        .O(\i1_fu_66[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \i1_fu_66[3]_i_1 
       (.I0(i1_fu_66_reg[1]),
        .I1(i1_fu_66_reg[0]),
        .I2(i1_fu_66_reg[2]),
        .I3(i1_fu_66_reg[3]),
        .O(i_fu_145_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \i1_fu_66[4]_i_2 
       (.I0(i1_fu_66_reg[2]),
        .I1(i1_fu_66_reg[0]),
        .I2(i1_fu_66_reg[1]),
        .I3(i1_fu_66_reg[3]),
        .I4(i1_fu_66_reg[4]),
        .O(i_fu_145_p2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_66_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(regslice_both_data_out_U_n_43),
        .Q(i1_fu_66_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_66_reg[1] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_145_p2[1]),
        .Q(i1_fu_66_reg[1]),
        .R(i1_fu_660));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_66_reg[2] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(\i1_fu_66[2]_i_1_n_0 ),
        .Q(i1_fu_66_reg[2]),
        .R(i1_fu_660));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_66_reg[3] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_145_p2[3]),
        .Q(i1_fu_66_reg[3]),
        .R(i1_fu_660));
  FDRE #(
    .INIT(1'b0)) 
    \i1_fu_66_reg[4] 
       (.C(ap_clk),
        .CE(ap_ready_int),
        .D(i_fu_145_p2[4]),
        .Q(i1_fu_66_reg[4]),
        .R(i1_fu_660));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_example_acc_regslice_both regslice_both_data_out_U
       (.D({regslice_both_data_out_U_n_40,regslice_both_data_out_U_n_41,regslice_both_data_out_U_n_42}),
        .Q(w2_12_fu_70),
        .SR(ap_rst_n_inv),
        .ap_clk(ap_clk),
        .ap_condition_196(ap_condition_196),
        .ap_done(ap_done),
        .ap_loop_init(ap_loop_init),
        .ap_loop_init_reg(regslice_both_data_out_U_n_36),
        .ap_ready(ap_ready),
        .ap_ready_int(ap_ready_int),
        .ap_rst_n(ap_rst_n),
        .ap_start(ap_start),
        .data_out(data_out),
        .data_out_ap_ack(data_out_ap_ack),
        .data_out_ap_ack_int_regslice(data_out_ap_ack_int_regslice),
        .data_out_ap_vld(data_out_ap_vld),
        .\data_p1_reg[0]_0 (ap_sig_allocacmp_w1_13_load),
        .\data_p2_reg[31]_0 (data_out_int_regslice),
        .i1_fu_660(i1_fu_660),
        .i1_fu_66_reg(i1_fu_66_reg),
        .\i1_fu_66_reg[1] ({ap_CS_fsm_state3,ap_CS_fsm_state2,\ap_CS_fsm_reg_n_0_[0] }),
        .i1_fu_66_reg_0_sp_1(regslice_both_data_out_U_n_43),
        .w1_2_fu_115_p2(w1_2_fu_115_p2),
        .w2_2_fu_130_p2(w2_2_fu_130_p2));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_7),
        .Q(w1_13_fu_74_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[10] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_13),
        .Q(w1_13_fu_74_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[11] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_12),
        .Q(w1_13_fu_74_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[12] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_11),
        .Q(w1_13_fu_74_reg[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[13] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_10),
        .Q(w1_13_fu_74_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[14] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_9),
        .Q(w1_13_fu_74_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[15] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_8),
        .Q(w1_13_fu_74_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[16] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_23),
        .Q(w1_13_fu_74_reg[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[17] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_22),
        .Q(w1_13_fu_74_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[18] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_21),
        .Q(w1_13_fu_74_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[19] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_20),
        .Q(w1_13_fu_74_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_6),
        .Q(w1_13_fu_74_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[20] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_19),
        .Q(w1_13_fu_74_reg[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[21] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_18),
        .Q(w1_13_fu_74_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[22] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_17),
        .Q(w1_13_fu_74_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[23] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_16),
        .Q(w1_13_fu_74_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[24] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_31),
        .Q(w1_13_fu_74_reg[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[25] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_30),
        .Q(w1_13_fu_74_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[26] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_29),
        .Q(w1_13_fu_74_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[27] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_28),
        .Q(w1_13_fu_74_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[28] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_27),
        .Q(w1_13_fu_74_reg[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[29] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_26),
        .Q(w1_13_fu_74_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_5),
        .Q(w1_13_fu_74_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[30] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_25),
        .Q(w1_13_fu_74_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[31] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_24),
        .Q(w1_13_fu_74_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_4),
        .Q(w1_13_fu_74_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_3),
        .Q(w1_13_fu_74_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_2),
        .Q(w1_13_fu_74_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_1),
        .Q(w1_13_fu_74_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_0),
        .Q(w1_13_fu_74_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[8] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_15),
        .Q(w1_13_fu_74_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w1_13_fu_74_reg[9] 
       (.C(ap_clk),
        .CE(ap_condition_196),
        .D(control_s_axi_U_n_14),
        .Q(w1_13_fu_74_reg[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[0]),
        .Q(w2_12_fu_70[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[10] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[10]),
        .Q(w2_12_fu_70[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[11] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[11]),
        .Q(w2_12_fu_70[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[12] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[12]),
        .Q(w2_12_fu_70[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[13] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[13]),
        .Q(w2_12_fu_70[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[14] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[14]),
        .Q(w2_12_fu_70[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[15] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[15]),
        .Q(w2_12_fu_70[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[16] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[16]),
        .Q(w2_12_fu_70[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[17] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[17]),
        .Q(w2_12_fu_70[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[18] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[18]),
        .Q(w2_12_fu_70[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[19] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[19]),
        .Q(w2_12_fu_70[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[1]),
        .Q(w2_12_fu_70[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[20] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[20]),
        .Q(w2_12_fu_70[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[21] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[21]),
        .Q(w2_12_fu_70[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[22] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[22]),
        .Q(w2_12_fu_70[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[23] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[23]),
        .Q(w2_12_fu_70[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[24] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[24]),
        .Q(w2_12_fu_70[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[25] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[25]),
        .Q(w2_12_fu_70[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[26] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[26]),
        .Q(w2_12_fu_70[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[27] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[27]),
        .Q(w2_12_fu_70[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[28] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[28]),
        .Q(w2_12_fu_70[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[29] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[29]),
        .Q(w2_12_fu_70[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[2]),
        .Q(w2_12_fu_70[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[30] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[30]),
        .Q(w2_12_fu_70[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[31] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[31]),
        .Q(w2_12_fu_70[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[3]),
        .Q(w2_12_fu_70[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[4]),
        .Q(w2_12_fu_70[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[5]),
        .Q(w2_12_fu_70[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[6]),
        .Q(w2_12_fu_70[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[7] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[7]),
        .Q(w2_12_fu_70[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[8] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[8]),
        .Q(w2_12_fu_70[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \w2_12_fu_70_reg[9] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_U_n_1),
        .D(p_1_in[9]),
        .Q(w2_12_fu_70[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_example_acc_control_s_axi
   (O,
    \int_w1_reg[15]_0 ,
    \int_w1_reg[23]_0 ,
    \int_w1_reg[31]_0 ,
    w1_2_fu_115_p2,
    \int_w1_reg[0]_0 ,
    Q,
    SR,
    D,
    \ap_CS_fsm_reg[1] ,
    \FSM_onehot_rstate_reg[1]_0 ,
    s_axi_control_BVALID,
    \FSM_onehot_wstate_reg[2]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_RVALID,
    s_axi_control_RDATA,
    S,
    w1_13_fu_74_reg,
    ap_loop_init,
    \data_p2_reg[31] ,
    ap_rst_n,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_ARADDR,
    w2_2_fu_130_p2,
    ap_start,
    s_axi_control_ARVALID,
    ap_clk,
    s_axi_control_AWADDR,
    s_axi_control_BREADY,
    s_axi_control_AWVALID,
    s_axi_control_WVALID,
    s_axi_control_RREADY);
  output [7:0]O;
  output [7:0]\int_w1_reg[15]_0 ;
  output [7:0]\int_w1_reg[23]_0 ;
  output [7:0]\int_w1_reg[31]_0 ;
  output [30:0]w1_2_fu_115_p2;
  output [0:0]\int_w1_reg[0]_0 ;
  output [0:0]Q;
  output [0:0]SR;
  output [31:0]D;
  output [30:0]\ap_CS_fsm_reg[1] ;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output s_axi_control_BVALID;
  output \FSM_onehot_wstate_reg[2]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_control_RVALID;
  output [31:0]s_axi_control_RDATA;
  input [0:0]S;
  input [31:0]w1_13_fu_74_reg;
  input ap_loop_init;
  input [1:0]\data_p2_reg[31] ;
  input ap_rst_n;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input [4:0]s_axi_control_ARADDR;
  input [31:0]w2_2_fu_130_p2;
  input ap_start;
  input s_axi_control_ARVALID;
  input ap_clk;
  input [2:0]s_axi_control_AWADDR;
  input s_axi_control_BREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_WVALID;
  input s_axi_control_RREADY;

  wire [31:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_wstate[1]_i_1_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg[2]_0 ;
  wire [7:0]O;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [30:0]\ap_CS_fsm_reg[1] ;
  wire ap_clk;
  wire ap_loop_init;
  wire ap_rst_n;
  wire [31:1]ap_sig_allocacmp_w1_13_load;
  wire ap_start;
  wire \data_p1_reg[16]_i_2_n_0 ;
  wire \data_p1_reg[16]_i_2_n_1 ;
  wire \data_p1_reg[16]_i_2_n_2 ;
  wire \data_p1_reg[16]_i_2_n_3 ;
  wire \data_p1_reg[16]_i_2_n_4 ;
  wire \data_p1_reg[16]_i_2_n_5 ;
  wire \data_p1_reg[16]_i_2_n_6 ;
  wire \data_p1_reg[16]_i_2_n_7 ;
  wire \data_p1_reg[24]_i_2_n_0 ;
  wire \data_p1_reg[24]_i_2_n_1 ;
  wire \data_p1_reg[24]_i_2_n_2 ;
  wire \data_p1_reg[24]_i_2_n_3 ;
  wire \data_p1_reg[24]_i_2_n_4 ;
  wire \data_p1_reg[24]_i_2_n_5 ;
  wire \data_p1_reg[24]_i_2_n_6 ;
  wire \data_p1_reg[24]_i_2_n_7 ;
  wire \data_p1_reg[31]_i_4_n_2 ;
  wire \data_p1_reg[31]_i_4_n_3 ;
  wire \data_p1_reg[31]_i_4_n_4 ;
  wire \data_p1_reg[31]_i_4_n_5 ;
  wire \data_p1_reg[31]_i_4_n_6 ;
  wire \data_p1_reg[31]_i_4_n_7 ;
  wire \data_p1_reg[8]_i_2_n_0 ;
  wire \data_p1_reg[8]_i_2_n_1 ;
  wire \data_p1_reg[8]_i_2_n_2 ;
  wire \data_p1_reg[8]_i_2_n_3 ;
  wire \data_p1_reg[8]_i_2_n_4 ;
  wire \data_p1_reg[8]_i_2_n_5 ;
  wire \data_p1_reg[8]_i_2_n_6 ;
  wire \data_p1_reg[8]_i_2_n_7 ;
  wire [1:0]\data_p2_reg[31] ;
  wire int_w1;
  wire [31:0]int_w10;
  wire [0:0]\int_w1_reg[0]_0 ;
  wire [7:0]\int_w1_reg[15]_0 ;
  wire [7:0]\int_w1_reg[23]_0 ;
  wire [7:0]\int_w1_reg[31]_0 ;
  wire int_w2;
  wire [31:0]int_w20;
  wire rdata;
  wire \rdata[0]_i_1_n_0 ;
  wire \rdata[10]_i_1_n_0 ;
  wire \rdata[11]_i_1_n_0 ;
  wire \rdata[12]_i_1_n_0 ;
  wire \rdata[13]_i_1_n_0 ;
  wire \rdata[14]_i_1_n_0 ;
  wire \rdata[15]_i_1_n_0 ;
  wire \rdata[16]_i_1_n_0 ;
  wire \rdata[17]_i_1_n_0 ;
  wire \rdata[18]_i_1_n_0 ;
  wire \rdata[19]_i_1_n_0 ;
  wire \rdata[1]_i_1_n_0 ;
  wire \rdata[20]_i_1_n_0 ;
  wire \rdata[21]_i_1_n_0 ;
  wire \rdata[22]_i_1_n_0 ;
  wire \rdata[23]_i_1_n_0 ;
  wire \rdata[24]_i_1_n_0 ;
  wire \rdata[25]_i_1_n_0 ;
  wire \rdata[26]_i_1_n_0 ;
  wire \rdata[27]_i_1_n_0 ;
  wire \rdata[28]_i_1_n_0 ;
  wire \rdata[29]_i_1_n_0 ;
  wire \rdata[2]_i_1_n_0 ;
  wire \rdata[30]_i_1_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[3]_i_1_n_0 ;
  wire \rdata[4]_i_1_n_0 ;
  wire \rdata[5]_i_1_n_0 ;
  wire \rdata[6]_i_1_n_0 ;
  wire \rdata[7]_i_1_n_0 ;
  wire \rdata[8]_i_1_n_0 ;
  wire \rdata[9]_i_1_n_0 ;
  wire [4:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [2:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [31:1]w1;
  wire \w1_13_fu_74[0]_i_3_n_0 ;
  wire \w1_13_fu_74[0]_i_4_n_0 ;
  wire \w1_13_fu_74[0]_i_5_n_0 ;
  wire \w1_13_fu_74[0]_i_6_n_0 ;
  wire \w1_13_fu_74[0]_i_7_n_0 ;
  wire \w1_13_fu_74[0]_i_8_n_0 ;
  wire \w1_13_fu_74[0]_i_9_n_0 ;
  wire \w1_13_fu_74[16]_i_2_n_0 ;
  wire \w1_13_fu_74[16]_i_3_n_0 ;
  wire \w1_13_fu_74[16]_i_4_n_0 ;
  wire \w1_13_fu_74[16]_i_5_n_0 ;
  wire \w1_13_fu_74[16]_i_6_n_0 ;
  wire \w1_13_fu_74[16]_i_7_n_0 ;
  wire \w1_13_fu_74[16]_i_8_n_0 ;
  wire \w1_13_fu_74[16]_i_9_n_0 ;
  wire \w1_13_fu_74[24]_i_2_n_0 ;
  wire \w1_13_fu_74[24]_i_3_n_0 ;
  wire \w1_13_fu_74[24]_i_4_n_0 ;
  wire \w1_13_fu_74[24]_i_5_n_0 ;
  wire \w1_13_fu_74[24]_i_6_n_0 ;
  wire \w1_13_fu_74[24]_i_7_n_0 ;
  wire \w1_13_fu_74[24]_i_8_n_0 ;
  wire \w1_13_fu_74[24]_i_9_n_0 ;
  wire \w1_13_fu_74[8]_i_2_n_0 ;
  wire \w1_13_fu_74[8]_i_3_n_0 ;
  wire \w1_13_fu_74[8]_i_4_n_0 ;
  wire \w1_13_fu_74[8]_i_5_n_0 ;
  wire \w1_13_fu_74[8]_i_6_n_0 ;
  wire \w1_13_fu_74[8]_i_7_n_0 ;
  wire \w1_13_fu_74[8]_i_8_n_0 ;
  wire \w1_13_fu_74[8]_i_9_n_0 ;
  wire [31:0]w1_13_fu_74_reg;
  wire \w1_13_fu_74_reg[0]_i_2_n_0 ;
  wire \w1_13_fu_74_reg[0]_i_2_n_1 ;
  wire \w1_13_fu_74_reg[0]_i_2_n_2 ;
  wire \w1_13_fu_74_reg[0]_i_2_n_3 ;
  wire \w1_13_fu_74_reg[0]_i_2_n_4 ;
  wire \w1_13_fu_74_reg[0]_i_2_n_5 ;
  wire \w1_13_fu_74_reg[0]_i_2_n_6 ;
  wire \w1_13_fu_74_reg[0]_i_2_n_7 ;
  wire \w1_13_fu_74_reg[16]_i_1_n_0 ;
  wire \w1_13_fu_74_reg[16]_i_1_n_1 ;
  wire \w1_13_fu_74_reg[16]_i_1_n_2 ;
  wire \w1_13_fu_74_reg[16]_i_1_n_3 ;
  wire \w1_13_fu_74_reg[16]_i_1_n_4 ;
  wire \w1_13_fu_74_reg[16]_i_1_n_5 ;
  wire \w1_13_fu_74_reg[16]_i_1_n_6 ;
  wire \w1_13_fu_74_reg[16]_i_1_n_7 ;
  wire \w1_13_fu_74_reg[24]_i_1_n_1 ;
  wire \w1_13_fu_74_reg[24]_i_1_n_2 ;
  wire \w1_13_fu_74_reg[24]_i_1_n_3 ;
  wire \w1_13_fu_74_reg[24]_i_1_n_4 ;
  wire \w1_13_fu_74_reg[24]_i_1_n_5 ;
  wire \w1_13_fu_74_reg[24]_i_1_n_6 ;
  wire \w1_13_fu_74_reg[24]_i_1_n_7 ;
  wire \w1_13_fu_74_reg[8]_i_1_n_0 ;
  wire \w1_13_fu_74_reg[8]_i_1_n_1 ;
  wire \w1_13_fu_74_reg[8]_i_1_n_2 ;
  wire \w1_13_fu_74_reg[8]_i_1_n_3 ;
  wire \w1_13_fu_74_reg[8]_i_1_n_4 ;
  wire \w1_13_fu_74_reg[8]_i_1_n_5 ;
  wire \w1_13_fu_74_reg[8]_i_1_n_6 ;
  wire \w1_13_fu_74_reg[8]_i_1_n_7 ;
  wire [30:0]w1_2_fu_115_p2;
  wire [31:0]w2;
  wire [31:0]w2_2_fu_130_p2;
  wire waddr;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire [7:6]\NLW_data_p1_reg[31]_i_4_CO_UNCONNECTED ;
  wire [7:7]\NLW_data_p1_reg[31]_i_4_O_UNCONNECTED ;
  wire [7:7]\NLW_w1_13_fu_74_reg[24]_i_1_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF747)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RVALID),
        .I3(s_axi_control_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_RVALID),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(s_axi_control_RVALID),
        .R(SR));
  LUT5 #(
    .INIT(32'h888BFF8B)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(s_axi_control_BREADY),
        .I1(s_axi_control_BVALID),
        .I2(\FSM_onehot_wstate_reg[2]_0 ),
        .I3(\FSM_onehot_wstate_reg[1]_0 ),
        .I4(s_axi_control_AWVALID),
        .O(\FSM_onehot_wstate[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .I2(s_axi_control_WVALID),
        .I3(\FSM_onehot_wstate_reg[2]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(s_axi_control_WVALID),
        .I1(\FSM_onehot_wstate_reg[2]_0 ),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg[2]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(SR));
  LUT5 #(
    .INIT(32'h08000000)) 
    \__4/i_ 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_WVALID),
        .I2(\waddr_reg_n_0_[2] ),
        .I3(\waddr_reg_n_0_[3] ),
        .I4(\waddr_reg_n_0_[4] ),
        .O(int_w2));
  LUT5 #(
    .INIT(32'h00080000)) 
    \__5/i_ 
       (.I0(\FSM_onehot_wstate_reg[2]_0 ),
        .I1(s_axi_control_WVALID),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\waddr_reg_n_0_[4] ),
        .O(int_w1));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[0]_i_2 
       (.I0(Q),
        .I1(w1_13_fu_74_reg[0]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(\int_w1_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[16]_i_10 
       (.I0(w1[9]),
        .I1(w1_13_fu_74_reg[9]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[9]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[16]_i_3 
       (.I0(w1[16]),
        .I1(w1_13_fu_74_reg[16]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[16]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[16]_i_4 
       (.I0(w1[15]),
        .I1(w1_13_fu_74_reg[15]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[15]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[16]_i_5 
       (.I0(w1[14]),
        .I1(w1_13_fu_74_reg[14]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[14]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[16]_i_6 
       (.I0(w1[13]),
        .I1(w1_13_fu_74_reg[13]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[13]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[16]_i_7 
       (.I0(w1[12]),
        .I1(w1_13_fu_74_reg[12]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[12]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[16]_i_8 
       (.I0(w1[11]),
        .I1(w1_13_fu_74_reg[11]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[11]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[16]_i_9 
       (.I0(w1[10]),
        .I1(w1_13_fu_74_reg[10]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[10]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[24]_i_10 
       (.I0(w1[17]),
        .I1(w1_13_fu_74_reg[17]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[17]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[24]_i_3 
       (.I0(w1[24]),
        .I1(w1_13_fu_74_reg[24]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[24]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[24]_i_4 
       (.I0(w1[23]),
        .I1(w1_13_fu_74_reg[23]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[23]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[24]_i_5 
       (.I0(w1[22]),
        .I1(w1_13_fu_74_reg[22]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[22]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[24]_i_6 
       (.I0(w1[21]),
        .I1(w1_13_fu_74_reg[21]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[21]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[24]_i_7 
       (.I0(w1[20]),
        .I1(w1_13_fu_74_reg[20]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[20]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[24]_i_8 
       (.I0(w1[19]),
        .I1(w1_13_fu_74_reg[19]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[19]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[24]_i_9 
       (.I0(w1[18]),
        .I1(w1_13_fu_74_reg[18]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[18]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[31]_i_10 
       (.I0(w1[27]),
        .I1(w1_13_fu_74_reg[27]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[27]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[31]_i_11 
       (.I0(w1[26]),
        .I1(w1_13_fu_74_reg[26]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[26]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[31]_i_12 
       (.I0(w1[25]),
        .I1(w1_13_fu_74_reg[25]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[25]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[31]_i_6 
       (.I0(w1[31]),
        .I1(w1_13_fu_74_reg[31]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[31]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[31]_i_7 
       (.I0(w1[30]),
        .I1(w1_13_fu_74_reg[30]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[30]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[31]_i_8 
       (.I0(w1[29]),
        .I1(w1_13_fu_74_reg[29]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[29]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[31]_i_9 
       (.I0(w1[28]),
        .I1(w1_13_fu_74_reg[28]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[28]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[8]_i_10 
       (.I0(w1[1]),
        .I1(w1_13_fu_74_reg[1]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[1]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[8]_i_3 
       (.I0(w1[8]),
        .I1(w1_13_fu_74_reg[8]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[8]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[8]_i_4 
       (.I0(w1[7]),
        .I1(w1_13_fu_74_reg[7]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[7]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[8]_i_5 
       (.I0(w1[6]),
        .I1(w1_13_fu_74_reg[6]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[6]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[8]_i_6 
       (.I0(w1[5]),
        .I1(w1_13_fu_74_reg[5]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[5]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[8]_i_7 
       (.I0(w1[4]),
        .I1(w1_13_fu_74_reg[4]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[4]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[8]_i_8 
       (.I0(w1[3]),
        .I1(w1_13_fu_74_reg[3]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[3]));
  LUT4 #(
    .INIT(16'hACCC)) 
    \data_p1[8]_i_9 
       (.I0(w1[2]),
        .I1(w1_13_fu_74_reg[2]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[31] [0]),
        .O(ap_sig_allocacmp_w1_13_load[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[16]_i_2 
       (.CI(\data_p1_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_p1_reg[16]_i_2_n_0 ,\data_p1_reg[16]_i_2_n_1 ,\data_p1_reg[16]_i_2_n_2 ,\data_p1_reg[16]_i_2_n_3 ,\data_p1_reg[16]_i_2_n_4 ,\data_p1_reg[16]_i_2_n_5 ,\data_p1_reg[16]_i_2_n_6 ,\data_p1_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(w1_2_fu_115_p2[15:8]),
        .S(ap_sig_allocacmp_w1_13_load[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[24]_i_2 
       (.CI(\data_p1_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_p1_reg[24]_i_2_n_0 ,\data_p1_reg[24]_i_2_n_1 ,\data_p1_reg[24]_i_2_n_2 ,\data_p1_reg[24]_i_2_n_3 ,\data_p1_reg[24]_i_2_n_4 ,\data_p1_reg[24]_i_2_n_5 ,\data_p1_reg[24]_i_2_n_6 ,\data_p1_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(w1_2_fu_115_p2[23:16]),
        .S(ap_sig_allocacmp_w1_13_load[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[31]_i_4 
       (.CI(\data_p1_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_data_p1_reg[31]_i_4_CO_UNCONNECTED [7:6],\data_p1_reg[31]_i_4_n_2 ,\data_p1_reg[31]_i_4_n_3 ,\data_p1_reg[31]_i_4_n_4 ,\data_p1_reg[31]_i_4_n_5 ,\data_p1_reg[31]_i_4_n_6 ,\data_p1_reg[31]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_data_p1_reg[31]_i_4_O_UNCONNECTED [7],w1_2_fu_115_p2[30:24]}),
        .S({1'b0,ap_sig_allocacmp_w1_13_load[31:25]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[8]_i_2 
       (.CI(\int_w1_reg[0]_0 ),
        .CI_TOP(1'b0),
        .CO({\data_p1_reg[8]_i_2_n_0 ,\data_p1_reg[8]_i_2_n_1 ,\data_p1_reg[8]_i_2_n_2 ,\data_p1_reg[8]_i_2_n_3 ,\data_p1_reg[8]_i_2_n_4 ,\data_p1_reg[8]_i_2_n_5 ,\data_p1_reg[8]_i_2_n_6 ,\data_p1_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(w1_2_fu_115_p2[7:0]),
        .S(ap_sig_allocacmp_w1_13_load[8:1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[10]_i_1 
       (.I0(w2_2_fu_130_p2[10]),
        .I1(w1_2_fu_115_p2[9]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [9]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[11]_i_1 
       (.I0(w2_2_fu_130_p2[11]),
        .I1(w1_2_fu_115_p2[10]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [10]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[12]_i_1 
       (.I0(w2_2_fu_130_p2[12]),
        .I1(w1_2_fu_115_p2[11]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[13]_i_1 
       (.I0(w2_2_fu_130_p2[13]),
        .I1(w1_2_fu_115_p2[12]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [12]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[14]_i_1 
       (.I0(w2_2_fu_130_p2[14]),
        .I1(w1_2_fu_115_p2[13]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [13]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[15]_i_1 
       (.I0(w2_2_fu_130_p2[15]),
        .I1(w1_2_fu_115_p2[14]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[16]_i_1 
       (.I0(w2_2_fu_130_p2[16]),
        .I1(w1_2_fu_115_p2[15]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[17]_i_1 
       (.I0(w2_2_fu_130_p2[17]),
        .I1(w1_2_fu_115_p2[16]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[18]_i_1 
       (.I0(w2_2_fu_130_p2[18]),
        .I1(w1_2_fu_115_p2[17]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [17]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[19]_i_1 
       (.I0(w2_2_fu_130_p2[19]),
        .I1(w1_2_fu_115_p2[18]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [18]));
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[1]_i_1 
       (.I0(w2_2_fu_130_p2[1]),
        .I1(w1_2_fu_115_p2[0]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[20]_i_1 
       (.I0(w2_2_fu_130_p2[20]),
        .I1(w1_2_fu_115_p2[19]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [19]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[21]_i_1 
       (.I0(w2_2_fu_130_p2[21]),
        .I1(w1_2_fu_115_p2[20]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [20]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[22]_i_1 
       (.I0(w2_2_fu_130_p2[22]),
        .I1(w1_2_fu_115_p2[21]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [21]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[23]_i_1 
       (.I0(w2_2_fu_130_p2[23]),
        .I1(w1_2_fu_115_p2[22]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [22]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[24]_i_1 
       (.I0(w2_2_fu_130_p2[24]),
        .I1(w1_2_fu_115_p2[23]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [23]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[25]_i_1 
       (.I0(w2_2_fu_130_p2[25]),
        .I1(w1_2_fu_115_p2[24]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [24]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[26]_i_1 
       (.I0(w2_2_fu_130_p2[26]),
        .I1(w1_2_fu_115_p2[25]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [25]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[27]_i_1 
       (.I0(w2_2_fu_130_p2[27]),
        .I1(w1_2_fu_115_p2[26]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [26]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[28]_i_1 
       (.I0(w2_2_fu_130_p2[28]),
        .I1(w1_2_fu_115_p2[27]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [27]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[29]_i_1 
       (.I0(w2_2_fu_130_p2[29]),
        .I1(w1_2_fu_115_p2[28]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[2]_i_1 
       (.I0(w2_2_fu_130_p2[2]),
        .I1(w1_2_fu_115_p2[1]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[30]_i_1 
       (.I0(w2_2_fu_130_p2[30]),
        .I1(w1_2_fu_115_p2[29]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[31]_i_2 
       (.I0(w2_2_fu_130_p2[31]),
        .I1(w1_2_fu_115_p2[30]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[3]_i_1 
       (.I0(w2_2_fu_130_p2[3]),
        .I1(w1_2_fu_115_p2[2]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[4]_i_1 
       (.I0(w2_2_fu_130_p2[4]),
        .I1(w1_2_fu_115_p2[3]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[5]_i_1 
       (.I0(w2_2_fu_130_p2[5]),
        .I1(w1_2_fu_115_p2[4]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[6]_i_1 
       (.I0(w2_2_fu_130_p2[6]),
        .I1(w1_2_fu_115_p2[5]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[7]_i_1 
       (.I0(w2_2_fu_130_p2[7]),
        .I1(w1_2_fu_115_p2[6]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[8]_i_1 
       (.I0(w2_2_fu_130_p2[8]),
        .I1(w1_2_fu_115_p2[7]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \data_p2[9]_i_1 
       (.I0(w2_2_fu_130_p2[9]),
        .I1(w1_2_fu_115_p2[8]),
        .I2(\data_p2_reg[31] [1]),
        .O(\ap_CS_fsm_reg[1] [8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(Q),
        .O(int_w10[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w1[10]),
        .O(int_w10[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w1[11]),
        .O(int_w10[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w1[12]),
        .O(int_w10[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w1[13]),
        .O(int_w10[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w1[14]),
        .O(int_w10[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w1[15]),
        .O(int_w10[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w1[16]),
        .O(int_w10[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w1[17]),
        .O(int_w10[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w1[18]),
        .O(int_w10[18]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w1[19]),
        .O(int_w10[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w1[1]),
        .O(int_w10[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w1[20]),
        .O(int_w10[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w1[21]),
        .O(int_w10[21]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w1[22]),
        .O(int_w10[22]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w1[23]),
        .O(int_w10[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w1[24]),
        .O(int_w10[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w1[25]),
        .O(int_w10[25]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w1[26]),
        .O(int_w10[26]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w1[27]),
        .O(int_w10[27]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w1[28]),
        .O(int_w10[28]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w1[29]),
        .O(int_w10[29]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w1[2]),
        .O(int_w10[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w1[30]),
        .O(int_w10[30]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[31]_i_1 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w1[31]),
        .O(int_w10[31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w1[3]),
        .O(int_w10[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w1[4]),
        .O(int_w10[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w1[5]),
        .O(int_w10[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w1[6]),
        .O(int_w10[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w1[7]),
        .O(int_w10[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w1[8]),
        .O(int_w10[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w1[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w1[9]),
        .O(int_w10[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[0] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[0]),
        .Q(Q),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[10] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[10]),
        .Q(w1[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[11] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[11]),
        .Q(w1[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[12] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[12]),
        .Q(w1[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[13] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[13]),
        .Q(w1[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[14] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[14]),
        .Q(w1[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[15] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[15]),
        .Q(w1[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[16] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[16]),
        .Q(w1[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[17] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[17]),
        .Q(w1[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[18] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[18]),
        .Q(w1[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[19] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[19]),
        .Q(w1[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[1] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[1]),
        .Q(w1[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[20] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[20]),
        .Q(w1[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[21] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[21]),
        .Q(w1[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[22] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[22]),
        .Q(w1[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[23] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[23]),
        .Q(w1[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[24] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[24]),
        .Q(w1[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[25] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[25]),
        .Q(w1[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[26] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[26]),
        .Q(w1[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[27] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[27]),
        .Q(w1[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[28] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[28]),
        .Q(w1[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[29] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[29]),
        .Q(w1[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[2] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[2]),
        .Q(w1[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[30] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[30]),
        .Q(w1[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[31] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[31]),
        .Q(w1[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[3] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[3]),
        .Q(w1[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[4] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[4]),
        .Q(w1[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[5] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[5]),
        .Q(w1[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[6] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[6]),
        .Q(w1[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[7] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[7]),
        .Q(w1[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[8] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[8]),
        .Q(w1[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w1_reg[9] 
       (.C(ap_clk),
        .CE(int_w1),
        .D(int_w10[9]),
        .Q(w1[9]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w2[0]),
        .O(int_w20[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w2[10]),
        .O(int_w20[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w2[11]),
        .O(int_w20[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w2[12]),
        .O(int_w20[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w2[13]),
        .O(int_w20[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w2[14]),
        .O(int_w20[14]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w2[15]),
        .O(int_w20[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w2[16]),
        .O(int_w20[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w2[17]),
        .O(int_w20[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w2[18]),
        .O(int_w20[18]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w2[19]),
        .O(int_w20[19]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w2[1]),
        .O(int_w20[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w2[20]),
        .O(int_w20[20]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w2[21]),
        .O(int_w20[21]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w2[22]),
        .O(int_w20[22]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(w2[23]),
        .O(int_w20[23]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w2[24]),
        .O(int_w20[24]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w2[25]),
        .O(int_w20[25]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w2[26]),
        .O(int_w20[26]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w2[27]),
        .O(int_w20[27]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w2[28]),
        .O(int_w20[28]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w2[29]),
        .O(int_w20[29]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w2[2]),
        .O(int_w20[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w2[30]),
        .O(int_w20[30]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[31]_i_1 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(w2[31]),
        .O(int_w20[31]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w2[3]),
        .O(int_w20[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w2[4]),
        .O(int_w20[4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w2[5]),
        .O(int_w20[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w2[6]),
        .O(int_w20[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(w2[7]),
        .O(int_w20[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w2[8]),
        .O(int_w20[8]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_w2[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(w2[9]),
        .O(int_w20[9]));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[0] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[0]),
        .Q(w2[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[10] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[10]),
        .Q(w2[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[11] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[11]),
        .Q(w2[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[12] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[12]),
        .Q(w2[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[13] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[13]),
        .Q(w2[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[14] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[14]),
        .Q(w2[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[15] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[15]),
        .Q(w2[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[16] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[16]),
        .Q(w2[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[17] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[17]),
        .Q(w2[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[18] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[18]),
        .Q(w2[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[19] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[19]),
        .Q(w2[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[1] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[1]),
        .Q(w2[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[20] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[20]),
        .Q(w2[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[21] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[21]),
        .Q(w2[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[22] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[22]),
        .Q(w2[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[23] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[23]),
        .Q(w2[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[24] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[24]),
        .Q(w2[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[25] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[25]),
        .Q(w2[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[26] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[26]),
        .Q(w2[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[27] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[27]),
        .Q(w2[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[28] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[28]),
        .Q(w2[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[29] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[29]),
        .Q(w2[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[2] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[2]),
        .Q(w2[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[30] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[30]),
        .Q(w2[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[31] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[31]),
        .Q(w2[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[3] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[3]),
        .Q(w2[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[4] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[4]),
        .Q(w2[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[5] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[5]),
        .Q(w2[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[6] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[6]),
        .Q(w2[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[7] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[7]),
        .Q(w2[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[8] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[8]),
        .Q(w2[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \int_w2_reg[9] 
       (.C(ap_clk),
        .CE(int_w2),
        .D(int_w20[9]),
        .Q(w2[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[0]_i_1 
       (.I0(Q),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[0]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[10]_i_1 
       (.I0(w1[10]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[10]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[11]_i_1 
       (.I0(w1[11]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[11]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[12]_i_1 
       (.I0(w1[12]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[12]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[13]_i_1 
       (.I0(w1[13]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[13]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[14]_i_1 
       (.I0(w1[14]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[14]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[15]_i_1 
       (.I0(w1[15]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[15]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[16]_i_1 
       (.I0(w1[16]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[16]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[17]_i_1 
       (.I0(w1[17]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[17]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[18]_i_1 
       (.I0(w1[18]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[18]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[19]_i_1 
       (.I0(w1[19]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[19]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[1]_i_1 
       (.I0(w1[1]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[1]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[20]_i_1 
       (.I0(w1[20]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[20]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[21]_i_1 
       (.I0(w1[21]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[21]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[22]_i_1 
       (.I0(w1[22]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[22]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[23]_i_1 
       (.I0(w1[23]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[23]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[24]_i_1 
       (.I0(w1[24]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[24]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[25]_i_1 
       (.I0(w1[25]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[25]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[26]_i_1 
       (.I0(w1[26]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[26]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[27]_i_1 
       (.I0(w1[27]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[27]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[28]_i_1 
       (.I0(w1[28]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[28]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[29]_i_1 
       (.I0(w1[29]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[29]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[2]_i_1 
       (.I0(w1[2]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[2]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[30]_i_1 
       (.I0(w1[30]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[30]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \rdata[31]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(s_axi_control_ARADDR[4]),
        .O(\rdata[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_2 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .O(rdata));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[31]_i_3 
       (.I0(w1[31]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[31]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[3]_i_1 
       (.I0(w1[3]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[3]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[4]_i_1 
       (.I0(w1[4]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[4]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[5]_i_1 
       (.I0(w1[5]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[5]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[6]_i_1 
       (.I0(w1[6]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[6]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[7]_i_1 
       (.I0(w1[7]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[7]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[8]_i_1 
       (.I0(w1[8]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[8]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000E2)) 
    \rdata[9]_i_1 
       (.I0(w1[9]),
        .I1(s_axi_control_ARADDR[3]),
        .I2(w2[9]),
        .I3(s_axi_control_ARADDR[1]),
        .I4(s_axi_control_ARADDR[0]),
        .I5(s_axi_control_ARADDR[2]),
        .O(\rdata[9]_i_1_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[0]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[0]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[10]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[10]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[11]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[11]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[12]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[12]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[13]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[13]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[14]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[14]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[15]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[15]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[16]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[16]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[17]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[17]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[18]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[18]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[19]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[19]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[1]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[1]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[20]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[20]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[21]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[21]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[22]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[22]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[23]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[23]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[24]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[24]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[25]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[25]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[26]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[26]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[27]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[27]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[28]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[28]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[29]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[29]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[2]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[2]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[30]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[30]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[31]_i_3_n_0 ),
        .Q(s_axi_control_RDATA[31]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[3]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[3]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[4]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[4]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[5]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[5]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[6]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[6]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[7]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[7]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[8]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[8]),
        .R(\rdata[31]_i_1_n_0 ));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(rdata),
        .D(\rdata[9]_i_1_n_0 ),
        .Q(s_axi_control_RDATA[9]),
        .R(\rdata[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \state[0]_i_1 
       (.I0(ap_rst_n),
        .O(SR));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[0]_i_3 
       (.I0(w1[7]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[7]),
        .O(\w1_13_fu_74[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[0]_i_4 
       (.I0(w1[6]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[6]),
        .O(\w1_13_fu_74[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[0]_i_5 
       (.I0(w1[5]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[5]),
        .O(\w1_13_fu_74[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[0]_i_6 
       (.I0(w1[4]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[4]),
        .O(\w1_13_fu_74[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[0]_i_7 
       (.I0(w1[3]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[3]),
        .O(\w1_13_fu_74[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[0]_i_8 
       (.I0(w1[2]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[2]),
        .O(\w1_13_fu_74[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[0]_i_9 
       (.I0(w1[1]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[1]),
        .O(\w1_13_fu_74[0]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[16]_i_2 
       (.I0(w1[23]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[23]),
        .O(\w1_13_fu_74[16]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[16]_i_3 
       (.I0(w1[22]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[22]),
        .O(\w1_13_fu_74[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[16]_i_4 
       (.I0(w1[21]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[21]),
        .O(\w1_13_fu_74[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[16]_i_5 
       (.I0(w1[20]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[20]),
        .O(\w1_13_fu_74[16]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[16]_i_6 
       (.I0(w1[19]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[19]),
        .O(\w1_13_fu_74[16]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[16]_i_7 
       (.I0(w1[18]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[18]),
        .O(\w1_13_fu_74[16]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[16]_i_8 
       (.I0(w1[17]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[17]),
        .O(\w1_13_fu_74[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[16]_i_9 
       (.I0(w1[16]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[16]),
        .O(\w1_13_fu_74[16]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[24]_i_2 
       (.I0(w1[31]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[31]),
        .O(\w1_13_fu_74[24]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[24]_i_3 
       (.I0(w1[30]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[30]),
        .O(\w1_13_fu_74[24]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[24]_i_4 
       (.I0(w1[29]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[29]),
        .O(\w1_13_fu_74[24]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[24]_i_5 
       (.I0(w1[28]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[28]),
        .O(\w1_13_fu_74[24]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[24]_i_6 
       (.I0(w1[27]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[27]),
        .O(\w1_13_fu_74[24]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[24]_i_7 
       (.I0(w1[26]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[26]),
        .O(\w1_13_fu_74[24]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[24]_i_8 
       (.I0(w1[25]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[25]),
        .O(\w1_13_fu_74[24]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[24]_i_9 
       (.I0(w1[24]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[24]),
        .O(\w1_13_fu_74[24]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[8]_i_2 
       (.I0(w1[15]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[15]),
        .O(\w1_13_fu_74[8]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[8]_i_3 
       (.I0(w1[14]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[14]),
        .O(\w1_13_fu_74[8]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[8]_i_4 
       (.I0(w1[13]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[13]),
        .O(\w1_13_fu_74[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[8]_i_5 
       (.I0(w1[12]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[12]),
        .O(\w1_13_fu_74[8]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[8]_i_6 
       (.I0(w1[11]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[11]),
        .O(\w1_13_fu_74[8]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[8]_i_7 
       (.I0(w1[10]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[10]),
        .O(\w1_13_fu_74[8]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[8]_i_8 
       (.I0(w1[9]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[9]),
        .O(\w1_13_fu_74[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \w1_13_fu_74[8]_i_9 
       (.I0(w1[8]),
        .I1(ap_loop_init),
        .I2(\data_p2_reg[31] [0]),
        .I3(w1_13_fu_74_reg[8]),
        .O(\w1_13_fu_74[8]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \w1_13_fu_74_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\w1_13_fu_74_reg[0]_i_2_n_0 ,\w1_13_fu_74_reg[0]_i_2_n_1 ,\w1_13_fu_74_reg[0]_i_2_n_2 ,\w1_13_fu_74_reg[0]_i_2_n_3 ,\w1_13_fu_74_reg[0]_i_2_n_4 ,\w1_13_fu_74_reg[0]_i_2_n_5 ,\w1_13_fu_74_reg[0]_i_2_n_6 ,\w1_13_fu_74_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O(O),
        .S({\w1_13_fu_74[0]_i_3_n_0 ,\w1_13_fu_74[0]_i_4_n_0 ,\w1_13_fu_74[0]_i_5_n_0 ,\w1_13_fu_74[0]_i_6_n_0 ,\w1_13_fu_74[0]_i_7_n_0 ,\w1_13_fu_74[0]_i_8_n_0 ,\w1_13_fu_74[0]_i_9_n_0 ,S}));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \w1_13_fu_74_reg[16]_i_1 
       (.CI(\w1_13_fu_74_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\w1_13_fu_74_reg[16]_i_1_n_0 ,\w1_13_fu_74_reg[16]_i_1_n_1 ,\w1_13_fu_74_reg[16]_i_1_n_2 ,\w1_13_fu_74_reg[16]_i_1_n_3 ,\w1_13_fu_74_reg[16]_i_1_n_4 ,\w1_13_fu_74_reg[16]_i_1_n_5 ,\w1_13_fu_74_reg[16]_i_1_n_6 ,\w1_13_fu_74_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_w1_reg[23]_0 ),
        .S({\w1_13_fu_74[16]_i_2_n_0 ,\w1_13_fu_74[16]_i_3_n_0 ,\w1_13_fu_74[16]_i_4_n_0 ,\w1_13_fu_74[16]_i_5_n_0 ,\w1_13_fu_74[16]_i_6_n_0 ,\w1_13_fu_74[16]_i_7_n_0 ,\w1_13_fu_74[16]_i_8_n_0 ,\w1_13_fu_74[16]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \w1_13_fu_74_reg[24]_i_1 
       (.CI(\w1_13_fu_74_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_w1_13_fu_74_reg[24]_i_1_CO_UNCONNECTED [7],\w1_13_fu_74_reg[24]_i_1_n_1 ,\w1_13_fu_74_reg[24]_i_1_n_2 ,\w1_13_fu_74_reg[24]_i_1_n_3 ,\w1_13_fu_74_reg[24]_i_1_n_4 ,\w1_13_fu_74_reg[24]_i_1_n_5 ,\w1_13_fu_74_reg[24]_i_1_n_6 ,\w1_13_fu_74_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_w1_reg[31]_0 ),
        .S({\w1_13_fu_74[24]_i_2_n_0 ,\w1_13_fu_74[24]_i_3_n_0 ,\w1_13_fu_74[24]_i_4_n_0 ,\w1_13_fu_74[24]_i_5_n_0 ,\w1_13_fu_74[24]_i_6_n_0 ,\w1_13_fu_74[24]_i_7_n_0 ,\w1_13_fu_74[24]_i_8_n_0 ,\w1_13_fu_74[24]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \w1_13_fu_74_reg[8]_i_1 
       (.CI(\w1_13_fu_74_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\w1_13_fu_74_reg[8]_i_1_n_0 ,\w1_13_fu_74_reg[8]_i_1_n_1 ,\w1_13_fu_74_reg[8]_i_1_n_2 ,\w1_13_fu_74_reg[8]_i_1_n_3 ,\w1_13_fu_74_reg[8]_i_1_n_4 ,\w1_13_fu_74_reg[8]_i_1_n_5 ,\w1_13_fu_74_reg[8]_i_1_n_6 ,\w1_13_fu_74_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\int_w1_reg[15]_0 ),
        .S({\w1_13_fu_74[8]_i_2_n_0 ,\w1_13_fu_74[8]_i_3_n_0 ,\w1_13_fu_74[8]_i_4_n_0 ,\w1_13_fu_74[8]_i_5_n_0 ,\w1_13_fu_74[8]_i_6_n_0 ,\w1_13_fu_74[8]_i_7_n_0 ,\w1_13_fu_74[8]_i_8_n_0 ,\w1_13_fu_74[8]_i_9_n_0 }));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[0]_i_1 
       (.I0(w2[0]),
        .I1(w2_2_fu_130_p2[0]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[10]_i_1 
       (.I0(w2[10]),
        .I1(w2_2_fu_130_p2[10]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[10]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[11]_i_1 
       (.I0(w2[11]),
        .I1(w2_2_fu_130_p2[11]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[11]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[12]_i_1 
       (.I0(w2[12]),
        .I1(w2_2_fu_130_p2[12]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[12]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[13]_i_1 
       (.I0(w2[13]),
        .I1(w2_2_fu_130_p2[13]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[13]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[14]_i_1 
       (.I0(w2[14]),
        .I1(w2_2_fu_130_p2[14]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[14]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[15]_i_1 
       (.I0(w2[15]),
        .I1(w2_2_fu_130_p2[15]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[15]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[16]_i_1 
       (.I0(w2[16]),
        .I1(w2_2_fu_130_p2[16]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[16]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[17]_i_1 
       (.I0(w2[17]),
        .I1(w2_2_fu_130_p2[17]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[17]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[18]_i_1 
       (.I0(w2[18]),
        .I1(w2_2_fu_130_p2[18]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[18]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[19]_i_1 
       (.I0(w2[19]),
        .I1(w2_2_fu_130_p2[19]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[1]_i_1 
       (.I0(w2[1]),
        .I1(w2_2_fu_130_p2[1]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[20]_i_1 
       (.I0(w2[20]),
        .I1(w2_2_fu_130_p2[20]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[21]_i_1 
       (.I0(w2[21]),
        .I1(w2_2_fu_130_p2[21]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[21]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[22]_i_1 
       (.I0(w2[22]),
        .I1(w2_2_fu_130_p2[22]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[22]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[23]_i_1 
       (.I0(w2[23]),
        .I1(w2_2_fu_130_p2[23]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[23]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[24]_i_1 
       (.I0(w2[24]),
        .I1(w2_2_fu_130_p2[24]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[24]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[25]_i_1 
       (.I0(w2[25]),
        .I1(w2_2_fu_130_p2[25]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[25]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[26]_i_1 
       (.I0(w2[26]),
        .I1(w2_2_fu_130_p2[26]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[26]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[27]_i_1 
       (.I0(w2[27]),
        .I1(w2_2_fu_130_p2[27]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[27]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[28]_i_1 
       (.I0(w2[28]),
        .I1(w2_2_fu_130_p2[28]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[28]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[29]_i_1 
       (.I0(w2[29]),
        .I1(w2_2_fu_130_p2[29]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[2]_i_1 
       (.I0(w2[2]),
        .I1(w2_2_fu_130_p2[2]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[2]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[30]_i_1 
       (.I0(w2[30]),
        .I1(w2_2_fu_130_p2[30]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[30]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[31]_i_2 
       (.I0(w2[31]),
        .I1(w2_2_fu_130_p2[31]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[3]_i_1 
       (.I0(w2[3]),
        .I1(w2_2_fu_130_p2[3]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[3]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[4]_i_1 
       (.I0(w2[4]),
        .I1(w2_2_fu_130_p2[4]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[4]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[5]_i_1 
       (.I0(w2[5]),
        .I1(w2_2_fu_130_p2[5]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[6]_i_1 
       (.I0(w2[6]),
        .I1(w2_2_fu_130_p2[6]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[7]_i_1 
       (.I0(w2[7]),
        .I1(w2_2_fu_130_p2[7]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[7]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[8]_i_1 
       (.I0(w2[8]),
        .I1(w2_2_fu_130_p2[8]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hACCCCCCC)) 
    \w2_12_fu_70[9]_i_1 
       (.I0(w2[9]),
        .I1(w2_2_fu_130_p2[9]),
        .I2(ap_start),
        .I3(\data_p2_reg[31] [0]),
        .I4(ap_loop_init),
        .O(D[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[4]_i_1 
       (.I0(s_axi_control_AWVALID),
        .I1(\FSM_onehot_wstate_reg[1]_0 ),
        .O(waddr));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(waddr),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_example_acc_flow_control_loop_pipe
   (ap_loop_init,
    E,
    S,
    D,
    ap_loop_init_reg_0,
    ap_clk,
    Q,
    ap_start,
    data_out_ap_ack_int_regslice,
    w1_13_fu_74_reg,
    \data_p2_reg[0] ,
    w2_2_fu_130_p2);
  output ap_loop_init;
  output [0:0]E;
  output [0:0]S;
  output [0:0]D;
  input ap_loop_init_reg_0;
  input ap_clk;
  input [1:0]Q;
  input ap_start;
  input data_out_ap_ack_int_regslice;
  input [0:0]w1_13_fu_74_reg;
  input [0:0]\data_p2_reg[0] ;
  input [0:0]w2_2_fu_130_p2;

  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]S;
  wire ap_clk;
  wire ap_loop_init;
  wire ap_loop_init_reg_0;
  wire ap_start;
  wire data_out_ap_ack_int_regslice;
  wire [0:0]\data_p2_reg[0] ;
  wire [0:0]w1_13_fu_74_reg;
  wire [0:0]w2_2_fu_130_p2;

  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_reg_0),
        .Q(ap_loop_init),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F0F0F0008877FF)) 
    \data_p2[0]_i_1 
       (.I0(ap_loop_init),
        .I1(Q[0]),
        .I2(w2_2_fu_130_p2),
        .I3(\data_p2_reg[0] ),
        .I4(w1_13_fu_74_reg),
        .I5(Q[1]),
        .O(D));
  LUT4 #(
    .INIT(16'h15D5)) 
    \w1_13_fu_74[0]_i_10 
       (.I0(w1_13_fu_74_reg),
        .I1(Q[0]),
        .I2(ap_loop_init),
        .I3(\data_p2_reg[0] ),
        .O(S));
  LUT5 #(
    .INIT(32'hFF800000)) 
    \w2_12_fu_70[31]_i_1 
       (.I0(ap_loop_init),
        .I1(Q[0]),
        .I2(ap_start),
        .I3(Q[1]),
        .I4(data_out_ap_ack_int_regslice),
        .O(E));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_example_acc_regslice_both
   (data_out_ap_ack_int_regslice,
    w2_2_fu_130_p2,
    data_out_ap_vld,
    ap_condition_196,
    i1_fu_660,
    ap_loop_init_reg,
    ap_ready_int,
    ap_ready,
    ap_done,
    D,
    i1_fu_66_reg_0_sp_1,
    data_out,
    SR,
    ap_clk,
    Q,
    data_out_ap_ack,
    \i1_fu_66_reg[1] ,
    ap_start,
    ap_loop_init,
    ap_rst_n,
    i1_fu_66_reg,
    \data_p1_reg[0]_0 ,
    w1_2_fu_115_p2,
    \data_p2_reg[31]_0 );
  output data_out_ap_ack_int_regslice;
  output [31:0]w2_2_fu_130_p2;
  output data_out_ap_vld;
  output ap_condition_196;
  output i1_fu_660;
  output ap_loop_init_reg;
  output ap_ready_int;
  output ap_ready;
  output ap_done;
  output [2:0]D;
  output i1_fu_66_reg_0_sp_1;
  output [31:0]data_out;
  input [0:0]SR;
  input ap_clk;
  input [31:0]Q;
  input data_out_ap_ack;
  input [2:0]\i1_fu_66_reg[1] ;
  input ap_start;
  input ap_loop_init;
  input ap_rst_n;
  input [4:0]i1_fu_66_reg;
  input [0:0]\data_p1_reg[0]_0 ;
  input [30:0]w1_2_fu_115_p2;
  input [31:0]\data_p2_reg[31]_0 ;

  wire [2:0]D;
  wire [31:0]Q;
  wire [0:0]SR;
  wire ack_in_t_i_1_n_0;
  wire ap_clk;
  wire ap_condition_196;
  wire ap_done;
  wire ap_loop_init;
  wire ap_loop_init_reg;
  wire ap_ready;
  wire ap_ready_int;
  wire ap_rst_n;
  wire ap_start;
  wire [31:0]data_out;
  wire data_out_ap_ack;
  wire data_out_ap_ack_int_regslice;
  wire data_out_ap_vld;
  wire \data_p1[0]_i_1_n_0 ;
  wire \data_p1[10]_i_1_n_0 ;
  wire \data_p1[11]_i_1_n_0 ;
  wire \data_p1[12]_i_1_n_0 ;
  wire \data_p1[13]_i_1_n_0 ;
  wire \data_p1[14]_i_1_n_0 ;
  wire \data_p1[15]_i_1_n_0 ;
  wire \data_p1[16]_i_1_n_0 ;
  wire \data_p1[17]_i_1_n_0 ;
  wire \data_p1[18]_i_1_n_0 ;
  wire \data_p1[19]_i_1_n_0 ;
  wire \data_p1[1]_i_1_n_0 ;
  wire \data_p1[20]_i_1_n_0 ;
  wire \data_p1[21]_i_1_n_0 ;
  wire \data_p1[22]_i_1_n_0 ;
  wire \data_p1[23]_i_1_n_0 ;
  wire \data_p1[24]_i_1_n_0 ;
  wire \data_p1[25]_i_1_n_0 ;
  wire \data_p1[26]_i_1_n_0 ;
  wire \data_p1[27]_i_1_n_0 ;
  wire \data_p1[28]_i_1_n_0 ;
  wire \data_p1[29]_i_1_n_0 ;
  wire \data_p1[2]_i_1_n_0 ;
  wire \data_p1[30]_i_1_n_0 ;
  wire \data_p1[31]_i_2_n_0 ;
  wire \data_p1[31]_i_5_n_0 ;
  wire \data_p1[3]_i_1_n_0 ;
  wire \data_p1[4]_i_1_n_0 ;
  wire \data_p1[5]_i_1_n_0 ;
  wire \data_p1[6]_i_1_n_0 ;
  wire \data_p1[7]_i_1_n_0 ;
  wire \data_p1[7]_i_3_n_0 ;
  wire \data_p1[8]_i_1_n_0 ;
  wire \data_p1[9]_i_1_n_0 ;
  wire [0:0]\data_p1_reg[0]_0 ;
  wire \data_p1_reg[15]_i_2_n_0 ;
  wire \data_p1_reg[15]_i_2_n_1 ;
  wire \data_p1_reg[15]_i_2_n_2 ;
  wire \data_p1_reg[15]_i_2_n_3 ;
  wire \data_p1_reg[15]_i_2_n_4 ;
  wire \data_p1_reg[15]_i_2_n_5 ;
  wire \data_p1_reg[15]_i_2_n_6 ;
  wire \data_p1_reg[15]_i_2_n_7 ;
  wire \data_p1_reg[23]_i_2_n_0 ;
  wire \data_p1_reg[23]_i_2_n_1 ;
  wire \data_p1_reg[23]_i_2_n_2 ;
  wire \data_p1_reg[23]_i_2_n_3 ;
  wire \data_p1_reg[23]_i_2_n_4 ;
  wire \data_p1_reg[23]_i_2_n_5 ;
  wire \data_p1_reg[23]_i_2_n_6 ;
  wire \data_p1_reg[23]_i_2_n_7 ;
  wire \data_p1_reg[31]_i_3_n_1 ;
  wire \data_p1_reg[31]_i_3_n_2 ;
  wire \data_p1_reg[31]_i_3_n_3 ;
  wire \data_p1_reg[31]_i_3_n_4 ;
  wire \data_p1_reg[31]_i_3_n_5 ;
  wire \data_p1_reg[31]_i_3_n_6 ;
  wire \data_p1_reg[31]_i_3_n_7 ;
  wire \data_p1_reg[7]_i_2_n_0 ;
  wire \data_p1_reg[7]_i_2_n_1 ;
  wire \data_p1_reg[7]_i_2_n_2 ;
  wire \data_p1_reg[7]_i_2_n_3 ;
  wire \data_p1_reg[7]_i_2_n_4 ;
  wire \data_p1_reg[7]_i_2_n_5 ;
  wire \data_p1_reg[7]_i_2_n_6 ;
  wire \data_p1_reg[7]_i_2_n_7 ;
  wire [31:0]data_p2;
  wire [31:0]\data_p2_reg[31]_0 ;
  wire i1_fu_660;
  wire [4:0]i1_fu_66_reg;
  wire [2:0]\i1_fu_66_reg[1] ;
  wire i1_fu_66_reg_0_sn_1;
  wire load_p1;
  wire load_p2;
  wire [1:0]next__0;
  wire [1:1]state;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire [1:0]state__0;
  wire [30:0]w1_2_fu_115_p2;
  wire [31:0]w2_2_fu_130_p2;
  wire [7:7]\NLW_data_p1_reg[31]_i_3_CO_UNCONNECTED ;

  assign i1_fu_66_reg_0_sp_1 = i1_fu_66_reg_0_sn_1;
  LUT6 #(
    .INIT(64'h0606060606020202)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(data_out_ap_ack),
        .I3(\i1_fu_66_reg[1] [1]),
        .I4(data_out_ap_ack_int_regslice),
        .I5(ap_condition_196),
        .O(next__0[0]));
  LUT6 #(
    .INIT(64'h4D4D4D1848184818)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(data_out_ap_ack),
        .I2(state__0[1]),
        .I3(ap_condition_196),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(data_out_ap_ack_int_regslice),
        .O(next__0[1]));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[0]),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "ZERO:00,TWO:01,ONE:10" *) 
  FDRE \FSM_sequential_state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(next__0[1]),
        .Q(state__0[1]),
        .R(SR));
  LUT6 #(
    .INIT(64'hCCCCFFCCCC04FFFF)) 
    ack_in_t_i_1
       (.I0(ap_condition_196),
        .I1(data_out_ap_ack_int_regslice),
        .I2(\i1_fu_66_reg[1] [1]),
        .I3(data_out_ap_ack),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(ack_in_t_i_1_n_0));
  FDRE ack_in_t_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ack_in_t_i_1_n_0),
        .Q(data_out_ap_ack_int_regslice),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h04545454)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(\i1_fu_66_reg[1] [1]),
        .I1(ap_ready_int),
        .I2(\i1_fu_66_reg[1] [0]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(ap_start),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hF580)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(data_out_ap_ack_int_regslice),
        .I1(ap_start),
        .I2(\i1_fu_66_reg[1] [0]),
        .I3(\i1_fu_66_reg[1] [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h4045)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\i1_fu_66_reg[1] [0]),
        .I1(data_out_ap_ack_int_regslice),
        .I2(\i1_fu_66_reg[1] [1]),
        .I3(ap_ready_int),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    ap_done_INST_0
       (.I0(i1_fu_66_reg[3]),
        .I1(i1_fu_66_reg[1]),
        .I2(i1_fu_66_reg[0]),
        .I3(i1_fu_66_reg[2]),
        .I4(i1_fu_66_reg[4]),
        .I5(ap_ready_int),
        .O(ap_done));
  LUT5 #(
    .INIT(32'h88008088)) 
    ap_done_INST_0_i_1
       (.I0(\i1_fu_66_reg[1] [2]),
        .I1(data_out_ap_ack_int_regslice),
        .I2(data_out_ap_ack),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(ap_ready_int));
  LUT4 #(
    .INIT(16'hFF4F)) 
    ap_loop_init_i_1
       (.I0(ap_ready_int),
        .I1(ap_loop_init),
        .I2(ap_rst_n),
        .I3(ap_ready),
        .O(ap_loop_init_reg));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    ap_ready_INST_0
       (.I0(ap_ready_int),
        .I1(i1_fu_66_reg[4]),
        .I2(i1_fu_66_reg[2]),
        .I3(i1_fu_66_reg[0]),
        .I4(i1_fu_66_reg[1]),
        .I5(i1_fu_66_reg[3]),
        .O(ap_ready));
  LUT6 #(
    .INIT(64'hAAAAAAAACC0F0F0F)) 
    \data_p1[0]_i_1 
       (.I0(data_p2[0]),
        .I1(w2_2_fu_130_p2[0]),
        .I2(\data_p1_reg[0]_0 ),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[10]_i_1 
       (.I0(data_p2[10]),
        .I1(w2_2_fu_130_p2[10]),
        .I2(w1_2_fu_115_p2[9]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[11]_i_1 
       (.I0(data_p2[11]),
        .I1(w2_2_fu_130_p2[11]),
        .I2(w1_2_fu_115_p2[10]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[12]_i_1 
       (.I0(data_p2[12]),
        .I1(w2_2_fu_130_p2[12]),
        .I2(w1_2_fu_115_p2[11]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[13]_i_1 
       (.I0(data_p2[13]),
        .I1(w2_2_fu_130_p2[13]),
        .I2(w1_2_fu_115_p2[12]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[14]_i_1 
       (.I0(data_p2[14]),
        .I1(w2_2_fu_130_p2[14]),
        .I2(w1_2_fu_115_p2[13]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[15]_i_1 
       (.I0(data_p2[15]),
        .I1(w2_2_fu_130_p2[15]),
        .I2(w1_2_fu_115_p2[14]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[16]_i_1 
       (.I0(data_p2[16]),
        .I1(w2_2_fu_130_p2[16]),
        .I2(w1_2_fu_115_p2[15]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[17]_i_1 
       (.I0(data_p2[17]),
        .I1(w2_2_fu_130_p2[17]),
        .I2(w1_2_fu_115_p2[16]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[18]_i_1 
       (.I0(data_p2[18]),
        .I1(w2_2_fu_130_p2[18]),
        .I2(w1_2_fu_115_p2[17]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[19]_i_1 
       (.I0(data_p2[19]),
        .I1(w2_2_fu_130_p2[19]),
        .I2(w1_2_fu_115_p2[18]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[1]_i_1 
       (.I0(data_p2[1]),
        .I1(w2_2_fu_130_p2[1]),
        .I2(w1_2_fu_115_p2[0]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[20]_i_1 
       (.I0(data_p2[20]),
        .I1(w2_2_fu_130_p2[20]),
        .I2(w1_2_fu_115_p2[19]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[21]_i_1 
       (.I0(data_p2[21]),
        .I1(w2_2_fu_130_p2[21]),
        .I2(w1_2_fu_115_p2[20]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[22]_i_1 
       (.I0(data_p2[22]),
        .I1(w2_2_fu_130_p2[22]),
        .I2(w1_2_fu_115_p2[21]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[23]_i_1 
       (.I0(data_p2[23]),
        .I1(w2_2_fu_130_p2[23]),
        .I2(w1_2_fu_115_p2[22]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[24]_i_1 
       (.I0(data_p2[24]),
        .I1(w2_2_fu_130_p2[24]),
        .I2(w1_2_fu_115_p2[23]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[25]_i_1 
       (.I0(data_p2[25]),
        .I1(w2_2_fu_130_p2[25]),
        .I2(w1_2_fu_115_p2[24]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[26]_i_1 
       (.I0(data_p2[26]),
        .I1(w2_2_fu_130_p2[26]),
        .I2(w1_2_fu_115_p2[25]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[27]_i_1 
       (.I0(data_p2[27]),
        .I1(w2_2_fu_130_p2[27]),
        .I2(w1_2_fu_115_p2[26]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[28]_i_1 
       (.I0(data_p2[28]),
        .I1(w2_2_fu_130_p2[28]),
        .I2(w1_2_fu_115_p2[27]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[29]_i_1 
       (.I0(data_p2[29]),
        .I1(w2_2_fu_130_p2[29]),
        .I2(w1_2_fu_115_p2[28]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[2]_i_1 
       (.I0(data_p2[2]),
        .I1(w2_2_fu_130_p2[2]),
        .I2(w1_2_fu_115_p2[1]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[30]_i_1 
       (.I0(data_p2[30]),
        .I1(w2_2_fu_130_p2[30]),
        .I2(w1_2_fu_115_p2[29]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7777722211111000)) 
    \data_p1[31]_i_1 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\i1_fu_66_reg[1] [1]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(ap_condition_196),
        .I5(data_out_ap_ack),
        .O(load_p1));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[31]_i_2 
       (.I0(data_p2[31]),
        .I1(w2_2_fu_130_p2[31]),
        .I2(w1_2_fu_115_p2[30]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \data_p1[31]_i_5 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\data_p1[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[3]_i_1 
       (.I0(data_p2[3]),
        .I1(w2_2_fu_130_p2[3]),
        .I2(w1_2_fu_115_p2[2]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[4]_i_1 
       (.I0(data_p2[4]),
        .I1(w2_2_fu_130_p2[4]),
        .I2(w1_2_fu_115_p2[3]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[5]_i_1 
       (.I0(data_p2[5]),
        .I1(w2_2_fu_130_p2[5]),
        .I2(w1_2_fu_115_p2[4]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[6]_i_1 
       (.I0(data_p2[6]),
        .I1(w2_2_fu_130_p2[6]),
        .I2(w1_2_fu_115_p2[5]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[7]_i_1 
       (.I0(data_p2[7]),
        .I1(w2_2_fu_130_p2[7]),
        .I2(w1_2_fu_115_p2[6]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_p1[7]_i_3 
       (.I0(Q[1]),
        .O(\data_p1[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[8]_i_1 
       (.I0(data_p2[8]),
        .I1(w2_2_fu_130_p2[8]),
        .I2(w1_2_fu_115_p2[7]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAACCF0F0F0)) 
    \data_p1[9]_i_1 
       (.I0(data_p2[9]),
        .I1(w2_2_fu_130_p2[9]),
        .I2(w1_2_fu_115_p2[8]),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(\data_p1[31]_i_5_n_0 ),
        .O(\data_p1[9]_i_1_n_0 ));
  FDRE \data_p1_reg[0] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[0]_i_1_n_0 ),
        .Q(data_out[0]),
        .R(1'b0));
  FDRE \data_p1_reg[10] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[10]_i_1_n_0 ),
        .Q(data_out[10]),
        .R(1'b0));
  FDRE \data_p1_reg[11] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[11]_i_1_n_0 ),
        .Q(data_out[11]),
        .R(1'b0));
  FDRE \data_p1_reg[12] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[12]_i_1_n_0 ),
        .Q(data_out[12]),
        .R(1'b0));
  FDRE \data_p1_reg[13] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[13]_i_1_n_0 ),
        .Q(data_out[13]),
        .R(1'b0));
  FDRE \data_p1_reg[14] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[14]_i_1_n_0 ),
        .Q(data_out[14]),
        .R(1'b0));
  FDRE \data_p1_reg[15] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[15]_i_1_n_0 ),
        .Q(data_out[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[15]_i_2 
       (.CI(\data_p1_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_p1_reg[15]_i_2_n_0 ,\data_p1_reg[15]_i_2_n_1 ,\data_p1_reg[15]_i_2_n_2 ,\data_p1_reg[15]_i_2_n_3 ,\data_p1_reg[15]_i_2_n_4 ,\data_p1_reg[15]_i_2_n_5 ,\data_p1_reg[15]_i_2_n_6 ,\data_p1_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(w2_2_fu_130_p2[15:8]),
        .S(Q[15:8]));
  FDRE \data_p1_reg[16] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[16]_i_1_n_0 ),
        .Q(data_out[16]),
        .R(1'b0));
  FDRE \data_p1_reg[17] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[17]_i_1_n_0 ),
        .Q(data_out[17]),
        .R(1'b0));
  FDRE \data_p1_reg[18] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[18]_i_1_n_0 ),
        .Q(data_out[18]),
        .R(1'b0));
  FDRE \data_p1_reg[19] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[19]_i_1_n_0 ),
        .Q(data_out[19]),
        .R(1'b0));
  FDRE \data_p1_reg[1] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[1]_i_1_n_0 ),
        .Q(data_out[1]),
        .R(1'b0));
  FDRE \data_p1_reg[20] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[20]_i_1_n_0 ),
        .Q(data_out[20]),
        .R(1'b0));
  FDRE \data_p1_reg[21] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[21]_i_1_n_0 ),
        .Q(data_out[21]),
        .R(1'b0));
  FDRE \data_p1_reg[22] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[22]_i_1_n_0 ),
        .Q(data_out[22]),
        .R(1'b0));
  FDRE \data_p1_reg[23] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[23]_i_1_n_0 ),
        .Q(data_out[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[23]_i_2 
       (.CI(\data_p1_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\data_p1_reg[23]_i_2_n_0 ,\data_p1_reg[23]_i_2_n_1 ,\data_p1_reg[23]_i_2_n_2 ,\data_p1_reg[23]_i_2_n_3 ,\data_p1_reg[23]_i_2_n_4 ,\data_p1_reg[23]_i_2_n_5 ,\data_p1_reg[23]_i_2_n_6 ,\data_p1_reg[23]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(w2_2_fu_130_p2[23:16]),
        .S(Q[23:16]));
  FDRE \data_p1_reg[24] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[24]_i_1_n_0 ),
        .Q(data_out[24]),
        .R(1'b0));
  FDRE \data_p1_reg[25] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[25]_i_1_n_0 ),
        .Q(data_out[25]),
        .R(1'b0));
  FDRE \data_p1_reg[26] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[26]_i_1_n_0 ),
        .Q(data_out[26]),
        .R(1'b0));
  FDRE \data_p1_reg[27] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[27]_i_1_n_0 ),
        .Q(data_out[27]),
        .R(1'b0));
  FDRE \data_p1_reg[28] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[28]_i_1_n_0 ),
        .Q(data_out[28]),
        .R(1'b0));
  FDRE \data_p1_reg[29] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[29]_i_1_n_0 ),
        .Q(data_out[29]),
        .R(1'b0));
  FDRE \data_p1_reg[2] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[2]_i_1_n_0 ),
        .Q(data_out[2]),
        .R(1'b0));
  FDRE \data_p1_reg[30] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[30]_i_1_n_0 ),
        .Q(data_out[30]),
        .R(1'b0));
  FDRE \data_p1_reg[31] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[31]_i_2_n_0 ),
        .Q(data_out[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[31]_i_3 
       (.CI(\data_p1_reg[23]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_data_p1_reg[31]_i_3_CO_UNCONNECTED [7],\data_p1_reg[31]_i_3_n_1 ,\data_p1_reg[31]_i_3_n_2 ,\data_p1_reg[31]_i_3_n_3 ,\data_p1_reg[31]_i_3_n_4 ,\data_p1_reg[31]_i_3_n_5 ,\data_p1_reg[31]_i_3_n_6 ,\data_p1_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(w2_2_fu_130_p2[31:24]),
        .S(Q[31:24]));
  FDRE \data_p1_reg[3] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[3]_i_1_n_0 ),
        .Q(data_out[3]),
        .R(1'b0));
  FDRE \data_p1_reg[4] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[4]_i_1_n_0 ),
        .Q(data_out[4]),
        .R(1'b0));
  FDRE \data_p1_reg[5] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[5]_i_1_n_0 ),
        .Q(data_out[5]),
        .R(1'b0));
  FDRE \data_p1_reg[6] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[6]_i_1_n_0 ),
        .Q(data_out[6]),
        .R(1'b0));
  FDRE \data_p1_reg[7] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[7]_i_1_n_0 ),
        .Q(data_out[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \data_p1_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\data_p1_reg[7]_i_2_n_0 ,\data_p1_reg[7]_i_2_n_1 ,\data_p1_reg[7]_i_2_n_2 ,\data_p1_reg[7]_i_2_n_3 ,\data_p1_reg[7]_i_2_n_4 ,\data_p1_reg[7]_i_2_n_5 ,\data_p1_reg[7]_i_2_n_6 ,\data_p1_reg[7]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,Q[1],1'b0}),
        .O(w2_2_fu_130_p2[7:0]),
        .S({Q[7:2],\data_p1[7]_i_3_n_0 ,Q[0]}));
  FDRE \data_p1_reg[8] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[8]_i_1_n_0 ),
        .Q(data_out[8]),
        .R(1'b0));
  FDRE \data_p1_reg[9] 
       (.C(ap_clk),
        .CE(load_p1),
        .D(\data_p1[9]_i_1_n_0 ),
        .Q(data_out[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF800)) 
    \data_p2[31]_i_1 
       (.I0(\i1_fu_66_reg[1] [0]),
        .I1(ap_start),
        .I2(\i1_fu_66_reg[1] [1]),
        .I3(data_out_ap_ack_int_regslice),
        .O(load_p2));
  FDRE \data_p2_reg[0] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [0]),
        .Q(data_p2[0]),
        .R(1'b0));
  FDRE \data_p2_reg[10] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [10]),
        .Q(data_p2[10]),
        .R(1'b0));
  FDRE \data_p2_reg[11] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [11]),
        .Q(data_p2[11]),
        .R(1'b0));
  FDRE \data_p2_reg[12] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [12]),
        .Q(data_p2[12]),
        .R(1'b0));
  FDRE \data_p2_reg[13] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [13]),
        .Q(data_p2[13]),
        .R(1'b0));
  FDRE \data_p2_reg[14] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [14]),
        .Q(data_p2[14]),
        .R(1'b0));
  FDRE \data_p2_reg[15] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [15]),
        .Q(data_p2[15]),
        .R(1'b0));
  FDRE \data_p2_reg[16] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [16]),
        .Q(data_p2[16]),
        .R(1'b0));
  FDRE \data_p2_reg[17] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [17]),
        .Q(data_p2[17]),
        .R(1'b0));
  FDRE \data_p2_reg[18] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [18]),
        .Q(data_p2[18]),
        .R(1'b0));
  FDRE \data_p2_reg[19] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [19]),
        .Q(data_p2[19]),
        .R(1'b0));
  FDRE \data_p2_reg[1] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [1]),
        .Q(data_p2[1]),
        .R(1'b0));
  FDRE \data_p2_reg[20] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [20]),
        .Q(data_p2[20]),
        .R(1'b0));
  FDRE \data_p2_reg[21] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [21]),
        .Q(data_p2[21]),
        .R(1'b0));
  FDRE \data_p2_reg[22] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [22]),
        .Q(data_p2[22]),
        .R(1'b0));
  FDRE \data_p2_reg[23] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [23]),
        .Q(data_p2[23]),
        .R(1'b0));
  FDRE \data_p2_reg[24] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [24]),
        .Q(data_p2[24]),
        .R(1'b0));
  FDRE \data_p2_reg[25] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [25]),
        .Q(data_p2[25]),
        .R(1'b0));
  FDRE \data_p2_reg[26] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [26]),
        .Q(data_p2[26]),
        .R(1'b0));
  FDRE \data_p2_reg[27] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [27]),
        .Q(data_p2[27]),
        .R(1'b0));
  FDRE \data_p2_reg[28] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [28]),
        .Q(data_p2[28]),
        .R(1'b0));
  FDRE \data_p2_reg[29] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [29]),
        .Q(data_p2[29]),
        .R(1'b0));
  FDRE \data_p2_reg[2] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [2]),
        .Q(data_p2[2]),
        .R(1'b0));
  FDRE \data_p2_reg[30] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [30]),
        .Q(data_p2[30]),
        .R(1'b0));
  FDRE \data_p2_reg[31] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [31]),
        .Q(data_p2[31]),
        .R(1'b0));
  FDRE \data_p2_reg[3] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [3]),
        .Q(data_p2[3]),
        .R(1'b0));
  FDRE \data_p2_reg[4] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [4]),
        .Q(data_p2[4]),
        .R(1'b0));
  FDRE \data_p2_reg[5] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [5]),
        .Q(data_p2[5]),
        .R(1'b0));
  FDRE \data_p2_reg[6] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [6]),
        .Q(data_p2[6]),
        .R(1'b0));
  FDRE \data_p2_reg[7] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [7]),
        .Q(data_p2[7]),
        .R(1'b0));
  FDRE \data_p2_reg[8] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [8]),
        .Q(data_p2[8]),
        .R(1'b0));
  FDRE \data_p2_reg[9] 
       (.C(ap_clk),
        .CE(load_p2),
        .D(\data_p2_reg[31]_0 [9]),
        .Q(data_p2[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0666666666666666)) 
    \i1_fu_66[0]_i_1 
       (.I0(i1_fu_66_reg[0]),
        .I1(ap_ready_int),
        .I2(ap_loop_init),
        .I3(\i1_fu_66_reg[1] [0]),
        .I4(ap_start),
        .I5(data_out_ap_ack_int_regslice),
        .O(i1_fu_66_reg_0_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \i1_fu_66[4]_i_1 
       (.I0(data_out_ap_ack_int_regslice),
        .I1(ap_start),
        .I2(\i1_fu_66_reg[1] [0]),
        .I3(ap_loop_init),
        .O(i1_fu_660));
  LUT6 #(
    .INIT(64'hFCCCFCCCFC4C4C4C)) 
    \state[0]_i_2 
       (.I0(data_out_ap_ack),
        .I1(data_out_ap_vld),
        .I2(state),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(ap_condition_196),
        .O(\state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAEAEAEFFFFFFFF)) 
    \state[1]_i_1 
       (.I0(data_out_ap_ack),
        .I1(state),
        .I2(ap_condition_196),
        .I3(data_out_ap_ack_int_regslice),
        .I4(\i1_fu_66_reg[1] [1]),
        .I5(data_out_ap_vld),
        .O(\state[1]_i_1_n_0 ));
  FDRE \state_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[0]_i_2_n_0 ),
        .Q(data_out_ap_vld),
        .R(SR));
  FDSE \state_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(state),
        .S(SR));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \w1_13_fu_74[0]_i_1 
       (.I0(\i1_fu_66_reg[1] [0]),
        .I1(ap_start),
        .I2(data_out_ap_ack_int_regslice),
        .O(ap_condition_196));
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
