-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sat Oct 19 11:09:18 2024
-- Host        : RYN-B10-PC-13 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_accelerator_0_0_stub.vhdl
-- Design      : design_1_accelerator_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfvc784-1-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    w1_ce0 : out STD_LOGIC;
    w1_ce1 : out STD_LOGIC;
    w2_ce0 : out STD_LOGIC;
    w2_ce1 : out STD_LOGIC;
    bias_1_ce0 : out STD_LOGIC;
    bias_2_ce0 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_return : out STD_LOGIC_VECTOR ( 255 downto 0 );
    w1_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    w1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    w1_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    w1_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    w2_address0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    w2_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    w2_address1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    w2_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bias_1_address0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    bias_1_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    bias_2_address0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    bias_2_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    training : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "w1_ce0,w1_ce1,w2_ce0,w2_ce1,bias_1_ce0,bias_2_ce0,ap_clk,ap_rst,ap_done,ap_idle,ap_ready,ap_start,ap_return[255:0],w1_address0[1:0],w1_q0[15:0],w1_address1[1:0],w1_q1[15:0],w2_address0[1:0],w2_q0[15:0],w2_address1[1:0],w2_q1[15:0],bias_1_address0[0:0],bias_1_q0[15:0],bias_2_address0[0:0],bias_2_q0[15:0],training[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "accelerator,Vivado 2024.1";
begin
end;
