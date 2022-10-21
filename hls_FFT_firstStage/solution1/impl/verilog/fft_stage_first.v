// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="fft_stage_first_fft_stage_first,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.256000,HLS_SYN_LAT=273,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=4172,HLS_SYN_LUT=6176,HLS_VERSION=2022_1}" *)

module fft_stage_first (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        X_R_0_address0,
        X_R_0_ce0,
        X_R_0_q0,
        X_R_1_address0,
        X_R_1_ce0,
        X_R_1_q0,
        X_R_2_address0,
        X_R_2_ce0,
        X_R_2_q0,
        X_R_3_address0,
        X_R_3_ce0,
        X_R_3_q0,
        X_I_0_address0,
        X_I_0_ce0,
        X_I_0_q0,
        X_I_1_address0,
        X_I_1_ce0,
        X_I_1_q0,
        X_I_2_address0,
        X_I_2_ce0,
        X_I_2_q0,
        X_I_3_address0,
        X_I_3_ce0,
        X_I_3_q0,
        OUT_R_0_address0,
        OUT_R_0_ce0,
        OUT_R_0_we0,
        OUT_R_0_d0,
        OUT_R_1_address0,
        OUT_R_1_ce0,
        OUT_R_1_we0,
        OUT_R_1_d0,
        OUT_R_2_address0,
        OUT_R_2_ce0,
        OUT_R_2_we0,
        OUT_R_2_d0,
        OUT_R_3_address0,
        OUT_R_3_ce0,
        OUT_R_3_we0,
        OUT_R_3_d0,
        OUT_I_0_address0,
        OUT_I_0_ce0,
        OUT_I_0_we0,
        OUT_I_0_d0,
        OUT_I_1_address0,
        OUT_I_1_ce0,
        OUT_I_1_we0,
        OUT_I_1_d0,
        OUT_I_2_address0,
        OUT_I_2_ce0,
        OUT_I_2_we0,
        OUT_I_2_d0,
        OUT_I_3_address0,
        OUT_I_3_ce0,
        OUT_I_3_we0,
        OUT_I_3_d0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] X_R_0_address0;
output   X_R_0_ce0;
input  [31:0] X_R_0_q0;
output  [7:0] X_R_1_address0;
output   X_R_1_ce0;
input  [31:0] X_R_1_q0;
output  [7:0] X_R_2_address0;
output   X_R_2_ce0;
input  [31:0] X_R_2_q0;
output  [7:0] X_R_3_address0;
output   X_R_3_ce0;
input  [31:0] X_R_3_q0;
output  [7:0] X_I_0_address0;
output   X_I_0_ce0;
input  [31:0] X_I_0_q0;
output  [7:0] X_I_1_address0;
output   X_I_1_ce0;
input  [31:0] X_I_1_q0;
output  [7:0] X_I_2_address0;
output   X_I_2_ce0;
input  [31:0] X_I_2_q0;
output  [7:0] X_I_3_address0;
output   X_I_3_ce0;
input  [31:0] X_I_3_q0;
output  [7:0] OUT_R_0_address0;
output   OUT_R_0_ce0;
output   OUT_R_0_we0;
output  [31:0] OUT_R_0_d0;
output  [7:0] OUT_R_1_address0;
output   OUT_R_1_ce0;
output   OUT_R_1_we0;
output  [31:0] OUT_R_1_d0;
output  [7:0] OUT_R_2_address0;
output   OUT_R_2_ce0;
output   OUT_R_2_we0;
output  [31:0] OUT_R_2_d0;
output  [7:0] OUT_R_3_address0;
output   OUT_R_3_ce0;
output   OUT_R_3_we0;
output  [31:0] OUT_R_3_d0;
output  [7:0] OUT_I_0_address0;
output   OUT_I_0_ce0;
output   OUT_I_0_we0;
output  [31:0] OUT_I_0_d0;
output  [7:0] OUT_I_1_address0;
output   OUT_I_1_ce0;
output   OUT_I_1_we0;
output  [31:0] OUT_I_1_d0;
output  [7:0] OUT_I_2_address0;
output   OUT_I_2_ce0;
output   OUT_I_2_we0;
output  [31:0] OUT_I_2_d0;
output  [7:0] OUT_I_3_address0;
output   OUT_I_3_ce0;
output   OUT_I_3_we0;
output  [31:0] OUT_I_3_d0;

