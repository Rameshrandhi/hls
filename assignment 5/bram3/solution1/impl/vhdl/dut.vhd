-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_stream_TVALID : IN STD_LOGIC;
    out_stream_TREADY : IN STD_LOGIC;
    in_stream_TDATA : IN STD_LOGIC_VECTOR (7 downto 0);
    in_stream_TREADY : OUT STD_LOGIC;
    out_stream_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    out_stream_TVALID : OUT STD_LOGIC );
end;


architecture behav of dut is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "dut_dut,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200t-fbg676-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.632333,HLS_SYN_LAT=16,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=133,HLS_SYN_LUT=239,HLS_VERSION=2022_2}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_pp0_stage2 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_pp0_stage3 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal icmp_ln22_fu_170_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage3 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal do_init_reg_69 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state5_pp0_stage3_iter0 : BOOLEAN;
    signal ap_block_pp0_stage3_11001 : BOOLEAN;
    signal in_stream_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_mux_do_init_phi_fu_74_p6 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal ap_CS_fsm_pp0_stage2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage2 : signal is "none";
    signal ap_block_pp0_stage2 : BOOLEAN;
    signal ap_block_pp0_stage3 : BOOLEAN;
    signal out_stream_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal bram_V_rewind_reg_86 : STD_LOGIC_VECTOR (31 downto 0);
    signal i1_reg_101 : STD_LOGIC_VECTOR (1 downto 0);
    signal bram_V_phi_reg_115 : STD_LOGIC_VECTOR (31 downto 0);
    signal in_stream_read_reg_178 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal regslice_both_out_stream_U_apdone_blk : STD_LOGIC;
    signal ap_block_state6_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal in_stream_read_1_reg_183 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal in_stream_read_2_reg_188 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_state4_pp0_stage2_iter0 : BOOLEAN;
    signal ap_block_pp0_stage2_11001 : BOOLEAN;
    signal i_fu_164_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal i_reg_198 : STD_LOGIC_VECTOR (1 downto 0);
    signal icmp_ln22_reg_203 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_reg_pp0_iter0_reg : STD_LOGIC := '0';
    signal ap_block_pp0_stage3_subdone : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_phi_mux_bram_V_phi_phi_fu_119_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal bram_V_fu_127_p5 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_phi_reg_pp0_iter0_bram_V_phi_reg_115 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage3_01001 : BOOLEAN;
    signal shl_ln_fu_137_p3 : STD_LOGIC_VECTOR (4 downto 0);
    signal zext_ln24_fu_145_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal lshr_ln24_fu_149_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln24_fu_155_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_idle_pp0_0to0 : STD_LOGIC;
    signal ap_reset_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_block_pp0_stage2_subdone : BOOLEAN;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal regslice_both_in_stream_U_apdone_blk : STD_LOGIC;
    signal in_stream_TDATA_int_regslice : STD_LOGIC_VECTOR (7 downto 0);
    signal in_stream_TVALID_int_regslice : STD_LOGIC;
    signal in_stream_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_in_stream_U_ack_in : STD_LOGIC;
    signal out_stream_TDATA_int_regslice : STD_LOGIC_VECTOR (31 downto 0);
    signal out_stream_TVALID_int_regslice : STD_LOGIC;
    signal out_stream_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_out_stream_U_vld_out : STD_LOGIC;
    signal ap_condition_106 : BOOLEAN;
    signal ap_condition_52 : BOOLEAN;
    signal ap_ce_reg : STD_LOGIC;

    component dut_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_in_stream_U : component dut_regslice_both
    generic map (
        DataWidth => 8)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => in_stream_TDATA,
        vld_in => in_stream_TVALID,
        ack_in => regslice_both_in_stream_U_ack_in,
        data_out => in_stream_TDATA_int_regslice,
        vld_out => in_stream_TVALID_int_regslice,
        ack_out => in_stream_TREADY_int_regslice,
        apdone_blk => regslice_both_in_stream_U_apdone_blk);

    regslice_both_out_stream_U : component dut_regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => out_stream_TDATA_int_regslice,
        vld_in => out_stream_TVALID_int_regslice,
        ack_in => out_stream_TREADY_int_regslice,
        data_out => out_stream_TDATA,
        vld_out => regslice_both_out_stream_U_vld_out,
        ack_out => out_stream_TREADY,
        apdone_blk => regslice_both_out_stream_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter0_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
                    ap_enable_reg_pp0_iter0_reg <= ap_start;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    bram_V_phi_reg_115_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_1 = ap_condition_52)) then
                if ((do_init_reg_69 = ap_const_lv1_1)) then 
                    bram_V_phi_reg_115 <= bram_V_fu_127_p5;
                elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                    bram_V_phi_reg_115 <= ap_phi_reg_pp0_iter0_bram_V_phi_reg_115;
                end if;
            end if; 
        end if;
    end process;

    do_init_reg_69_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln22_reg_203 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                do_init_reg_69 <= ap_const_lv1_0;
            elsif ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln22_reg_203 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
                do_init_reg_69 <= ap_const_lv1_1;
            end if; 
        end if;
    end process;

    i1_reg_101_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln22_reg_203 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                i1_reg_101 <= i_reg_198;
            elsif ((((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln22_reg_203 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
                i1_reg_101 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (do_init_reg_69 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                ap_phi_reg_pp0_iter0_bram_V_phi_reg_115 <= bram_V_rewind_reg_86;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln22_reg_203 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                bram_V_rewind_reg_86 <= bram_V_phi_reg_115;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then
                i_reg_198 <= i_fu_164_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then
                icmp_ln22_reg_203 <= icmp_ln22_fu_170_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                in_stream_read_1_reg_183 <= in_stream_TDATA_int_regslice;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2))) then
                in_stream_read_2_reg_188 <= in_stream_TDATA_int_regslice;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_phi_mux_do_init_phi_fu_74_p6 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                in_stream_read_reg_178 <= in_stream_TDATA_int_regslice;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_block_pp0_stage3_subdone, ap_block_pp0_stage0_subdone, ap_reset_idle_pp0, ap_block_pp0_stage1_subdone, ap_block_pp0_stage2_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_reset_idle_pp0 = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_reset_idle_pp0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_pp0_stage2 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage2_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage2;
                end if;
            when ap_ST_fsm_pp0_stage3 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage3_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage3;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_pp0_stage2 <= ap_CS_fsm(3);
    ap_CS_fsm_pp0_stage3 <= ap_CS_fsm(4);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter0, ap_phi_mux_do_init_phi_fu_74_p6, ap_enable_reg_pp0_iter1, regslice_both_out_stream_U_apdone_blk, in_stream_TVALID_int_regslice, out_stream_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_phi_mux_do_init_phi_fu_74_p6 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((out_stream_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_out_stream_U_apdone_blk = ap_const_logic_1))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, ap_phi_mux_do_init_phi_fu_74_p6, ap_enable_reg_pp0_iter1, regslice_both_out_stream_U_apdone_blk, in_stream_TVALID_int_regslice, out_stream_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_phi_mux_do_init_phi_fu_74_p6 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((out_stream_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_out_stream_U_apdone_blk = ap_const_logic_1))));
    end process;

        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage1_11001_assign_proc : process(ap_enable_reg_pp0_iter0, do_init_reg_69, in_stream_TVALID_int_regslice)
    begin
                ap_block_pp0_stage1_11001 <= ((do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0));
    end process;


    ap_block_pp0_stage1_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, do_init_reg_69, in_stream_TVALID_int_regslice)
    begin
                ap_block_pp0_stage1_subdone <= ((do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0));
    end process;

        ap_block_pp0_stage2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage2_11001_assign_proc : process(ap_enable_reg_pp0_iter0, do_init_reg_69, in_stream_TVALID_int_regslice)
    begin
                ap_block_pp0_stage2_11001 <= ((do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0));
    end process;


    ap_block_pp0_stage2_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, do_init_reg_69, in_stream_TVALID_int_regslice)
    begin
                ap_block_pp0_stage2_subdone <= ((do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0));
    end process;

        ap_block_pp0_stage3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage3_01001_assign_proc : process(ap_enable_reg_pp0_iter0, do_init_reg_69, in_stream_TVALID_int_regslice, out_stream_TREADY_int_regslice)
    begin
                ap_block_pp0_stage3_01001 <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and ((out_stream_TREADY_int_regslice = ap_const_logic_0) or ((do_init_reg_69 = ap_const_lv1_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage3_11001_assign_proc : process(ap_enable_reg_pp0_iter0, do_init_reg_69, in_stream_TVALID_int_regslice, out_stream_TREADY_int_regslice)
    begin
                ap_block_pp0_stage3_11001 <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and ((out_stream_TREADY_int_regslice = ap_const_logic_0) or ((do_init_reg_69 = ap_const_lv1_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0))));
    end process;


    ap_block_pp0_stage3_subdone_assign_proc : process(ap_enable_reg_pp0_iter0, do_init_reg_69, in_stream_TVALID_int_regslice, out_stream_TREADY_int_regslice)
    begin
                ap_block_pp0_stage3_subdone <= ((ap_enable_reg_pp0_iter0 = ap_const_logic_1) and ((out_stream_TREADY_int_regslice = ap_const_logic_0) or ((do_init_reg_69 = ap_const_lv1_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0))));
    end process;


    ap_block_state2_pp0_stage0_iter0_assign_proc : process(ap_phi_mux_do_init_phi_fu_74_p6, in_stream_TVALID_int_regslice)
    begin
                ap_block_state2_pp0_stage0_iter0 <= ((ap_phi_mux_do_init_phi_fu_74_p6 = ap_const_lv1_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0));
    end process;


    ap_block_state3_pp0_stage1_iter0_assign_proc : process(do_init_reg_69, in_stream_TVALID_int_regslice)
    begin
                ap_block_state3_pp0_stage1_iter0 <= ((do_init_reg_69 = ap_const_lv1_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0));
    end process;


    ap_block_state4_pp0_stage2_iter0_assign_proc : process(do_init_reg_69, in_stream_TVALID_int_regslice)
    begin
                ap_block_state4_pp0_stage2_iter0 <= ((do_init_reg_69 = ap_const_lv1_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0));
    end process;


    ap_block_state5_pp0_stage3_iter0_assign_proc : process(do_init_reg_69, in_stream_TVALID_int_regslice, out_stream_TREADY_int_regslice)
    begin
                ap_block_state5_pp0_stage3_iter0 <= ((out_stream_TREADY_int_regslice = ap_const_logic_0) or ((do_init_reg_69 = ap_const_lv1_1) and (in_stream_TVALID_int_regslice = ap_const_logic_0)));
    end process;


    ap_block_state6_pp0_stage0_iter1_assign_proc : process(regslice_both_out_stream_U_apdone_blk, out_stream_TREADY_int_regslice)
    begin
                ap_block_state6_pp0_stage0_iter1 <= ((out_stream_TREADY_int_regslice = ap_const_logic_0) or (regslice_both_out_stream_U_apdone_blk = ap_const_logic_1));
    end process;


    ap_condition_106_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_enable_reg_pp0_iter1)
    begin
                ap_condition_106 <= ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_condition_52_assign_proc : process(ap_CS_fsm_pp0_stage3, ap_enable_reg_pp0_iter0, ap_block_pp0_stage3_11001)
    begin
                ap_condition_52 <= ((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001, icmp_ln22_reg_203)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln22_reg_203 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_enable_reg_pp0_iter0_assign_proc : process(ap_start, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0_reg)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) then 
            ap_enable_reg_pp0_iter0 <= ap_start;
        else 
            ap_enable_reg_pp0_iter0 <= ap_enable_reg_pp0_iter0_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_0to0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0_0to0 <= ap_const_logic_1;
        else 
            ap_idle_pp0_0to0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_bram_V_phi_phi_fu_119_p4_assign_proc : process(do_init_reg_69, bram_V_fu_127_p5, ap_phi_reg_pp0_iter0_bram_V_phi_reg_115)
    begin
        if ((do_init_reg_69 = ap_const_lv1_1)) then 
            ap_phi_mux_bram_V_phi_phi_fu_119_p4 <= bram_V_fu_127_p5;
        else 
            ap_phi_mux_bram_V_phi_phi_fu_119_p4 <= ap_phi_reg_pp0_iter0_bram_V_phi_reg_115;
        end if; 
    end process;


    ap_phi_mux_do_init_phi_fu_74_p6_assign_proc : process(do_init_reg_69, icmp_ln22_reg_203, ap_condition_106)
    begin
        if ((ap_const_boolean_1 = ap_condition_106)) then
            if ((icmp_ln22_reg_203 = ap_const_lv1_1)) then 
                ap_phi_mux_do_init_phi_fu_74_p6 <= ap_const_lv1_1;
            elsif ((icmp_ln22_reg_203 = ap_const_lv1_0)) then 
                ap_phi_mux_do_init_phi_fu_74_p6 <= ap_const_lv1_0;
            else 
                ap_phi_mux_do_init_phi_fu_74_p6 <= do_init_reg_69;
            end if;
        else 
            ap_phi_mux_do_init_phi_fu_74_p6 <= do_init_reg_69;
        end if; 
    end process;


    ap_ready_assign_proc : process(icmp_ln22_fu_170_p2, ap_CS_fsm_pp0_stage3, ap_enable_reg_pp0_iter0, ap_block_pp0_stage3_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (icmp_ln22_fu_170_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_reset_idle_pp0_assign_proc : process(ap_start, ap_idle_pp0_0to0)
    begin
        if (((ap_idle_pp0_0to0 = ap_const_logic_1) and (ap_start = ap_const_logic_0))) then 
            ap_reset_idle_pp0 <= ap_const_logic_1;
        else 
            ap_reset_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    bram_V_fu_127_p5 <= (((in_stream_TDATA_int_regslice & in_stream_read_2_reg_188) & in_stream_read_1_reg_183) & in_stream_read_reg_178);
    i_fu_164_p2 <= std_logic_vector(unsigned(i1_reg_101) + unsigned(ap_const_lv2_1));
    icmp_ln22_fu_170_p2 <= "1" when (i1_reg_101 = ap_const_lv2_3) else "0";

    in_stream_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage3, ap_enable_reg_pp0_iter0, do_init_reg_69, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_phi_mux_do_init_phi_fu_74_p6, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage2, ap_block_pp0_stage3, in_stream_TVALID_int_regslice)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage3) and (do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2) and (do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)) or ((ap_const_boolean_0 = ap_block_pp0_stage1) and (do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_phi_mux_do_init_phi_fu_74_p6 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            in_stream_TDATA_blk_n <= in_stream_TVALID_int_regslice;
        else 
            in_stream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    in_stream_TREADY <= regslice_both_in_stream_U_ack_in;

    in_stream_TREADY_int_regslice_assign_proc : process(ap_CS_fsm_pp0_stage3, ap_enable_reg_pp0_iter0, do_init_reg_69, ap_block_pp0_stage3_11001, ap_CS_fsm_pp0_stage0, ap_phi_mux_do_init_phi_fu_74_p6, ap_CS_fsm_pp0_stage1, ap_CS_fsm_pp0_stage2, ap_block_pp0_stage0_11001, ap_block_pp0_stage1_11001, ap_block_pp0_stage2_11001)
    begin
        if ((((ap_phi_mux_do_init_phi_fu_74_p6 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage2_11001) and (do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage2)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (do_init_reg_69 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            in_stream_TREADY_int_regslice <= ap_const_logic_1;
        else 
            in_stream_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    lshr_ln24_fu_149_p2 <= std_logic_vector(shift_right(unsigned(ap_phi_mux_bram_V_phi_phi_fu_119_p4),to_integer(unsigned('0' & zext_ln24_fu_145_p1(31-1 downto 0)))));

    out_stream_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage3, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_block_pp0_stage3, ap_enable_reg_pp0_iter1, out_stream_TREADY_int_regslice)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage3) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3)) or ((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1)))) then 
            out_stream_TDATA_blk_n <= out_stream_TREADY_int_regslice;
        else 
            out_stream_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    out_stream_TDATA_int_regslice <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln24_fu_155_p1),32));
    out_stream_TVALID <= regslice_both_out_stream_U_vld_out;

    out_stream_TVALID_int_regslice_assign_proc : process(ap_CS_fsm_pp0_stage3, ap_enable_reg_pp0_iter0, ap_block_pp0_stage3_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage3_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage3))) then 
            out_stream_TVALID_int_regslice <= ap_const_logic_1;
        else 
            out_stream_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    shl_ln_fu_137_p3 <= (i1_reg_101 & ap_const_lv3_0);
    trunc_ln24_fu_155_p1 <= lshr_ln24_fu_149_p2(8 - 1 downto 0);
    zext_ln24_fu_145_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(shl_ln_fu_137_p3),32));
end behav;
