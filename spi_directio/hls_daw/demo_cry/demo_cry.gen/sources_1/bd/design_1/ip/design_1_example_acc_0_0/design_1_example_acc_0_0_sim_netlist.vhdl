-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Feb 17 22:29:20 2025
-- Host        : LAPTOP-DP0OJSK0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_cry/demo_cry.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/design_1_example_acc_0_0_sim_netlist.vhdl
-- Design      : design_1_example_acc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0_example_acc_control_s_axi is
  port (
    O : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \int_w1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \int_w1_reg[23]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \int_w1_reg[31]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    w1_2_fu_115_p2 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \int_w1_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \ap_CS_fsm_reg[1]\ : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    w1_12_fu_70_reg : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_loop_init : in STD_LOGIC;
    \data_p2_reg[31]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_rst_n : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    w2_2_fu_130_p2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_start : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_control_s_axi : entity is "example_acc_control_s_axi";
end design_1_example_acc_0_0_example_acc_control_s_axi;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_sig_allocacmp_w1_12_load : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \data_p1_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \data_p1_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_6\ : STD_LOGIC;
  signal \data_p1_reg[24]_i_2_n_7\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_4\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_5\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_6\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_4_n_7\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \data_p1_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal int_w1 : STD_LOGIC;
  signal int_w10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^int_w1_reg[0]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal int_w2 : STD_LOGIC;
  signal int_w20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rdata : STD_LOGIC;
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  signal w1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \w1_12_fu_70[0]_i_3_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[0]_i_4_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[0]_i_5_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[0]_i_6_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[0]_i_7_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[0]_i_8_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[0]_i_9_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[16]_i_2_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[16]_i_3_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[16]_i_4_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[16]_i_5_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[16]_i_6_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[16]_i_7_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[16]_i_8_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[16]_i_9_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[24]_i_2_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[24]_i_3_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[24]_i_4_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[24]_i_5_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[24]_i_6_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[24]_i_7_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[24]_i_8_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[24]_i_9_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[8]_i_2_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[8]_i_3_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[8]_i_4_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[8]_i_5_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[8]_i_6_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[8]_i_7_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[8]_i_8_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70[8]_i_9_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \w1_12_fu_70_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^w1_2_fu_115_p2\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal w2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \NLW_data_p1_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_data_p1_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_w1_12_fu_70_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \data_p1_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \data_p1_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \data_p1_reg[31]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \data_p1_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \data_p2[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_p2[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_p2[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_p2[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_p2[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_p2[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_p2[16]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_p2[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_p2[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_p2[19]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_p2[20]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_p2[21]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_p2[22]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_p2[23]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_p2[24]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_p2[25]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_p2[26]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_p2[27]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_p2[28]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_p2[29]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_p2[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_p2[30]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_p2[31]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_p2[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_p2[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_p2[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_p2[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_p2[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_p2[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_p2[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_w1[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_w1[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_w1[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_w1[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_w1[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_w1[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_w1[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_w1[16]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_w1[17]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_w1[18]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_w1[19]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_w1[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_w1[20]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_w1[21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \int_w1[22]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_w1[23]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \int_w1[24]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \int_w1[25]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \int_w1[26]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \int_w1[27]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \int_w1[28]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \int_w1[29]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \int_w1[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_w1[30]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \int_w1[31]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \int_w1[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_w1[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_w1[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_w1[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_w1[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_w1[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_w1[9]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \int_w2[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_w2[10]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \int_w2[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \int_w2[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \int_w2[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \int_w2[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \int_w2[15]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \int_w2[16]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \int_w2[17]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \int_w2[18]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \int_w2[19]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \int_w2[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_w2[20]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \int_w2[21]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \int_w2[22]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \int_w2[23]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \int_w2[24]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \int_w2[25]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \int_w2[26]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \int_w2[27]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \int_w2[28]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \int_w2[29]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \int_w2[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_w2[30]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \int_w2[31]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \int_w2[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_w2[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_w2[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_w2[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \int_w2[7]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \int_w2[8]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \int_w2[9]_i_1\ : label is "soft_lutpair25";
  attribute ADDER_THRESHOLD of \w1_12_fu_70_reg[0]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \w1_12_fu_70_reg[16]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \w1_12_fu_70_reg[24]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \w1_12_fu_70_reg[8]_i_1\ : label is 16;
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  \int_w1_reg[0]_0\(0) <= \^int_w1_reg[0]_0\(0);
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
  w1_2_fu_115_p2(30 downto 0) <= \^w1_2_fu_115_p2\(30 downto 0);
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F747"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => \^s_axi_control_rvalid\,
      I3 => s_axi_control_RREADY,
      O => \FSM_onehot_rstate[1]_i_1_n_0\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_RREADY,
      I3 => \^s_axi_control_rvalid\,
      O => \FSM_onehot_rstate[2]_i_1_n_0\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_rstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_rstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[2]_i_1_n_0\,
      Q => \^s_axi_control_rvalid\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BFF8B"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_control_AWVALID,
      O => \FSM_onehot_wstate[1]_i_1_n_0\
    );
\FSM_onehot_wstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[2]_i_1_n_0\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => s_axi_control_BREADY,
      I3 => \^s_axi_control_bvalid\,
      O => \FSM_onehot_wstate[3]_i_1_n_0\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[2]_i_1_n_0\,
      Q => \^fsm_onehot_wstate_reg[2]_0\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[3]_i_1_n_0\,
      Q => \^s_axi_control_bvalid\,
      R => \^sr\(0)
    );
\__4/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_control_WVALID,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \waddr_reg_n_0_[4]\,
      O => int_w2
    );
\__5/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => s_axi_control_WVALID,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => \waddr_reg_n_0_[4]\,
      O => int_w1
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => \^q\(0),
      I1 => w1_12_fu_70_reg(0),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => \^int_w1_reg[0]_0\(0)
    );
\data_p1[16]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(9),
      I1 => w1_12_fu_70_reg(9),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(9)
    );
\data_p1[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(16),
      I1 => w1_12_fu_70_reg(16),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(16)
    );
\data_p1[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(15),
      I1 => w1_12_fu_70_reg(15),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(15)
    );
\data_p1[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(14),
      I1 => w1_12_fu_70_reg(14),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(14)
    );
\data_p1[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(13),
      I1 => w1_12_fu_70_reg(13),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(13)
    );
\data_p1[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(12),
      I1 => w1_12_fu_70_reg(12),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(12)
    );
\data_p1[16]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(11),
      I1 => w1_12_fu_70_reg(11),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(11)
    );
\data_p1[16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(10),
      I1 => w1_12_fu_70_reg(10),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(10)
    );
\data_p1[24]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(17),
      I1 => w1_12_fu_70_reg(17),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(17)
    );
\data_p1[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(24),
      I1 => w1_12_fu_70_reg(24),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(24)
    );
\data_p1[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(23),
      I1 => w1_12_fu_70_reg(23),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(23)
    );
\data_p1[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(22),
      I1 => w1_12_fu_70_reg(22),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(22)
    );
\data_p1[24]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(21),
      I1 => w1_12_fu_70_reg(21),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(21)
    );
\data_p1[24]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(20),
      I1 => w1_12_fu_70_reg(20),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(20)
    );
\data_p1[24]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(19),
      I1 => w1_12_fu_70_reg(19),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(19)
    );
\data_p1[24]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(18),
      I1 => w1_12_fu_70_reg(18),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(18)
    );
\data_p1[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(27),
      I1 => w1_12_fu_70_reg(27),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(27)
    );
\data_p1[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(26),
      I1 => w1_12_fu_70_reg(26),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(26)
    );
\data_p1[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(25),
      I1 => w1_12_fu_70_reg(25),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(25)
    );
\data_p1[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(31),
      I1 => w1_12_fu_70_reg(31),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(31)
    );
\data_p1[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(30),
      I1 => w1_12_fu_70_reg(30),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(30)
    );
\data_p1[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(29),
      I1 => w1_12_fu_70_reg(29),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(29)
    );
\data_p1[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(28),
      I1 => w1_12_fu_70_reg(28),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(28)
    );
\data_p1[8]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(1),
      I1 => w1_12_fu_70_reg(1),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(1)
    );
\data_p1[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(8),
      I1 => w1_12_fu_70_reg(8),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(8)
    );
\data_p1[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(7),
      I1 => w1_12_fu_70_reg(7),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(7)
    );
\data_p1[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(6),
      I1 => w1_12_fu_70_reg(6),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(6)
    );
\data_p1[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(5),
      I1 => w1_12_fu_70_reg(5),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(5)
    );
\data_p1[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(4),
      I1 => w1_12_fu_70_reg(4),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(4)
    );
\data_p1[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(3),
      I1 => w1_12_fu_70_reg(3),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(3)
    );
\data_p1[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ACCC"
    )
        port map (
      I0 => w1(2),
      I1 => w1_12_fu_70_reg(2),
      I2 => ap_loop_init,
      I3 => \data_p2_reg[31]\(0),
      O => ap_sig_allocacmp_w1_12_load(2)
    );
\data_p1_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \data_p1_reg[16]_i_2_n_0\,
      CO(6) => \data_p1_reg[16]_i_2_n_1\,
      CO(5) => \data_p1_reg[16]_i_2_n_2\,
      CO(4) => \data_p1_reg[16]_i_2_n_3\,
      CO(3) => \data_p1_reg[16]_i_2_n_4\,
      CO(2) => \data_p1_reg[16]_i_2_n_5\,
      CO(1) => \data_p1_reg[16]_i_2_n_6\,
      CO(0) => \data_p1_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \^w1_2_fu_115_p2\(15 downto 8),
      S(7 downto 0) => ap_sig_allocacmp_w1_12_load(16 downto 9)
    );
\data_p1_reg[24]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1_reg[16]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \data_p1_reg[24]_i_2_n_0\,
      CO(6) => \data_p1_reg[24]_i_2_n_1\,
      CO(5) => \data_p1_reg[24]_i_2_n_2\,
      CO(4) => \data_p1_reg[24]_i_2_n_3\,
      CO(3) => \data_p1_reg[24]_i_2_n_4\,
      CO(2) => \data_p1_reg[24]_i_2_n_5\,
      CO(1) => \data_p1_reg[24]_i_2_n_6\,
      CO(0) => \data_p1_reg[24]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \^w1_2_fu_115_p2\(23 downto 16),
      S(7 downto 0) => ap_sig_allocacmp_w1_12_load(24 downto 17)
    );
\data_p1_reg[31]_i_4\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1_reg[24]_i_2_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_data_p1_reg[31]_i_4_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \data_p1_reg[31]_i_4_n_2\,
      CO(4) => \data_p1_reg[31]_i_4_n_3\,
      CO(3) => \data_p1_reg[31]_i_4_n_4\,
      CO(2) => \data_p1_reg[31]_i_4_n_5\,
      CO(1) => \data_p1_reg[31]_i_4_n_6\,
      CO(0) => \data_p1_reg[31]_i_4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_data_p1_reg[31]_i_4_O_UNCONNECTED\(7),
      O(6 downto 0) => \^w1_2_fu_115_p2\(30 downto 24),
      S(7) => '0',
      S(6 downto 0) => ap_sig_allocacmp_w1_12_load(31 downto 25)
    );
\data_p1_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \^int_w1_reg[0]_0\(0),
      CI_TOP => '0',
      CO(7) => \data_p1_reg[8]_i_2_n_0\,
      CO(6) => \data_p1_reg[8]_i_2_n_1\,
      CO(5) => \data_p1_reg[8]_i_2_n_2\,
      CO(4) => \data_p1_reg[8]_i_2_n_3\,
      CO(3) => \data_p1_reg[8]_i_2_n_4\,
      CO(2) => \data_p1_reg[8]_i_2_n_5\,
      CO(1) => \data_p1_reg[8]_i_2_n_6\,
      CO(0) => \data_p1_reg[8]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \^w1_2_fu_115_p2\(7 downto 0),
      S(7 downto 0) => ap_sig_allocacmp_w1_12_load(8 downto 1)
    );
\data_p2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(10),
      I1 => \^w1_2_fu_115_p2\(9),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(9)
    );
\data_p2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(11),
      I1 => \^w1_2_fu_115_p2\(10),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(10)
    );
\data_p2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(12),
      I1 => \^w1_2_fu_115_p2\(11),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(11)
    );
\data_p2[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(13),
      I1 => \^w1_2_fu_115_p2\(12),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(12)
    );
\data_p2[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(14),
      I1 => \^w1_2_fu_115_p2\(13),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(13)
    );
\data_p2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(15),
      I1 => \^w1_2_fu_115_p2\(14),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(14)
    );
\data_p2[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(16),
      I1 => \^w1_2_fu_115_p2\(15),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(15)
    );
\data_p2[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(17),
      I1 => \^w1_2_fu_115_p2\(16),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(16)
    );
\data_p2[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(18),
      I1 => \^w1_2_fu_115_p2\(17),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(17)
    );
\data_p2[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(19),
      I1 => \^w1_2_fu_115_p2\(18),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(18)
    );
\data_p2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(1),
      I1 => \^w1_2_fu_115_p2\(0),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(0)
    );
\data_p2[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(20),
      I1 => \^w1_2_fu_115_p2\(19),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(19)
    );
\data_p2[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(21),
      I1 => \^w1_2_fu_115_p2\(20),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(20)
    );
\data_p2[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(22),
      I1 => \^w1_2_fu_115_p2\(21),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(21)
    );
\data_p2[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(23),
      I1 => \^w1_2_fu_115_p2\(22),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(22)
    );
\data_p2[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(24),
      I1 => \^w1_2_fu_115_p2\(23),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(23)
    );
\data_p2[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(25),
      I1 => \^w1_2_fu_115_p2\(24),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(24)
    );
\data_p2[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(26),
      I1 => \^w1_2_fu_115_p2\(25),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(25)
    );
\data_p2[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(27),
      I1 => \^w1_2_fu_115_p2\(26),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(26)
    );
\data_p2[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(28),
      I1 => \^w1_2_fu_115_p2\(27),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(27)
    );
\data_p2[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(29),
      I1 => \^w1_2_fu_115_p2\(28),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(28)
    );
\data_p2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(2),
      I1 => \^w1_2_fu_115_p2\(1),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(1)
    );
\data_p2[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(30),
      I1 => \^w1_2_fu_115_p2\(29),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(29)
    );
\data_p2[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(31),
      I1 => \^w1_2_fu_115_p2\(30),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(30)
    );
\data_p2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(3),
      I1 => \^w1_2_fu_115_p2\(2),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(2)
    );
\data_p2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(4),
      I1 => \^w1_2_fu_115_p2\(3),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(3)
    );
\data_p2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(5),
      I1 => \^w1_2_fu_115_p2\(4),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(4)
    );
\data_p2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(6),
      I1 => \^w1_2_fu_115_p2\(5),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(5)
    );
\data_p2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(7),
      I1 => \^w1_2_fu_115_p2\(6),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(6)
    );
\data_p2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(8),
      I1 => \^w1_2_fu_115_p2\(7),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(7)
    );
\data_p2[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => w2_2_fu_130_p2(9),
      I1 => \^w1_2_fu_115_p2\(8),
      I2 => \data_p2_reg[31]\(1),
      O => \ap_CS_fsm_reg[1]\(8)
    );
\int_w1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^q\(0),
      O => int_w10(0)
    );
\int_w1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => w1(10),
      O => int_w10(10)
    );
\int_w1[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => w1(11),
      O => int_w10(11)
    );
\int_w1[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => w1(12),
      O => int_w10(12)
    );
\int_w1[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => w1(13),
      O => int_w10(13)
    );
\int_w1[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => w1(14),
      O => int_w10(14)
    );
\int_w1[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => w1(15),
      O => int_w10(15)
    );
\int_w1[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => w1(16),
      O => int_w10(16)
    );
\int_w1[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => w1(17),
      O => int_w10(17)
    );
\int_w1[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => w1(18),
      O => int_w10(18)
    );
\int_w1[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => w1(19),
      O => int_w10(19)
    );
\int_w1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => w1(1),
      O => int_w10(1)
    );
\int_w1[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => w1(20),
      O => int_w10(20)
    );
\int_w1[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => w1(21),
      O => int_w10(21)
    );
\int_w1[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => w1(22),
      O => int_w10(22)
    );
\int_w1[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => w1(23),
      O => int_w10(23)
    );
\int_w1[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(24),
      I1 => s_axi_control_WSTRB(3),
      I2 => w1(24),
      O => int_w10(24)
    );
\int_w1[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(25),
      I1 => s_axi_control_WSTRB(3),
      I2 => w1(25),
      O => int_w10(25)
    );
\int_w1[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(26),
      I1 => s_axi_control_WSTRB(3),
      I2 => w1(26),
      O => int_w10(26)
    );
\int_w1[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(27),
      I1 => s_axi_control_WSTRB(3),
      I2 => w1(27),
      O => int_w10(27)
    );
\int_w1[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(28),
      I1 => s_axi_control_WSTRB(3),
      I2 => w1(28),
      O => int_w10(28)
    );
\int_w1[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(29),
      I1 => s_axi_control_WSTRB(3),
      I2 => w1(29),
      O => int_w10(29)
    );
\int_w1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => w1(2),
      O => int_w10(2)
    );
\int_w1[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(30),
      I1 => s_axi_control_WSTRB(3),
      I2 => w1(30),
      O => int_w10(30)
    );
\int_w1[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => w1(31),
      O => int_w10(31)
    );
\int_w1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => w1(3),
      O => int_w10(3)
    );
\int_w1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => w1(4),
      O => int_w10(4)
    );
\int_w1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => w1(5),
      O => int_w10(5)
    );
\int_w1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => w1(6),
      O => int_w10(6)
    );
\int_w1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => w1(7),
      O => int_w10(7)
    );
\int_w1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => w1(8),
      O => int_w10(8)
    );
\int_w1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => w1(9),
      O => int_w10(9)
    );
\int_w1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(0),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\int_w1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(10),
      Q => w1(10),
      R => \^sr\(0)
    );
\int_w1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(11),
      Q => w1(11),
      R => \^sr\(0)
    );
\int_w1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(12),
      Q => w1(12),
      R => \^sr\(0)
    );
\int_w1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(13),
      Q => w1(13),
      R => \^sr\(0)
    );
\int_w1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(14),
      Q => w1(14),
      R => \^sr\(0)
    );
