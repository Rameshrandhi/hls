-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2018.3
-- Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity multi is
port (
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    A : IN STD_LOGIC_VECTOR (7 downto 0);
    B : IN STD_LOGIC_VECTOR (7 downto 0);
    C : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of multi is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "multi,hls_ip_2018_3,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xa7a12tcsg325-1q,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.370000,HLS_SYN_LAT=0,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=0,HLS_SYN_LUT=42,HLS_VERSION=2018_3}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_logic_0 : STD_LOGIC := '0';

    signal tmp_4_fu_51_p0 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_4_fu_51_p1 : STD_LOGIC_VECTOR (7 downto 0);


begin



    C <= std_logic_vector(IEEE.numeric_std.resize(unsigned(std_logic_vector(signed(tmp_4_fu_51_p0) * signed(tmp_4_fu_51_p1))), 16));
    ap_done <= ap_start;
    ap_idle <= ap_const_logic_1;
    ap_ready <= ap_start;
    tmp_4_fu_51_p0 <= B;
    tmp_4_fu_51_p1 <= A;
end behav;
