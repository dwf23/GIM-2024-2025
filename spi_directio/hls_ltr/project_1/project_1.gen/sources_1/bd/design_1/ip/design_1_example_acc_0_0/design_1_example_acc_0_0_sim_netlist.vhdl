-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Feb 20 11:08:54 2025
-- Host        : Lindsey_laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/GIM/hls_ltr/project_1/project_1.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/design_1_example_acc_0_0_sim_netlist.vhdl
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
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    interrupt : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    ap_start : out STD_LOGIC;
    \int_w2_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    \int_w1_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ap_done : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_control_s_axi : entity is "example_acc_control_s_axi";
end design_1_example_acc_0_0_example_acc_control_s_axi;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_3\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_3\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_1_n_3\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_3\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_3\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ap_idle : STD_LOGIC;
  signal \^ap_start\ : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_3 : STD_LOGIC;
  signal auto_restart_status_reg_n_3 : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_3 : STD_LOGIC;
  signal int_ap_start1 : STD_LOGIC;
  signal int_ap_start_i_1_n_3 : STD_LOGIC;
  signal int_auto_restart_i_1_n_3 : STD_LOGIC;
  signal int_auto_restart_i_2_n_3 : STD_LOGIC;
  signal int_gie_i_1_n_3 : STD_LOGIC;
  signal int_gie_reg_n_3 : STD_LOGIC;
  signal int_ier10_out : STD_LOGIC;
  signal \int_ier_reg_n_3_[0]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_3\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_3\ : STD_LOGIC;
  signal \int_isr_reg_n_3_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_3_[1]\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal \int_task_ap_done0__4\ : STD_LOGIC;
  signal int_task_ap_done_i_1_n_3 : STD_LOGIC;
  signal int_w10 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \int_w1[15]_i_1_n_3\ : STD_LOGIC;
  signal \^int_w1_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal int_w20 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \int_w2[15]_i_1_n_3\ : STD_LOGIC;
  signal \^int_w2_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal rdata : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \rdata[0]_i_1_n_3\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_3\ : STD_LOGIC;
  signal \rdata[15]_i_3_n_3\ : STD_LOGIC;
  signal \rdata[15]_i_4_n_3\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_3\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_3\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_3\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_3\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_3\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_3\ : STD_LOGIC;
  signal \rdata[9]_i_2_n_3\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_3_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_3_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_3_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of auto_restart_status_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_w1[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_w1[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_w1[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_w1[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_w1[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_w1[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_w1[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_w1[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_w1[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_w1[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_w1[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_w1[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_w1[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_w1[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_w1[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_w1[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_w2[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_w2[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_w2[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_w2[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \int_w2[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_w2[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \int_w2[15]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \int_w2[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_w2[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_w2[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_w2[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_w2[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_w2[6]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_w2[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_w2[8]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_w2[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \rdata[15]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[15]_i_4\ : label is "soft_lutpair0";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  SR(0) <= \^sr\(0);
  ap_start <= \^ap_start\;
  \int_w1_reg[15]_0\(15 downto 0) <= \^int_w1_reg[15]_0\(15 downto 0);
  \int_w2_reg[15]_0\(15 downto 0) <= \^int_w2_reg[15]_0\(15 downto 0);
  interrupt <= \^interrupt\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
\FSM_onehot_rstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F277"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => s_axi_control_RREADY,
      I3 => \^s_axi_control_rvalid\,
      O => \FSM_onehot_rstate[1]_i_1_n_3\
    );
\FSM_onehot_rstate[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_control_RREADY,
      I1 => \^s_axi_control_rvalid\,
      I2 => s_axi_control_ARVALID,
      I3 => \^fsm_onehot_rstate_reg[1]_0\,
      O => \FSM_onehot_rstate[2]_i_1_n_3\
    );
\FSM_onehot_rstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_rstate[1]_i_1_n_3\,
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
      D => \FSM_onehot_rstate[2]_i_1_n_3\,
      Q => \^s_axi_control_rvalid\,
      R => \^sr\(0)
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0C1D1D"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[2]_0\,
      I1 => \^fsm_onehot_wstate_reg[1]_0\,
      I2 => s_axi_control_AWVALID,
      I3 => s_axi_control_BREADY,
      I4 => \^s_axi_control_bvalid\,
      O => \FSM_onehot_wstate[1]_i_1_n_3\
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
      O => \FSM_onehot_wstate[2]_i_1_n_3\
    );
\FSM_onehot_wstate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => \FSM_onehot_wstate[3]_i_1_n_3\
    );
\FSM_onehot_wstate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \FSM_onehot_wstate[1]_i_1_n_3\,
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
      D => \FSM_onehot_wstate[2]_i_1_n_3\,
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
      D => \FSM_onehot_wstate[3]_i_1_n_3\,
      Q => \^s_axi_control_bvalid\,
      R => \^sr\(0)
    );
auto_restart_status_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFAA"
    )
        port map (
      I0 => p_2_in(7),
      I1 => \^ap_start\,
      I2 => Q(0),
      I3 => auto_restart_status_reg_n_3,
      O => auto_restart_status_i_1_n_3
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_3,
      Q => auto_restart_status_reg_n_3,
      R => \^sr\(0)
    );
int_ap_idle_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => \^ap_start\,
      O => ap_idle
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle,
      Q => p_2_in(2),
      R => \^sr\(0)
    );
int_ap_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_2_in(7),
      I1 => ap_done,
      I2 => \int_task_ap_done0__4\,
      I3 => int_ap_ready,
      O => int_ap_ready_i_1_n_3
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_3,
      Q => int_ap_ready,
      R => \^sr\(0)
    );
int_ap_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBF888"
    )
        port map (
      I0 => p_2_in(7),
      I1 => ap_done,
      I2 => int_ap_start1,
      I3 => s_axi_control_WDATA(0),
      I4 => \^ap_start\,
      O => int_ap_start_i_1_n_3
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \waddr_reg_n_3_[3]\,
      I1 => \waddr_reg_n_3_[2]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_control_WVALID,
      I4 => \waddr_reg_n_3_[4]\,
      I5 => s_axi_control_WSTRB(0),
      O => int_ap_start1
    );
int_ap_start_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_3,
      Q => \^ap_start\,
      R => \^sr\(0)
    );
int_auto_restart_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFF0200"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => \waddr_reg_n_3_[3]\,
      I2 => \waddr_reg_n_3_[2]\,
      I3 => int_auto_restart_i_2_n_3,
      I4 => p_2_in(7),
      O => int_auto_restart_i_1_n_3
    );
int_auto_restart_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s_axi_control_WSTRB(0),
      I1 => \waddr_reg_n_3_[4]\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      O => int_auto_restart_i_2_n_3
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_3,
      Q => p_2_in(7),
      R => \^sr\(0)
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => \waddr_reg_n_3_[3]\,
      I2 => \waddr_reg_n_3_[2]\,
      I3 => int_auto_restart_i_2_n_3,
      I4 => int_gie_reg_n_3,
      O => int_gie_i_1_n_3
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_3,
      Q => int_gie_reg_n_3,
      R => \^sr\(0)
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \waddr_reg_n_3_[2]\,
      I1 => \waddr_reg_n_3_[3]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_control_WVALID,
      I4 => \waddr_reg_n_3_[4]\,
      I5 => s_axi_control_WSTRB(0),
      O => int_ier10_out
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_control_WDATA(0),
      Q => \int_ier_reg_n_3_[0]\,
      R => \^sr\(0)
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => int_ier10_out,
      D => s_axi_control_WDATA(1),
      Q => p_0_in,
      R => \^sr\(0)
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \int_isr_reg_n_3_[0]\,
      I1 => \int_isr_reg_n_3_[1]\,
      I2 => int_gie_reg_n_3,
      O => int_interrupt0
    );
int_interrupt_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_interrupt0,
      Q => \^interrupt\,
      R => \^sr\(0)
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => int_isr7_out,
      I2 => \int_ier_reg_n_3_[0]\,
      I3 => ap_done,
      I4 => \int_isr_reg_n_3_[0]\,
      O => \int_isr[0]_i_1_n_3\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \waddr_reg_n_3_[3]\,
      I1 => \waddr_reg_n_3_[2]\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => s_axi_control_WVALID,
      I4 => \waddr_reg_n_3_[4]\,
      I5 => s_axi_control_WSTRB(0),
      O => int_isr7_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => int_isr7_out,
      I2 => p_0_in,
      I3 => ap_done,
      I4 => \int_isr_reg_n_3_[1]\,
      O => \int_isr[1]_i_1_n_3\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_3\,
      Q => \int_isr_reg_n_3_[0]\,
      R => \^sr\(0)
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_3\,
      Q => \int_isr_reg_n_3_[1]\,
      R => \^sr\(0)
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E22FFFF2E222E22"
    )
        port map (
      I0 => ap_done,
      I1 => auto_restart_status_reg_n_3,
      I2 => p_2_in(2),
      I3 => ap_idle,
      I4 => \int_task_ap_done0__4\,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_3
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARADDR(0),
      I2 => s_axi_control_ARADDR(3),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(4),
      I5 => ar_hs,
      O => \int_task_ap_done0__4\
    );
int_task_ap_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_task_ap_done_i_1_n_3,
      Q => int_task_ap_done,
      R => \^sr\(0)
    );
\int_w1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w1_reg[15]_0\(0),
      O => int_w10(0)
    );
\int_w1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w1_reg[15]_0\(10),
      O => int_w10(10)
    );
\int_w1[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w1_reg[15]_0\(11),
      O => int_w10(11)
    );
\int_w1[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w1_reg[15]_0\(12),
      O => int_w10(12)
    );
\int_w1[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w1_reg[15]_0\(13),
      O => int_w10(13)
    );
\int_w1[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w1_reg[15]_0\(14),
      O => int_w10(14)
    );
\int_w1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_control_WVALID,
      I1 => \^fsm_onehot_wstate_reg[2]_0\,
      I2 => \waddr_reg_n_3_[4]\,
      I3 => \waddr_reg_n_3_[2]\,
      I4 => \waddr_reg_n_3_[3]\,
      O => \int_w1[15]_i_1_n_3\
    );
\int_w1[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w1_reg[15]_0\(15),
      O => int_w10(15)
    );
\int_w1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w1_reg[15]_0\(1),
      O => int_w10(1)
    );
\int_w1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w1_reg[15]_0\(2),
      O => int_w10(2)
    );
\int_w1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w1_reg[15]_0\(3),
      O => int_w10(3)
    );
\int_w1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w1_reg[15]_0\(4),
      O => int_w10(4)
    );
\int_w1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w1_reg[15]_0\(5),
      O => int_w10(5)
    );
\int_w1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w1_reg[15]_0\(6),
      O => int_w10(6)
    );
\int_w1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w1_reg[15]_0\(7),
      O => int_w10(7)
    );
\int_w1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w1_reg[15]_0\(8),
      O => int_w10(8)
    );
\int_w1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w1_reg[15]_0\(9),
      O => int_w10(9)
    );
\int_w1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(0),
      Q => \^int_w1_reg[15]_0\(0),
      R => \^sr\(0)
    );
\int_w1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(10),
      Q => \^int_w1_reg[15]_0\(10),
      R => \^sr\(0)
    );
\int_w1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(11),
      Q => \^int_w1_reg[15]_0\(11),
      R => \^sr\(0)
    );
\int_w1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(12),
      Q => \^int_w1_reg[15]_0\(12),
      R => \^sr\(0)
    );
