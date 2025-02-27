-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun Feb 23 16:30:00 2025
-- Host        : LAPTOP-DP0OJSK0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rx/demo_rx.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/design_1_example_acc_0_0_sim_netlist.vhdl
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
    interrupt : out STD_LOGIC;
    \FSM_onehot_rstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_RVALID : out STD_LOGIC;
    \FSM_onehot_wstate_reg[2]_0\ : out STD_LOGIC;
    data_in_ap_ack : out STD_LOGIC;
    int_ap_start : out STD_LOGIC;
    \FSM_onehot_wstate_reg[1]_0\ : out STD_LOGIC;
    s_axi_control_BVALID : out STD_LOGIC;
    data_in_ap_vld_0 : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 5 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_ap_vld : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    int_task_ap_done_reg_0 : in STD_LOGIC;
    \int_isr_reg[0]_0\ : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_control_s_axi : entity is "example_acc_control_s_axi";
end design_1_example_acc_0_0_example_acc_control_s_axi;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_control_s_axi is
  signal \FSM_onehot_rstate[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_rstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_rstate_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_wstate[3]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_wstate_reg[2]_0\ : STD_LOGIC;
  signal ap_idle1 : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal auto_restart_status_i_1_n_0 : STD_LOGIC;
  signal auto_restart_status_reg_n_0 : STD_LOGIC;
  signal \^data_in_ap_vld_0\ : STD_LOGIC;
  signal int_ap_ready : STD_LOGIC;
  signal int_ap_ready_i_1_n_0 : STD_LOGIC;
  signal \^int_ap_start\ : STD_LOGIC;
  signal int_ap_start1 : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_i_2_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal int_ier10_out : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_interrupt0 : STD_LOGIC;
  signal int_isr7_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[1]\ : STD_LOGIC;
  signal int_task_ap_done : STD_LOGIC;
  signal \int_task_ap_done0__4\ : STD_LOGIC;
  signal int_task_ap_done_i_1_n_0 : STD_LOGIC;
  signal \^interrupt\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_control_bvalid\ : STD_LOGIC;
  signal \^s_axi_control_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_rstate[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[1]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_rstate_reg[2]\ : label is "RDIDLE:010,RDDATA:100,iSTATE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[1]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[2]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_wstate_reg[3]\ : label is "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001";
  attribute SOFT_HLUTNM of auto_restart_status_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of data_in_ap_ack_INST_0 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of int_ap_idle_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of int_auto_restart_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \int_isr[0]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \rdata[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \rdata[1]_i_1\ : label is "soft_lutpair3";
begin
  \FSM_onehot_rstate_reg[1]_0\ <= \^fsm_onehot_rstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[1]_0\ <= \^fsm_onehot_wstate_reg[1]_0\;
  \FSM_onehot_wstate_reg[2]_0\ <= \^fsm_onehot_wstate_reg[2]_0\;
  data_in_ap_vld_0 <= \^data_in_ap_vld_0\;
  int_ap_start <= \^int_ap_start\;
  interrupt <= \^interrupt\;
  s_axi_control_BVALID <= \^s_axi_control_bvalid\;
  s_axi_control_RVALID <= \^s_axi_control_rvalid\;
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
      R => ap_rst_n_inv
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
      R => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => ap_rst_n_inv
    );
\FSM_onehot_wstate[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888BFF8B"
    )
        port map (
      I0 => s_axi_control_BREADY,
      I1 => \^s_axi_control_bvalid\,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \^fsm_onehot_wstate_reg[1]_0\,
      I4 => s_axi_control_AWVALID,
      O => \FSM_onehot_wstate[1]_i_2_n_0\
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
      D => \FSM_onehot_wstate[1]_i_2_n_0\,
      Q => \^fsm_onehot_wstate_reg[1]_0\,
      R => ap_rst_n_inv
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
      R => ap_rst_n_inv
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
      R => ap_rst_n_inv
    );
auto_restart_status_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => p_1_in(7),
      I1 => \^int_ap_start\,
      I2 => auto_restart_status_reg_n_0,
      O => auto_restart_status_i_1_n_0
    );
auto_restart_status_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => auto_restart_status_i_1_n_0,
      Q => auto_restart_status_reg_n_0,
      R => ap_rst_n_inv
    );