reg ap_idle;
reg X_R_0_ce0;
reg X_R_1_ce0;
reg X_R_2_ce0;
reg X_R_3_ce0;
reg X_I_0_ce0;
reg X_I_1_ce0;
reg X_I_2_ce0;
reg X_I_3_ce0;
reg OUT_R_0_ce0;
reg OUT_R_0_we0;
reg OUT_R_1_ce0;
reg OUT_R_1_we0;
reg OUT_R_2_ce0;
reg OUT_R_2_we0;
reg OUT_R_3_ce0;
reg OUT_R_3_we0;
reg OUT_I_0_ce0;
reg OUT_I_0_we0;
reg OUT_I_1_ce0;
reg OUT_I_1_we0;
reg OUT_I_2_ce0;
reg OUT_I_2_we0;
reg OUT_I_3_ce0;
reg OUT_I_3_we0;

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
wire   [0:0] tmp_fu_368_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln30_fu_386_p1;
reg   [63:0] zext_ln30_reg_480;
reg   [63:0] zext_ln30_reg_480_pp0_iter1_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter2_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter3_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter4_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter5_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter6_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter7_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter8_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter9_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter10_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter11_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter12_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter13_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter14_reg;
reg   [63:0] zext_ln30_reg_480_pp0_iter15_reg;
wire   [31:0] bitcast_ln30_fu_405_p1;
reg   [31:0] bitcast_ln30_reg_516;
reg   [31:0] bitcast_ln30_reg_516_pp0_iter2_reg;
reg   [31:0] bitcast_ln30_reg_516_pp0_iter3_reg;
reg   [31:0] bitcast_ln30_reg_516_pp0_iter4_reg;
reg   [31:0] bitcast_ln30_reg_516_pp0_iter5_reg;
wire   [31:0] bitcast_ln30_1_fu_409_p1;
reg   [31:0] bitcast_ln30_1_reg_522;
reg   [31:0] bitcast_ln30_1_reg_522_pp0_iter2_reg;
reg   [31:0] bitcast_ln30_1_reg_522_pp0_iter3_reg;
reg   [31:0] bitcast_ln30_1_reg_522_pp0_iter4_reg;
reg   [31:0] bitcast_ln30_1_reg_522_pp0_iter5_reg;
wire   [31:0] bitcast_ln30_2_fu_413_p1;
reg   [31:0] bitcast_ln30_2_reg_528;
reg   [31:0] bitcast_ln30_2_reg_528_pp0_iter2_reg;
reg   [31:0] bitcast_ln30_2_reg_528_pp0_iter3_reg;
reg   [31:0] bitcast_ln30_2_reg_528_pp0_iter4_reg;
reg   [31:0] bitcast_ln30_2_reg_528_pp0_iter5_reg;
wire   [31:0] bitcast_ln30_3_fu_417_p1;
reg   [31:0] bitcast_ln30_3_reg_534;
reg   [31:0] bitcast_ln30_3_reg_534_pp0_iter2_reg;
reg   [31:0] bitcast_ln30_3_reg_534_pp0_iter3_reg;
reg   [31:0] bitcast_ln30_3_reg_534_pp0_iter4_reg;
reg   [31:0] bitcast_ln30_3_reg_534_pp0_iter5_reg;
wire   [31:0] grp_fu_340_p2;
reg   [31:0] mul3_reg_540;
wire   [31:0] grp_fu_345_p2;
reg   [31:0] mul9_reg_545;
wire   [31:0] grp_fu_350_p2;
reg   [31:0] mul3_1_reg_550;
wire   [31:0] grp_fu_355_p2;
reg   [31:0] mul9_1_reg_555;
wire   [31:0] grp_fu_292_p2;
reg   [31:0] temp_R_reg_580;
wire   [31:0] grp_fu_296_p2;
reg   [31:0] temp_I_reg_586;
wire   [31:0] bitcast_ln33_fu_421_p1;
reg   [31:0] bitcast_ln33_reg_592;
wire   [31:0] bitcast_ln34_fu_425_p1;
reg   [31:0] bitcast_ln34_reg_598;
wire   [31:0] grp_fu_300_p2;
reg   [31:0] temp_R_1_reg_604;
wire   [31:0] grp_fu_304_p2;
reg   [31:0] temp_I_1_reg_610;
wire   [31:0] bitcast_ln33_2_fu_429_p1;
reg   [31:0] bitcast_ln33_2_reg_616;
wire   [31:0] bitcast_ln34_2_fu_433_p1;
reg   [31:0] bitcast_ln34_2_reg_622;
wire   [31:0] grp_fu_308_p2;
reg   [31:0] sub_reg_628;
wire   [31:0] grp_fu_312_p2;
reg   [31:0] sub1_reg_633;
wire   [31:0] grp_fu_316_p2;
reg   [31:0] add_reg_638;
wire   [31:0] grp_fu_320_p2;
reg   [31:0] add1_reg_643;
wire   [31:0] grp_fu_324_p2;
reg   [31:0] sub13_1_reg_648;
wire   [31:0] grp_fu_328_p2;
reg   [31:0] sub18_1_reg_653;
wire   [31:0] grp_fu_332_p2;
reg   [31:0] add23_1_reg_658;
wire   [31:0] grp_fu_336_p2;
reg   [31:0] add28_1_reg_663;
wire    ap_block_pp0_stage0;
reg   [10:0] i_fu_80;
wire   [10:0] add_ln27_fu_394_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_i_1;
wire   [7:0] lshr_ln_fu_376_p4;
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
reg    ap_condition_436;
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