\int_w1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(13),
      Q => \^int_w1_reg[15]_0\(13),
      R => \^sr\(0)
    );
\int_w1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(14),
      Q => \^int_w1_reg[15]_0\(14),
      R => \^sr\(0)
    );
\int_w1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(15),
      Q => \^int_w1_reg[15]_0\(15),
      R => \^sr\(0)
    );
\int_w1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(1),
      Q => \^int_w1_reg[15]_0\(1),
      R => \^sr\(0)
    );
\int_w1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(2),
      Q => \^int_w1_reg[15]_0\(2),
      R => \^sr\(0)
    );
\int_w1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(3),
      Q => \^int_w1_reg[15]_0\(3),
      R => \^sr\(0)
    );
\int_w1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(4),
      Q => \^int_w1_reg[15]_0\(4),
      R => \^sr\(0)
    );
\int_w1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(5),
      Q => \^int_w1_reg[15]_0\(5),
      R => \^sr\(0)
    );
\int_w1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(6),
      Q => \^int_w1_reg[15]_0\(6),
      R => \^sr\(0)
    );
\int_w1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(7),
      Q => \^int_w1_reg[15]_0\(7),
      R => \^sr\(0)
    );
\int_w1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(8),
      Q => \^int_w1_reg[15]_0\(8),
      R => \^sr\(0)
    );
\int_w1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w1[15]_i_1_n_3\,
      D => int_w10(9),
      Q => \^int_w1_reg[15]_0\(9),
      R => \^sr\(0)
    );
\int_w2[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w2_reg[15]_0\(0),
      O => int_w20(0)
    );
\int_w2[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(10),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w2_reg[15]_0\(10),
      O => int_w20(10)
    );
\int_w2[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(11),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w2_reg[15]_0\(11),
      O => int_w20(11)
    );
\int_w2[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(12),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w2_reg[15]_0\(12),
      O => int_w20(12)
    );
\int_w2[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(13),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w2_reg[15]_0\(13),
      O => int_w20(13)
    );
\int_w2[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(14),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w2_reg[15]_0\(14),
      O => int_w20(14)
    );
\int_w2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \waddr_reg_n_3_[3]\,
      I1 => s_axi_control_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_3_[4]\,
      I4 => \waddr_reg_n_3_[2]\,
      O => \int_w2[15]_i_1_n_3\
    );
\int_w2[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(15),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w2_reg[15]_0\(15),
      O => int_w20(15)
    );
\int_w2[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w2_reg[15]_0\(1),
      O => int_w20(1)
    );
\int_w2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w2_reg[15]_0\(2),
      O => int_w20(2)
    );
\int_w2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(3),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w2_reg[15]_0\(3),
      O => int_w20(3)
    );
\int_w2[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(4),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w2_reg[15]_0\(4),
      O => int_w20(4)
    );
\int_w2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(5),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w2_reg[15]_0\(5),
      O => int_w20(5)
    );
\int_w2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(6),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w2_reg[15]_0\(6),
      O => int_w20(6)
    );
\int_w2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(7),
      I1 => s_axi_control_WSTRB(0),
      I2 => \^int_w2_reg[15]_0\(7),
      O => int_w20(7)
    );
\int_w2[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(8),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w2_reg[15]_0\(8),
      O => int_w20(8)
    );
\int_w2[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(9),
      I1 => s_axi_control_WSTRB(1),
      I2 => \^int_w2_reg[15]_0\(9),
      O => int_w20(9)
    );
\int_w2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(0),
      Q => \^int_w2_reg[15]_0\(0),
      R => \^sr\(0)
    );
\int_w2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(10),
      Q => \^int_w2_reg[15]_0\(10),
      R => \^sr\(0)
    );
\int_w2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(11),
      Q => \^int_w2_reg[15]_0\(11),
      R => \^sr\(0)
    );
\int_w2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(12),
      Q => \^int_w2_reg[15]_0\(12),
      R => \^sr\(0)
    );
\int_w2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(13),
      Q => \^int_w2_reg[15]_0\(13),
      R => \^sr\(0)
    );
\int_w2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(14),
      Q => \^int_w2_reg[15]_0\(14),
      R => \^sr\(0)
    );
\int_w2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(15),
      Q => \^int_w2_reg[15]_0\(15),
      R => \^sr\(0)
    );
\int_w2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(1),
      Q => \^int_w2_reg[15]_0\(1),
      R => \^sr\(0)
    );
\int_w2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(2),
      Q => \^int_w2_reg[15]_0\(2),
      R => \^sr\(0)
    );
\int_w2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(3),
      Q => \^int_w2_reg[15]_0\(3),
      R => \^sr\(0)
    );
\int_w2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(4),
      Q => \^int_w2_reg[15]_0\(4),
      R => \^sr\(0)
    );
\int_w2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(5),
      Q => \^int_w2_reg[15]_0\(5),
      R => \^sr\(0)
    );
\int_w2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(6),
      Q => \^int_w2_reg[15]_0\(6),
      R => \^sr\(0)
    );
\int_w2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(7),
      Q => \^int_w2_reg[15]_0\(7),
      R => \^sr\(0)
    );
\int_w2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(8),
      Q => \^int_w2_reg[15]_0\(8),
      R => \^sr\(0)
    );