data_in_ap_ack_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^int_ap_start\,
      I1 => data_in_ap_vld,
      O => data_in_ap_ack
    );
int_ap_idle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^int_ap_start\,
      O => ap_idle1
    );
int_ap_idle_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_idle1,
      Q => p_1_in(2),
      R => ap_rst_n_inv
    );
int_ap_ready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => p_1_in(7),
      I1 => \int_isr_reg[0]_0\,
      I2 => \int_task_ap_done0__4\,
      I3 => int_ap_ready,
      O => int_ap_ready_i_1_n_0
    );
int_ap_ready_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_ready_i_1_n_0,
      Q => int_ap_ready,
      R => ap_rst_n_inv
    );
int_ap_start_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBBBF888"
    )
        port map (
      I0 => p_1_in(7),
      I1 => \int_isr_reg[0]_0\,
      I2 => int_ap_start1,
      I3 => s_axi_control_WDATA(0),
      I4 => \^int_ap_start\,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => s_axi_control_WVALID,
      I3 => \^fsm_onehot_wstate_reg[2]_0\,
      I4 => \waddr_reg_n_0_[3]\,
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
      D => int_ap_start_i_1_n_0,
      Q => \^int_ap_start\,
      R => ap_rst_n_inv
    );
int_auto_restart_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_control_WDATA(2),
      I1 => int_ap_start1,
      I2 => p_1_in(7),
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => p_1_in(7),
      R => ap_rst_n_inv
    );
int_gie_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => s_axi_control_WSTRB(0),
      I2 => int_gie_i_2_n_0,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => s_axi_control_WVALID,
      I2 => \^fsm_onehot_wstate_reg[2]_0\,
      I3 => \waddr_reg_n_0_[3]\,
      O => int_gie_i_2_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => ap_rst_n_inv
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[4]\,
      I4 => s_axi_control_WVALID,
      I5 => \^fsm_onehot_wstate_reg[2]_0\,
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
      Q => \int_ier_reg_n_0_[0]\,
      R => ap_rst_n_inv
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
      R => ap_rst_n_inv
    );
int_interrupt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => \int_isr_reg_n_0_[1]\,
      I2 => \int_isr_reg_n_0_[0]\,
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
      R => ap_rst_n_inv
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777F7778888F888"
    )
        port map (
      I0 => s_axi_control_WDATA(0),
      I1 => int_isr7_out,
      I2 => \int_ier_reg_n_0_[0]\,
      I3 => \int_isr_reg[0]_0\,
      I4 => \^data_in_ap_vld_0\,
      I5 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800000000000000"
    )
        port map (
      I0 => s_axi_control_WSTRB(0),
      I1 => \waddr_reg_n_0_[3]\,
      I2 => \waddr_reg_n_0_[4]\,
      I3 => s_axi_control_WVALID,
      I4 => \^fsm_onehot_wstate_reg[2]_0\,
      I5 => \waddr_reg_n_0_[2]\,
      O => int_isr7_out
    );
\int_isr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data_in_ap_vld,
      I1 => \^int_ap_start\,
      O => \^data_in_ap_vld_0\
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_control_WDATA(1),
      I1 => int_isr7_out,
      I2 => p_0_in,
      I3 => \int_isr_reg[0]_0\,
      I4 => \int_isr_reg_n_0_[1]\,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => ap_rst_n_inv
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[1]\,
      R => ap_rst_n_inv
    );
int_task_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5702FFFF57025702"
    )
        port map (
      I0 => auto_restart_status_reg_n_0,
      I1 => \^int_ap_start\,
      I2 => p_1_in(2),
      I3 => int_task_ap_done_reg_0,
      I4 => \int_task_ap_done0__4\,
      I5 => int_task_ap_done,
      O => int_task_ap_done_i_1_n_0
    );
