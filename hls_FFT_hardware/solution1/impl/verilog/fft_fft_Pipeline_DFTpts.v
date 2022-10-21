// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fft_fft_Pipeline_DFTpts (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        Stage0_R_1_address0,
        Stage0_R_1_ce0,
        Stage0_R_1_q0,
        Stage0_I_1_address0,
        Stage0_I_1_ce0,
        Stage0_I_1_q0,
        Stage0_R_address0,
        Stage0_R_ce0,
        Stage0_R_q0,
        Stage1_R_1_address0,
        Stage1_R_1_ce0,
        Stage1_R_1_we0,
        Stage1_R_1_d0,
        Stage0_I_address0,
        Stage0_I_ce0,
        Stage0_I_q0,
        Stage1_I_1_address0,
        Stage1_I_1_ce0,
        Stage1_I_1_we0,
        Stage1_I_1_d0,
        Stage1_R_address0,
        Stage1_R_ce0,
        Stage1_R_we0,
        Stage1_R_d0,
        Stage1_I_address0,
        Stage1_I_ce0,
        Stage1_I_we0,
        Stage1_I_d0,
        Stage0_R_3_address0,
        Stage0_R_3_ce0,
        Stage0_R_3_q0,
        Stage0_I_3_address0,
        Stage0_I_3_ce0,
        Stage0_I_3_q0,
        Stage0_R_2_address0,
        Stage0_R_2_ce0,
        Stage0_R_2_q0,
        Stage1_R_3_address0,
        Stage1_R_3_ce0,
        Stage1_R_3_we0,
        Stage1_R_3_d0,
        Stage0_I_2_address0,
        Stage0_I_2_ce0,
        Stage0_I_2_q0,
        Stage1_I_3_address0,
        Stage1_I_3_ce0,
        Stage1_I_3_we0,
        Stage1_I_3_d0,
        Stage1_R_2_address0,
        Stage1_R_2_ce0,
        Stage1_R_2_we0,
        Stage1_R_2_d0,
        Stage1_I_2_address0,
        Stage1_I_2_ce0,
        Stage1_I_2_we0,
        Stage1_I_2_d0,
        grp_fu_519_p_din0,
        grp_fu_519_p_din1,
        grp_fu_519_p_opcode,
        grp_fu_519_p_dout0,
        grp_fu_519_p_ce,
        grp_fu_523_p_din0,
        grp_fu_523_p_din1,
        grp_fu_523_p_opcode,
        grp_fu_523_p_dout0,
        grp_fu_523_p_ce,
        grp_fu_527_p_din0,
        grp_fu_527_p_din1,
        grp_fu_527_p_opcode,
        grp_fu_527_p_dout0,
        grp_fu_527_p_ce,
        grp_fu_531_p_din0,
        grp_fu_531_p_din1,
        grp_fu_531_p_opcode,
        grp_fu_531_p_dout0,
        grp_fu_531_p_ce,
        grp_fu_535_p_din0,
        grp_fu_535_p_din1,
        grp_fu_535_p_opcode,
        grp_fu_535_p_dout0,
        grp_fu_535_p_ce,
        grp_fu_539_p_din0,
        grp_fu_539_p_din1,
        grp_fu_539_p_opcode,
        grp_fu_539_p_dout0,
        grp_fu_539_p_ce,
        grp_fu_543_p_din0,
        grp_fu_543_p_din1,
        grp_fu_543_p_opcode,
        grp_fu_543_p_dout0,
        grp_fu_543_p_ce,
        grp_fu_547_p_din0,
        grp_fu_547_p_din1,
        grp_fu_547_p_opcode,
        grp_fu_547_p_dout0,
        grp_fu_547_p_ce,
        grp_fu_551_p_din0,
        grp_fu_551_p_din1,
        grp_fu_551_p_opcode,
        grp_fu_551_p_dout0,
        grp_fu_551_p_ce,
        grp_fu_555_p_din0,
        grp_fu_555_p_din1,
        grp_fu_555_p_opcode,
        grp_fu_555_p_dout0,
        grp_fu_555_p_ce,
        grp_fu_559_p_din0,
        grp_fu_559_p_din1,
        grp_fu_559_p_opcode,
        grp_fu_559_p_dout0,
        grp_fu_559_p_ce,
        grp_fu_563_p_din0,
        grp_fu_563_p_din1,
        grp_fu_563_p_opcode,
        grp_fu_563_p_dout0,
        grp_fu_563_p_ce,
        grp_fu_567_p_din0,
        grp_fu_567_p_din1,
        grp_fu_567_p_dout0,
        grp_fu_567_p_ce,
        grp_fu_571_p_din0,
        grp_fu_571_p_din1,
        grp_fu_571_p_dout0,
        grp_fu_571_p_ce,
        grp_fu_575_p_din0,
        grp_fu_575_p_din1,
        grp_fu_575_p_dout0,
        grp_fu_575_p_ce,
        grp_fu_579_p_din0,
        grp_fu_579_p_din1,
        grp_fu_579_p_dout0,
        grp_fu_579_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] Stage0_R_1_address0;