\int_w2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \int_w2[15]_i_1_n_3\,
      D => int_w20(9),
      Q => \^int_w2_reg[15]_0\(9),
      R => \^sr\(0)
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F0F0CCAAF0F0"
    )
        port map (
      I0 => \^int_w1_reg[15]_0\(0),
      I1 => \^int_w2_reg[15]_0\(0),
      I2 => \rdata[0]_i_2_n_3\,
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(4),
      I5 => s_axi_control_ARADDR(2),
      O => \rdata[0]_i_1_n_3\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \int_ier_reg_n_3_[0]\,
      I1 => \int_isr_reg_n_3_[0]\,
      I2 => s_axi_control_ARADDR(2),
      I3 => s_axi_control_ARADDR(3),
      I4 => \^ap_start\,
      I5 => int_gie_reg_n_3,
      O => \rdata[0]_i_2_n_3\
    );
\rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(10),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(10),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(10)
    );
\rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(11),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(11),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(11)
    );
\rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(12),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(12),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(12)
    );
\rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(13),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(13),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(13)
    );
\rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(14),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(14),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(14)
    );
\rdata[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(15),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(15),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(15)
    );
\rdata[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARADDR(0),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(2),
      O => \rdata[15]_i_3_n_3\
    );
\rdata[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => s_axi_control_ARADDR(0),
      I2 => s_axi_control_ARADDR(4),
      I3 => s_axi_control_ARADDR(3),
      I4 => s_axi_control_ARADDR(2),
      O => \rdata[15]_i_4_n_3\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF44400400"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(3),
      I3 => \^int_w1_reg[15]_0\(1),
      I4 => \^int_w2_reg[15]_0\(1),
      I5 => \rdata[1]_i_2_n_3\,
      O => \rdata[1]_i_1_n_3\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4055400540504000"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => \int_isr_reg_n_3_[1]\,
      I2 => s_axi_control_ARADDR(3),
      I3 => s_axi_control_ARADDR(2),
      I4 => p_0_in,
      I5 => int_task_ap_done,
      O => \rdata[1]_i_2_n_3\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC000000AAF0"
    )
        port map (
      I0 => \^int_w1_reg[15]_0\(2),
      I1 => \^int_w2_reg[15]_0\(2),
      I2 => p_2_in(2),
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(2),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[2]_i_1_n_3\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC000000AAF0"
    )
        port map (
      I0 => \^int_w1_reg[15]_0\(3),
      I1 => \^int_w2_reg[15]_0\(3),
      I2 => int_ap_ready,
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(2),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[3]_i_1_n_3\
    );
\rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(4),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(4),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(4)
    );
\rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(5),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(5),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(5)
    );
\rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(6),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(6),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(6)
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC000000AAF0"
    )
        port map (
      I0 => \^int_w1_reg[15]_0\(7),
      I1 => \^int_w2_reg[15]_0\(7),
      I2 => p_2_in(7),
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(2),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[7]_i_1_n_3\
    );
\rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^int_w2_reg[15]_0\(8),
      I1 => \rdata[15]_i_3_n_3\,
      I2 => \^int_w1_reg[15]_0\(8),
      I3 => \rdata[15]_i_4_n_3\,
      O => rdata(8)
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
        port map (
      I0 => \^fsm_onehot_rstate_reg[1]_0\,
      I1 => s_axi_control_ARVALID,
      I2 => s_axi_control_ARADDR(0),
      I3 => s_axi_control_ARADDR(1),
      O => \rdata[9]_i_1_n_3\
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC000000AAF0"
    )
        port map (
      I0 => \^int_w1_reg[15]_0\(9),
      I1 => \^int_w2_reg[15]_0\(9),
      I2 => \^interrupt\,
      I3 => s_axi_control_ARADDR(4),
      I4 => s_axi_control_ARADDR(2),
      I5 => s_axi_control_ARADDR(3),
      O => \rdata[9]_i_2_n_3\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[0]_i_1_n_3\,
      Q => s_axi_control_RDATA(0),
      R => \rdata[9]_i_1_n_3\
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(10),
      Q => s_axi_control_RDATA(10),
      R => '0'
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(11),
      Q => s_axi_control_RDATA(11),
      R => '0'
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(12),
      Q => s_axi_control_RDATA(12),
      R => '0'
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(13),
      Q => s_axi_control_RDATA(13),
      R => '0'
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(14),
      Q => s_axi_control_RDATA(14),
      R => '0'
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(15),
      Q => s_axi_control_RDATA(15),
      R => '0'
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[1]_i_1_n_3\,
      Q => s_axi_control_RDATA(1),
      R => \rdata[9]_i_1_n_3\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[2]_i_1_n_3\,
      Q => s_axi_control_RDATA(2),
      R => \rdata[9]_i_1_n_3\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[3]_i_1_n_3\,
      Q => s_axi_control_RDATA(3),
      R => \rdata[9]_i_1_n_3\
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(4),
      Q => s_axi_control_RDATA(4),
      R => '0'
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(5),
      Q => s_axi_control_RDATA(5),
      R => '0'
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(6),
      Q => s_axi_control_RDATA(6),
      R => '0'
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[7]_i_1_n_3\,
      Q => s_axi_control_RDATA(7),
      R => \rdata[9]_i_1_n_3\
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(8),
      Q => s_axi_control_RDATA(8),
      R => '0'
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[9]_i_2_n_3\,
      Q => s_axi_control_RDATA(9),
      R => \rdata[9]_i_1_n_3\
    );
\state[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^fsm_onehot_wstate_reg[1]_0\,
      I1 => s_axi_control_AWVALID,
      O => waddr
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(0),
      Q => \waddr_reg_n_3_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(1),
      Q => \waddr_reg_n_3_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_control_AWADDR(2),
      Q => \waddr_reg_n_3_[4]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init is
  port (
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ap_CS_fsm_reg[4]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_sig_allocacmp_i_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \i_fu_42_reg[4]\ : out STD_LOGIC;
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg : out STD_LOGIC;
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_0 : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    alpha_transmit_line_ap_ack_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1 : in STD_LOGIC;
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg : in STD_LOGIC;
    \i_fu_42_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_rst_n : in STD_LOGIC;
    i_fu_4210_out : in STD_LOGIC;
    ap_done : in STD_LOGIC;
    \bit_reg_116_reg[0]\ : in STD_LOGIC;
    \bit_reg_116_reg[0]_0\ : in STD_LOGIC;
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init : entity is "example_acc_flow_control_loop_pipe_sequential_init";
end design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init is
  signal ap_done_cache : STD_LOGIC;
  signal \ap_done_cache_i_1__0_n_3\ : STD_LOGIC;
  signal ap_done_reg1 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal \ap_loop_init_int_i_1__0_n_3\ : STD_LOGIC;
  signal \i_fu_42[5]_i_5_n_3\ : STD_LOGIC;
  signal \i_fu_42[5]_i_7_n_3\ : STD_LOGIC;
  signal \icmp_ln31_fu_67_p2__4\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ap_CS_fsm[4]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ap_done_cache_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \ap_loop_init_int_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bit_reg_116[0]_i_14\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bit_reg_116[0]_i_15\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \bit_reg_116[0]_i_6\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \bit_reg_116[0]_i_7\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i_fu_42[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i_fu_42[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i_fu_42[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i_fu_42[3]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \i_fu_42[5]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \i_fu_42[5]_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i_fu_42[5]_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i_fu_42[5]_i_7\ : label is "soft_lutpair26";
begin
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0D00"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I2 => ap_done_reg1,
      I3 => Q(1),
      I4 => Q(0),
      O => \ap_CS_fsm_reg[4]\(0)
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF44F444444444"
    )
        port map (
      I0 => ap_done,
      I1 => Q(2),
      I2 => ap_done_cache,
      I3 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I4 => ap_done_reg1,
      I5 => Q(1),
      O => \ap_CS_fsm_reg[4]\(1)
    );
\ap_CS_fsm[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2220000"
    )
        port map (
      I0 => \icmp_ln31_fu_67_p2__4\,
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1,
      I2 => Q(1),
      I3 => alpha_transmit_line_ap_ack_int_regslice,
      I4 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      O => ap_done_reg1
    );
\ap_done_cache_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ap_done_reg1,
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I2 => ap_done_cache,
      O => \ap_done_cache_i_1__0_n_3\
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_done_cache_i_1__0_n_3\,
      Q => ap_done_cache,
      R => SR(0)
    );
\ap_enable_reg_pp0_iter1_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F00BFAA00000000"
    )
        port map (
      I0 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I1 => alpha_transmit_line_ap_ack_int_regslice,
      I2 => Q(1),
      I3 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1,
      I4 => \icmp_ln31_fu_67_p2__4\,
      I5 => ap_rst_n,
      O => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg
    );
\ap_loop_init_int_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5DDD"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init_int,
      I2 => i_fu_4210_out,
      I3 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I4 => ap_done_reg1,
      O => \ap_loop_init_int_i_1__0_n_3\
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_loop_init_int_i_1__0_n_3\,
      Q => ap_loop_init_int,
      R => '0'
    );
\bit_reg_116[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \bit_reg_116_reg[0]\,
      I1 => \i_fu_42_reg[5]\(4),
      I2 => ap_loop_init,
      I3 => \bit_reg_116_reg[0]_0\,
      I4 => i_fu_4210_out,
      I5 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line,
      O => \i_fu_42_reg[4]\
    );
\bit_reg_116[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(0),
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_i_1(0)
    );
\bit_reg_116[0]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(1),
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_i_1(1)
    );