int_task_ap_done_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => s_axi_control_ARADDR(2),
      I1 => s_axi_control_ARADDR(4),
      I2 => s_axi_control_ARADDR(0),
      I3 => s_axi_control_ARADDR(1),
      I4 => s_axi_control_ARADDR(3),
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
      D => int_task_ap_done_i_1_n_0,
      Q => int_task_ap_done,
      R => ap_rst_n_inv
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => \rdata[0]_i_2_n_0\,
      I2 => s_axi_control_ARADDR(0),
      O => \rdata[0]_i_1_n_0\
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[0]\,
      I1 => \int_ier_reg_n_0_[0]\,
      I2 => s_axi_control_ARADDR(3),
      I3 => int_gie_reg_n_0,
      I4 => s_axi_control_ARADDR(2),
      I5 => \^int_ap_start\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => s_axi_control_ARADDR(0),
      O => \rdata[1]_i_1_n_0\
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A0A0CFC0"
    )
        port map (
      I0 => \int_isr_reg_n_0_[1]\,
      I1 => p_0_in,
      I2 => s_axi_control_ARADDR(3),
      I3 => int_task_ap_done,
      I4 => s_axi_control_ARADDR(2),
      I5 => s_axi_control_ARADDR(4),
      O => \rdata[1]_i_2_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(3),
      I2 => p_1_in(2),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[2]_i_1_n_0\
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(3),
      I2 => int_ap_ready,
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[3]_i_1_n_0\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(3),
      I2 => p_1_in(7),
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[7]_i_1_n_0\
    );
\rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_control_ARADDR(1),
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      I2 => s_axi_control_ARVALID,
      O => \rdata[9]_i_1_n_0\
    );
\rdata[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_control_ARVALID,
      I1 => \^fsm_onehot_rstate_reg[1]_0\,
      O => ar_hs
    );
