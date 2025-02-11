-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sun Feb  9 20:45:24 2025
-- Host        : Lindsey_laptop running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_spi_master_0_1_stub.vhdl
-- Design      : design_1_spi_master_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    miso_ap_vld : in STD_LOGIC;
    data_out_ap_vld : in STD_LOGIC;
    data_in_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    sclk : out STD_LOGIC_VECTOR ( 0 to 0 );
    cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    mosi : out STD_LOGIC_VECTOR ( 0 to 0 );
    miso : in STD_LOGIC_VECTOR ( 0 to 0 );
    data_out : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_in : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_spi_master_0_1,spi_master,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_spi_master_0_1,spi_master,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=spi_master,x_ipVersion=1.0,x_ipCoreRevision=2113948003,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "HLS";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "miso_ap_vld,data_out_ap_vld,data_in_ap_vld,ap_clk,ap_rst,sclk[0:0],cs[0:0],mosi[0:0],miso[0:0],data_out[31:0],data_in[31:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_clk : signal is "xilinx.com:signal:clock:1.0 ap_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ap_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_clk : signal is "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_MODE of ap_rst : signal is "slave";
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sclk : signal is "xilinx.com:signal:data:1.0 sclk DATA";
  attribute X_INTERFACE_MODE of sclk : signal is "master";
  attribute X_INTERFACE_PARAMETER of sclk : signal is "XIL_INTERFACENAME sclk, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of cs : signal is "xilinx.com:signal:data:1.0 cs DATA";
  attribute X_INTERFACE_MODE of cs : signal is "master";
  attribute X_INTERFACE_PARAMETER of cs : signal is "XIL_INTERFACENAME cs, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of mosi : signal is "xilinx.com:signal:data:1.0 mosi DATA";
  attribute X_INTERFACE_MODE of mosi : signal is "master";
  attribute X_INTERFACE_PARAMETER of mosi : signal is "XIL_INTERFACENAME mosi, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of miso : signal is "xilinx.com:signal:data:1.0 miso DATA";
  attribute X_INTERFACE_MODE of miso : signal is "slave";
  attribute X_INTERFACE_PARAMETER of miso : signal is "XIL_INTERFACENAME miso, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_out : signal is "xilinx.com:signal:data:1.0 data_out DATA";
  attribute X_INTERFACE_MODE of data_out : signal is "slave";
  attribute X_INTERFACE_PARAMETER of data_out : signal is "XIL_INTERFACENAME data_out, LAYERED_METADATA undef";
  attribute X_INTERFACE_INFO of data_in : signal is "xilinx.com:signal:data:1.0 data_in DATA";
  attribute X_INTERFACE_MODE of data_in : signal is "master";
  attribute X_INTERFACE_PARAMETER of data_in : signal is "XIL_INTERFACENAME data_in, LAYERED_METADATA undef";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "spi_master,Vivado 2024.2";
begin
end;