\int_w1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(15),
      Q => w1(15),
      R => \^sr\(0)
    );
\int_w1_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(16),
      Q => w1(16),
      R => \^sr\(0)
    );
\int_w1_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(17),
      Q => w1(17),
      R => \^sr\(0)
    );
\int_w1_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(18),
      Q => w1(18),
      R => \^sr\(0)
    );
\int_w1_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(19),
      Q => w1(19),
      R => \^sr\(0)
    );
\int_w1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(1),
      Q => w1(1),
      R => \^sr\(0)
    );
\int_w1_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(20),
      Q => w1(20),
      R => \^sr\(0)
    );
\int_w1_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(21),
      Q => w1(21),
      R => \^sr\(0)
    );
\int_w1_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(22),
      Q => w1(22),
      R => \^sr\(0)
    );
\int_w1_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(23),
      Q => w1(23),
      R => \^sr\(0)
    );
\int_w1_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(24),
      Q => w1(24),
      R => \^sr\(0)
    );
\int_w1_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(25),
      Q => w1(25),
      R => \^sr\(0)
    );
\int_w1_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(26),
      Q => w1(26),
      R => \^sr\(0)
    );
\int_w1_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(27),
      Q => w1(27),
      R => \^sr\(0)
    );
\int_w1_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(28),
      Q => w1(28),
      R => \^sr\(0)
    );
\int_w1_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(29),
      Q => w1(29),
      R => \^sr\(0)
    );
\int_w1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(2),
      Q => w1(2),
      R => \^sr\(0)
    );
\int_w1_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(30),
      Q => w1(30),
      R => \^sr\(0)
    );
\int_w1_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(31),
      Q => w1(31),
      R => \^sr\(0)
    );
\int_w1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(3),
      Q => w1(3),
      R => \^sr\(0)
    );
\int_w1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(4),
      Q => w1(4),
      R => \^sr\(0)
    );
\int_w1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(5),
      Q => w1(5),
      R => \^sr\(0)
    );
\int_w1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(6),
      Q => w1(6),
      R => \^sr\(0)
    );
\int_w1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(7),
      Q => w1(7),
      R => \^sr\(0)
    );
\int_w1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(8),
      Q => w1(8),
      R => \^sr\(0)
    );
\int_w1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w1,
      D => int_w10(9),
      Q => w1(9),
      R => \^sr\(0)
    );
\int_w2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => w2(0),
      O => int_w20(0)
    );
\int_w2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => w2(10),
      O => int_w20(10)
    );
\int_w2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => w2(11),
      O => int_w20(11)
    );
\int_w2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => w2(12),
      O => int_w20(12)
    );
\int_w2[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => w2(13),
      O => int_w20(13)
    );
\int_w2[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => w2(14),
      O => int_w20(14)
    );
\int_w2[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => w2(15),
      O => int_w20(15)
    );
\int_w2[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(16),
      I1 => s_axi_control_WSTRB(2),
      I2 => w2(16),
      O => int_w20(16)
    );
\int_w2[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(17),
      I1 => s_axi_control_WSTRB(2),
      I2 => w2(17),
      O => int_w20(17)
    );
\int_w2[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(18),
      I1 => s_axi_control_WSTRB(2),
      I2 => w2(18),
      O => int_w20(18)
    );
\int_w2[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(19),
      I1 => s_axi_control_WSTRB(2),
      I2 => w2(19),
      O => int_w20(19)
    );
\int_w2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => w2(1),
      O => int_w20(1)
    );
\int_w2[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(20),
      I1 => s_axi_control_WSTRB(2),
      I2 => w2(20),
      O => int_w20(20)
    );
\int_w2[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(21),
      I1 => s_axi_control_WSTRB(2),
      I2 => w2(21),
      O => int_w20(21)
    );
\int_w2[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(22),
      I1 => s_axi_control_WSTRB(2),
      I2 => w2(22),
      O => int_w20(22)
    );
\int_w2[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(23),
      I1 => s_axi_control_WSTRB(2),
      I2 => w2(23),
      O => int_w20(23)
    );
\int_w2[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(24),
      I1 => s_axi_control_WSTRB(3),
      I2 => w2(24),
      O => int_w20(24)
    );
\int_w2[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(25),
      I1 => s_axi_control_WSTRB(3),
      I2 => w2(25),
      O => int_w20(25)
    );
\int_w2[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(26),
      I1 => s_axi_control_WSTRB(3),
      I2 => w2(26),
      O => int_w20(26)
    );
\int_w2[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(27),
      I1 => s_axi_control_WSTRB(3),
      I2 => w2(27),
      O => int_w20(27)
    );
\int_w2[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(28),
      I1 => s_axi_control_WSTRB(3),
      I2 => w2(28),
      O => int_w20(28)
    );
\int_w2[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(29),
      I1 => s_axi_control_WSTRB(3),
      I2 => w2(29),
      O => int_w20(29)
    );
\int_w2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => w2(2),
      O => int_w20(2)
    );