\bit_reg_116[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(3),
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_i_1(3)
    );
\bit_reg_116[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(2),
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I2 => ap_loop_init_int,
      O => ap_sig_allocacmp_i_1(2)
    );
grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2A00AAAA"
    )
        port map (
      I0 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I1 => alpha_transmit_line_ap_ack_int_regslice,
      I2 => Q(1),
      I3 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1,
      I4 => \icmp_ln31_fu_67_p2__4\,
      I5 => Q(0),
      O => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_0
    );
\i_fu_42[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => \i_fu_42_reg[5]\(0),
      O => D(0)
    );
\i_fu_42[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(1),
      I1 => ap_loop_init_int,
      I2 => \i_fu_42_reg[5]\(0),
      O => D(1)
    );
\i_fu_42[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(0),
      I1 => \i_fu_42_reg[5]\(1),
      I2 => ap_loop_init_int,
      I3 => \i_fu_42_reg[5]\(2),
      O => D(2)
    );
\i_fu_42[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(1),
      I1 => \i_fu_42_reg[5]\(0),
      I2 => \i_fu_42_reg[5]\(2),
      I3 => ap_loop_init_int,
      I4 => \i_fu_42_reg[5]\(3),
      O => D(3)
    );
\i_fu_42[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(2),
      I1 => \i_fu_42[5]_i_5_n_3\,
      I2 => \i_fu_42_reg[5]\(3),
      I3 => ap_loop_init_int,
      I4 => \i_fu_42_reg[5]\(4),
      O => D(4)
    );
\i_fu_42[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80AA000000000000"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => alpha_transmit_line_ap_ack_int_regslice,
      I2 => Q(1),
      I3 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1,
      I4 => \icmp_ln31_fu_67_p2__4\,
      I5 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      O => ap_loop_init_int_reg_0(0)
    );
\i_fu_42[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D50000"
    )
        port map (
      I0 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1,
      I1 => Q(1),
      I2 => alpha_transmit_line_ap_ack_int_regslice,
      I3 => \icmp_ln31_fu_67_p2__4\,
      I4 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      O => E(0)
    );
\i_fu_42[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(3),
      I1 => \i_fu_42[5]_i_5_n_3\,
      I2 => \i_fu_42_reg[5]\(2),
      I3 => \i_fu_42_reg[5]\(4),
      I4 => ap_loop_init,
      I5 => \i_fu_42_reg[5]\(5),
      O => D(5)
    );
\i_fu_42[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(2),
      I1 => ap_loop_init,
      I2 => \i_fu_42_reg[5]\(3),
      I3 => \i_fu_42_reg[5]\(5),
      I4 => \i_fu_42_reg[5]\(4),
      I5 => \i_fu_42[5]_i_7_n_3\,
      O => \icmp_ln31_fu_67_p2__4\
    );
\i_fu_42[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A00"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(1),
      I1 => ap_loop_init_int,
      I2 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I3 => \i_fu_42_reg[5]\(0),
      O => \i_fu_42[5]_i_5_n_3\
    );
\i_fu_42[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      O => ap_loop_init
    );
\i_fu_42[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0D5"
    )
        port map (
      I0 => \i_fu_42_reg[5]\(1),
      I1 => ap_loop_init_int,
      I2 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      I3 => \i_fu_42_reg[5]\(0),
      O => \i_fu_42[5]_i_7_n_3\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_loop_init_int_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready : in STD_LOGIC;
    \ap_CS_fsm_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init_0 : entity is "example_acc_flow_control_loop_pipe_sequential_init";
end design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init_0;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init_0 is
  signal ap_done_cache : STD_LOGIC;
  signal ap_done_cache_i_1_n_3 : STD_LOGIC;
  signal ap_loop_init_int : STD_LOGIC;
  signal ap_loop_init_int_i_1_n_3 : STD_LOGIC;
begin
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0D000D000D00"
    )
        port map (
      I0 => ap_done_cache,
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
      I2 => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready,
      I3 => \ap_CS_fsm_reg[2]\(1),
      I4 => \ap_CS_fsm_reg[2]\(0),
      I5 => ap_start,
      O => D(0)
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080AAAA00800080"
    )
        port map (
      I0 => \ap_CS_fsm_reg[2]\(1),
      I1 => ap_enable_reg_pp0_iter1,
      I2 => Q(1),
      I3 => Q(0),
      I4 => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
      I5 => ap_done_cache,
      O => D(1)
    );
ap_done_cache_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(1),
      I2 => Q(0),
      I3 => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
      I4 => ap_done_cache,
      O => ap_done_cache_i_1_n_3
    );
ap_done_cache_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_done_cache_i_1_n_3,
      Q => ap_done_cache,
      R => SR(0)
    );
ap_loop_init_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5D5D5DFF5D5D5D"
    )
        port map (
      I0 => ap_rst_n,
      I1 => ap_loop_init_int,
      I2 => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => Q(1),
      I5 => Q(0),
      O => ap_loop_init_int_i_1_n_3
    );
ap_loop_init_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_int_i_1_n_3,
      Q => ap_loop_init_int,
      R => '0'
    );
\i_fu_40[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ap_loop_init_int,
      I1 => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
      O => ap_loop_init_int_reg_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0_example_acc_regslice_both is
  port (
    alpha_transmit_line_ap_ack_int_regslice : out STD_LOGIC;
    data_p2 : out STD_LOGIC;
    alpha_transmit_line : out STD_LOGIC_VECTOR ( 0 to 0 );
    alpha_transmit_line_ap_vld : out STD_LOGIC;
    i_fu_4210_out : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    ap_done : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    \data_p2_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    alpha_transmit_line_ap_ack : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    alpha_transmit_line_int_regslice : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_regslice_both : entity is "example_acc_regslice_both";
end design_1_example_acc_0_0_example_acc_regslice_both;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_regslice_both is
  signal ack_in_t_i_1_n_3 : STD_LOGIC;
  signal \^alpha_transmit_line\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^alpha_transmit_line_ap_ack_int_regslice\ : STD_LOGIC;
  signal \^alpha_transmit_line_ap_vld\ : STD_LOGIC;
  signal \data_p1[0]_i_1_n_3\ : STD_LOGIC;
  signal \^data_p2\ : STD_LOGIC;
  signal load_p1 : STD_LOGIC;
  signal \next__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \state[0]_i_2_n_3\ : STD_LOGIC;
  signal \state[1]_i_1_n_3\ : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "ZERO:01,TWO:10,ONE:11,iSTATE:00";
begin
  alpha_transmit_line(0) <= \^alpha_transmit_line\(0);
  alpha_transmit_line_ap_ack_int_regslice <= \^alpha_transmit_line_ap_ack_int_regslice\;
  alpha_transmit_line_ap_vld <= \^alpha_transmit_line_ap_vld\;
  data_p2 <= \^data_p2\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF00FF"
    )
        port map (
      I0 => Q(1),
      I1 => \^alpha_transmit_line_ap_ack_int_regslice\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \state__0\(1),
      I4 => alpha_transmit_line_ap_ack,
      I5 => \state__0\(0),
      O => \next__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC4C4C4C4C4C4C4C"
    )
        port map (
      I0 => alpha_transmit_line_ap_ack,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^alpha_transmit_line_ap_ack_int_regslice\,
      I4 => Q(1),
      I5 => ap_enable_reg_pp0_iter1,
      O => \next__0\(1)
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(0),
      Q => \state__0\(0),
      S => SR(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \next__0\(1),
      Q => \state__0\(1),
      R => SR(0)
    );
ack_in_t_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F070FFFFFFF0F0F0"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => Q(1),
      I2 => \^alpha_transmit_line_ap_ack_int_regslice\,
      I3 => alpha_transmit_line_ap_ack,
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => ack_in_t_i_1_n_3
    );
ack_in_t_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ack_in_t_i_1_n_3,
      Q => \^alpha_transmit_line_ap_ack_int_regslice\,
      R => SR(0)
    );
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A222A222FFFFA222"
    )
        port map (
      I0 => Q(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => alpha_transmit_line_ap_ack,
      I4 => Q(0),
      I5 => ap_start,
      O => D(0)
    );
\ap_CS_fsm[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A222"
    )
        port map (
      I0 => Q(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => alpha_transmit_line_ap_ack,
      O => ap_done
    );
ap_loop_init_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^alpha_transmit_line_ap_ack_int_regslice\,
      I1 => Q(1),
      I2 => ap_enable_reg_pp0_iter1,
      O => i_fu_4210_out
    );
\data_p1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FFFFFB080000"
    )
        port map (
      I0 => \^data_p2\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => alpha_transmit_line_int_regslice,
      I4 => load_p1,
      I5 => \^alpha_transmit_line\(0),
      O => \data_p1[0]_i_1_n_3\
    );
