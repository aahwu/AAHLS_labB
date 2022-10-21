-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bit_reverse is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    X_R_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_R_ce0 : OUT STD_LOGIC;
    X_R_we0 : OUT STD_LOGIC;
    X_R_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    X_R_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    X_R_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_R_ce1 : OUT STD_LOGIC;
    X_R_we1 : OUT STD_LOGIC;
    X_R_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    X_R_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    X_I_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_I_ce0 : OUT STD_LOGIC;
    X_I_we0 : OUT STD_LOGIC;
    X_I_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    X_I_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    X_I_address1 : OUT STD_LOGIC_VECTOR (9 downto 0);
    X_I_ce1 : OUT STD_LOGIC;
    X_I_we1 : OUT STD_LOGIC;
    X_I_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    X_I_q1 : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of bit_reverse is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "bit_reverse_bit_reverse,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.508000,HLS_SYN_LAT=2050,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1091,HLS_SYN_LUT=3523,HLS_VERSION=2022_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv1024_lc_1 : STD_LOGIC_VECTOR (1023 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv11_400 : STD_LOGIC_VECTOR (10 downto 0) := "10000000000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv1024_lc_2 : STD_LOGIC_VECTOR (1023 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal icmp_ln50_fu_129_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal ap_block_state2_pp0_stage1_iter0 : BOOLEAN;
    signal icmp_ln50_reg_225 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln50_fu_135_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln50_reg_229 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_Result_s_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_Result_s_reg_234 : STD_LOGIC_VECTOR (0 downto 0);
    signal X_R_addr_reg_238 : STD_LOGIC_VECTOR (9 downto 0);
    signal X_I_addr_reg_243 : STD_LOGIC_VECTOR (9 downto 0);
    signal X_R_addr_1_reg_248 : STD_LOGIC_VECTOR (9 downto 0);
    signal X_I_addr_1_reg_253 : STD_LOGIC_VECTOR (9 downto 0);
    signal i_cast_fu_144_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln587_fu_196_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_54 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_2 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_Val2_s_fu_58 : STD_LOGIC_VECTOR (1023 downto 0);
    signal p_Result_2_fu_186_p4 : STD_LOGIC_VECTOR (1023 downto 0);
    signal ap_sig_allocacmp_p_Val2_load : STD_LOGIC_VECTOR (1023 downto 0);
    signal zext_ln825_fu_150_p1 : STD_LOGIC_VECTOR (1023 downto 0);
    signal shl_ln825_fu_154_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal and_ln825_fu_160_p2 : STD_LOGIC_VECTOR (1023 downto 0);
    signal or_ln34_8_fu_172_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal zext_ln850_fu_182_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_predicate_op45_store_state2 : BOOLEAN;
    signal ap_enable_operation_45 : BOOLEAN;
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_state2_pp0_iter0_stage1 : BOOLEAN;
    signal ap_predicate_op38_load_state1 : BOOLEAN;
    signal ap_enable_operation_38 : BOOLEAN;
    signal ap_enable_state1_pp0_iter0_stage0 : BOOLEAN;
    signal ap_predicate_op44_load_state2 : BOOLEAN;
    signal ap_enable_operation_44 : BOOLEAN;
    signal ap_predicate_op48_store_state2 : BOOLEAN;
    signal ap_enable_operation_48 : BOOLEAN;
    signal ap_predicate_op47_store_state2 : BOOLEAN;
    signal ap_enable_operation_47 : BOOLEAN;
    signal ap_predicate_op40_load_state1 : BOOLEAN;
    signal ap_enable_operation_40 : BOOLEAN;
    signal ap_predicate_op46_load_state2 : BOOLEAN;
    signal ap_enable_operation_46 : BOOLEAN;
    signal ap_predicate_op49_store_state2 : BOOLEAN;
    signal ap_enable_operation_49 : BOOLEAN;
    signal ap_predicate_op33_load_state1 : BOOLEAN;
    signal ap_enable_operation_33 : BOOLEAN;
    signal ap_predicate_op42_load_state2 : BOOLEAN;
    signal ap_enable_operation_42 : BOOLEAN;
    signal ap_predicate_op35_load_state1 : BOOLEAN;
    signal ap_enable_operation_35 : BOOLEAN;
    signal ap_predicate_op43_load_state2 : BOOLEAN;
    signal ap_enable_operation_43 : BOOLEAN;
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component bit_reverse_flow_control_loop_pipe IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC;
        ap_continue : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_U : component bit_reverse_flow_control_loop_pipe
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int,
        ap_continue => ap_const_logic_1);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    i_fu_54_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_init = ap_const_logic_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_fu_54 <= ap_const_lv11_0;
            elsif (((icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                i_fu_54 <= add_ln50_reg_229;
            end if; 
        end if;
    end process;

    p_Val2_s_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if (((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0))) then 
                    p_Val2_s_fu_58 <= p_Result_2_fu_186_p4;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    p_Val2_s_fu_58 <= ap_const_lv1024_lc_1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                X_I_addr_1_reg_253 <= zext_ln587_fu_196_p1(10 - 1 downto 0);
                X_I_addr_reg_243 <= i_cast_fu_144_p1(10 - 1 downto 0);
                X_R_addr_1_reg_248 <= zext_ln587_fu_196_p1(10 - 1 downto 0);
                X_R_addr_reg_238 <= i_cast_fu_144_p1(10 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                add_ln50_reg_229 <= add_ln50_fu_135_p2;
                icmp_ln50_reg_225 <= icmp_ln50_fu_129_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                p_Result_s_reg_234 <= p_Result_s_fu_166_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_start_int)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((icmp_ln50_fu_129_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;

    X_I_address0_assign_proc : process(ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_fu_166_p2, p_Result_s_reg_234, X_I_addr_1_reg_253, zext_ln587_fu_196_p1)
    begin
        if (((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            X_I_address0 <= X_I_addr_1_reg_253;
        elsif (((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            X_I_address0 <= zext_ln587_fu_196_p1(10 - 1 downto 0);
        else 
            X_I_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    X_I_address1_assign_proc : process(ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_fu_166_p2, p_Result_s_reg_234, X_I_addr_reg_243, i_cast_fu_144_p1)
    begin
        if (((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            X_I_address1 <= X_I_addr_reg_243;
        elsif (((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            X_I_address1 <= i_cast_fu_144_p1(10 - 1 downto 0);
        else 
            X_I_address1 <= "XXXXXXXXXX";
        end if; 
    end process;


    X_I_ce0_assign_proc : process(ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_fu_166_p2, p_Result_s_reg_234, ap_start_int)
    begin
        if ((((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            X_I_ce0 <= ap_const_logic_1;
        else 
            X_I_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    X_I_ce1_assign_proc : process(ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_fu_166_p2, p_Result_s_reg_234, ap_start_int)
    begin
        if ((((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            X_I_ce1 <= ap_const_logic_1;
        else 
            X_I_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    X_I_d0 <= X_I_q1;
    X_I_d1 <= X_I_q0;

    X_I_we0_assign_proc : process(ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
        if (((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            X_I_we0 <= ap_const_logic_1;
        else 
            X_I_we0 <= ap_const_logic_0;
        end if; 
    end process;


    X_I_we1_assign_proc : process(ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
        if (((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            X_I_we1 <= ap_const_logic_1;
        else 
            X_I_we1 <= ap_const_logic_0;
        end if; 
    end process;


    X_R_address0_assign_proc : process(ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_fu_166_p2, p_Result_s_reg_234, X_R_addr_1_reg_248, zext_ln587_fu_196_p1)
    begin
        if (((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            X_R_address0 <= X_R_addr_1_reg_248;
        elsif (((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            X_R_address0 <= zext_ln587_fu_196_p1(10 - 1 downto 0);
        else 
            X_R_address0 <= "XXXXXXXXXX";
        end if; 
    end process;


    X_R_address1_assign_proc : process(ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_fu_166_p2, p_Result_s_reg_234, X_R_addr_reg_238, i_cast_fu_144_p1)
    begin
        if (((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            X_R_address1 <= X_R_addr_reg_238;
        elsif (((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            X_R_address1 <= i_cast_fu_144_p1(10 - 1 downto 0);
        else 
            X_R_address1 <= "XXXXXXXXXX";
        end if; 
    end process;


    X_R_ce0_assign_proc : process(ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_fu_166_p2, p_Result_s_reg_234, ap_start_int)
    begin
        if ((((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            X_R_ce0 <= ap_const_logic_1;
        else 
            X_R_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    X_R_ce1_assign_proc : process(ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_fu_166_p2, p_Result_s_reg_234, ap_start_int)
    begin
        if ((((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2)))) then 
            X_R_ce1 <= ap_const_logic_1;
        else 
            X_R_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    X_R_d0 <= X_R_q1;
    X_R_d1 <= X_R_q0;

    X_R_we0_assign_proc : process(ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
        if (((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            X_R_we0 <= ap_const_logic_1;
        else 
            X_R_we0 <= ap_const_logic_0;
        end if; 
    end process;


    X_R_we1_assign_proc : process(ap_CS_fsm_state2, icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
        if (((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            X_R_we1 <= ap_const_logic_1;
        else 
            X_R_we1 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln50_fu_135_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_2) + unsigned(ap_const_lv11_1));
    and_ln825_fu_160_p2 <= (shl_ln825_fu_154_p2 and ap_sig_allocacmp_p_Val2_load);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start_int)
    begin
        if ((ap_start_int = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_block_state1_pp0_stage0_iter0_assign_proc : process(ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= (ap_start_int = ap_const_logic_0);
    end process;

        ap_block_state2_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln50_fu_129_p2, ap_start_int)
    begin
        if (((icmp_ln50_fu_129_p2 = ap_const_lv1_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_loop_exit_ready, ap_done_reg, ap_start_int)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_start_int = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_enable_operation_33_assign_proc : process(ap_predicate_op33_load_state1)
    begin
                ap_enable_operation_33 <= (ap_predicate_op33_load_state1 = ap_const_boolean_1);
    end process;


    ap_enable_operation_35_assign_proc : process(ap_predicate_op35_load_state1)
    begin
                ap_enable_operation_35 <= (ap_predicate_op35_load_state1 = ap_const_boolean_1);
    end process;


    ap_enable_operation_38_assign_proc : process(ap_predicate_op38_load_state1)
    begin
                ap_enable_operation_38 <= (ap_predicate_op38_load_state1 = ap_const_boolean_1);
    end process;


    ap_enable_operation_40_assign_proc : process(ap_predicate_op40_load_state1)
    begin
                ap_enable_operation_40 <= (ap_predicate_op40_load_state1 = ap_const_boolean_1);
    end process;


    ap_enable_operation_42_assign_proc : process(ap_predicate_op42_load_state2)
    begin
                ap_enable_operation_42 <= (ap_predicate_op42_load_state2 = ap_const_boolean_1);
    end process;


    ap_enable_operation_43_assign_proc : process(ap_predicate_op43_load_state2)
    begin
                ap_enable_operation_43 <= (ap_predicate_op43_load_state2 = ap_const_boolean_1);
    end process;


    ap_enable_operation_44_assign_proc : process(ap_predicate_op44_load_state2)
    begin
                ap_enable_operation_44 <= (ap_predicate_op44_load_state2 = ap_const_boolean_1);
    end process;


    ap_enable_operation_45_assign_proc : process(ap_predicate_op45_store_state2)
    begin
                ap_enable_operation_45 <= (ap_predicate_op45_store_state2 = ap_const_boolean_1);
    end process;


    ap_enable_operation_46_assign_proc : process(ap_predicate_op46_load_state2)
    begin
                ap_enable_operation_46 <= (ap_predicate_op46_load_state2 = ap_const_boolean_1);
    end process;


    ap_enable_operation_47_assign_proc : process(ap_predicate_op47_store_state2)
    begin
                ap_enable_operation_47 <= (ap_predicate_op47_store_state2 = ap_const_boolean_1);
    end process;


    ap_enable_operation_48_assign_proc : process(ap_predicate_op48_store_state2)
    begin
                ap_enable_operation_48 <= (ap_predicate_op48_store_state2 = ap_const_boolean_1);
    end process;


    ap_enable_operation_49_assign_proc : process(ap_predicate_op49_store_state2)
    begin
                ap_enable_operation_49 <= (ap_predicate_op49_store_state2 = ap_const_boolean_1);
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;

    ap_enable_state1_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, ap_enable_reg_pp0_iter0)
    begin
                ap_enable_state1_pp0_iter0_stage0 <= ((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_enable_state2_pp0_iter0_stage1_assign_proc : process(ap_CS_fsm_state2, ap_enable_reg_pp0_iter0)
    begin
                ap_enable_state2_pp0_iter0_stage1 <= ((ap_const_logic_1 = ap_CS_fsm_state2) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1));
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_0)) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_predicate_op33_load_state1_assign_proc : process(icmp_ln50_fu_129_p2, p_Result_s_fu_166_p2)
    begin
                ap_predicate_op33_load_state1 <= ((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0));
    end process;


    ap_predicate_op35_load_state1_assign_proc : process(icmp_ln50_fu_129_p2, p_Result_s_fu_166_p2)
    begin
                ap_predicate_op35_load_state1 <= ((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0));
    end process;


    ap_predicate_op38_load_state1_assign_proc : process(icmp_ln50_fu_129_p2, p_Result_s_fu_166_p2)
    begin
                ap_predicate_op38_load_state1 <= ((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0));
    end process;


    ap_predicate_op40_load_state1_assign_proc : process(icmp_ln50_fu_129_p2, p_Result_s_fu_166_p2)
    begin
                ap_predicate_op40_load_state1 <= ((p_Result_s_fu_166_p2 = ap_const_lv1_1) and (icmp_ln50_fu_129_p2 = ap_const_lv1_0));
    end process;


    ap_predicate_op42_load_state2_assign_proc : process(icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
                ap_predicate_op42_load_state2 <= ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0));
    end process;


    ap_predicate_op43_load_state2_assign_proc : process(icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
                ap_predicate_op43_load_state2 <= ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0));
    end process;


    ap_predicate_op44_load_state2_assign_proc : process(icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
                ap_predicate_op44_load_state2 <= ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0));
    end process;


    ap_predicate_op45_store_state2_assign_proc : process(icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
                ap_predicate_op45_store_state2 <= ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0));
    end process;


    ap_predicate_op46_load_state2_assign_proc : process(icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
                ap_predicate_op46_load_state2 <= ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0));
    end process;


    ap_predicate_op47_store_state2_assign_proc : process(icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
                ap_predicate_op47_store_state2 <= ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0));
    end process;


    ap_predicate_op48_store_state2_assign_proc : process(icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
                ap_predicate_op48_store_state2 <= ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0));
    end process;


    ap_predicate_op49_store_state2_assign_proc : process(icmp_ln50_reg_225, p_Result_s_reg_234)
    begin
                ap_predicate_op49_store_state2 <= ((p_Result_s_reg_234 = ap_const_lv1_1) and (icmp_ln50_reg_225 = ap_const_lv1_0));
    end process;


    ap_ready_int_assign_proc : process(ap_CS_fsm_state2)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_i_2_assign_proc : process(ap_CS_fsm_state1, i_fu_54, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_2 <= ap_const_lv11_0;
        else 
            ap_sig_allocacmp_i_2 <= i_fu_54;
        end if; 
    end process;


    ap_sig_allocacmp_p_Val2_load_assign_proc : process(ap_CS_fsm_state1, ap_loop_init, p_Val2_s_fu_58)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_p_Val2_load <= ap_const_lv1024_lc_1;
        else 
            ap_sig_allocacmp_p_Val2_load <= p_Val2_s_fu_58;
        end if; 
    end process;

    i_cast_fu_144_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_2),64));
    icmp_ln50_fu_129_p2 <= "1" when (ap_sig_allocacmp_i_2 = ap_const_lv11_400) else "0";
    
    or_ln34_8_fu_172_p4_proc : process(ap_sig_allocacmp_i_2)
    variable vlo_cpy : STD_LOGIC_VECTOR(11+32 - 1 downto 0);
    variable vhi_cpy : STD_LOGIC_VECTOR(11+32 - 1 downto 0);
    variable v0_cpy : STD_LOGIC_VECTOR(11 - 1 downto 0);
    variable or_ln34_8_fu_172_p4_i : integer;
    variable section : STD_LOGIC_VECTOR(11 - 1 downto 0);
    variable tmp_mask : STD_LOGIC_VECTOR(11 - 1 downto 0);
    variable resvalue, res_value, res_mask : STD_LOGIC_VECTOR(11 - 1 downto 0);
    begin
        vlo_cpy := (others => '0');
        vlo_cpy(4 - 1 downto 0) := ap_const_lv32_9(4 - 1 downto 0);
        vhi_cpy := (others => '0');
        vhi_cpy(4 - 1 downto 0) := ap_const_lv32_0(4 - 1 downto 0);
        v0_cpy := ap_sig_allocacmp_i_2;
        if (vlo_cpy(4 - 1 downto 0) > vhi_cpy(4 - 1 downto 0)) then
            vhi_cpy(4-1 downto 0) := std_logic_vector(11-1-unsigned(ap_const_lv32_0(4-1 downto 0)));
            vlo_cpy(4-1 downto 0) := std_logic_vector(11-1-unsigned(ap_const_lv32_9(4-1 downto 0)));
            for or_ln34_8_fu_172_p4_i in 0 to 11-1 loop
                v0_cpy(or_ln34_8_fu_172_p4_i) := ap_sig_allocacmp_i_2(11-1-or_ln34_8_fu_172_p4_i);
            end loop;
        end if;
        res_value := std_logic_vector(shift_right(unsigned(v0_cpy), to_integer(unsigned('0' & vlo_cpy(4-1 downto 0)))));

        section := (others=>'0');
        section(4-1 downto 0) := std_logic_vector(unsigned(vhi_cpy(4-1 downto 0)) - unsigned(vlo_cpy(4-1 downto 0)));
        tmp_mask := (others => '1');
        res_mask := std_logic_vector(shift_left(unsigned(tmp_mask),to_integer(unsigned('0' & section(11-1 downto 0)))));
        res_mask := res_mask(11-2 downto 0) & '0';
        resvalue := res_value and not res_mask;
        or_ln34_8_fu_172_p4 <= resvalue(10-1 downto 0);
    end process;

    
    p_Result_2_fu_186_p4_proc : process(ap_sig_allocacmp_p_Val2_load, zext_ln850_fu_182_p1)
    begin
        p_Result_2_fu_186_p4 <= ap_sig_allocacmp_p_Val2_load;
        if to_integer(unsigned(zext_ln850_fu_182_p1)) >= ap_sig_allocacmp_p_Val2_load'low and to_integer(unsigned(zext_ln850_fu_182_p1)) <= ap_sig_allocacmp_p_Val2_load'high then
            p_Result_2_fu_186_p4(to_integer(unsigned(zext_ln850_fu_182_p1))) <= ap_const_lv1_1(0);
        end if;
    end process;

    p_Result_s_fu_166_p2 <= "1" when (and_ln825_fu_160_p2 = ap_const_lv1024_lc_1) else "0";
    shl_ln825_fu_154_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv1024_lc_2),to_integer(unsigned('0' & zext_ln825_fu_150_p1(31-1 downto 0)))));
    zext_ln587_fu_196_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln34_8_fu_172_p4),64));
    zext_ln825_fu_150_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_2),1024));
    zext_ln850_fu_182_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(or_ln34_8_fu_172_p4),32));
end behav;