\int_w2[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(30),
      I1 => s_axi_control_WSTRB(3),
      I2 => w2(30),
      O => int_w20(30)
    );
\int_w2[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(31),
      I1 => s_axi_control_WSTRB(3),
      I2 => w2(31),
      O => int_w20(31)
    );
\int_w2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => w2(3),
      O => int_w20(3)
    );
\int_w2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => w2(4),
      O => int_w20(4)
    );
\int_w2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => w2(5),
      O => int_w20(5)
    );
\int_w2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => w2(6),
      O => int_w20(6)
    );
\int_w2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => w2(7),
      O => int_w20(7)
    );
\int_w2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => w2(8),
      O => int_w20(8)
    );
\int_w2[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => w2(9),
      O => int_w20(9)
    );
\int_w2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(0),
      Q => w2(0),
      R => \^sr\(0)
    );
\int_w2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(10),
      Q => w2(10),
      R => \^sr\(0)
    );
\int_w2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(11),
      Q => w2(11),
      R => \^sr\(0)
    );
\int_w2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(12),
      Q => w2(12),
      R => \^sr\(0)
    );
\int_w2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(13),
      Q => w2(13),
      R => \^sr\(0)
    );
\int_w2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(14),
      Q => w2(14),
      R => \^sr\(0)
    );
\int_w2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(15),
      Q => w2(15),
      R => \^sr\(0)
    );
\int_w2_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(16),
      Q => w2(16),
      R => \^sr\(0)
    );
\int_w2_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(17),
      Q => w2(17),
      R => \^sr\(0)
    );
\int_w2_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(18),
      Q => w2(18),
      R => \^sr\(0)
    );
\int_w2_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(19),
      Q => w2(19),
      R => \^sr\(0)
    );
\int_w2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(1),
      Q => w2(1),
      R => \^sr\(0)
    );
\int_w2_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(20),
      Q => w2(20),
      R => \^sr\(0)
    );
\int_w2_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(21),
      Q => w2(21),
      R => \^sr\(0)
    );
\int_w2_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(22),
      Q => w2(22),
      R => \^sr\(0)
    );
\int_w2_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(23),
      Q => w2(23),
      R => \^sr\(0)
    );
\int_w2_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(24),
      Q => w2(24),
      R => \^sr\(0)
    );
\int_w2_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(25),
      Q => w2(25),
      R => \^sr\(0)
    );
\int_w2_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(26),
      Q => w2(26),
      R => \^sr\(0)
    );
\int_w2_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(27),
      Q => w2(27),
      R => \^sr\(0)
    );
\int_w2_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(28),
      Q => w2(28),
      R => \^sr\(0)
    );
\int_w2_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(29),
      Q => w2(29),
      R => \^sr\(0)
    );
\int_w2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(2),
      Q => w2(2),
      R => \^sr\(0)
    );
\int_w2_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(30),
      Q => w2(30),
      R => \^sr\(0)
    );
\int_w2_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(31),
      Q => w2(31),
      R => \^sr\(0)
    );
\int_w2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(3),
      Q => w2(3),
      R => \^sr\(0)
    );
\int_w2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(4),
      Q => w2(4),
      R => \^sr\(0)
    );
\int_w2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(5),
      Q => w2(5),
      R => \^sr\(0)
    );
\int_w2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(6),
      Q => w2(6),
      R => \^sr\(0)
    );
\int_w2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(7),
      Q => w2(7),
      R => \^sr\(0)
    );
\int_w2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(8),
      Q => w2(8),
      R => \^sr\(0)
    );
\int_w2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_w2,
      D => int_w20(9),
      Q => w2(9),
      R => \^sr\(0)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(0),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(10),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(10),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[10]_i_1_n_0\
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(11),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(11),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[11]_i_1_n_0\
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(12),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(12),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[12]_i_1_n_0\
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(13),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(13),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[13]_i_1_n_0\
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(14),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(14),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[14]_i_1_n_0\
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(15),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(15),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[15]_i_1_n_0\
    );
\rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(16),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(16),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[16]_i_1_n_0\
    );
\rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(17),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(17),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[17]_i_1_n_0\
    );
\rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(18),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(18),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[18]_i_1_n_0\
    );
\rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(19),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(19),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[19]_i_1_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(1),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(1),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[1]_i_1_n_0\
    );
\rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(20),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(20),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[20]_i_1_n_0\
    );
\rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(21),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(21),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[21]_i_1_n_0\
    );
\rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(22),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(22),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[22]_i_1_n_0\
    );
\rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(23),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(23),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[23]_i_1_n_0\
    );
\rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(24),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(24),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[24]_i_1_n_0\
    );
\rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(25),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(25),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[25]_i_1_n_0\
    );
\rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(26),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(26),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[26]_i_1_n_0\
    );
\rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(27),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(27),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[27]_i_1_n_0\
    );
\rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(28),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(28),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[28]_i_1_n_0\
    );
\rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(29),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(29),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[29]_i_1_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(2),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(2),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[2]_i_1_n_0\
    );
\rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(30),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(30),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[30]_i_1_n_0\
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => s_axi_control_ARADDR(4),
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => rdata
    );
\rdata[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(31),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(31),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[31]_i_3_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(3),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(3),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[3]_i_1_n_0\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(4),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(4),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[4]_i_1_n_0\
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(5),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(5),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[5]_i_1_n_0\
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(6),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(6),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[6]_i_1_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(7),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(7),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(8),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(8),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[8]_i_1_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000E2"
    )
        port map (
      I0 => w1(9),
      I1 => s_axi_control_ARADDR(3),
      I2 => w2(9),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(0),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[9]_i_1_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[0]_i_1_n_0\,
      Q => s_axi_control_RDATA(0),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[10]_i_1_n_0\,
      Q => s_axi_control_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[11]_i_1_n_0\,
      Q => s_axi_control_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[12]_i_1_n_0\,
      Q => s_axi_control_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[13]_i_1_n_0\,
      Q => s_axi_control_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[14]_i_1_n_0\,
      Q => s_axi_control_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[15]_i_1_n_0\,
      Q => s_axi_control_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[16]_i_1_n_0\,
      Q => s_axi_control_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[17]_i_1_n_0\,
      Q => s_axi_control_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[18]_i_1_n_0\,
      Q => s_axi_control_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[19]_i_1_n_0\,
      Q => s_axi_control_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[1]_i_1_n_0\,
      Q => s_axi_control_RDATA(1),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[20]_i_1_n_0\,
      Q => s_axi_control_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[21]_i_1_n_0\,
      Q => s_axi_control_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[22]_i_1_n_0\,
      Q => s_axi_control_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[23]_i_1_n_0\,
      Q => s_axi_control_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[24]_i_1_n_0\,
      Q => s_axi_control_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[25]_i_1_n_0\,
      Q => s_axi_control_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[26]_i_1_n_0\,
      Q => s_axi_control_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[27]_i_1_n_0\,
      Q => s_axi_control_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[28]_i_1_n_0\,
      Q => s_axi_control_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[29]_i_1_n_0\,
      Q => s_axi_control_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[2]_i_1_n_0\,
      Q => s_axi_control_RDATA(2),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[30]_i_1_n_0\,
      Q => s_axi_control_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[31]_i_3_n_0\,
      Q => s_axi_control_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[3]_i_1_n_0\,
      Q => s_axi_control_RDATA(3),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[4]_i_1_n_0\,
      Q => s_axi_control_RDATA(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[5]_i_1_n_0\,
      Q => s_axi_control_RDATA(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[6]_i_1_n_0\,
      Q => s_axi_control_RDATA(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[7]_i_1_n_0\,
      Q => s_axi_control_RDATA(7),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[8]_i_1_n_0\,
      Q => s_axi_control_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => rdata,
      D => \rdata[9]_i_1_n_0\,
      Q => s_axi_control_RDATA(9),
      R => \rdata[31]_i_1_n_0\
    );
\state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\w1_12_fu_70[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(7),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(7),
      O => \w1_12_fu_70[0]_i_3_n_0\
    );
\w1_12_fu_70[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(6),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(6),
      O => \w1_12_fu_70[0]_i_4_n_0\
    );
\w1_12_fu_70[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(5),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(5),
      O => \w1_12_fu_70[0]_i_5_n_0\
    );
\w1_12_fu_70[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(4),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(4),
      O => \w1_12_fu_70[0]_i_6_n_0\
    );
\w1_12_fu_70[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(3),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(3),
      O => \w1_12_fu_70[0]_i_7_n_0\
    );
\w1_12_fu_70[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(2),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(2),
      O => \w1_12_fu_70[0]_i_8_n_0\
    );
\w1_12_fu_70[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(1),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(1),
      O => \w1_12_fu_70[0]_i_9_n_0\
    );
\w1_12_fu_70[16]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(23),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(23),
      O => \w1_12_fu_70[16]_i_2_n_0\
    );
\w1_12_fu_70[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(22),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(22),
      O => \w1_12_fu_70[16]_i_3_n_0\
    );
\w1_12_fu_70[16]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(21),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(21),
      O => \w1_12_fu_70[16]_i_4_n_0\
    );
\w1_12_fu_70[16]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(20),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(20),
      O => \w1_12_fu_70[16]_i_5_n_0\
    );
\w1_12_fu_70[16]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(19),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(19),
      O => \w1_12_fu_70[16]_i_6_n_0\
    );
\w1_12_fu_70[16]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(18),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(18),
      O => \w1_12_fu_70[16]_i_7_n_0\
    );
\w1_12_fu_70[16]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(17),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(17),
      O => \w1_12_fu_70[16]_i_8_n_0\
    );
\w1_12_fu_70[16]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(16),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(16),
      O => \w1_12_fu_70[16]_i_9_n_0\
    );
\w1_12_fu_70[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(31),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(31),
      O => \w1_12_fu_70[24]_i_2_n_0\
    );
\w1_12_fu_70[24]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(30),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(30),
      O => \w1_12_fu_70[24]_i_3_n_0\
    );
\w1_12_fu_70[24]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(29),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(29),
      O => \w1_12_fu_70[24]_i_4_n_0\
    );
\w1_12_fu_70[24]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(28),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(28),
      O => \w1_12_fu_70[24]_i_5_n_0\
    );
\w1_12_fu_70[24]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(27),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(27),
      O => \w1_12_fu_70[24]_i_6_n_0\
    );
\w1_12_fu_70[24]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(26),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(26),
      O => \w1_12_fu_70[24]_i_7_n_0\
    );
\w1_12_fu_70[24]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(25),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(25),
      O => \w1_12_fu_70[24]_i_8_n_0\
    );
\w1_12_fu_70[24]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(24),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(24),
      O => \w1_12_fu_70[24]_i_9_n_0\
    );
\w1_12_fu_70[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(15),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(15),
      O => \w1_12_fu_70[8]_i_2_n_0\
    );
\w1_12_fu_70[8]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(14),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(14),
      O => \w1_12_fu_70[8]_i_3_n_0\
    );
\w1_12_fu_70[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(13),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(13),
      O => \w1_12_fu_70[8]_i_4_n_0\
    );
\w1_12_fu_70[8]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(12),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(12),
      O => \w1_12_fu_70[8]_i_5_n_0\
    );
\w1_12_fu_70[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(11),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(11),
      O => \w1_12_fu_70[8]_i_6_n_0\
    );
\w1_12_fu_70[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(10),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(10),
      O => \w1_12_fu_70[8]_i_7_n_0\
    );
\w1_12_fu_70[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(9),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(9),
      O => \w1_12_fu_70[8]_i_8_n_0\
    );