output   Stage0_R_1_ce0;
input  [31:0] Stage0_R_1_q0;
output  [7:0] Stage0_I_1_address0;
output   Stage0_I_1_ce0;
input  [31:0] Stage0_I_1_q0;
output  [7:0] Stage0_R_address0;
output   Stage0_R_ce0;
input  [31:0] Stage0_R_q0;
output  [7:0] Stage1_R_1_address0;
output   Stage1_R_1_ce0;
output   Stage1_R_1_we0;
output  [31:0] Stage1_R_1_d0;
output  [7:0] Stage0_I_address0;
output   Stage0_I_ce0;
input  [31:0] Stage0_I_q0;
output  [7:0] Stage1_I_1_address0;
output   Stage1_I_1_ce0;
output   Stage1_I_1_we0;
output  [31:0] Stage1_I_1_d0;
output  [7:0] Stage1_R_address0;
output   Stage1_R_ce0;
output   Stage1_R_we0;
output  [31:0] Stage1_R_d0;
output  [7:0] Stage1_I_address0;
output   Stage1_I_ce0;
output   Stage1_I_we0;
output  [31:0] Stage1_I_d0;
output  [7:0] Stage0_R_3_address0;
output   Stage0_R_3_ce0;
input  [31:0] Stage0_R_3_q0;
output  [7:0] Stage0_I_3_address0;
output   Stage0_I_3_ce0;
input  [31:0] Stage0_I_3_q0;
output  [7:0] Stage0_R_2_address0;
output   Stage0_R_2_ce0;
input  [31:0] Stage0_R_2_q0;
output  [7:0] Stage1_R_3_address0;
output   Stage1_R_3_ce0;
output   Stage1_R_3_we0;
output  [31:0] Stage1_R_3_d0;
output  [7:0] Stage0_I_2_address0;
output   Stage0_I_2_ce0;
input  [31:0] Stage0_I_2_q0;
output  [7:0] Stage1_I_3_address0;
output   Stage1_I_3_ce0;
output   Stage1_I_3_we0;
output  [31:0] Stage1_I_3_d0;
output  [7:0] Stage1_R_2_address0;
output   Stage1_R_2_ce0;
output   Stage1_R_2_we0;
output  [31:0] Stage1_R_2_d0;
output  [7:0] Stage1_I_2_address0;
output   Stage1_I_2_ce0;
output   Stage1_I_2_we0;
output  [31:0] Stage1_I_2_d0;
output  [31:0] grp_fu_519_p_din0;
output  [31:0] grp_fu_519_p_din1;
output  [1:0] grp_fu_519_p_opcode;
input  [31:0] grp_fu_519_p_dout0;
output   grp_fu_519_p_ce;
output  [31:0] grp_fu_523_p_din0;
output  [31:0] grp_fu_523_p_din1;
output  [1:0] grp_fu_523_p_opcode;
input  [31:0] grp_fu_523_p_dout0;
output   grp_fu_523_p_ce;
output  [31:0] grp_fu_527_p_din0;
output  [31:0] grp_fu_527_p_din1;
output  [1:0] grp_fu_527_p_opcode;
input  [31:0] grp_fu_527_p_dout0;
output   grp_fu_527_p_ce;
output  [31:0] grp_fu_531_p_din0;
output  [31:0] grp_fu_531_p_din1;
output  [1:0] grp_fu_531_p_opcode;
input  [31:0] grp_fu_531_p_dout0;
output   grp_fu_531_p_ce;
output  [31:0] grp_fu_535_p_din0;
output  [31:0] grp_fu_535_p_din1;
output  [1:0] grp_fu_535_p_opcode;
input  [31:0] grp_fu_535_p_dout0;
output   grp_fu_535_p_ce;
output  [31:0] grp_fu_539_p_din0;
output  [31:0] grp_fu_539_p_din1;
output  [1:0] grp_fu_539_p_opcode;
input  [31:0] grp_fu_539_p_dout0;
output   grp_fu_539_p_ce;
output  [31:0] grp_fu_543_p_din0;
output  [31:0] grp_fu_543_p_din1;
output  [1:0] grp_fu_543_p_opcode;
input  [31:0] grp_fu_543_p_dout0;
output   grp_fu_543_p_ce;
output  [31:0] grp_fu_547_p_din0;
output  [31:0] grp_fu_547_p_din1;
output  [1:0] grp_fu_547_p_opcode;
input  [31:0] grp_fu_547_p_dout0;
output   grp_fu_547_p_ce;
output  [31:0] grp_fu_551_p_din0;
output  [31:0] grp_fu_551_p_din1;
output  [1:0] grp_fu_551_p_opcode;
input  [31:0] grp_fu_551_p_dout0;
output   grp_fu_551_p_ce;
output  [31:0] grp_fu_555_p_din0;
output  [31:0] grp_fu_555_p_din1;
output  [1:0] grp_fu_555_p_opcode;
input  [31:0] grp_fu_555_p_dout0;
output   grp_fu_555_p_ce;
output  [31:0] grp_fu_559_p_din0;
output  [31:0] grp_fu_559_p_din1;
output  [1:0] grp_fu_559_p_opcode;
input  [31:0] grp_fu_559_p_dout0;
output   grp_fu_559_p_ce;
output  [31:0] grp_fu_563_p_din0;
output  [31:0] grp_fu_563_p_din1;
output  [1:0] grp_fu_563_p_opcode;
input  [31:0] grp_fu_563_p_dout0;
output   grp_fu_563_p_ce;
output  [31:0] grp_fu_567_p_din0;
output  [31:0] grp_fu_567_p_din1;
input  [31:0] grp_fu_567_p_dout0;
output   grp_fu_567_p_ce;
output  [31:0] grp_fu_571_p_din0;
output  [31:0] grp_fu_571_p_din1;
input  [31:0] grp_fu_571_p_dout0;
output   grp_fu_571_p_ce;
output  [31:0] grp_fu_575_p_din0;
output  [31:0] grp_fu_575_p_din1;
input  [31:0] grp_fu_575_p_dout0;
output   grp_fu_575_p_ce;
output  [31:0] grp_fu_579_p_din0;
output  [31:0] grp_fu_579_p_din1;
input  [31:0] grp_fu_579_p_dout0;
output   grp_fu_579_p_ce;