\data_p1[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080FF0000800000"
    )
        port map (
      I0 => Q(1),
      I1 => \^alpha_transmit_line_ap_ack_int_regslice\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => alpha_transmit_line_ap_ack,
      O => load_p1
    );
\data_p1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p1[0]_i_1_n_3\,
      Q => \^alpha_transmit_line\(0),
      R => '0'
    );
\data_p2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \data_p2_reg[0]_0\,
      Q => \^data_p2\,
      R => '0'
    );
\state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7777777A0000000"
    )
        port map (
      I0 => state(1),
      I1 => alpha_transmit_line_ap_ack,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \^alpha_transmit_line_ap_ack_int_regslice\,
      I4 => Q(1),
      I5 => \^alpha_transmit_line_ap_vld\,
      O => \state[0]_i_2_n_3\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5DDDDDDD"
    )
        port map (
      I0 => \^alpha_transmit_line_ap_vld\,
      I1 => state(1),
      I2 => Q(1),
      I3 => \^alpha_transmit_line_ap_ack_int_regslice\,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => alpha_transmit_line_ap_ack,
      O => \state[1]_i_1_n_3\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[0]_i_2_n_3\,
      Q => \^alpha_transmit_line_ap_vld\,
      R => SR(0)
    );
\state_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \state[1]_i_1_n_3\,
      Q => state(1),
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_11_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \or_i3_i_i_fu_36_reg[10]_0\ : out STD_LOGIC;
    \or_i3_i_i_fu_36_reg[26]_0\ : out STD_LOGIC;
    int_ap_start_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_start : in STD_LOGIC;
    ap_sig_allocacmp_i_1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \or_i3_i_i_fu_36_reg[15]_0\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \or_i3_i_i_fu_36_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_11_1 : entity is "example_acc_example_acc_Pipeline_VITIS_LOOP_11_1";
end design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_11_1;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_11_1 is
  signal add_ln11_fu_82_p2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1_i_1_n_3 : STD_LOGIC;
  signal ap_loop_init : STD_LOGIC;
  signal \bit_reg_116[0]_i_10_n_3\ : STD_LOGIC;
  signal \bit_reg_116[0]_i_11_n_3\ : STD_LOGIC;
  signal \bit_reg_116[0]_i_12_n_3\ : STD_LOGIC;
  signal \bit_reg_116[0]_i_13_n_3\ : STD_LOGIC;
  signal \bit_reg_116[0]_i_4_n_3\ : STD_LOGIC;
  signal \bit_reg_116[0]_i_5_n_3\ : STD_LOGIC;
  signal \bit_reg_116[0]_i_8_n_3\ : STD_LOGIC;
  signal \bit_reg_116[0]_i_9_n_3\ : STD_LOGIC;
  signal bitstream_fu_107_p3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data1 : STD_LOGIC;
  signal data10 : STD_LOGIC;
  signal data11 : STD_LOGIC;
  signal data12 : STD_LOGIC;
  signal data13 : STD_LOGIC;
  signal data14 : STD_LOGIC;
  signal data15 : STD_LOGIC;
  signal data16 : STD_LOGIC;
  signal data17 : STD_LOGIC;
  signal data18 : STD_LOGIC;
  signal data19 : STD_LOGIC;
  signal data2 : STD_LOGIC;
  signal data20 : STD_LOGIC;
  signal data21 : STD_LOGIC;
  signal data22 : STD_LOGIC;
  signal data23 : STD_LOGIC;
  signal data24 : STD_LOGIC;
  signal data25 : STD_LOGIC;
  signal data26 : STD_LOGIC;
  signal data27 : STD_LOGIC;
  signal data28 : STD_LOGIC;
  signal data29 : STD_LOGIC;
  signal data30 : STD_LOGIC;
  signal data31 : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal data5 : STD_LOGIC;
  signal data6 : STD_LOGIC;
  signal data7 : STD_LOGIC;
  signal data8 : STD_LOGIC;
  signal data9 : STD_LOGIC;
  signal grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready : STD_LOGIC;
  signal i_fu_40 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i_fu_40_0 : STD_LOGIC;
  signal \or_i3_i_i_fu_36_reg_n_3_[0]\ : STD_LOGIC;
  signal \or_i3_i_i_fu_36_reg_n_3_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[1]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of ap_enable_reg_pp0_iter1_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \i_fu_40[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \i_fu_40[1]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \or_i3_i_i_fu_36[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \or_i3_i_i_fu_36[1]_i_1\ : label is "soft_lutpair21";
begin
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => i_fu_40(0),
      I1 => i_fu_40(1),
      I2 => ap_enable_reg_pp0_iter1,
      O => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880888"
    )
        port map (
      I0 => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
      I1 => ap_rst_n,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => i_fu_40(1),
      I4 => i_fu_40(0),
      O => ap_enable_reg_pp0_iter1_i_1_n_3
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp0_iter1_i_1_n_3,
      Q => ap_enable_reg_pp0_iter1,
      R => '0'
    );
\bit_reg_116[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data26,
      I1 => data24,
      I2 => ap_sig_allocacmp_i_1(0),
      I3 => ap_sig_allocacmp_i_1(1),
      I4 => data27,
      I5 => data25,
      O => \bit_reg_116[0]_i_10_n_3\
    );
\bit_reg_116[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data18,
      I1 => data16,
      I2 => ap_sig_allocacmp_i_1(0),
      I3 => ap_sig_allocacmp_i_1(1),
      I4 => data19,
      I5 => data17,
      O => \bit_reg_116[0]_i_11_n_3\
    );
\bit_reg_116[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data30,
      I1 => data28,
      I2 => ap_sig_allocacmp_i_1(0),
      I3 => ap_sig_allocacmp_i_1(1),
      I4 => data31,
      I5 => data29,
      O => \bit_reg_116[0]_i_12_n_3\
    );
\bit_reg_116[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data22,
      I1 => data20,
      I2 => ap_sig_allocacmp_i_1(0),
      I3 => ap_sig_allocacmp_i_1(1),
      I4 => data23,
      I5 => data21,
      O => \bit_reg_116[0]_i_13_n_3\
    );
\bit_reg_116[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \bit_reg_116[0]_i_4_n_3\,
      I1 => \bit_reg_116[0]_i_5_n_3\,
      I2 => ap_sig_allocacmp_i_1(3),
      I3 => ap_sig_allocacmp_i_1(2),
      I4 => \bit_reg_116[0]_i_8_n_3\,
      I5 => \bit_reg_116[0]_i_9_n_3\,
      O => \or_i3_i_i_fu_36_reg[10]_0\
    );
\bit_reg_116[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CAFFCAF0CA0FCA00"
    )
        port map (
      I0 => \bit_reg_116[0]_i_10_n_3\,
      I1 => \bit_reg_116[0]_i_11_n_3\,
      I2 => ap_sig_allocacmp_i_1(3),
      I3 => ap_sig_allocacmp_i_1(2),
      I4 => \bit_reg_116[0]_i_12_n_3\,
      I5 => \bit_reg_116[0]_i_13_n_3\,
      O => \or_i3_i_i_fu_36_reg[26]_0\
    );
\bit_reg_116[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data10,
      I1 => data8,
      I2 => ap_sig_allocacmp_i_1(0),
      I3 => ap_sig_allocacmp_i_1(1),
      I4 => data11,
      I5 => data9,
      O => \bit_reg_116[0]_i_4_n_3\
    );
\bit_reg_116[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data2,
      I1 => \or_i3_i_i_fu_36_reg_n_3_[0]\,
      I2 => ap_sig_allocacmp_i_1(0),
      I3 => ap_sig_allocacmp_i_1(1),
      I4 => \or_i3_i_i_fu_36_reg_n_3_[3]\,
      I5 => data1,
      O => \bit_reg_116[0]_i_5_n_3\
    );
\bit_reg_116[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data14,
      I1 => data12,
      I2 => ap_sig_allocacmp_i_1(0),
      I3 => ap_sig_allocacmp_i_1(1),
      I4 => data15,
      I5 => data13,
      O => \bit_reg_116[0]_i_8_n_3\
    );
\bit_reg_116[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data6,
      I1 => data4,
      I2 => ap_sig_allocacmp_i_1(0),
      I3 => ap_sig_allocacmp_i_1(1),
      I4 => data7,
      I5 => data5,
      O => \bit_reg_116[0]_i_9_n_3\
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init_0
     port map (
      D(1 downto 0) => D(1 downto 0),
      Q(1 downto 0) => i_fu_40(1 downto 0),
      SR(0) => SR(0),
      \ap_CS_fsm_reg[2]\(1 downto 0) => Q(1 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_loop_init_int_reg_0(0) => ap_loop_init,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_ready,
      grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg
    );
grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8FFF88888888"
    )
        port map (
      I0 => ap_start,
      I1 => Q(0),
      I2 => ap_enable_reg_pp0_iter1,
      I3 => i_fu_40(1),
      I4 => i_fu_40(0),
      I5 => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
      O => int_ap_start_reg
    );
\i_fu_40[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_fu_40(0),
      O => add_ln11_fu_82_p2(0)
    );
\i_fu_40[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter1,
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      O => i_fu_40_0
    );
\i_fu_40[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_fu_40(0),
      I1 => i_fu_40(1),
      O => add_ln11_fu_82_p2(1)
    );
\i_fu_40_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => add_ln11_fu_82_p2(0),
      Q => i_fu_40(0),
      R => ap_loop_init
    );
\i_fu_40_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => add_ln11_fu_82_p2(1),
      Q => i_fu_40(1),
      R => ap_loop_init
    );