\w1_12_fu_70[8]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => w1(8),
      I1 => ap_loop_init,
      I2 => \data_p2_reg[31]\(0),
      I3 => w1_12_fu_70_reg(8),
      O => \w1_12_fu_70[8]_i_9_n_0\
    );
\w1_12_fu_70_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \w1_12_fu_70_reg[0]_i_2_n_0\,
      CO(6) => \w1_12_fu_70_reg[0]_i_2_n_1\,
      CO(5) => \w1_12_fu_70_reg[0]_i_2_n_2\,
      CO(4) => \w1_12_fu_70_reg[0]_i_2_n_3\,
      CO(3) => \w1_12_fu_70_reg[0]_i_2_n_4\,
      CO(2) => \w1_12_fu_70_reg[0]_i_2_n_5\,
      CO(1) => \w1_12_fu_70_reg[0]_i_2_n_6\,
      CO(0) => \w1_12_fu_70_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7 downto 0) => O(7 downto 0),
      S(7) => \w1_12_fu_70[0]_i_3_n_0\,
      S(6) => \w1_12_fu_70[0]_i_4_n_0\,
      S(5) => \w1_12_fu_70[0]_i_5_n_0\,
      S(4) => \w1_12_fu_70[0]_i_6_n_0\,
      S(3) => \w1_12_fu_70[0]_i_7_n_0\,
      S(2) => \w1_12_fu_70[0]_i_8_n_0\,
      S(1) => \w1_12_fu_70[0]_i_9_n_0\,
      S(0) => S(0)
    );
\w1_12_fu_70_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \w1_12_fu_70_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \w1_12_fu_70_reg[16]_i_1_n_0\,
      CO(6) => \w1_12_fu_70_reg[16]_i_1_n_1\,
      CO(5) => \w1_12_fu_70_reg[16]_i_1_n_2\,
      CO(4) => \w1_12_fu_70_reg[16]_i_1_n_3\,
      CO(3) => \w1_12_fu_70_reg[16]_i_1_n_4\,
      CO(2) => \w1_12_fu_70_reg[16]_i_1_n_5\,
      CO(1) => \w1_12_fu_70_reg[16]_i_1_n_6\,
      CO(0) => \w1_12_fu_70_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \int_w1_reg[23]_0\(7 downto 0),
      S(7) => \w1_12_fu_70[16]_i_2_n_0\,
      S(6) => \w1_12_fu_70[16]_i_3_n_0\,
      S(5) => \w1_12_fu_70[16]_i_4_n_0\,
      S(4) => \w1_12_fu_70[16]_i_5_n_0\,
      S(3) => \w1_12_fu_70[16]_i_6_n_0\,
      S(2) => \w1_12_fu_70[16]_i_7_n_0\,
      S(1) => \w1_12_fu_70[16]_i_8_n_0\,
      S(0) => \w1_12_fu_70[16]_i_9_n_0\
    );
\w1_12_fu_70_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \w1_12_fu_70_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_w1_12_fu_70_reg[24]_i_1_CO_UNCONNECTED\(7),
      CO(6) => \w1_12_fu_70_reg[24]_i_1_n_1\,
      CO(5) => \w1_12_fu_70_reg[24]_i_1_n_2\,
      CO(4) => \w1_12_fu_70_reg[24]_i_1_n_3\,
      CO(3) => \w1_12_fu_70_reg[24]_i_1_n_4\,
      CO(2) => \w1_12_fu_70_reg[24]_i_1_n_5\,
      CO(1) => \w1_12_fu_70_reg[24]_i_1_n_6\,
      CO(0) => \w1_12_fu_70_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \int_w1_reg[31]_0\(7 downto 0),
      S(7) => \w1_12_fu_70[24]_i_2_n_0\,
      S(6) => \w1_12_fu_70[24]_i_3_n_0\,
      S(5) => \w1_12_fu_70[24]_i_4_n_0\,
      S(4) => \w1_12_fu_70[24]_i_5_n_0\,
      S(3) => \w1_12_fu_70[24]_i_6_n_0\,
      S(2) => \w1_12_fu_70[24]_i_7_n_0\,
      S(1) => \w1_12_fu_70[24]_i_8_n_0\,
      S(0) => \w1_12_fu_70[24]_i_9_n_0\
    );
\w1_12_fu_70_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \w1_12_fu_70_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \w1_12_fu_70_reg[8]_i_1_n_0\,
      CO(6) => \w1_12_fu_70_reg[8]_i_1_n_1\,
      CO(5) => \w1_12_fu_70_reg[8]_i_1_n_2\,
      CO(4) => \w1_12_fu_70_reg[8]_i_1_n_3\,
      CO(3) => \w1_12_fu_70_reg[8]_i_1_n_4\,
      CO(2) => \w1_12_fu_70_reg[8]_i_1_n_5\,
      CO(1) => \w1_12_fu_70_reg[8]_i_1_n_6\,
      CO(0) => \w1_12_fu_70_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \int_w1_reg[15]_0\(7 downto 0),
      S(7) => \w1_12_fu_70[8]_i_2_n_0\,
      S(6) => \w1_12_fu_70[8]_i_3_n_0\,
      S(5) => \w1_12_fu_70[8]_i_4_n_0\,
      S(4) => \w1_12_fu_70[8]_i_5_n_0\,
      S(3) => \w1_12_fu_70[8]_i_6_n_0\,
      S(2) => \w1_12_fu_70[8]_i_7_n_0\,
      S(1) => \w1_12_fu_70[8]_i_8_n_0\,
      S(0) => \w1_12_fu_70[8]_i_9_n_0\
    );
\w2_13_fu_74[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(0),
      I1 => w2_2_fu_130_p2(0),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(0)
    );
\w2_13_fu_74[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(10),
      I1 => w2_2_fu_130_p2(10),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(10)
    );
\w2_13_fu_74[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(11),
      I1 => w2_2_fu_130_p2(11),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(11)
    );
\w2_13_fu_74[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(12),
      I1 => w2_2_fu_130_p2(12),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(12)
    );
\w2_13_fu_74[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(13),
      I1 => w2_2_fu_130_p2(13),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(13)
    );
\w2_13_fu_74[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(14),
      I1 => w2_2_fu_130_p2(14),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(14)
    );
\w2_13_fu_74[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(15),
      I1 => w2_2_fu_130_p2(15),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(15)
    );
\w2_13_fu_74[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(16),
      I1 => w2_2_fu_130_p2(16),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(16)
    );
\w2_13_fu_74[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(17),
      I1 => w2_2_fu_130_p2(17),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(17)
    );
\w2_13_fu_74[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(18),
      I1 => w2_2_fu_130_p2(18),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(18)
    );
\w2_13_fu_74[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(19),
      I1 => w2_2_fu_130_p2(19),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(19)
    );
\w2_13_fu_74[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(1),
      I1 => w2_2_fu_130_p2(1),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(1)
    );
\w2_13_fu_74[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(20),
      I1 => w2_2_fu_130_p2(20),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(20)
    );
\w2_13_fu_74[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(21),
      I1 => w2_2_fu_130_p2(21),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(21)
    );
\w2_13_fu_74[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(22),
      I1 => w2_2_fu_130_p2(22),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(22)
    );
\w2_13_fu_74[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(23),
      I1 => w2_2_fu_130_p2(23),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(23)
    );
\w2_13_fu_74[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(24),
      I1 => w2_2_fu_130_p2(24),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(24)
    );
\w2_13_fu_74[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(25),
      I1 => w2_2_fu_130_p2(25),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(25)
    );
\w2_13_fu_74[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(26),
      I1 => w2_2_fu_130_p2(26),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(26)
    );
\w2_13_fu_74[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(27),
      I1 => w2_2_fu_130_p2(27),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(27)
    );
\w2_13_fu_74[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(28),
      I1 => w2_2_fu_130_p2(28),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(28)
    );
\w2_13_fu_74[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(29),
      I1 => w2_2_fu_130_p2(29),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(29)
    );
\w2_13_fu_74[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(2),
      I1 => w2_2_fu_130_p2(2),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(2)
    );
\w2_13_fu_74[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(30),
      I1 => w2_2_fu_130_p2(30),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(30)
    );
\w2_13_fu_74[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(31),
      I1 => w2_2_fu_130_p2(31),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(31)
    );
\w2_13_fu_74[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(3),
      I1 => w2_2_fu_130_p2(3),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(3)
    );
\w2_13_fu_74[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(4),
      I1 => w2_2_fu_130_p2(4),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(4)
    );
\w2_13_fu_74[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(5),
      I1 => w2_2_fu_130_p2(5),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(5)
    );
\w2_13_fu_74[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(6),
      I1 => w2_2_fu_130_p2(6),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(6)
    );
\w2_13_fu_74[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(7),
      I1 => w2_2_fu_130_p2(7),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(7)
    );
\w2_13_fu_74[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(8),
      I1 => w2_2_fu_130_p2(8),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(8)
    );
