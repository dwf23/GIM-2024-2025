-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Feb  9 20:39:55 2025
-- Host        : Lindsey_laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spi_master_logic_0_0_sim_netlist.vhdl
-- Design      : design_1_spi_master_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master_logic is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out_ap_vld : out STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in_ap_vld : in STD_LOGIC
  );
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master_logic : entity is "1'b1";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master_logic : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master_logic is
  signal \<const0>\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[10]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \data_out[11]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[12]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \data_out[13]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[14]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data_out[15]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data_out[17]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[18]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data_out[19]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[1]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[20]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_out[21]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[22]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data_out[23]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[24]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data_out[25]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[26]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_out[27]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[28]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_out[29]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[2]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[30]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_out[31]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_out[3]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[5]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[6]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \data_out[7]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[8]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \data_out[9]_INST_0\ : label is "soft_lutpair11";
begin
  data_out_ap_vld <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\data_out[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data_in_ap_vld,
      O => data_out(0)
    );
\data_out[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(9),
      I1 => data_in_ap_vld,
      O => data_out(10)
    );
\data_out[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(10),
      I1 => data_in_ap_vld,
      O => data_out(11)
    );
\data_out[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(11),
      I1 => data_in_ap_vld,
      O => data_out(12)
    );
\data_out[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(12),
      I1 => data_in_ap_vld,
      O => data_out(13)
    );
\data_out[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(13),
      I1 => data_in_ap_vld,
      O => data_out(14)
    );
\data_out[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(14),
      I1 => data_in_ap_vld,
      O => data_out(15)
    );
\data_out[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(15),
      I1 => data_in_ap_vld,
      O => data_out(16)
    );
\data_out[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(16),
      I1 => data_in_ap_vld,
      O => data_out(17)
    );
\data_out[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(17),
      I1 => data_in_ap_vld,
      O => data_out(18)
    );
\data_out[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(18),
      I1 => data_in_ap_vld,
      O => data_out(19)
    );
\data_out[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(0),
      I1 => data_in_ap_vld,
      O => data_out(1)
    );
\data_out[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(19),
      I1 => data_in_ap_vld,
      O => data_out(20)
    );
\data_out[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(20),
      I1 => data_in_ap_vld,
      O => data_out(21)
    );
\data_out[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(21),
      I1 => data_in_ap_vld,
      O => data_out(22)
    );
\data_out[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(22),
      I1 => data_in_ap_vld,
      O => data_out(23)
    );
\data_out[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(23),
      I1 => data_in_ap_vld,
      O => data_out(24)
    );
\data_out[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(24),
      I1 => data_in_ap_vld,
      O => data_out(25)
    );
\data_out[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(25),
      I1 => data_in_ap_vld,
      O => data_out(26)
    );
\data_out[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(26),
      I1 => data_in_ap_vld,
      O => data_out(27)
    );
\data_out[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ap_vld,
      I1 => data_in(27),
      O => data_out(28)
    );
\data_out[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ap_vld,
      I1 => data_in(28),
      O => data_out(29)
    );
\data_out[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(1),
      I1 => data_in_ap_vld,
      O => data_out(2)
    );
\data_out[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ap_vld,
      I1 => data_in(29),
      O => data_out(30)
    );
\data_out[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_in_ap_vld,
      I1 => data_in(30),
      O => data_out(31)
    );
\data_out[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(2),
      I1 => data_in_ap_vld,
      O => data_out(3)
    );
\data_out[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(3),
      I1 => data_in_ap_vld,
      O => data_out(4)
    );
\data_out[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(4),
      I1 => data_in_ap_vld,
      O => data_out(5)
    );
\data_out[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(5),
      I1 => data_in_ap_vld,
      O => data_out(6)
    );
\data_out[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(6),
      I1 => data_in_ap_vld,
      O => data_out(7)
    );
\data_out[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in_ap_vld,
      O => data_out(8)
    );
\data_out[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data_in(8),
      I1 => data_in_ap_vld,
      O => data_out(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    data_out_ap_vld : out STD_LOGIC;
    data_in_ap_vld : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_spi_master_logic_0_0,spi_master_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "spi_master_logic,Vivado 2024.2";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const1>\ : STD_LOGIC;
  signal NLW_inst_data_out_ap_vld_UNCONNECTED : STD_LOGIC;
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
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_MODE of ap_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of data_in : signal is "xilinx.com:signal:data:1.0 data_in DATA";
  attribute X_INTERFACE_MODE of data_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_in : signal is "XIL_INTERFACENAME data_in, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_out : signal is "xilinx.com:signal:data:1.0 data_out DATA";
  attribute X_INTERFACE_MODE of data_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of data_out : signal is "XIL_INTERFACENAME data_out, LAYERED_METADATA undef";
begin
  data_out_ap_vld <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spi_master_logic
     port map (
      ap_clk => '0',
      ap_rst => '0',
      data_in(31) => '0',
      data_in(30 downto 0) => data_in(30 downto 0),
      data_in_ap_vld => data_in_ap_vld,
      data_out(31 downto 0) => data_out(31 downto 0),
      data_out_ap_vld => NLW_inst_data_out_ap_vld_UNCONNECTED
    );
end STRUCTURE;