\or_i3_i_i_fu_36[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(0),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(0),
      O => bitstream_fu_107_p3(0)
    );
\or_i3_i_i_fu_36[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(10),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(10),
      O => bitstream_fu_107_p3(10)
    );
\or_i3_i_i_fu_36[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(11),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(11),
      O => bitstream_fu_107_p3(11)
    );
\or_i3_i_i_fu_36[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(12),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(12),
      O => bitstream_fu_107_p3(12)
    );
\or_i3_i_i_fu_36[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(13),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(13),
      O => bitstream_fu_107_p3(13)
    );
\or_i3_i_i_fu_36[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(14),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(14),
      O => bitstream_fu_107_p3(14)
    );
\or_i3_i_i_fu_36[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(15),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(15),
      O => bitstream_fu_107_p3(15)
    );
\or_i3_i_i_fu_36[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(1),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(1),
      O => bitstream_fu_107_p3(1)
    );
\or_i3_i_i_fu_36[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(2),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(2),
      O => bitstream_fu_107_p3(2)
    );
\or_i3_i_i_fu_36[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(3),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(3),
      O => bitstream_fu_107_p3(3)
    );
\or_i3_i_i_fu_36[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(4),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(4),
      O => bitstream_fu_107_p3(4)
    );
\or_i3_i_i_fu_36[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(5),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(5),
      O => bitstream_fu_107_p3(5)
    );
\or_i3_i_i_fu_36[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(6),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(6),
      O => bitstream_fu_107_p3(6)
    );
\or_i3_i_i_fu_36[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(7),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(7),
      O => bitstream_fu_107_p3(7)
    );
\or_i3_i_i_fu_36[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(8),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(8),
      O => bitstream_fu_107_p3(8)
    );
\or_i3_i_i_fu_36[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => \or_i3_i_i_fu_36_reg[15]_0\(9),
      I1 => i_fu_40(0),
      I2 => i_fu_40(1),
      I3 => \or_i3_i_i_fu_36_reg[15]_1\(9),
      O => bitstream_fu_107_p3(9)
    );
\or_i3_i_i_fu_36_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(0),
      Q => \or_i3_i_i_fu_36_reg_n_3_[0]\,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(10),
      Q => data10,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(11),
      Q => data11,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(12),
      Q => data12,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(13),
      Q => data13,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(14),
      Q => data14,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(15),
      Q => data15,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => \or_i3_i_i_fu_36_reg_n_3_[0]\,
      Q => data16,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data1,
      Q => data17,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data2,
      Q => data18,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => \or_i3_i_i_fu_36_reg_n_3_[3]\,
      Q => data19,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(1),
      Q => data1,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data4,
      Q => data20,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data5,
      Q => data21,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data6,
      Q => data22,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data7,
      Q => data23,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data8,
      Q => data24,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data9,
      Q => data25,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data10,
      Q => data26,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data11,
      Q => data27,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data12,
      Q => data28,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data13,
      Q => data29,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(2),
      Q => data2,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data14,
      Q => data30,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => data15,
      Q => data31,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(3),
      Q => \or_i3_i_i_fu_36_reg_n_3_[3]\,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(4),
      Q => data4,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(5),
      Q => data5,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(6),
      Q => data6,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(7),
      Q => data7,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(8),
      Q => data8,
      R => ap_loop_init
    );
\or_i3_i_i_fu_36_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_40_0,
      D => bitstream_fu_107_p3(9),
      Q => data9,
      R => ap_loop_init
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_31_1 is
  port (
    ap_enable_reg_pp0_iter1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_sig_allocacmp_i_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    alpha_transmit_line_int_regslice : out STD_LOGIC;
    \bit_reg_116_reg[0]_0\ : out STD_LOGIC;
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_clk : in STD_LOGIC;
    alpha_transmit_line_ap_ack_int_regslice : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    i_fu_4210_out : in STD_LOGIC;
    ap_done : in STD_LOGIC;
    alpha_transmit_line_reg : in STD_LOGIC;
    \bit_reg_116_reg[0]_1\ : in STD_LOGIC;
    \bit_reg_116_reg[0]_2\ : in STD_LOGIC;
    data_p2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_31_1 : entity is "example_acc_example_acc_Pipeline_VITIS_LOOP_31_1";
end design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_31_1;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_31_1 is
  signal \^ap_enable_reg_pp0_iter1\ : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_17 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_18 : STD_LOGIC;
  signal flow_control_loop_pipe_sequential_init_U_n_3 : STD_LOGIC;
  signal grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line : STD_LOGIC;
  signal i_2_fu_73_p2 : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal i_fu_42 : STD_LOGIC;
  signal \i_fu_42_reg_n_3_[0]\ : STD_LOGIC;
  signal \i_fu_42_reg_n_3_[1]\ : STD_LOGIC;
  signal \i_fu_42_reg_n_3_[2]\ : STD_LOGIC;
  signal \i_fu_42_reg_n_3_[3]\ : STD_LOGIC;
  signal \i_fu_42_reg_n_3_[4]\ : STD_LOGIC;
  signal \i_fu_42_reg_n_3_[5]\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  ap_enable_reg_pp0_iter1 <= \^ap_enable_reg_pp0_iter1\;
\alpha_transmit_line_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line,
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => alpha_transmit_line_ap_ack_int_regslice,
      I3 => Q(1),
      I4 => alpha_transmit_line_reg,
      O => alpha_transmit_line_int_regslice
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_18,
      Q => \^ap_enable_reg_pp0_iter1\,
      R => '0'
    );
\bit_reg_116_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => flow_control_loop_pipe_sequential_init_U_n_17,
      Q => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line,
      R => '0'
    );
\data_p2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line,
      I1 => \^ap_enable_reg_pp0_iter1\,
      I2 => Q(1),
      I3 => alpha_transmit_line_ap_ack_int_regslice,
      I4 => data_p2,
      O => \bit_reg_116_reg[0]_0\
    );