\w2_13_fu_74[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACCCCCCC"
    )
        port map (
      I0 => w2(9),
      I1 => w2_2_fu_130_p2(9),
      I2 => ap_start,
      I3 => \data_p2_reg[31]\(0),
      I4 => ap_loop_init,
      O => D(9)
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_AWVALID,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      O => waddr
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(0),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(1),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(2),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0_example_acc_flow_control_loop_pipe is
  port (
    ap_loop_init : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_loop_init_reg_0 : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC;
    data_out_ap_ack_int_regslice : in STD_LOGIC;
    w1_12_fu_70_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_p2_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    w2_2_fu_130_p2 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_flow_control_loop_pipe : entity is "example_acc_flow_control_loop_pipe";
end design_1_example_acc_0_0_example_acc_flow_control_loop_pipe;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_flow_control_loop_pipe is
  signal \^ap_loop_init\ : STD_LOGIC;
begin
  ap_loop_init <= \^ap_loop_init\;
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_reg_0,
      Q => \^ap_loop_init\,
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0008877FF"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => Q(0),
      I2 => w2_2_fu_130_p2(0),
      I3 => \data_p2_reg[0]\(0),
      I4 => w1_12_fu_70_reg(0),
      I5 => Q(1),
      O => D(0)
    );
\w1_12_fu_70[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"15D5"
    )
        port map (
      I0 => w1_12_fu_70_reg(0),
      I1 => Q(0),
      I2 => \^ap_loop_init\,
      I3 => \data_p2_reg[0]\(0),
      O => S(0)
    );
\w2_13_fu_74[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF800000"
    )
        port map (
      I0 => \^ap_loop_init\,
      I1 => Q(0),
      I2 => ap_start,
      I3 => Q(1),
      I4 => data_out_ap_ack_int_regslice,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0_example_acc_regslice_both is
  port (
    data_out_ap_ack_int_regslice : out STD_LOGIC;
    w2_2_fu_130_p2 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ap_vld : out STD_LOGIC;
    ap_condition_196 : out STD_LOGIC;
    i1_fu_660 : out STD_LOGIC;
    ap_loop_init_reg : out STD_LOGIC;
    ap_ready_int : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_done : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i1_fu_66_reg_0_sp_1 : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ap_ack : in STD_LOGIC;
    \i1_fu_66_reg[1]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_start : in STD_LOGIC;
    ap_loop_init : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    i1_fu_66_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \data_p1_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    w1_2_fu_115_p2 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \data_p2_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_regslice_both : entity is "example_acc_regslice_both";
end design_1_example_acc_0_0_example_acc_regslice_both;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_regslice_both is
  signal ack_in_t_i_1_n_0 : STD_LOGIC;
  signal \^ap_condition_196\ : STD_LOGIC;
  signal \^ap_ready\ : STD_LOGIC;
  signal \^ap_ready_int\ : STD_LOGIC;
  signal \^data_out_ap_ack_int_regslice\ : STD_LOGIC;
  signal \^data_out_ap_vld\ : STD_LOGIC;
  signal \data_p1[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1[31]_i_5_n_0\ : STD_LOGIC;
  signal \data_p1[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_p1[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \data_p1_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \data_p1_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[23]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[23]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[23]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[23]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1_reg[23]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1_reg[23]_i_2_n_6\ : STD_LOGIC;
  signal \data_p1_reg[23]_i_2_n_7\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \data_p1_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \data_p1_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_p1_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \data_p1_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \data_p1_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \data_p1_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \data_p1_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \data_p1_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \data_p1_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal data_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal i1_fu_66_reg_0_sn_1 : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal load_p2 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^w2_2_fu_130_p2\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_data_p1_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:00,TWO:01,ONE:10";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \ap_CS_fsm[2]_i_1\ : label is "soft_lutpair48";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \data_p1_reg[15]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \data_p1_reg[23]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \data_p1_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \data_p1_reg[7]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \i1_fu_66[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \w1_12_fu_70[0]_i_1\ : label is "soft_lutpair49";
begin
  ap_condition_196 <= \^ap_condition_196\;
  ap_ready <= \^ap_ready\;
  ap_ready_int <= \^ap_ready_int\;
  data_out_ap_ack_int_regslice <= \^data_out_ap_ack_int_regslice\;
  data_out_ap_vld <= \^data_out_ap_vld\;
  i1_fu_66_reg_0_sp_1 <= i1_fu_66_reg_0_sn_1;
  w2_2_fu_130_p2(31 downto 0) <= \^w2_2_fu_130_p2\(31 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606060606020202"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => data_out_ap_ack,
      I3 => \i1_fu_66_reg[1]\(1),
      I4 => \^data_out_ap_ack_int_regslice\,
      I5 => \^ap_condition_196\,
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D4D4D1848184818"
    )
        port map (
      I0 => \state__0\(0),
      I1 => data_out_ap_ack,
      I2 => \state__0\(1),
      I3 => \^ap_condition_196\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \^data_out_ap_ack_int_regslice\,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      R => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
ack_in_t_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCFFCCCC04FFFF"
    )
        port map (
      I0 => \^ap_condition_196\,
      I1 => \^data_out_ap_ack_int_regslice\,
      I2 => \i1_fu_66_reg[1]\(1),
      I3 => data_out_ap_ack,
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => ack_in_t_i_1_n_0
    );
ack_in_t_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_1_n_0,
      Q => \^data_out_ap_ack_int_regslice\,
      R => SR(0)
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04545454"
    )
        port map (
      I0 => \i1_fu_66_reg[1]\(1),
      I1 => \^ap_ready_int\,
      I2 => \i1_fu_66_reg[1]\(0),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => ap_start,
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F580"
    )
        port map (
      I0 => \^data_out_ap_ack_int_regslice\,
      I1 => ap_start,
      I2 => \i1_fu_66_reg[1]\(0),
      I3 => \i1_fu_66_reg[1]\(1),
      O => D(1)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4045"
    )
        port map (
      I0 => \i1_fu_66_reg[1]\(0),
      I1 => \^data_out_ap_ack_int_regslice\,
      I2 => \i1_fu_66_reg[1]\(1),
      I3 => \^ap_ready_int\,
      O => D(2)
    );
ap_done_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => i1_fu_66_reg(3),
      I1 => i1_fu_66_reg(1),
      I2 => i1_fu_66_reg(0),
      I3 => i1_fu_66_reg(2),
      I4 => i1_fu_66_reg(4),
      I5 => \^ap_ready_int\,
      O => ap_done
    );
ap_done_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88008088"
    )
        port map (
      I0 => \i1_fu_66_reg[1]\(2),
      I1 => \^data_out_ap_ack_int_regslice\,
      I2 => data_out_ap_ack,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => \^ap_ready_int\
    );
ap_loop_init_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \^ap_ready_int\,
      I1 => ap_loop_init,
      I2 => ap_rst_n,
      I3 => \^ap_ready\,
      O => ap_loop_init_reg
    );
ap_ready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000008000000"
    )
        port map (
      I0 => \^ap_ready_int\,
      I1 => i1_fu_66_reg(4),
      I2 => i1_fu_66_reg(2),
      I3 => i1_fu_66_reg(0),
      I4 => i1_fu_66_reg(1),
      I5 => i1_fu_66_reg(3),
      O => \^ap_ready\
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACC0F0F0F"
    )
        port map (
      I0 => data_p2(0),
      I1 => \^w2_2_fu_130_p2\(0),
      I2 => \data_p1_reg[0]_0\(0),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[0]_i_1_n_0\
    );
\data_p1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(10),
      I1 => \^w2_2_fu_130_p2\(10),
      I2 => w1_2_fu_115_p2(9),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[10]_i_1_n_0\
    );
\data_p1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(11),
      I1 => \^w2_2_fu_130_p2\(11),
      I2 => w1_2_fu_115_p2(10),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[11]_i_1_n_0\
    );
\data_p1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(12),
      I1 => \^w2_2_fu_130_p2\(12),
      I2 => w1_2_fu_115_p2(11),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[12]_i_1_n_0\
    );
\data_p1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(13),
      I1 => \^w2_2_fu_130_p2\(13),
      I2 => w1_2_fu_115_p2(12),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[13]_i_1_n_0\
    );
\data_p1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(14),
      I1 => \^w2_2_fu_130_p2\(14),
      I2 => w1_2_fu_115_p2(13),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[14]_i_1_n_0\
    );
\data_p1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(15),
      I1 => \^w2_2_fu_130_p2\(15),
      I2 => w1_2_fu_115_p2(14),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[15]_i_1_n_0\
    );
\data_p1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(16),
      I1 => \^w2_2_fu_130_p2\(16),
      I2 => w1_2_fu_115_p2(15),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[16]_i_1_n_0\
    );
\data_p1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(17),
      I1 => \^w2_2_fu_130_p2\(17),
      I2 => w1_2_fu_115_p2(16),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[17]_i_1_n_0\
    );
\data_p1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(18),
      I1 => \^w2_2_fu_130_p2\(18),
      I2 => w1_2_fu_115_p2(17),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[18]_i_1_n_0\
    );
\data_p1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(19),
      I1 => \^w2_2_fu_130_p2\(19),
      I2 => w1_2_fu_115_p2(18),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[19]_i_1_n_0\
    );
\data_p1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(1),
      I1 => \^w2_2_fu_130_p2\(1),
      I2 => w1_2_fu_115_p2(0),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[1]_i_1_n_0\
    );
\data_p1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(20),
      I1 => \^w2_2_fu_130_p2\(20),
      I2 => w1_2_fu_115_p2(19),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[20]_i_1_n_0\
    );
\data_p1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(21),
      I1 => \^w2_2_fu_130_p2\(21),
      I2 => w1_2_fu_115_p2(20),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[21]_i_1_n_0\
    );
\data_p1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(22),
      I1 => \^w2_2_fu_130_p2\(22),
      I2 => w1_2_fu_115_p2(21),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[22]_i_1_n_0\
    );
\data_p1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(23),
      I1 => \^w2_2_fu_130_p2\(23),
      I2 => w1_2_fu_115_p2(22),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[23]_i_1_n_0\
    );
\data_p1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(24),
      I1 => \^w2_2_fu_130_p2\(24),
      I2 => w1_2_fu_115_p2(23),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[24]_i_1_n_0\
    );
\data_p1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(25),
      I1 => \^w2_2_fu_130_p2\(25),
      I2 => w1_2_fu_115_p2(24),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[25]_i_1_n_0\
    );
\data_p1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(26),
      I1 => \^w2_2_fu_130_p2\(26),
      I2 => w1_2_fu_115_p2(25),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[26]_i_1_n_0\
    );
\data_p1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(27),
      I1 => \^w2_2_fu_130_p2\(27),
      I2 => w1_2_fu_115_p2(26),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[27]_i_1_n_0\
    );
\data_p1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(28),
      I1 => \^w2_2_fu_130_p2\(28),
      I2 => w1_2_fu_115_p2(27),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[28]_i_1_n_0\
    );
\data_p1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(29),
      I1 => \^w2_2_fu_130_p2\(29),
      I2 => w1_2_fu_115_p2(28),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[29]_i_1_n_0\
    );
\data_p1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(2),
      I1 => \^w2_2_fu_130_p2\(2),
      I2 => w1_2_fu_115_p2(1),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[2]_i_1_n_0\
    );
\data_p1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(30),
      I1 => \^w2_2_fu_130_p2\(30),
      I2 => w1_2_fu_115_p2(29),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[30]_i_1_n_0\
    );
\data_p1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777722211111000"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \i1_fu_66_reg[1]\(1),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \^ap_condition_196\,
      I5 => data_out_ap_ack,
      O => load_p1
    );
\data_p1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(31),
      I1 => \^w2_2_fu_130_p2\(31),
      I2 => w1_2_fu_115_p2(30),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[31]_i_2_n_0\
    );
\data_p1[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \data_p1[31]_i_5_n_0\
    );
\data_p1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(3),
      I1 => \^w2_2_fu_130_p2\(3),
      I2 => w1_2_fu_115_p2(2),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[3]_i_1_n_0\
    );
\data_p1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(4),
      I1 => \^w2_2_fu_130_p2\(4),
      I2 => w1_2_fu_115_p2(3),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[4]_i_1_n_0\
    );
\data_p1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(5),
      I1 => \^w2_2_fu_130_p2\(5),
      I2 => w1_2_fu_115_p2(4),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[5]_i_1_n_0\
    );
\data_p1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(6),
      I1 => \^w2_2_fu_130_p2\(6),
      I2 => w1_2_fu_115_p2(5),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[6]_i_1_n_0\
    );
\data_p1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(7),
      I1 => \^w2_2_fu_130_p2\(7),
      I2 => w1_2_fu_115_p2(6),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[7]_i_1_n_0\
    );
\data_p1[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      O => \data_p1[7]_i_3_n_0\
    );
\data_p1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(8),
      I1 => \^w2_2_fu_130_p2\(8),
      I2 => w1_2_fu_115_p2(7),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[8]_i_1_n_0\
    );
\data_p1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAACCF0F0F0"
    )
        port map (
      I0 => data_p2(9),
      I1 => \^w2_2_fu_130_p2\(9),
      I2 => w1_2_fu_115_p2(8),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \data_p1[31]_i_5_n_0\,
      O => \data_p1[9]_i_1_n_0\
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[0]_i_1_n_0\,
      Q => data_out(0),
      R => '0'
    );
\data_p1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[10]_i_1_n_0\,
      Q => data_out(10),
      R => '0'
    );
\data_p1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[11]_i_1_n_0\,
      Q => data_out(11),
      R => '0'
    );
\data_p1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[12]_i_1_n_0\,
      Q => data_out(12),
      R => '0'
    );
\data_p1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[13]_i_1_n_0\,
      Q => data_out(13),
      R => '0'
    );
\data_p1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[14]_i_1_n_0\,
      Q => data_out(14),
      R => '0'
    );
\data_p1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[15]_i_1_n_0\,
      Q => data_out(15),
      R => '0'
    );
\data_p1_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1_reg[7]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \data_p1_reg[15]_i_2_n_0\,
      CO(6) => \data_p1_reg[15]_i_2_n_1\,
      CO(5) => \data_p1_reg[15]_i_2_n_2\,
      CO(4) => \data_p1_reg[15]_i_2_n_3\,
      CO(3) => \data_p1_reg[15]_i_2_n_4\,
      CO(2) => \data_p1_reg[15]_i_2_n_5\,
      CO(1) => \data_p1_reg[15]_i_2_n_6\,
      CO(0) => \data_p1_reg[15]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \^w2_2_fu_130_p2\(15 downto 8),
      S(7 downto 0) => Q(15 downto 8)
    );