fft_stage_first_fsub_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_5_full_dsp_1_U1(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln30_reg_516_pp0_iter5_reg),
    .din1(mul3_reg_540),
    .ce(1'b1),
    .dout(grp_fu_292_p2)
);

fft_stage_first_fadd_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U2(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln30_1_reg_522_pp0_iter5_reg),
    .din1(mul9_reg_545),
    .ce(1'b1),
    .dout(grp_fu_296_p2)
);

fft_stage_first_fsub_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_5_full_dsp_1_U3(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln30_2_reg_528_pp0_iter5_reg),
    .din1(mul3_1_reg_550),
    .ce(1'b1),
    .dout(grp_fu_300_p2)
);

fft_stage_first_fadd_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U4(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln30_3_reg_534_pp0_iter5_reg),
    .din1(mul9_1_reg_555),
    .ce(1'b1),
    .dout(grp_fu_304_p2)
);

fft_stage_first_fsub_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_5_full_dsp_1_U5(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln33_reg_592),
    .din1(temp_R_reg_580),
    .ce(1'b1),
    .dout(grp_fu_308_p2)
);

fft_stage_first_fsub_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_5_full_dsp_1_U6(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln34_reg_598),
    .din1(temp_I_reg_586),
    .ce(1'b1),
    .dout(grp_fu_312_p2)
);

fft_stage_first_fadd_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U7(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln33_reg_592),
    .din1(temp_R_reg_580),
    .ce(1'b1),
    .dout(grp_fu_316_p2)
);

fft_stage_first_fadd_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U8(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln34_reg_598),
    .din1(temp_I_reg_586),
    .ce(1'b1),
    .dout(grp_fu_320_p2)
);

fft_stage_first_fsub_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_5_full_dsp_1_U9(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln33_2_reg_616),
    .din1(temp_R_1_reg_604),
    .ce(1'b1),
    .dout(grp_fu_324_p2)
);