flow_control_loop_pipe_sequential_init_U: entity work.design_1_example_acc_0_0_example_acc_flow_control_loop_pipe_sequential_init
     port map (
      D(5 downto 1) => i_2_fu_73_p2(5 downto 1),
      D(0) => sel0(0),
      E(0) => i_fu_42,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => SR(0),
      alpha_transmit_line_ap_ack_int_regslice => alpha_transmit_line_ap_ack_int_regslice,
      \ap_CS_fsm_reg[4]\(1 downto 0) => D(1 downto 0),
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_loop_init_int_reg_0(0) => flow_control_loop_pipe_sequential_init_U_n_3,
      ap_rst_n => ap_rst_n,
      ap_sig_allocacmp_i_1(3 downto 0) => ap_sig_allocacmp_i_1(3 downto 0),
      \bit_reg_116_reg[0]\ => \bit_reg_116_reg[0]_1\,
      \bit_reg_116_reg[0]_0\ => \bit_reg_116_reg[0]_2\,
      grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_alpha_transmit_line,
      grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg => flow_control_loop_pipe_sequential_init_U_n_18,
      grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_0 => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg,
      grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg_1 => \^ap_enable_reg_pp0_iter1\,
      i_fu_4210_out => i_fu_4210_out,
      \i_fu_42_reg[4]\ => flow_control_loop_pipe_sequential_init_U_n_17,
      \i_fu_42_reg[5]\(5) => \i_fu_42_reg_n_3_[5]\,
      \i_fu_42_reg[5]\(4) => \i_fu_42_reg_n_3_[4]\,
      \i_fu_42_reg[5]\(3) => \i_fu_42_reg_n_3_[3]\,
      \i_fu_42_reg[5]\(2) => \i_fu_42_reg_n_3_[2]\,
      \i_fu_42_reg[5]\(1) => \i_fu_42_reg_n_3_[1]\,
      \i_fu_42_reg[5]\(0) => \i_fu_42_reg_n_3_[0]\
    );
\i_fu_42_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_42,
      D => sel0(0),
      Q => \i_fu_42_reg_n_3_[0]\,
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\i_fu_42_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_42,
      D => i_2_fu_73_p2(1),
      Q => \i_fu_42_reg_n_3_[1]\,
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\i_fu_42_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_42,
      D => i_2_fu_73_p2(2),
      Q => \i_fu_42_reg_n_3_[2]\,
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\i_fu_42_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_42,
      D => i_2_fu_73_p2(3),
      Q => \i_fu_42_reg_n_3_[3]\,
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\i_fu_42_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_42,
      D => i_2_fu_73_p2(4),
      Q => \i_fu_42_reg_n_3_[4]\,
      R => flow_control_loop_pipe_sequential_init_U_n_3
    );
\i_fu_42_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => i_fu_42,
      D => i_2_fu_73_p2(5),
      Q => \i_fu_42_reg_n_3_[5]\,
      R => flow_control_loop_pipe_sequential_init_U_n_3
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
    alpha_transmit_line : out STD_LOGIC_VECTOR ( 0 to 0 );
    alpha_transmit_line_ap_vld : out STD_LOGIC;
    alpha_transmit_line_ap_ack : in STD_LOGIC;
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
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
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
  attribute ap_ST_fsm_state1 of design_1_example_acc_0_0_example_acc : entity is "5'b00001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of design_1_example_acc_0_0_example_acc : entity is "5'b00010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of design_1_example_acc_0_0_example_acc : entity is "5'b00100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of design_1_example_acc_0_0_example_acc : entity is "5'b01000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of design_1_example_acc_0_0_example_acc : entity is "5'b10000";
  attribute hls_module : string;
  attribute hls_module of design_1_example_acc_0_0_example_acc : entity is "yes";
end design_1_example_acc_0_0_example_acc;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc is
  signal \<const0>\ : STD_LOGIC;
  signal alpha_transmit_line_ap_ack_int_regslice : STD_LOGIC;
  signal alpha_transmit_line_int_regslice : STD_LOGIC;
  signal alpha_transmit_line_reg : STD_LOGIC;
  signal ap_CS_fsm_state1 : STD_LOGIC;
  signal ap_CS_fsm_state2 : STD_LOGIC;
  signal ap_CS_fsm_state3 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state5 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ap_done : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ap_sig_allocacmp_i_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ap_start : STD_LOGIC;
  signal data_p2 : STD_LOGIC;
  signal grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg : STD_LOGIC;
  signal grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_5 : STD_LOGIC;
  signal grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_6 : STD_LOGIC;
  signal grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_7 : STD_LOGIC;
  signal grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg : STD_LOGIC;
  signal grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_11 : STD_LOGIC;
  signal grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_12 : STD_LOGIC;
  signal i_fu_4210_out : STD_LOGIC;
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal w1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal w1_read_reg_85 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal w2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal w2_read_reg_80 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RDATA(31) <= \<const0>\;
  s_axi_control_RDATA(30) <= \<const0>\;
  s_axi_control_RDATA(29) <= \<const0>\;
  s_axi_control_RDATA(28) <= \<const0>\;
  s_axi_control_RDATA(27) <= \<const0>\;
  s_axi_control_RDATA(26) <= \<const0>\;
  s_axi_control_RDATA(25) <= \<const0>\;
  s_axi_control_RDATA(24) <= \<const0>\;
  s_axi_control_RDATA(23) <= \<const0>\;
  s_axi_control_RDATA(22) <= \<const0>\;
  s_axi_control_RDATA(21) <= \<const0>\;
  s_axi_control_RDATA(20) <= \<const0>\;
  s_axi_control_RDATA(19) <= \<const0>\;
  s_axi_control_RDATA(18) <= \<const0>\;
  s_axi_control_RDATA(17) <= \<const0>\;
  s_axi_control_RDATA(16) <= \<const0>\;
  s_axi_control_RDATA(15 downto 0) <= \^s_axi_control_rdata\(15 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\alpha_transmit_line_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => alpha_transmit_line_int_regslice,
      Q => alpha_transmit_line_reg,
      R => '0'
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => ap_CS_fsm_state1,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
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
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state3,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state5,
      R => ap_rst_n_inv
    );
control_s_axi_U: entity work.design_1_example_acc_0_0_example_acc_control_s_axi
     port map (
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      Q(0) => ap_CS_fsm_state1,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_rst_n => ap_rst_n,
      ap_start => ap_start,
      \int_w1_reg[15]_0\(15 downto 0) => w1(15 downto 0),
      \int_w2_reg[15]_0\(15 downto 0) => w2(15 downto 0),
      interrupt => interrupt,
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(2 downto 0) => s_axi_control_AWADDR(4 downto 2),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(15 downto 0) => \^s_axi_control_rdata\(15 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(15 downto 0) => s_axi_control_WDATA(15 downto 0),
      s_axi_control_WSTRB(1 downto 0) => s_axi_control_WSTRB(1 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60: entity work.design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_11_1
     port map (
      D(1 downto 0) => ap_NS_fsm(2 downto 1),
      Q(1) => ap_CS_fsm_state2,
      Q(0) => ap_CS_fsm_state1,
      SR(0) => ap_rst_n_inv,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      ap_sig_allocacmp_i_1(3 downto 0) => ap_sig_allocacmp_i_1(3 downto 0),
      ap_start => ap_start,
      grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
      int_ap_start_reg => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_7,
      \or_i3_i_i_fu_36_reg[10]_0\ => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_5,
      \or_i3_i_i_fu_36_reg[15]_0\(15 downto 0) => w2_read_reg_80(15 downto 0),
      \or_i3_i_i_fu_36_reg[15]_1\(15 downto 0) => w1_read_reg_85(15 downto 0),
      \or_i3_i_i_fu_36_reg[26]_0\ => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_6
    );
grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_7,
      Q => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_ap_start_reg,
      R => ap_rst_n_inv
    );
grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69: entity work.design_1_example_acc_0_0_example_acc_example_acc_Pipeline_VITIS_LOOP_31_1
     port map (
      D(1 downto 0) => ap_NS_fsm(4 downto 3),
      Q(2) => ap_CS_fsm_state5,
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state3,
      SR(0) => ap_rst_n_inv,
      alpha_transmit_line_ap_ack_int_regslice => alpha_transmit_line_ap_ack_int_regslice,
      alpha_transmit_line_int_regslice => alpha_transmit_line_int_regslice,
      alpha_transmit_line_reg => alpha_transmit_line_reg,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_rst_n => ap_rst_n,
      ap_sig_allocacmp_i_1(3 downto 0) => ap_sig_allocacmp_i_1(3 downto 0),
      \bit_reg_116_reg[0]_0\ => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_11,
      \bit_reg_116_reg[0]_1\ => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_5,
      \bit_reg_116_reg[0]_2\ => grp_example_acc_Pipeline_VITIS_LOOP_11_1_fu_60_n_6,
      data_p2 => data_p2,
      grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_12,
      i_fu_4210_out => i_fu_4210_out
    );
grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_12,
      Q => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_ap_start_reg,
      R => ap_rst_n_inv
    );
regslice_both_alpha_transmit_line_U: entity work.design_1_example_acc_0_0_example_acc_regslice_both
     port map (
      D(0) => ap_NS_fsm(0),
      Q(2) => ap_CS_fsm_state5,
      Q(1) => ap_CS_fsm_state4,
      Q(0) => ap_CS_fsm_state1,
      SR(0) => ap_rst_n_inv,
      alpha_transmit_line(0) => alpha_transmit_line(0),
      alpha_transmit_line_ap_ack => alpha_transmit_line_ap_ack,
      alpha_transmit_line_ap_ack_int_regslice => alpha_transmit_line_ap_ack_int_regslice,
      alpha_transmit_line_ap_vld => alpha_transmit_line_ap_vld,
      alpha_transmit_line_int_regslice => alpha_transmit_line_int_regslice,
      ap_clk => ap_clk,
      ap_done => ap_done,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_start => ap_start,
      data_p2 => data_p2,
      \data_p2_reg[0]_0\ => grp_example_acc_Pipeline_VITIS_LOOP_31_1_fu_69_n_11,
      i_fu_4210_out => i_fu_4210_out
    );
\w1_read_reg_85_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(0),
      Q => w1_read_reg_85(0),
      R => '0'
    );