\data_p1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[16]_i_1_n_0\,
      Q => data_out(16),
      R => '0'
    );
\data_p1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[17]_i_1_n_0\,
      Q => data_out(17),
      R => '0'
    );
\data_p1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[18]_i_1_n_0\,
      Q => data_out(18),
      R => '0'
    );
\data_p1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[19]_i_1_n_0\,
      Q => data_out(19),
      R => '0'
    );
\data_p1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[1]_i_1_n_0\,
      Q => data_out(1),
      R => '0'
    );
\data_p1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[20]_i_1_n_0\,
      Q => data_out(20),
      R => '0'
    );
\data_p1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[21]_i_1_n_0\,
      Q => data_out(21),
      R => '0'
    );
\data_p1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[22]_i_1_n_0\,
      Q => data_out(22),
      R => '0'
    );
\data_p1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[23]_i_1_n_0\,
      Q => data_out(23),
      R => '0'
    );
\data_p1_reg[23]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1_reg[15]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \data_p1_reg[23]_i_2_n_0\,
      CO(6) => \data_p1_reg[23]_i_2_n_1\,
      CO(5) => \data_p1_reg[23]_i_2_n_2\,
      CO(4) => \data_p1_reg[23]_i_2_n_3\,
      CO(3) => \data_p1_reg[23]_i_2_n_4\,
      CO(2) => \data_p1_reg[23]_i_2_n_5\,
      CO(1) => \data_p1_reg[23]_i_2_n_6\,
      CO(0) => \data_p1_reg[23]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \^w2_2_fu_130_p2\(23 downto 16),
      S(7 downto 0) => Q(23 downto 16)
    );
\data_p1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[24]_i_1_n_0\,
      Q => data_out(24),
      R => '0'
    );
\data_p1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[25]_i_1_n_0\,
      Q => data_out(25),
      R => '0'
    );
\data_p1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[26]_i_1_n_0\,
      Q => data_out(26),
      R => '0'
    );
\data_p1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[27]_i_1_n_0\,
      Q => data_out(27),
      R => '0'
    );
\data_p1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[28]_i_1_n_0\,
      Q => data_out(28),
      R => '0'
    );
\data_p1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[29]_i_1_n_0\,
      Q => data_out(29),
      R => '0'
    );
\data_p1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[2]_i_1_n_0\,
      Q => data_out(2),
      R => '0'
    );
\data_p1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[30]_i_1_n_0\,
      Q => data_out(30),
      R => '0'
    );
\data_p1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[31]_i_2_n_0\,
      Q => data_out(31),
      R => '0'
    );
\data_p1_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \data_p1_reg[23]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_data_p1_reg[31]_i_3_CO_UNCONNECTED\(7),
      CO(6) => \data_p1_reg[31]_i_3_n_1\,
      CO(5) => \data_p1_reg[31]_i_3_n_2\,
      CO(4) => \data_p1_reg[31]_i_3_n_3\,
      CO(3) => \data_p1_reg[31]_i_3_n_4\,
      CO(2) => \data_p1_reg[31]_i_3_n_5\,
      CO(1) => \data_p1_reg[31]_i_3_n_6\,
      CO(0) => \data_p1_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \^w2_2_fu_130_p2\(31 downto 24),
      S(7 downto 0) => Q(31 downto 24)
    );
\data_p1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[3]_i_1_n_0\,
      Q => data_out(3),
      R => '0'
    );
\data_p1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[4]_i_1_n_0\,
      Q => data_out(4),
      R => '0'
    );
\data_p1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[5]_i_1_n_0\,
      Q => data_out(5),
      R => '0'
    );
\data_p1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[6]_i_1_n_0\,
      Q => data_out(6),
      R => '0'
    );
\data_p1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[7]_i_1_n_0\,
      Q => data_out(7),
      R => '0'
    );
\data_p1_reg[7]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \data_p1_reg[7]_i_2_n_0\,
      CO(6) => \data_p1_reg[7]_i_2_n_1\,
      CO(5) => \data_p1_reg[7]_i_2_n_2\,
      CO(4) => \data_p1_reg[7]_i_2_n_3\,
      CO(3) => \data_p1_reg[7]_i_2_n_4\,
      CO(2) => \data_p1_reg[7]_i_2_n_5\,
      CO(1) => \data_p1_reg[7]_i_2_n_6\,
      CO(0) => \data_p1_reg[7]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => Q(1),
      DI(0) => '0',
      O(7 downto 0) => \^w2_2_fu_130_p2\(7 downto 0),
      S(7 downto 2) => Q(7 downto 2),
      S(1) => \data_p1[7]_i_3_n_0\,
      S(0) => Q(0)
    );
\data_p1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[8]_i_1_n_0\,
      Q => data_out(8),
      R => '0'
    );
\data_p1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p1,
      D => \data_p1[9]_i_1_n_0\,
      Q => data_out(9),
      R => '0'
    );
\data_p2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F800"
    )
        port map (
      I0 => \i1_fu_66_reg[1]\(0),
      I1 => ap_start,
      I2 => \i1_fu_66_reg[1]\(1),
      I3 => \^data_out_ap_ack_int_regslice\,
      O => load_p2
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(0),
      Q => data_p2(0),
      R => '0'
    );
\data_p2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(10),
      Q => data_p2(10),
      R => '0'
    );
\data_p2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(11),
      Q => data_p2(11),
      R => '0'
    );
\data_p2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(12),
      Q => data_p2(12),
      R => '0'
    );
\data_p2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(13),
      Q => data_p2(13),
      R => '0'
    );
\data_p2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(14),
      Q => data_p2(14),
      R => '0'
    );
\data_p2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(15),
      Q => data_p2(15),
      R => '0'
    );
\data_p2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(16),
      Q => data_p2(16),
      R => '0'
    );
\data_p2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(17),
      Q => data_p2(17),
      R => '0'
    );
\data_p2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(18),
      Q => data_p2(18),
      R => '0'
    );
\data_p2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(19),
      Q => data_p2(19),
      R => '0'
    );
\data_p2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(1),
      Q => data_p2(1),
      R => '0'
    );
\data_p2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(20),
      Q => data_p2(20),
      R => '0'
    );
\data_p2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(21),
      Q => data_p2(21),
      R => '0'
    );
\data_p2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(22),
      Q => data_p2(22),
      R => '0'
    );
\data_p2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(23),
      Q => data_p2(23),
      R => '0'
    );
\data_p2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(24),
      Q => data_p2(24),
      R => '0'
    );
\data_p2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(25),
      Q => data_p2(25),
      R => '0'
    );
\data_p2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(26),
      Q => data_p2(26),
      R => '0'
    );
\data_p2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(27),
      Q => data_p2(27),
      R => '0'
    );
\data_p2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(28),
      Q => data_p2(28),
      R => '0'
    );
\data_p2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(29),
      Q => data_p2(29),
      R => '0'
    );
\data_p2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(2),
      Q => data_p2(2),
      R => '0'
    );
\data_p2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(30),
      Q => data_p2(30),
      R => '0'
    );
\data_p2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(31),
      Q => data_p2(31),
      R => '0'
    );
\data_p2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(3),
      Q => data_p2(3),
      R => '0'
    );
\data_p2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(4),
      Q => data_p2(4),
      R => '0'
    );
\data_p2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(5),
      Q => data_p2(5),
      R => '0'
    );
\data_p2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(6),
      Q => data_p2(6),
      R => '0'
    );
\data_p2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(7),
      Q => data_p2(7),
      R => '0'
    );
\data_p2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(8),
      Q => data_p2(8),
      R => '0'
    );
\data_p2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => load_p2,
      D => \data_p2_reg[31]_0\(9),
      Q => data_p2(9),
      R => '0'
    );
\i1_fu_66[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0666666666666666"
    )
        port map (
      I0 => i1_fu_66_reg(0),
      I1 => \^ap_ready_int\,
      I2 => ap_loop_init,
      I3 => \i1_fu_66_reg[1]\(0),
      I4 => ap_start,
      I5 => \^data_out_ap_ack_int_regslice\,
      O => i1_fu_66_reg_0_sn_1
    );
\i1_fu_66[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^data_out_ap_ack_int_regslice\,
      I1 => ap_start,
      I2 => \i1_fu_66_reg[1]\(0),
      I3 => ap_loop_init,
      O => i1_fu_660
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCCFCCCFC4C4C4C"
    )
        port map (
      I0 => data_out_ap_ack,
      I1 => \^data_out_ap_vld\,
      I2 => state(1),
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \^ap_condition_196\,
      O => \state[0]_i_2_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAEAEAEFFFFFFFF"
    )
        port map (
      I0 => data_out_ap_ack,
      I1 => state(1),
      I2 => \^ap_condition_196\,
      I3 => \^data_out_ap_ack_int_regslice\,
      I4 => \i1_fu_66_reg[1]\(1),
      I5 => \^data_out_ap_vld\,
      O => \state[1]_i_1_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_2_n_0\,
      Q => \^data_out_ap_vld\,
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      S => SR(0)
    );