reg ap_idle;
reg Stage0_R_1_ce0;
reg Stage0_I_1_ce0;
reg Stage0_R_ce0;
reg Stage1_R_1_ce0;
reg Stage1_R_1_we0;
reg Stage0_I_ce0;
reg Stage1_I_1_ce0;
reg Stage1_I_1_we0;
reg Stage1_R_ce0;
reg Stage1_R_we0;
reg Stage1_I_ce0;
reg Stage1_I_we0;
reg Stage0_R_3_ce0;
reg Stage0_I_3_ce0;
reg Stage0_R_2_ce0;
reg Stage1_R_3_ce0;
reg Stage1_R_3_we0;
reg Stage0_I_2_ce0;
reg Stage1_I_3_ce0;
reg Stage1_I_3_we0;
reg Stage1_R_2_ce0;
reg Stage1_R_2_we0;
reg Stage1_I_2_ce0;
reg Stage1_I_2_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_state9_pp0_stage0_iter8;
wire    ap_block_state10_pp0_stage0_iter9;
wire    ap_block_state11_pp0_stage0_iter10;
wire    ap_block_state12_pp0_stage0_iter11;
wire    ap_block_state13_pp0_stage0_iter12;
wire    ap_block_state14_pp0_stage0_iter13;
wire    ap_block_state15_pp0_stage0_iter14;
wire    ap_block_state16_pp0_stage0_iter15;
wire    ap_block_state17_pp0_stage0_iter16;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_356_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln137_fu_374_p1;
reg   [63:0] zext_ln137_reg_404;
reg   [63:0] zext_ln137_reg_404_pp0_iter1_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter2_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter3_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter4_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter5_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter6_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter7_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter8_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter9_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter10_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter11_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter12_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter13_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter14_reg;
reg   [63:0] zext_ln137_reg_404_pp0_iter15_reg;
reg   [31:0] Stage0_R_1_load_reg_440;
reg   [31:0] Stage0_R_1_load_reg_440_pp0_iter2_reg;
reg   [31:0] Stage0_R_1_load_reg_440_pp0_iter3_reg;
reg   [31:0] Stage0_R_1_load_reg_440_pp0_iter4_reg;
reg   [31:0] Stage0_R_1_load_reg_440_pp0_iter5_reg;
reg   [31:0] Stage0_I_1_load_reg_446;
reg   [31:0] Stage0_I_1_load_reg_446_pp0_iter2_reg;
reg   [31:0] Stage0_I_1_load_reg_446_pp0_iter3_reg;
reg   [31:0] Stage0_I_1_load_reg_446_pp0_iter4_reg;
reg   [31:0] Stage0_I_1_load_reg_446_pp0_iter5_reg;
reg   [31:0] Stage0_R_3_load_reg_452;
reg   [31:0] Stage0_R_3_load_reg_452_pp0_iter2_reg;
reg   [31:0] Stage0_R_3_load_reg_452_pp0_iter3_reg;
reg   [31:0] Stage0_R_3_load_reg_452_pp0_iter4_reg;
reg   [31:0] Stage0_R_3_load_reg_452_pp0_iter5_reg;
reg   [31:0] Stage0_I_3_load_reg_458;
reg   [31:0] Stage0_I_3_load_reg_458_pp0_iter2_reg;
reg   [31:0] Stage0_I_3_load_reg_458_pp0_iter3_reg;
reg   [31:0] Stage0_I_3_load_reg_458_pp0_iter4_reg;
reg   [31:0] Stage0_I_3_load_reg_458_pp0_iter5_reg;
reg   [31:0] mul3_i_reg_464;
reg   [31:0] mul9_i_reg_469;
reg   [31:0] mul3_1_i_reg_474;
reg   [31:0] mul9_1_i_reg_479;
reg   [31:0] temp_R_reg_504;
reg   [31:0] temp_I_reg_510;
reg   [31:0] Stage0_R_load_reg_516;
reg   [31:0] Stage0_I_load_reg_522;
reg   [31:0] temp_R_1_reg_528;
reg   [31:0] temp_I_1_reg_534;
reg   [31:0] Stage0_R_2_load_reg_540;
reg   [31:0] Stage0_I_2_load_reg_546;
reg   [31:0] sub13_i_reg_552;
reg   [31:0] sub18_i_reg_557;
reg   [31:0] add23_i_reg_562;
reg   [31:0] add28_i_reg_567;
reg   [31:0] sub13_1_i_reg_572;
reg   [31:0] sub18_1_i_reg_577;
reg   [31:0] add23_1_i_reg_582;
reg   [31:0] add28_1_i_reg_587;
wire    ap_block_pp0_stage0;
reg   [10:0] i_fu_68;
wire   [10:0] add_ln134_fu_382_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_i_5;
wire   [7:0] lshr_ln2_fu_364_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_done_reg = 1'b0;
end