fft_stage_first_fsub_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fsub_32ns_32ns_32_5_full_dsp_1_U10(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln34_2_reg_622),
    .din1(temp_I_1_reg_610),
    .ce(1'b1),
    .dout(grp_fu_328_p2)
);

fft_stage_first_fadd_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U11(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln33_2_reg_616),
    .din1(temp_R_1_reg_604),
    .ce(1'b1),
    .dout(grp_fu_332_p2)
);

fft_stage_first_fadd_32ns_32ns_32_5_full_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U12(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln34_2_reg_622),
    .din1(temp_I_1_reg_610),
    .ce(1'b1),
    .dout(grp_fu_336_p2)
);

fft_stage_first_fmul_32ns_32ns_32_4_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U13(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln30_1_reg_522),
    .din1(32'd2147483648),
    .ce(1'b1),
    .dout(grp_fu_340_p2)
);

fft_stage_first_fmul_32ns_32ns_32_4_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U14(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln30_reg_516),
    .din1(32'd2147483648),
    .ce(1'b1),
    .dout(grp_fu_345_p2)
);

fft_stage_first_fmul_32ns_32ns_32_4_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U15(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln30_3_reg_534),
    .din1(32'd2147483648),
    .ce(1'b1),
    .dout(grp_fu_350_p2)
);

fft_stage_first_fmul_32ns_32ns_32_4_max_dsp_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U16(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(bitcast_ln30_2_reg_528),
    .din1(32'd2147483648),
    .ce(1'b1),
    .dout(grp_fu_355_p2)
);

fft_stage_first_flow_control_loop_pipe flow_control_loop_pipe_U(
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
    .ap_done_int(ap_done_int),
    .ap_continue(1'b1)
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
    if ((1'b1 == ap_condition_436)) begin
        if ((tmp_fu_368_p3 == 1'd0)) begin
            i_fu_80 <= add_ln27_fu_394_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_80 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_643 <= grp_fu_320_p2;
        add23_1_reg_658 <= grp_fu_332_p2;
        add28_1_reg_663 <= grp_fu_336_p2;
        add_reg_638 <= grp_fu_316_p2;
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
        bitcast_ln30_1_reg_522_pp0_iter2_reg <= bitcast_ln30_1_reg_522;
        bitcast_ln30_1_reg_522_pp0_iter3_reg <= bitcast_ln30_1_reg_522_pp0_iter2_reg;
        bitcast_ln30_1_reg_522_pp0_iter4_reg <= bitcast_ln30_1_reg_522_pp0_iter3_reg;
        bitcast_ln30_1_reg_522_pp0_iter5_reg <= bitcast_ln30_1_reg_522_pp0_iter4_reg;
        bitcast_ln30_2_reg_528_pp0_iter2_reg <= bitcast_ln30_2_reg_528;
        bitcast_ln30_2_reg_528_pp0_iter3_reg <= bitcast_ln30_2_reg_528_pp0_iter2_reg;
        bitcast_ln30_2_reg_528_pp0_iter4_reg <= bitcast_ln30_2_reg_528_pp0_iter3_reg;
        bitcast_ln30_2_reg_528_pp0_iter5_reg <= bitcast_ln30_2_reg_528_pp0_iter4_reg;
        bitcast_ln30_3_reg_534_pp0_iter2_reg <= bitcast_ln30_3_reg_534;
        bitcast_ln30_3_reg_534_pp0_iter3_reg <= bitcast_ln30_3_reg_534_pp0_iter2_reg;
        bitcast_ln30_3_reg_534_pp0_iter4_reg <= bitcast_ln30_3_reg_534_pp0_iter3_reg;
        bitcast_ln30_3_reg_534_pp0_iter5_reg <= bitcast_ln30_3_reg_534_pp0_iter4_reg;
        bitcast_ln30_reg_516_pp0_iter2_reg <= bitcast_ln30_reg_516;
        bitcast_ln30_reg_516_pp0_iter3_reg <= bitcast_ln30_reg_516_pp0_iter2_reg;
        bitcast_ln30_reg_516_pp0_iter4_reg <= bitcast_ln30_reg_516_pp0_iter3_reg;
        bitcast_ln30_reg_516_pp0_iter5_reg <= bitcast_ln30_reg_516_pp0_iter4_reg;
        bitcast_ln33_2_reg_616 <= bitcast_ln33_2_fu_429_p1;
        bitcast_ln33_reg_592 <= bitcast_ln33_fu_421_p1;
        bitcast_ln34_2_reg_622 <= bitcast_ln34_2_fu_433_p1;
        bitcast_ln34_reg_598 <= bitcast_ln34_fu_425_p1;
        mul3_1_reg_550 <= grp_fu_350_p2;
        mul3_reg_540 <= grp_fu_340_p2;
        mul9_1_reg_555 <= grp_fu_355_p2;
        mul9_reg_545 <= grp_fu_345_p2;
        sub13_1_reg_648 <= grp_fu_324_p2;
        sub18_1_reg_653 <= grp_fu_328_p2;
        sub1_reg_633 <= grp_fu_312_p2;
        sub_reg_628 <= grp_fu_308_p2;
        temp_I_1_reg_610 <= grp_fu_304_p2;
        temp_I_reg_586 <= grp_fu_296_p2;
        temp_R_1_reg_604 <= grp_fu_300_p2;
        temp_R_reg_580 <= grp_fu_292_p2;
        zext_ln30_reg_480_pp0_iter10_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter9_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter11_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter10_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter12_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter11_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter13_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter12_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter14_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter13_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter15_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter14_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter2_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter1_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter3_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter2_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter4_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter3_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter5_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter4_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter6_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter5_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter7_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter6_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter8_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter7_reg[7 : 0];
        zext_ln30_reg_480_pp0_iter9_reg[7 : 0] <= zext_ln30_reg_480_pp0_iter8_reg[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        bitcast_ln30_1_reg_522 <= bitcast_ln30_1_fu_409_p1;
        bitcast_ln30_2_reg_528 <= bitcast_ln30_2_fu_413_p1;
        bitcast_ln30_3_reg_534 <= bitcast_ln30_3_fu_417_p1;
        bitcast_ln30_reg_516 <= bitcast_ln30_fu_405_p1;
        zext_ln30_reg_480_pp0_iter1_reg[7 : 0] <= zext_ln30_reg_480[7 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_fu_368_p3 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        zext_ln30_reg_480[7 : 0] <= zext_ln30_fu_386_p1[7 : 0];
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_I_0_ce0 = 1'b1;
    end else begin
        OUT_I_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_I_0_we0 = 1'b1;
    end else begin
        OUT_I_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_I_1_ce0 = 1'b1;
    end else begin
        OUT_I_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_I_1_we0 = 1'b1;
    end else begin
        OUT_I_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_I_2_ce0 = 1'b1;
    end else begin
        OUT_I_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_I_2_we0 = 1'b1;
    end else begin
        OUT_I_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_I_3_ce0 = 1'b1;
    end else begin
        OUT_I_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_I_3_we0 = 1'b1;
    end else begin
        OUT_I_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_R_0_ce0 = 1'b1;
    end else begin
        OUT_R_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_R_0_we0 = 1'b1;
    end else begin
        OUT_R_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_R_1_ce0 = 1'b1;
    end else begin
        OUT_R_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_R_1_we0 = 1'b1;
    end else begin
        OUT_R_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_R_2_ce0 = 1'b1;
    end else begin
        OUT_R_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_R_2_we0 = 1'b1;
    end else begin
        OUT_R_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_R_3_ce0 = 1'b1;
    end else begin
        OUT_R_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        OUT_R_3_we0 = 1'b1;
    end else begin
        OUT_R_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        X_I_0_ce0 = 1'b1;
    end else begin
        X_I_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_I_1_ce0 = 1'b1;
    end else begin
        X_I_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        X_I_2_ce0 = 1'b1;
    end else begin
        X_I_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_I_3_ce0 = 1'b1;
    end else begin
        X_I_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        X_R_0_ce0 = 1'b1;
    end else begin
        X_R_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_R_1_ce0 = 1'b1;
    end else begin
        X_R_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        X_R_2_ce0 = 1'b1;
    end else begin
        X_R_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        X_R_3_ce0 = 1'b1;
    end else begin
        X_R_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((tmp_fu_368_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_80;
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

assign OUT_I_0_address0 = zext_ln30_reg_480_pp0_iter15_reg;

assign OUT_I_0_d0 = add1_reg_643;

assign OUT_I_1_address0 = zext_ln30_reg_480_pp0_iter15_reg;

assign OUT_I_1_d0 = sub1_reg_633;

assign OUT_I_2_address0 = zext_ln30_reg_480_pp0_iter15_reg;

assign OUT_I_2_d0 = add28_1_reg_663;

assign OUT_I_3_address0 = zext_ln30_reg_480_pp0_iter15_reg;

assign OUT_I_3_d0 = sub18_1_reg_653;

assign OUT_R_0_address0 = zext_ln30_reg_480_pp0_iter15_reg;

assign OUT_R_0_d0 = add_reg_638;

assign OUT_R_1_address0 = zext_ln30_reg_480_pp0_iter15_reg;

assign OUT_R_1_d0 = sub_reg_628;

assign OUT_R_2_address0 = zext_ln30_reg_480_pp0_iter15_reg;

assign OUT_R_2_d0 = add23_1_reg_658;

assign OUT_R_3_address0 = zext_ln30_reg_480_pp0_iter15_reg;

assign OUT_R_3_d0 = sub13_1_reg_648;

assign X_I_0_address0 = zext_ln30_reg_480_pp0_iter8_reg;

assign X_I_1_address0 = zext_ln30_fu_386_p1;

assign X_I_2_address0 = zext_ln30_reg_480_pp0_iter8_reg;

assign X_I_3_address0 = zext_ln30_fu_386_p1;

assign X_R_0_address0 = zext_ln30_reg_480_pp0_iter8_reg;

assign X_R_1_address0 = zext_ln30_fu_386_p1;

assign X_R_2_address0 = zext_ln30_reg_480_pp0_iter8_reg;

assign X_R_3_address0 = zext_ln30_fu_386_p1;

assign add_ln27_fu_394_p2 = (ap_sig_allocacmp_i_1 + 11'd4);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

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

always @ (*) begin
    ap_condition_436 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign bitcast_ln30_1_fu_409_p1 = X_I_1_q0;

assign bitcast_ln30_2_fu_413_p1 = X_R_3_q0;

assign bitcast_ln30_3_fu_417_p1 = X_I_3_q0;

assign bitcast_ln30_fu_405_p1 = X_R_1_q0;

assign bitcast_ln33_2_fu_429_p1 = X_R_2_q0;

assign bitcast_ln33_fu_421_p1 = X_R_0_q0;

assign bitcast_ln34_2_fu_433_p1 = X_I_2_q0;

assign bitcast_ln34_fu_425_p1 = X_I_0_q0;

assign lshr_ln_fu_376_p4 = {{ap_sig_allocacmp_i_1[9:2]}};

assign tmp_fu_368_p3 = ap_sig_allocacmp_i_1[32'd10];

assign zext_ln30_fu_386_p1 = lshr_ln_fu_376_p4;

always @ (posedge ap_clk) begin
    zext_ln30_reg_480[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter1_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter2_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter3_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter4_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter5_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter6_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter7_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter8_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter9_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter10_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter11_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter12_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter13_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter14_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
    zext_ln30_reg_480_pp0_iter15_reg[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end

endmodule //fft_stage_first