\w1_12_fu_70[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \i1_fu_66_reg[1]\(0),
      I1 => ap_start,
      I2 => \^data_out_ap_ack_int_regslice\,
      O => \^ap_condition_196\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0_example_acc is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    data_out_ap_ack : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ap_vld : out STD_LOGIC;
    start_r : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of design_1_example_acc_0_0_example_acc : entity is 5;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of design_1_example_acc_0_0_example_acc : entity is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of design_1_example_acc_0_0_example_acc : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of design_1_example_acc_0_0_example_acc : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of design_1_example_acc_0_0_example_acc : entity is 4;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc : entity is "example_acc";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of design_1_example_acc_0_0_example_acc : entity is "3'b001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of design_1_example_acc_0_0_example_acc : entity is "3'b010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of design_1_example_acc_0_0_example_acc : entity is "3'b100";
  attribute hls_module : string;
  attribute hls_module of design_1_example_acc_0_0_example_acc : entity is "yes";
end design_1_example_acc_0_0_example_acc;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc is
  signal \<const0>\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_condition_196 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_ready_int : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_sig_allocacmp_w1_12_load : STD_LOGIC_VECTOR ( 0 to 0 );
  signal control_s_axi_U_n_0 : STD_LOGIC;
  signal control_s_axi_U_n_1 : STD_LOGIC;
  signal control_s_axi_U_n_10 : STD_LOGIC;
  signal control_s_axi_U_n_11 : STD_LOGIC;
  signal control_s_axi_U_n_12 : STD_LOGIC;
  signal control_s_axi_U_n_13 : STD_LOGIC;
  signal control_s_axi_U_n_14 : STD_LOGIC;
  signal control_s_axi_U_n_15 : STD_LOGIC;
  signal control_s_axi_U_n_16 : STD_LOGIC;
  signal control_s_axi_U_n_17 : STD_LOGIC;
  signal control_s_axi_U_n_18 : STD_LOGIC;
  signal control_s_axi_U_n_19 : STD_LOGIC;
  signal control_s_axi_U_n_2 : STD_LOGIC;
  signal control_s_axi_U_n_20 : STD_LOGIC;
  signal control_s_axi_U_n_21 : STD_LOGIC;
  signal control_s_axi_U_n_22 : STD_LOGIC;
  signal control_s_axi_U_n_23 : STD_LOGIC;
  signal control_s_axi_U_n_24 : STD_LOGIC;
  signal control_s_axi_U_n_25 : STD_LOGIC;
  signal control_s_axi_U_n_26 : STD_LOGIC;
  signal control_s_axi_U_n_27 : STD_LOGIC;
  signal control_s_axi_U_n_28 : STD_LOGIC;
  signal control_s_axi_U_n_29 : STD_LOGIC;
  signal control_s_axi_U_n_3 : STD_LOGIC;
  signal control_s_axi_U_n_30 : STD_LOGIC;
  signal control_s_axi_U_n_31 : STD_LOGIC;
  signal control_s_axi_U_n_4 : STD_LOGIC;
  signal control_s_axi_U_n_5 : STD_LOGIC;
  signal control_s_axi_U_n_6 : STD_LOGIC;
  signal control_s_axi_U_n_7 : STD_LOGIC;
  signal control_s_axi_U_n_8 : STD_LOGIC;
  signal control_s_axi_U_n_9 : STD_LOGIC;
  signal data_out_ap_ack_int_regslice : STD_LOGIC;
  signal data_out_int_regslice : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal flow_control_loop_pipe_U_n_1 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_2 : STD_LOGIC;
  signal i1_fu_660 : STD_LOGIC;
  signal \i1_fu_66[2]_i_1_n_0\ : STD_LOGIC;
  signal i1_fu_66_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal i_fu_145_p2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal regslice_both_data_out_U_n_36 : STD_LOGIC;
  signal regslice_both_data_out_U_n_40 : STD_LOGIC;
  signal regslice_both_data_out_U_n_41 : STD_LOGIC;
  signal regslice_both_data_out_U_n_42 : STD_LOGIC;
  signal regslice_both_data_out_U_n_43 : STD_LOGIC;
  signal w1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal w1_12_fu_70_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal w1_2_fu_115_p2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal w2_13_fu_74 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal w2_2_fu_130_p2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \i1_fu_66[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \i1_fu_66[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \i1_fu_66[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \i1_fu_66[4]_i_2\ : label is "soft_lutpair50";
begin
  ap_return(31) <= \<const0>\;
  ap_return(30) <= \<const0>\;
  ap_return(29) <= \<const0>\;
  ap_return(28) <= \<const0>\;
  ap_return(27) <= \<const0>\;
  ap_return(26) <= \<const0>\;
  ap_return(25) <= \<const0>\;
  ap_return(24) <= \<const0>\;
  ap_return(23) <= \<const0>\;
  ap_return(22) <= \<const0>\;
  ap_return(21) <= \<const0>\;
  ap_return(20) <= \<const0>\;
  ap_return(19) <= \<const0>\;
  ap_return(18) <= \<const0>\;
  ap_return(17) <= \<const0>\;
  ap_return(16) <= \<const0>\;
  ap_return(15) <= \<const0>\;
  ap_return(14) <= \<const0>\;
  ap_return(13) <= \<const0>\;
  ap_return(12) <= \<const0>\;
  ap_return(11) <= \<const0>\;
  ap_return(10) <= \<const0>\;
  ap_return(9) <= \<const0>\;
  ap_return(8) <= \<const0>\;
  ap_return(7) <= \<const0>\;
  ap_return(6) <= \<const0>\;
  ap_return(5) <= \<const0>\;
  ap_return(4) <= \<const0>\;
  ap_return(3) <= \<const0>\;
  ap_return(2) <= \<const0>\;
  ap_return(1) <= \<const0>\;
  ap_return(0) <= \<const0>\;
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_data_out_U_n_42,
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_data_out_U_n_41,
      Q => ap_CS_fsm_state2,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_data_out_U_n_40,
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
ap_idle_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \ap_CS_fsm_reg_n_0_[0]\,
      I1 => ap_start,
      O => ap_idle
    );
control_s_axi_U: entity work.design_1_example_acc_0_0_example_acc_control_s_axi
     port map (
      D(31 downto 0) => p_1_in(31 downto 0),
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      O(7) => control_s_axi_U_n_0,
      O(6) => control_s_axi_U_n_1,
      O(5) => control_s_axi_U_n_2,
      O(4) => control_s_axi_U_n_3,
      O(3) => control_s_axi_U_n_4,
      O(2) => control_s_axi_U_n_5,
      O(1) => control_s_axi_U_n_6,
      O(0) => control_s_axi_U_n_7,
      Q(0) => w1(0),
      S(0) => flow_control_loop_pipe_U_n_2,
      SR(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[1]\(30 downto 0) => data_out_int_regslice(31 downto 1),
      ap_clk => ap_clk,
      ap_loop_init => ap_loop_init,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      \data_p2_reg[31]\(1) => ap_CS_fsm_state2,
      \data_p2_reg[31]\(0) => \ap_CS_fsm_reg_n_0_[0]\,
      \int_w1_reg[0]_0\(0) => ap_sig_allocacmp_w1_12_load(0),
      \int_w1_reg[15]_0\(7) => control_s_axi_U_n_8,
      \int_w1_reg[15]_0\(6) => control_s_axi_U_n_9,
      \int_w1_reg[15]_0\(5) => control_s_axi_U_n_10,
      \int_w1_reg[15]_0\(4) => control_s_axi_U_n_11,
      \int_w1_reg[15]_0\(3) => control_s_axi_U_n_12,
      \int_w1_reg[15]_0\(2) => control_s_axi_U_n_13,
      \int_w1_reg[15]_0\(1) => control_s_axi_U_n_14,
      \int_w1_reg[15]_0\(0) => control_s_axi_U_n_15,
      \int_w1_reg[23]_0\(7) => control_s_axi_U_n_16,
      \int_w1_reg[23]_0\(6) => control_s_axi_U_n_17,
      \int_w1_reg[23]_0\(5) => control_s_axi_U_n_18,
      \int_w1_reg[23]_0\(4) => control_s_axi_U_n_19,
      \int_w1_reg[23]_0\(3) => control_s_axi_U_n_20,
      \int_w1_reg[23]_0\(2) => control_s_axi_U_n_21,
      \int_w1_reg[23]_0\(1) => control_s_axi_U_n_22,
      \int_w1_reg[23]_0\(0) => control_s_axi_U_n_23,
      \int_w1_reg[31]_0\(7) => control_s_axi_U_n_24,
      \int_w1_reg[31]_0\(6) => control_s_axi_U_n_25,
      \int_w1_reg[31]_0\(5) => control_s_axi_U_n_26,
      \int_w1_reg[31]_0\(4) => control_s_axi_U_n_27,
      \int_w1_reg[31]_0\(3) => control_s_axi_U_n_28,
      \int_w1_reg[31]_0\(2) => control_s_axi_U_n_29,
      \int_w1_reg[31]_0\(1) => control_s_axi_U_n_30,
      \int_w1_reg[31]_0\(0) => control_s_axi_U_n_31,
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(2 downto 0) => s_axi_control_AWADDR(4 downto 2),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID,
      w1_12_fu_70_reg(31 downto 0) => w1_12_fu_70_reg(31 downto 0),
      w1_2_fu_115_p2(30 downto 0) => w1_2_fu_115_p2(31 downto 1),
      w2_2_fu_130_p2(31 downto 0) => w2_2_fu_130_p2(31 downto 0)
    );
flow_control_loop_pipe_U: entity work.design_1_example_acc_0_0_example_acc_flow_control_loop_pipe
     port map (
      D(0) => data_out_int_regslice(0),
      E(0) => flow_control_loop_pipe_U_n_1,
      Q(1) => ap_CS_fsm_state2,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      S(0) => flow_control_loop_pipe_U_n_2,
      ap_clk => ap_clk,
      ap_loop_init => ap_loop_init,
      ap_loop_init_reg_0 => regslice_both_data_out_U_n_36,
      ap_start => ap_start,
      data_out_ap_ack_int_regslice => data_out_ap_ack_int_regslice,
      \data_p2_reg[0]\(0) => w1(0),
      w1_12_fu_70_reg(0) => w1_12_fu_70_reg(0),
      w2_2_fu_130_p2(0) => w2_2_fu_130_p2(0)
    );
\i1_fu_66[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i1_fu_66_reg(0),
      I1 => i1_fu_66_reg(1),
      O => i_fu_145_p2(1)
    );
\i1_fu_66[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => i1_fu_66_reg(0),
      I1 => i1_fu_66_reg(1),
      I2 => i1_fu_66_reg(2),
      O => \i1_fu_66[2]_i_1_n_0\
    );
\i1_fu_66[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => i1_fu_66_reg(1),
      I1 => i1_fu_66_reg(0),
      I2 => i1_fu_66_reg(2),
      I3 => i1_fu_66_reg(3),
      O => i_fu_145_p2(3)
    );
\i1_fu_66[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => i1_fu_66_reg(2),
      I1 => i1_fu_66_reg(0),
      I2 => i1_fu_66_reg(1),
      I3 => i1_fu_66_reg(3),
      I4 => i1_fu_66_reg(4),
      O => i_fu_145_p2(4)
    );
\i1_fu_66_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => regslice_both_data_out_U_n_43,
      Q => i1_fu_66_reg(0),
      R => '0'
    );
\i1_fu_66_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => i_fu_145_p2(1),
      Q => i1_fu_66_reg(1),
      R => i1_fu_660
    );
\i1_fu_66_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => \i1_fu_66[2]_i_1_n_0\,
      Q => i1_fu_66_reg(2),
      R => i1_fu_660
    );
\i1_fu_66_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => i_fu_145_p2(3),
      Q => i1_fu_66_reg(3),
      R => i1_fu_660
    );
\i1_fu_66_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_ready_int,
      D => i_fu_145_p2(4),
      Q => i1_fu_66_reg(4),
      R => i1_fu_660
    );
regslice_both_data_out_U: entity work.design_1_example_acc_0_0_example_acc_regslice_both
     port map (
      D(2) => regslice_both_data_out_U_n_40,
      D(1) => regslice_both_data_out_U_n_41,
      D(0) => regslice_both_data_out_U_n_42,
      Q(31 downto 0) => w2_13_fu_74(31 downto 0),
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_condition_196 => ap_condition_196,
      ap_done => ap_done,
      ap_loop_init => ap_loop_init,
      ap_loop_init_reg => regslice_both_data_out_U_n_36,
      ap_ready => ap_ready,
      ap_ready_int => ap_ready_int,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      data_out(31 downto 0) => data_out(31 downto 0),
      data_out_ap_ack => data_out_ap_ack,
      data_out_ap_ack_int_regslice => data_out_ap_ack_int_regslice,
      data_out_ap_vld => data_out_ap_vld,
      \data_p1_reg[0]_0\(0) => ap_sig_allocacmp_w1_12_load(0),
      \data_p2_reg[31]_0\(31 downto 0) => data_out_int_regslice(31 downto 0),
      i1_fu_660 => i1_fu_660,
      i1_fu_66_reg(4 downto 0) => i1_fu_66_reg(4 downto 0),
      \i1_fu_66_reg[1]\(2) => ap_CS_fsm_state3,
      \i1_fu_66_reg[1]\(1) => ap_CS_fsm_state2,
      \i1_fu_66_reg[1]\(0) => \ap_CS_fsm_reg_n_0_[0]\,
      i1_fu_66_reg_0_sp_1 => regslice_both_data_out_U_n_43,
      w1_2_fu_115_p2(30 downto 0) => w1_2_fu_115_p2(31 downto 1),
      w2_2_fu_130_p2(31 downto 0) => w2_2_fu_130_p2(31 downto 0)
    );
\w1_12_fu_70_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_7,
      Q => w1_12_fu_70_reg(0),
      R => '0'
    );
\w1_12_fu_70_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_13,
      Q => w1_12_fu_70_reg(10),
      R => '0'
    );
\w1_12_fu_70_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_12,
      Q => w1_12_fu_70_reg(11),
      R => '0'
    );
\w1_12_fu_70_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_11,
      Q => w1_12_fu_70_reg(12),
      R => '0'
    );
\w1_12_fu_70_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_10,
      Q => w1_12_fu_70_reg(13),
      R => '0'
    );