\w1_read_reg_85_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(10),
      Q => w1_read_reg_85(10),
      R => '0'
    );
\w1_read_reg_85_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(11),
      Q => w1_read_reg_85(11),
      R => '0'
    );
\w1_read_reg_85_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(12),
      Q => w1_read_reg_85(12),
      R => '0'
    );
\w1_read_reg_85_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(13),
      Q => w1_read_reg_85(13),
      R => '0'
    );
\w1_read_reg_85_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(14),
      Q => w1_read_reg_85(14),
      R => '0'
    );
\w1_read_reg_85_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(15),
      Q => w1_read_reg_85(15),
      R => '0'
    );
\w1_read_reg_85_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(1),
      Q => w1_read_reg_85(1),
      R => '0'
    );
\w1_read_reg_85_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(2),
      Q => w1_read_reg_85(2),
      R => '0'
    );
\w1_read_reg_85_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(3),
      Q => w1_read_reg_85(3),
      R => '0'
    );
\w1_read_reg_85_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(4),
      Q => w1_read_reg_85(4),
      R => '0'
    );
\w1_read_reg_85_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(5),
      Q => w1_read_reg_85(5),
      R => '0'
    );
\w1_read_reg_85_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(6),
      Q => w1_read_reg_85(6),
      R => '0'
    );
\w1_read_reg_85_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(7),
      Q => w1_read_reg_85(7),
      R => '0'
    );
\w1_read_reg_85_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(8),
      Q => w1_read_reg_85(8),
      R => '0'
    );
\w1_read_reg_85_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w1(9),
      Q => w1_read_reg_85(9),
      R => '0'
    );
\w2_read_reg_80_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(0),
      Q => w2_read_reg_80(0),
      R => '0'
    );
\w2_read_reg_80_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(10),
      Q => w2_read_reg_80(10),
      R => '0'
    );
\w2_read_reg_80_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(11),
      Q => w2_read_reg_80(11),
      R => '0'
    );
\w2_read_reg_80_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(12),
      Q => w2_read_reg_80(12),
      R => '0'
    );
\w2_read_reg_80_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(13),
      Q => w2_read_reg_80(13),
      R => '0'
    );
\w2_read_reg_80_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(14),
      Q => w2_read_reg_80(14),
      R => '0'
    );
\w2_read_reg_80_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(15),
      Q => w2_read_reg_80(15),
      R => '0'
    );
\w2_read_reg_80_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(1),
      Q => w2_read_reg_80(1),
      R => '0'
    );
\w2_read_reg_80_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(2),
      Q => w2_read_reg_80(2),
      R => '0'
    );
\w2_read_reg_80_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(3),
      Q => w2_read_reg_80(3),
      R => '0'
    );
\w2_read_reg_80_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(4),
      Q => w2_read_reg_80(4),
      R => '0'
    );
\w2_read_reg_80_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(5),
      Q => w2_read_reg_80(5),
      R => '0'
    );
\w2_read_reg_80_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(6),
      Q => w2_read_reg_80(6),
      R => '0'
    );
\w2_read_reg_80_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(7),
      Q => w2_read_reg_80(7),
      R => '0'
    );
\w2_read_reg_80_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(8),
      Q => w2_read_reg_80(8),
      R => '0'
    );
\w2_read_reg_80_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ap_CS_fsm_state1,
      D => w2(9),
      Q => w2_read_reg_80(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0 is
  port (
    alpha_transmit_line_ap_vld : out STD_LOGIC;
    alpha_transmit_line_ap_ack : in STD_LOGIC;
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
    interrupt : out STD_LOGIC;
    alpha_transmit_line : out STD_LOGIC_VECTOR ( 0 to 0 )
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
  attribute X_CORE_INFO of design_1_example_acc_0_0 : entity is "example_acc,Vivado 2024.2";
  attribute hls_module : string;
  attribute hls_module of design_1_example_acc_0_0 : entity is "yes";
end design_1_example_acc_0_0;

architecture STRUCTURE of design_1_example_acc_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 16 );
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
  attribute ap_ST_fsm_state1 of inst : label is "5'b00001";
  attribute ap_ST_fsm_state2 : string;
  attribute ap_ST_fsm_state2 of inst : label is "5'b00010";
  attribute ap_ST_fsm_state3 : string;
  attribute ap_ST_fsm_state3 of inst : label is "5'b00100";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "5'b01000";
  attribute ap_ST_fsm_state5 : string;
  attribute ap_ST_fsm_state5 of inst : label is "5'b10000";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_MODE of ap_rst_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_MODE of interrupt : signal is "master";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
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
  attribute X_INTERFACE_INFO of alpha_transmit_line : signal is "xilinx.com:signal:data:1.0 alpha_transmit_line DATA";
  attribute X_INTERFACE_MODE of alpha_transmit_line : signal is "master";
  attribute X_INTERFACE_PARAMETER of alpha_transmit_line : signal is "XIL_INTERFACENAME alpha_transmit_line, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
  attribute X_INTERFACE_MODE of s_axi_control_ARADDR : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_control_ARADDR : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_control_AWADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR";
  attribute X_INTERFACE_INFO of s_axi_control_BRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control BRESP";
  attribute X_INTERFACE_INFO of s_axi_control_RDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RDATA";
  attribute X_INTERFACE_INFO of s_axi_control_RRESP : signal is "xilinx.com:interface:aximm:1.0 s_axi_control RRESP";
  attribute X_INTERFACE_INFO of s_axi_control_WDATA : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WDATA";
  attribute X_INTERFACE_INFO of s_axi_control_WSTRB : signal is "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB";
begin
  s_axi_control_BRESP(1) <= \<const0>\;
  s_axi_control_BRESP(0) <= \<const0>\;
  s_axi_control_RDATA(31) <= \<const0>\;
  s_axi_control_RDATA(30) <= \<const0>\;
  s_axi_control_RDATA(29) <= \<const0>\;
  s_axi_control_RDATA(28) <= \<const0>\;
  s_axi_control_RDATA(27) <= \<const0>\;
  s_axi_control_RDATA(26) <= \<const0>\;
  s_axi_control_RDATA(25) <= \<const0>\;
  s_axi_control_RDATA(24) <= \<const0>\;
  s_axi_control_RDATA(23) <= \<const0>\;
  s_axi_control_RDATA(22) <= \<const0>\;
  s_axi_control_RDATA(21) <= \<const0>\;
  s_axi_control_RDATA(20) <= \<const0>\;
  s_axi_control_RDATA(19) <= \<const0>\;
  s_axi_control_RDATA(18) <= \<const0>\;
  s_axi_control_RDATA(17) <= \<const0>\;
  s_axi_control_RDATA(16) <= \<const0>\;
  s_axi_control_RDATA(15 downto 0) <= \^s_axi_control_rdata\(15 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_example_acc_0_0_example_acc
     port map (
      alpha_transmit_line(0) => alpha_transmit_line(0),
      alpha_transmit_line_ap_ack => alpha_transmit_line_ap_ack,
      alpha_transmit_line_ap_vld => alpha_transmit_line_ap_vld,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
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
      s_axi_control_RDATA(31 downto 16) => NLW_inst_s_axi_control_RDATA_UNCONNECTED(31 downto 16),
      s_axi_control_RDATA(15 downto 0) => \^s_axi_control_rdata\(15 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 16) => B"0000000000000000",
      s_axi_control_WDATA(15 downto 0) => s_axi_control_WDATA(15 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 2) => B"00",
      s_axi_control_WSTRB(1 downto 0) => s_axi_control_WSTRB(1 downto 0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