\rdata[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => s_axi_control_ARADDR(4),
      I1 => s_axi_control_ARADDR(3),
      I2 => \^interrupt\,
      I3 => s_axi_control_ARADDR(2),
      I4 => s_axi_control_ARADDR(0),
      O => \rdata[9]_i_3_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[0]_i_1_n_0\,
      Q => s_axi_control_RDATA(0),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[1]_i_1_n_0\,
      Q => s_axi_control_RDATA(1),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[2]_i_1_n_0\,
      Q => s_axi_control_RDATA(2),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[3]_i_1_n_0\,
      Q => s_axi_control_RDATA(3),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[7]_i_1_n_0\,
      Q => s_axi_control_RDATA(4),
      R => \rdata[9]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \rdata[9]_i_3_n_0\,
      Q => s_axi_control_RDATA(5),
      R => \rdata[9]_i_1_n_0\
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
    \rx1_fu_50_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \rx1_fu_50_reg[2]\ : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    data_in_ap_vld : in STD_LOGIC;
    int_ap_start : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    int_task_ap_done_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_example_acc_0_0_example_acc_flow_control_loop_pipe : entity is "example_acc_flow_control_loop_pipe";
end design_1_example_acc_0_0_example_acc_flow_control_loop_pipe;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc_flow_control_loop_pipe is
  signal ap_loop_init : STD_LOGIC;
  signal ap_loop_init_i_1_n_0 : STD_LOGIC;
  signal \^rx1_fu_50_reg[0]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \rx1_fu_50[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rx1_fu_50[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rx1_fu_50[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \rx1_fu_50[3]_i_1\ : label is "soft_lutpair5";
begin
  \rx1_fu_50_reg[0]\ <= \^rx1_fu_50_reg[0]\;
ap_loop_init_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF2AFF"
    )
        port map (
      I0 => ap_loop_init,
      I1 => data_in_ap_vld,
      I2 => int_ap_start,
      I3 => ap_rst_n,
      I4 => \^rx1_fu_50_reg[0]\,
      O => ap_loop_init_i_1_n_0
    );
ap_loop_init_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_loop_init_i_1_n_0,
      Q => ap_loop_init,
      R => '0'
    );
\int_isr[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init,
      I2 => Q(3),
      I3 => Q(1),
      I4 => Q(2),
      I5 => int_task_ap_done_reg,
      O => \^rx1_fu_50_reg[0]\
    );
int_task_ap_done_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      I3 => ap_loop_init,
      I4 => Q(0),
      I5 => int_task_ap_done_reg,
      O => \rx1_fu_50_reg[2]\
    );
\rx1_fu_50[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => ap_loop_init,
      I1 => Q(0),
      O => D(0)
    );
\rx1_fu_50[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"12"
    )
        port map (
      I0 => Q(0),
      I1 => ap_loop_init,
      I2 => Q(1),
      O => D(1)
    );
\rx1_fu_50[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => ap_loop_init,
      I3 => Q(2),
      O => D(2)
    );
\rx1_fu_50[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => ap_loop_init,
      I4 => Q(3),
      O => D(3)
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
    data_in_ap_vld : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_in_ap_ack : out STD_LOGIC;
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
  attribute ap_ST_fsm_state1 of design_1_example_acc_0_0_example_acc : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of design_1_example_acc_0_0_example_acc : entity is "yes";
end design_1_example_acc_0_0_example_acc;

architecture STRUCTURE of design_1_example_acc_0_0_example_acc is
  signal \<const0>\ : STD_LOGIC;
  signal control_s_axi_U_n_8 : STD_LOGIC;
  signal \^data_in_ap_ack\ : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_0 : STD_LOGIC;
  signal flow_control_loop_pipe_U_n_5 : STD_LOGIC;
  signal int_ap_start : STD_LOGIC;
  signal rx1_fu_50 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_fu_68_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  data_in_ap_ack <= \^data_in_ap_ack\;
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
  s_axi_control_RDATA(15) <= \<const0>\;
  s_axi_control_RDATA(14) <= \<const0>\;
  s_axi_control_RDATA(13) <= \<const0>\;
  s_axi_control_RDATA(12) <= \<const0>\;
  s_axi_control_RDATA(11) <= \<const0>\;
  s_axi_control_RDATA(10) <= \<const0>\;
  s_axi_control_RDATA(9) <= \^s_axi_control_rdata\(9);
  s_axi_control_RDATA(8) <= \<const0>\;
  s_axi_control_RDATA(7) <= \^s_axi_control_rdata\(7);
  s_axi_control_RDATA(6) <= \<const0>\;
  s_axi_control_RDATA(5) <= \<const0>\;
  s_axi_control_RDATA(4) <= \<const0>\;
  s_axi_control_RDATA(3 downto 0) <= \^s_axi_control_rdata\(3 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
control_s_axi_U: entity work.design_1_example_acc_0_0_example_acc_control_s_axi
     port map (
      \FSM_onehot_rstate_reg[1]_0\ => s_axi_control_ARREADY,
      \FSM_onehot_wstate_reg[1]_0\ => s_axi_control_AWREADY,
      \FSM_onehot_wstate_reg[2]_0\ => s_axi_control_WREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      data_in_ap_ack => \^data_in_ap_ack\,
      data_in_ap_vld => data_in_ap_vld,
      data_in_ap_vld_0 => control_s_axi_U_n_8,
      int_ap_start => int_ap_start,
      \int_isr_reg[0]_0\ => flow_control_loop_pipe_U_n_0,
      int_task_ap_done_reg_0 => flow_control_loop_pipe_U_n_5,
      interrupt => interrupt,
      s_axi_control_ARADDR(4 downto 0) => s_axi_control_ARADDR(4 downto 0),
      s_axi_control_ARVALID => s_axi_control_ARVALID,
      s_axi_control_AWADDR(2 downto 0) => s_axi_control_AWADDR(4 downto 2),
      s_axi_control_AWVALID => s_axi_control_AWVALID,
      s_axi_control_BREADY => s_axi_control_BREADY,
      s_axi_control_BVALID => s_axi_control_BVALID,
      s_axi_control_RDATA(5) => \^s_axi_control_rdata\(9),
      s_axi_control_RDATA(4) => \^s_axi_control_rdata\(7),
      s_axi_control_RDATA(3 downto 0) => \^s_axi_control_rdata\(3 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(2) => s_axi_control_WDATA(7),
      s_axi_control_WDATA(1 downto 0) => s_axi_control_WDATA(1 downto 0),
      s_axi_control_WSTRB(0) => s_axi_control_WSTRB(0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
flow_control_loop_pipe_U: entity work.design_1_example_acc_0_0_example_acc_flow_control_loop_pipe
     port map (
      D(3 downto 0) => rx_fu_68_p2(3 downto 0),
      Q(3 downto 0) => rx1_fu_50(3 downto 0),
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      data_in_ap_vld => data_in_ap_vld,
      int_ap_start => int_ap_start,
      int_task_ap_done_reg => control_s_axi_U_n_8,
      \rx1_fu_50_reg[0]\ => flow_control_loop_pipe_U_n_0,
      \rx1_fu_50_reg[2]\ => flow_control_loop_pipe_U_n_5
    );
\rx1_fu_50_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^data_in_ap_ack\,
      D => rx_fu_68_p2(0),
      Q => rx1_fu_50(0),
      R => '0'
    );
\rx1_fu_50_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^data_in_ap_ack\,
      D => rx_fu_68_p2(1),
      Q => rx1_fu_50(1),
      R => '0'
    );
\rx1_fu_50_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^data_in_ap_ack\,
      D => rx_fu_68_p2(2),
      Q => rx1_fu_50(2),
      R => '0'
    );
\rx1_fu_50_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => \^data_in_ap_ack\,
      D => rx_fu_68_p2(3),
      Q => rx1_fu_50(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_example_acc_0_0 is
  port (
    data_in_ap_vld : in STD_LOGIC;
    data_in_ap_ack : out STD_LOGIC;
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
    data_in : in STD_LOGIC_VECTOR ( 0 to 0 )
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
  signal \^s_axi_control_rdata\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_inst_s_axi_control_BRESP_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s_axi_control_RDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 4 );
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
  attribute ap_ST_fsm_state1 of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst_n : signal is "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  attribute X_INTERFACE_PARAMETER of ap_rst_n : signal is "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
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
  attribute X_INTERFACE_PARAMETER of s_axi_control_WVALID : signal is "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 99999001, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of data_in : signal is "xilinx.com:signal:data:1.0 data_in DATA";
  attribute X_INTERFACE_PARAMETER of data_in : signal is "XIL_INTERFACENAME data_in, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of s_axi_control_ARADDR : signal is "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR";
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
  s_axi_control_RDATA(15) <= \<const0>\;
  s_axi_control_RDATA(14) <= \<const0>\;
  s_axi_control_RDATA(13) <= \<const0>\;
  s_axi_control_RDATA(12) <= \<const0>\;
  s_axi_control_RDATA(11) <= \<const0>\;
  s_axi_control_RDATA(10) <= \<const0>\;
  s_axi_control_RDATA(9) <= \^s_axi_control_rdata\(9);
  s_axi_control_RDATA(8) <= \<const0>\;
  s_axi_control_RDATA(7) <= \^s_axi_control_rdata\(7);
  s_axi_control_RDATA(6) <= \<const0>\;
  s_axi_control_RDATA(5) <= \<const0>\;
  s_axi_control_RDATA(4) <= \<const0>\;
  s_axi_control_RDATA(3 downto 0) <= \^s_axi_control_rdata\(3 downto 0);
  s_axi_control_RRESP(1) <= \<const0>\;
  s_axi_control_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_example_acc_0_0_example_acc
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      data_in(0) => '0',
      data_in_ap_ack => data_in_ap_ack,
      data_in_ap_vld => data_in_ap_vld,
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
      s_axi_control_RDATA(31 downto 10) => NLW_inst_s_axi_control_RDATA_UNCONNECTED(31 downto 10),
      s_axi_control_RDATA(9) => \^s_axi_control_rdata\(9),
      s_axi_control_RDATA(8) => NLW_inst_s_axi_control_RDATA_UNCONNECTED(8),
      s_axi_control_RDATA(7) => \^s_axi_control_rdata\(7),
      s_axi_control_RDATA(6 downto 4) => NLW_inst_s_axi_control_RDATA_UNCONNECTED(6 downto 4),
      s_axi_control_RDATA(3 downto 0) => \^s_axi_control_rdata\(3 downto 0),
      s_axi_control_RREADY => s_axi_control_RREADY,
      s_axi_control_RRESP(1 downto 0) => NLW_inst_s_axi_control_RRESP_UNCONNECTED(1 downto 0),
      s_axi_control_RVALID => s_axi_control_RVALID,
      s_axi_control_WDATA(31 downto 8) => B"000000000000000000000000",
      s_axi_control_WDATA(7) => s_axi_control_WDATA(7),
      s_axi_control_WDATA(6 downto 2) => B"00000",
      s_axi_control_WDATA(1 downto 0) => s_axi_control_WDATA(1 downto 0),
      s_axi_control_WREADY => s_axi_control_WREADY,
      s_axi_control_WSTRB(3 downto 1) => B"000",
      s_axi_control_WSTRB(0) => s_axi_control_WSTRB(0),
      s_axi_control_WVALID => s_axi_control_WVALID
    );
end STRUCTURE;