\w1_12_fu_70_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_9,
      Q => w1_12_fu_70_reg(14),
      R => '0'
    );
\w1_12_fu_70_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_8,
      Q => w1_12_fu_70_reg(15),
      R => '0'
    );
\w1_12_fu_70_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_23,
      Q => w1_12_fu_70_reg(16),
      R => '0'
    );
\w1_12_fu_70_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_22,
      Q => w1_12_fu_70_reg(17),
      R => '0'
    );
\w1_12_fu_70_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_21,
      Q => w1_12_fu_70_reg(18),
      R => '0'
    );
\w1_12_fu_70_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_20,
      Q => w1_12_fu_70_reg(19),
      R => '0'
    );
\w1_12_fu_70_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_6,
      Q => w1_12_fu_70_reg(1),
      R => '0'
    );
\w1_12_fu_70_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_19,
      Q => w1_12_fu_70_reg(20),
      R => '0'
    );
\w1_12_fu_70_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_18,
      Q => w1_12_fu_70_reg(21),
      R => '0'
    );
\w1_12_fu_70_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_17,
      Q => w1_12_fu_70_reg(22),
      R => '0'
    );
\w1_12_fu_70_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_16,
      Q => w1_12_fu_70_reg(23),
      R => '0'
    );
\w1_12_fu_70_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_31,
      Q => w1_12_fu_70_reg(24),
      R => '0'
    );
\w1_12_fu_70_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_30,
      Q => w1_12_fu_70_reg(25),
      R => '0'
    );
\w1_12_fu_70_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_29,
      Q => w1_12_fu_70_reg(26),
      R => '0'
    );
\w1_12_fu_70_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_28,
      Q => w1_12_fu_70_reg(27),
      R => '0'
    );
\w1_12_fu_70_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_27,
      Q => w1_12_fu_70_reg(28),
      R => '0'
    );
\w1_12_fu_70_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_26,
      Q => w1_12_fu_70_reg(29),
      R => '0'
    );
\w1_12_fu_70_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_5,
      Q => w1_12_fu_70_reg(2),
      R => '0'
    );
\w1_12_fu_70_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_25,
      Q => w1_12_fu_70_reg(30),
      R => '0'
    );
\w1_12_fu_70_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_24,
      Q => w1_12_fu_70_reg(31),
      R => '0'
    );
\w1_12_fu_70_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_4,
      Q => w1_12_fu_70_reg(3),
      R => '0'
    );
\w1_12_fu_70_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_3,
      Q => w1_12_fu_70_reg(4),
      R => '0'
    );
\w1_12_fu_70_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_2,
      Q => w1_12_fu_70_reg(5),
      R => '0'
    );
\w1_12_fu_70_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_1,
      Q => w1_12_fu_70_reg(6),
      R => '0'
    );
\w1_12_fu_70_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_0,
      Q => w1_12_fu_70_reg(7),
      R => '0'
    );
\w1_12_fu_70_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_15,
      Q => w1_12_fu_70_reg(8),
      R => '0'
    );
\w1_12_fu_70_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => ap_condition_196,
      D => control_s_axi_U_n_14,
      Q => w1_12_fu_70_reg(9),
      R => '0'
    );
\w2_13_fu_74_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(0),
      Q => w2_13_fu_74(0),
      R => '0'
    );
\w2_13_fu_74_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(10),
      Q => w2_13_fu_74(10),
      R => '0'
    );
\w2_13_fu_74_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(11),
      Q => w2_13_fu_74(11),
      R => '0'
    );
\w2_13_fu_74_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(12),
      Q => w2_13_fu_74(12),
      R => '0'
    );
\w2_13_fu_74_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(13),
      Q => w2_13_fu_74(13),
      R => '0'
    );
\w2_13_fu_74_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(14),
      Q => w2_13_fu_74(14),
      R => '0'
    );
\w2_13_fu_74_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(15),
      Q => w2_13_fu_74(15),
      R => '0'
    );
\w2_13_fu_74_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(16),
      Q => w2_13_fu_74(16),
      R => '0'
    );
\w2_13_fu_74_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(17),
      Q => w2_13_fu_74(17),
      R => '0'
    );
\w2_13_fu_74_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(18),
      Q => w2_13_fu_74(18),
      R => '0'
    );
\w2_13_fu_74_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(19),
      Q => w2_13_fu_74(19),
      R => '0'
    );
\w2_13_fu_74_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(1),
      Q => w2_13_fu_74(1),
      R => '0'
    );
\w2_13_fu_74_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(20),
      Q => w2_13_fu_74(20),
      R => '0'
    );
\w2_13_fu_74_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(21),
      Q => w2_13_fu_74(21),
      R => '0'
    );
\w2_13_fu_74_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(22),
      Q => w2_13_fu_74(22),
      R => '0'
    );
\w2_13_fu_74_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(23),
      Q => w2_13_fu_74(23),
      R => '0'
    );
\w2_13_fu_74_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(24),
      Q => w2_13_fu_74(24),
      R => '0'
    );
\w2_13_fu_74_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(25),
      Q => w2_13_fu_74(25),
      R => '0'
    );
\w2_13_fu_74_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(26),
      Q => w2_13_fu_74(26),
      R => '0'
    );
\w2_13_fu_74_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(27),
      Q => w2_13_fu_74(27),
      R => '0'
    );
\w2_13_fu_74_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(28),
      Q => w2_13_fu_74(28),
      R => '0'
    );
\w2_13_fu_74_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(29),
      Q => w2_13_fu_74(29),
      R => '0'
    );
\w2_13_fu_74_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(2),
      Q => w2_13_fu_74(2),
      R => '0'
    );
\w2_13_fu_74_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(30),
      Q => w2_13_fu_74(30),
      R => '0'
    );
\w2_13_fu_74_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(31),
      Q => w2_13_fu_74(31),
      R => '0'
    );
\w2_13_fu_74_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(3),
      Q => w2_13_fu_74(3),
      R => '0'
    );
\w2_13_fu_74_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(4),
      Q => w2_13_fu_74(4),
      R => '0'
    );
\w2_13_fu_74_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(5),
      Q => w2_13_fu_74(5),
      R => '0'
    );
\w2_13_fu_74_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(6),
      Q => w2_13_fu_74(6),
      R => '0'
    );
\w2_13_fu_74_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(7),
      Q => w2_13_fu_74(7),
      R => '0'
    );
\w2_13_fu_74_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(8),
      Q => w2_13_fu_74(8),
      R => '0'
    );
\w2_13_fu_74_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => flow_control_loop_pipe_U_n_1,
      D => p_1_in(9),
      Q => w2_13_fu_74(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0 is
  port (
    data_out_ap_ack : in STD_LOGIC;
    data_out_ap_vld : out STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    start_r : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_example_acc_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_example_acc_0_0 : entity is "design_1_example_acc_0_0,example_acc,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_example_acc_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_example_acc_0_0 : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_example_acc_0_0 : entity is "example_acc,Vivado 2024.1";
  attribute hls_module : string;
  attribute hls_module of design_1_example_acc_0_0 : entity is "yes";
end design_1_example_acc_0_0;

architecture STRUCTURE of design_1_example_acc_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_ap_return_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S_AXI_CONTROL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CONTROL_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_CONTROL_DATA_WIDTH : integer;
  attribute C_S_AXI_CONTROL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CONTROL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute SDX_KERNEL : string;
  attribute SDX_KERNEL of inst : label is "true";
  attribute SDX_KERNEL_SYNTH_INST : string;
  attribute SDX_KERNEL_SYNTH_INST of inst : label is "inst";
  attribute SDX_KERNEL_TYPE : string;
  attribute SDX_KERNEL_TYPE of inst : label is "hls";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "3'b001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "3'b010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "3'b100";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_done : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done";
  attribute X_INTERFACE_INFO of ap_idle : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle";
  attribute X_INTERFACE_INFO of ap_ready : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_start : signal is "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start";
  attribute X_INTERFACE_INFO of s_axi_control_ARREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY";
  attribute X_INTERFACE_INFO of s_axi_control_ARVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID";
  attribute X_INTERFACE_INFO of s_axi_control_AWREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY";
  attribute X_INTERFACE_INFO of s_axi_control_AWVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID";
  attribute X_INTERFACE_INFO of s_axi_control_BREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BREADY";
  attribute X_INTERFACE_INFO of s_axi_control_BVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BVALID";
  attribute X_INTERFACE_INFO of s_axi_control_RREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RREADY";
  attribute X_INTERFACE_INFO of s_axi_control_RVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RVALID";
  attribute X_INTERFACE_INFO of s_axi_control_WREADY : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WREADY";
  attribute X_INTERFACE_INFO of s_axi_control_WVALID : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WVALID";
  attribute X_INTERFACE_PARAMETER of s_axi_control_WVALID : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of start_r : signal is "xilinx.com:signal:data:1.0 start_r DATA";
  attribute X_INTERFACE_PARAMETER of start_r : signal is "XIL_INTERFACENAME start_r, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of ap_return : signal is "xilinx.com:signal:data:1.0 ap_return DATA";
  attribute X_INTERFACE_PARAMETER of ap_return : signal is "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_out : signal is "xilinx.com:signal:data:1.0 data_out DATA";
  attribute X_INTERFACE_PARAMETER of data_out : signal is "XIL_INTERFACENAME data_out, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
begin
  ap_return(31) <= \<const0>\;
  ap_return(30) <= \<const0>\;
  ap_return(29) <= \<const0>\;
  ap_return(28) <= \<const0>\;
  ap_return(27) <= \<const0>\;
  ap_return(26) <= \<const0>\;
  ap_return(25) <= \<const0>\;
  ap_return(24) <= \<const0>\;
  ap_return(23) <= \<const0>\;
  ap_return(22) <= \<const0>\;
  ap_return(21) <= \<const0>\;
  ap_return(20) <= \<const0>\;
  ap_return(19) <= \<const0>\;
  ap_return(18) <= \<const0>\;
  ap_return(17) <= \<const0>\;
  ap_return(16) <= \<const0>\;
  ap_return(15) <= \<const0>\;
  ap_return(14) <= \<const0>\;
  ap_return(13) <= \<const0>\;
  ap_return(12) <= \<const0>\;
  ap_return(11) <= \<const0>\;
  ap_return(10) <= \<const0>\;
  ap_return(9) <= \<const0>\;
  ap_return(8) <= \<const0>\;
  ap_return(7) <= \<const0>\;
  ap_return(6) <= \<const0>\;
  ap_return(5) <= \<const0>\;
  ap_return(4) <= \<const0>\;
  ap_return(3) <= \<const0>\;
  ap_return(2) <= \<const0>\;
  ap_return(1) <= \<const0>\;
  ap_return(0) <= \<const0>\;
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_example_acc_0_0_example_acc
     port map (
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_return(31 downto 0) => NLW_inst_ap_return_UNCONNECTED(31 downto 0),
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      data_out(31 downto 0) => data_out(31 downto 0),
      data_out_ap_ack => data_out_ap_ack,
      data_out_ap_vld => data_out_ap_vld,
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARREADY => s_axi_control_ARREADY,
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(4 downto 2) => s_axi_control_AWADDR(4 downto 2),
      s_axi_control_AWADDR(1 downto 0) => B"00",
      s_axi_control_AWREADY => s_axi_control_AWREADY,
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BRESP(1 downto 0) => NLW_inst_s_axi_control_BRESP_UNCONNECTED(1 downto 0),
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(31 downto 0) => s_axi_control_RDATA(31 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 0) => s_axi_control_WDATA(31 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 0) => s_axi_control_WSTRB(3 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID,
      start_r(0) => '0'
    );
end STRUCTURE;