fft_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_356_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_68 <= add_ln134_fu_382_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_68 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Stage0_I_1_load_reg_446 <= Stage0_I_1_q0;
        Stage0_I_3_load_reg_458 <= Stage0_I_3_q0;
        Stage0_R_1_load_reg_440 <= Stage0_R_1_q0;
        Stage0_R_3_load_reg_452 <= Stage0_R_3_q0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        zext_ln137_reg_404_pp0_iter1_reg[7 : 0] <= zext_ln137_reg_404[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        Stage0_I_1_load_reg_446_pp0_iter2_reg <= Stage0_I_1_load_reg_446;
        Stage0_I_1_load_reg_446_pp0_iter3_reg <= Stage0_I_1_load_reg_446_pp0_iter2_reg;
        Stage0_I_1_load_reg_446_pp0_iter4_reg <= Stage0_I_1_load_reg_446_pp0_iter3_reg;
        Stage0_I_1_load_reg_446_pp0_iter5_reg <= Stage0_I_1_load_reg_446_pp0_iter4_reg;
        Stage0_I_2_load_reg_546 <= Stage0_I_2_q0;
        Stage0_I_3_load_reg_458_pp0_iter2_reg <= Stage0_I_3_load_reg_458;
        Stage0_I_3_load_reg_458_pp0_iter3_reg <= Stage0_I_3_load_reg_458_pp0_iter2_reg;
        Stage0_I_3_load_reg_458_pp0_iter4_reg <= Stage0_I_3_load_reg_458_pp0_iter3_reg;
        Stage0_I_3_load_reg_458_pp0_iter5_reg <= Stage0_I_3_load_reg_458_pp0_iter4_reg;
        Stage0_I_load_reg_522 <= Stage0_I_q0;
        Stage0_R_1_load_reg_440_pp0_iter2_reg <= Stage0_R_1_load_reg_440;
        Stage0_R_1_load_reg_440_pp0_iter3_reg <= Stage0_R_1_load_reg_440_pp0_iter2_reg;
        Stage0_R_1_load_reg_440_pp0_iter4_reg <= Stage0_R_1_load_reg_440_pp0_iter3_reg;
        Stage0_R_1_load_reg_440_pp0_iter5_reg <= Stage0_R_1_load_reg_440_pp0_iter4_reg;
        Stage0_R_2_load_reg_540 <= Stage0_R_2_q0;
        Stage0_R_3_load_reg_452_pp0_iter2_reg <= Stage0_R_3_load_reg_452;
        Stage0_R_3_load_reg_452_pp0_iter3_reg <= Stage0_R_3_load_reg_452_pp0_iter2_reg;
        Stage0_R_3_load_reg_452_pp0_iter4_reg <= Stage0_R_3_load_reg_452_pp0_iter3_reg;
        Stage0_R_3_load_reg_452_pp0_iter5_reg <= Stage0_R_3_load_reg_452_pp0_iter4_reg;
        Stage0_R_load_reg_516 <= Stage0_R_q0;
        add23_1_i_reg_582 <= grp_fu_559_p_dout0;
        add23_i_reg_562 <= grp_fu_543_p_dout0;
        add28_1_i_reg_587 <= grp_fu_563_p_dout0;
        add28_i_reg_567 <= grp_fu_547_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul3_1_i_reg_474 <= grp_fu_575_p_dout0;
        mul3_i_reg_464 <= grp_fu_567_p_dout0;
        mul9_1_i_reg_479 <= grp_fu_579_p_dout0;
        mul9_i_reg_469 <= grp_fu_571_p_dout0;
        sub13_1_i_reg_572 <= grp_fu_551_p_dout0;
        sub13_i_reg_552 <= grp_fu_535_p_dout0;
        sub18_1_i_reg_577 <= grp_fu_555_p_dout0;
        sub18_i_reg_557 <= grp_fu_539_p_dout0;
        temp_I_1_reg_534 <= grp_fu_531_p_dout0;
        temp_I_reg_510 <= grp_fu_523_p_dout0;
        temp_R_1_reg_528 <= grp_fu_527_p_dout0;
        temp_R_reg_504 <= grp_fu_519_p_dout0;
        zext_ln137_reg_404_pp0_iter10_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter9_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter11_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter10_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter12_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter11_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter13_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter12_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter14_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter13_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter15_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter14_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter2_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter1_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter3_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter2_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter4_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter3_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter5_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter4_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter6_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter5_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter7_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter6_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter8_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter7_reg[7 : 0];
        zext_ln137_reg_404_pp0_iter9_reg[7 : 0] <= zext_ln137_reg_404_pp0_iter8_reg[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_356_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln137_reg_404[7 : 0] <= zext_ln137_fu_374_p1[7 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Stage0_I_1_ce0 = 1'b1;
    end else begin
        Stage0_I_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Stage0_I_2_ce0 = 1'b1;
    end else begin
        Stage0_I_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Stage0_I_3_ce0 = 1'b1;
    end else begin
        Stage0_I_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Stage0_I_ce0 = 1'b1;
    end else begin
        Stage0_I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Stage0_R_1_ce0 = 1'b1;
    end else begin
        Stage0_R_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Stage0_R_2_ce0 = 1'b1;
    end else begin
        Stage0_R_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        Stage0_R_3_ce0 = 1'b1;
    end else begin
        Stage0_R_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        Stage0_R_ce0 = 1'b1;
    end else begin
        Stage0_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_I_1_ce0 = 1'b1;
    end else begin
        Stage1_I_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_I_1_we0 = 1'b1;
    end else begin
        Stage1_I_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_I_2_ce0 = 1'b1;
    end else begin
        Stage1_I_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_I_2_we0 = 1'b1;
    end else begin
        Stage1_I_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_I_3_ce0 = 1'b1;
    end else begin
        Stage1_I_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_I_3_we0 = 1'b1;
    end else begin
        Stage1_I_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_I_ce0 = 1'b1;
    end else begin
        Stage1_I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_I_we0 = 1'b1;
    end else begin
        Stage1_I_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_R_1_ce0 = 1'b1;
    end else begin
        Stage1_R_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_R_1_we0 = 1'b1;
    end else begin
        Stage1_R_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_R_2_ce0 = 1'b1;
    end else begin
        Stage1_R_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_R_2_we0 = 1'b1;
    end else begin
        Stage1_R_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_R_3_ce0 = 1'b1;
    end else begin
        Stage1_R_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_R_3_we0 = 1'b1;
    end else begin
        Stage1_R_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_R_ce0 = 1'b1;
    end else begin
        Stage1_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        Stage1_R_we0 = 1'b1;
    end else begin
        Stage1_R_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_356_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_5 = 11'd0;
    end else begin
        ap_sig_allocacmp_i_5 = i_fu_68;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign Stage0_I_1_address0 = zext_ln137_fu_374_p1;

assign Stage0_I_2_address0 = zext_ln137_reg_404_pp0_iter8_reg;

assign Stage0_I_3_address0 = zext_ln137_fu_374_p1;

assign Stage0_I_address0 = zext_ln137_reg_404_pp0_iter8_reg;

assign Stage0_R_1_address0 = zext_ln137_fu_374_p1;

assign Stage0_R_2_address0 = zext_ln137_reg_404_pp0_iter8_reg;

assign Stage0_R_3_address0 = zext_ln137_fu_374_p1;

assign Stage0_R_address0 = zext_ln137_reg_404_pp0_iter8_reg;

assign Stage1_I_1_address0 = zext_ln137_reg_404_pp0_iter15_reg;

assign Stage1_I_1_d0 = sub18_i_reg_557;

assign Stage1_I_2_address0 = zext_ln137_reg_404_pp0_iter15_reg;

assign Stage1_I_2_d0 = add28_1_i_reg_587;

assign Stage1_I_3_address0 = zext_ln137_reg_404_pp0_iter15_reg;

assign Stage1_I_3_d0 = sub18_1_i_reg_577;

assign Stage1_I_address0 = zext_ln137_reg_404_pp0_iter15_reg;

assign Stage1_I_d0 = add28_i_reg_567;

assign Stage1_R_1_address0 = zext_ln137_reg_404_pp0_iter15_reg;

assign Stage1_R_1_d0 = sub13_i_reg_552;

assign Stage1_R_2_address0 = zext_ln137_reg_404_pp0_iter15_reg;

assign Stage1_R_2_d0 = add23_1_i_reg_582;

assign Stage1_R_3_address0 = zext_ln137_reg_404_pp0_iter15_reg;

assign Stage1_R_3_d0 = sub13_1_i_reg_572;

assign Stage1_R_address0 = zext_ln137_reg_404_pp0_iter15_reg;

assign Stage1_R_d0 = add23_i_reg_562;

assign add_ln134_fu_382_p2 = (ap_sig_allocacmp_i_5 + 11'd4);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state10_pp0_stage0_iter9 = ~(1'b1 == 1'b1);

assign ap_block_state11_pp0_stage0_iter10 = ~(1'b1 == 1'b1);

assign ap_block_state12_pp0_stage0_iter11 = ~(1'b1 == 1'b1);

assign ap_block_state13_pp0_stage0_iter12 = ~(1'b1 == 1'b1);

assign ap_block_state14_pp0_stage0_iter13 = ~(1'b1 == 1'b1);

assign ap_block_state15_pp0_stage0_iter14 = ~(1'b1 == 1'b1);

assign ap_block_state16_pp0_stage0_iter15 = ~(1'b1 == 1'b1);

assign ap_block_state17_pp0_stage0_iter16 = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_block_state9_pp0_stage0_iter8 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign grp_fu_519_p_ce = 1'b1;

assign grp_fu_519_p_din0 = Stage0_R_1_load_reg_440_pp0_iter5_reg;

assign grp_fu_519_p_din1 = mul3_i_reg_464;

assign grp_fu_519_p_opcode = 2'd1;

assign grp_fu_523_p_ce = 1'b1;

assign grp_fu_523_p_din0 = Stage0_I_1_load_reg_446_pp0_iter5_reg;

assign grp_fu_523_p_din1 = mul9_i_reg_469;

assign grp_fu_523_p_opcode = 2'd0;

assign grp_fu_527_p_ce = 1'b1;

assign grp_fu_527_p_din0 = Stage0_R_3_load_reg_452_pp0_iter5_reg;

assign grp_fu_527_p_din1 = mul3_1_i_reg_474;

assign grp_fu_527_p_opcode = 2'd1;

assign grp_fu_531_p_ce = 1'b1;

assign grp_fu_531_p_din0 = Stage0_I_3_load_reg_458_pp0_iter5_reg;

assign grp_fu_531_p_din1 = mul9_1_i_reg_479;

assign grp_fu_531_p_opcode = 2'd0;

assign grp_fu_535_p_ce = 1'b1;

assign grp_fu_535_p_din0 = Stage0_R_load_reg_516;

assign grp_fu_535_p_din1 = temp_R_reg_504;

assign grp_fu_535_p_opcode = 2'd1;

assign grp_fu_539_p_ce = 1'b1;

assign grp_fu_539_p_din0 = Stage0_I_load_reg_522;

assign grp_fu_539_p_din1 = temp_I_reg_510;

assign grp_fu_539_p_opcode = 2'd1;

assign grp_fu_543_p_ce = 1'b1;

assign grp_fu_543_p_din0 = Stage0_R_load_reg_516;

assign grp_fu_543_p_din1 = temp_R_reg_504;

assign grp_fu_543_p_opcode = 2'd0;

assign grp_fu_547_p_ce = 1'b1;

assign grp_fu_547_p_din0 = Stage0_I_load_reg_522;

assign grp_fu_547_p_din1 = temp_I_reg_510;

assign grp_fu_547_p_opcode = 2'd0;

assign grp_fu_551_p_ce = 1'b1;

assign grp_fu_551_p_din0 = Stage0_R_2_load_reg_540;

assign grp_fu_551_p_din1 = temp_R_1_reg_528;

assign grp_fu_551_p_opcode = 2'd1;

assign grp_fu_555_p_ce = 1'b1;

assign grp_fu_555_p_din0 = Stage0_I_2_load_reg_546;

assign grp_fu_555_p_din1 = temp_I_1_reg_534;

assign grp_fu_555_p_opcode = 2'd1;

assign grp_fu_559_p_ce = 1'b1;

assign grp_fu_559_p_din0 = Stage0_R_2_load_reg_540;

assign grp_fu_559_p_din1 = temp_R_1_reg_528;

assign grp_fu_559_p_opcode = 2'd0;

assign grp_fu_563_p_ce = 1'b1;

assign grp_fu_563_p_din0 = Stage0_I_2_load_reg_546;

assign grp_fu_563_p_din1 = temp_I_1_reg_534;

assign grp_fu_563_p_opcode = 2'd0;

assign grp_fu_567_p_ce = 1'b1;

assign grp_fu_567_p_din0 = Stage0_I_1_load_reg_446;

assign grp_fu_567_p_din1 = 32'd2147483648;

assign grp_fu_571_p_ce = 1'b1;

assign grp_fu_571_p_din0 = Stage0_R_1_load_reg_440;

assign grp_fu_571_p_din1 = 32'd2147483648;

assign grp_fu_575_p_ce = 1'b1;

assign grp_fu_575_p_din0 = Stage0_I_3_load_reg_458;

assign grp_fu_575_p_din1 = 32'd2147483648;

assign grp_fu_579_p_ce = 1'b1;

assign grp_fu_579_p_din0 = Stage0_R_3_load_reg_452;

assign grp_fu_579_p_din1 = 32'd2147483648;

assign lshr_ln2_fu_364_p4 = {{ap_sig_allocacmp_i_5[9:2]}};

assign tmp_fu_356_p3 = ap_sig_allocacmp_i_5[32'd10];

assign zext_ln137_fu_374_p1 = lshr_ln2_fu_364_p4;

always @ (posedge ap_clk) begin
    zext_ln137_reg_404[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter1_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter2_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter3_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter4_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter5_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter6_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter7_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter8_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter9_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter10_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter11_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter12_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter13_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter14_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln137_reg_404_pp0_iter15_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //fft_fft_Pipeline_DFTpts
