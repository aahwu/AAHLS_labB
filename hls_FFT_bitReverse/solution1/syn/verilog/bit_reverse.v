// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bit_reverse_bit_reverse,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.508000,HLS_SYN_LAT=2050,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1091,HLS_SYN_LUT=3523,HLS_VERSION=2022_1}" *)

module bit_reverse (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        X_R_address0,
        X_R_ce0,
        X_R_we0,
        X_R_d0,
        X_R_q0,
        X_R_address1,
        X_R_ce1,
        X_R_we1,
        X_R_d1,
        X_R_q1,
        X_I_address0,
        X_I_ce0,
        X_I_we0,
        X_I_d0,
        X_I_q0,
        X_I_address1,
        X_I_ce1,
        X_I_we1,
        X_I_d1,
        X_I_q1
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] X_R_address0;
output   X_R_ce0;
output   X_R_we0;
output  [31:0] X_R_d0;
input  [31:0] X_R_q0;
output  [9:0] X_R_address1;
output   X_R_ce1;
output   X_R_we1;
output  [31:0] X_R_d1;
input  [31:0] X_R_q1;
output  [9:0] X_I_address0;
output   X_I_ce0;
output   X_I_we0;
output  [31:0] X_I_d0;
input  [31:0] X_I_q0;
output  [9:0] X_I_address1;
output   X_I_ce1;
output   X_I_we1;
output  [31:0] X_I_d1;
input  [31:0] X_I_q1;

reg ap_idle;
reg[9:0] X_R_address0;
reg X_R_ce0;
reg X_R_we0;
reg[9:0] X_R_address1;
reg X_R_ce1;
reg X_R_we1;
reg[9:0] X_I_address0;
reg X_I_ce0;
reg X_I_we0;
reg[9:0] X_I_address1;
reg X_I_ce1;
reg X_I_we1;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln50_fu_129_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
reg   [0:0] icmp_ln50_reg_225;
wire   [10:0] add_ln50_fu_135_p2;
reg   [10:0] add_ln50_reg_229;
wire   [0:0] p_Result_s_fu_166_p2;
reg   [0:0] p_Result_s_reg_234;
reg   [9:0] X_R_addr_reg_238;
reg   [9:0] X_I_addr_reg_243;
reg   [9:0] X_R_addr_1_reg_248;
reg   [9:0] X_I_addr_1_reg_253;
wire   [63:0] i_cast_fu_144_p1;
wire   [63:0] zext_ln587_fu_196_p1;
reg   [10:0] i_fu_54;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_i_2;
reg   [1023:0] p_Val2_s_fu_58;
reg   [1023:0] p_Result_2_fu_186_p4;
reg   [1023:0] ap_sig_allocacmp_p_Val2_load;
wire   [1023:0] zext_ln825_fu_150_p1;
wire   [1023:0] shl_ln825_fu_154_p2;
wire   [1023:0] and_ln825_fu_160_p2;
reg   [9:0] or_ln34_8_fu_172_p4;
wire   [31:0] zext_ln850_fu_182_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_predicate_op45_store_state2;
reg    ap_enable_operation_45;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_state2_pp0_iter0_stage1;
reg    ap_predicate_op38_load_state1;
reg    ap_enable_operation_38;
reg    ap_enable_state1_pp0_iter0_stage0;
reg    ap_predicate_op44_load_state2;
reg    ap_enable_operation_44;
reg    ap_predicate_op48_store_state2;
reg    ap_enable_operation_48;
reg    ap_predicate_op47_store_state2;
reg    ap_enable_operation_47;
reg    ap_predicate_op40_load_state1;
reg    ap_enable_operation_40;
reg    ap_predicate_op46_load_state2;
reg    ap_enable_operation_46;
reg    ap_predicate_op49_store_state2;
reg    ap_enable_operation_49;
reg    ap_predicate_op33_load_state1;
reg    ap_enable_operation_33;
reg    ap_predicate_op42_load_state2;
reg    ap_enable_operation_42;
reg    ap_predicate_op35_load_state1;
reg    ap_enable_operation_35;
reg    ap_predicate_op43_load_state2;
reg    ap_enable_operation_43;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_done_reg = 1'b0;
end

bit_reverse_flow_control_loop_pipe flow_control_loop_pipe_U(
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
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_fu_54 <= 11'd0;
    end else if (((icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_54 <= add_ln50_reg_229;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if (((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0))) begin
            p_Val2_s_fu_58 <= p_Result_2_fu_186_p4;
        end else if ((ap_loop_init == 1'b1)) begin
            p_Val2_s_fu_58 <= 1024'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        X_I_addr_1_reg_253 <= zext_ln587_fu_196_p1;
        X_I_addr_reg_243 <= i_cast_fu_144_p1;
        X_R_addr_1_reg_248 <= zext_ln587_fu_196_p1;
        X_R_addr_reg_238 <= i_cast_fu_144_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln50_reg_229 <= add_ln50_fu_135_p2;
        icmp_ln50_reg_225 <= icmp_ln50_fu_129_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln50_fu_129_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_Result_s_reg_234 <= p_Result_s_fu_166_p2;
    end
end

always @ (*) begin
    if (((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        X_I_address0 = X_I_addr_1_reg_253;
    end else if (((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        X_I_address0 = zext_ln587_fu_196_p1;
    end else begin
        X_I_address0 = 'bx;
    end
end

always @ (*) begin
    if (((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        X_I_address1 = X_I_addr_reg_243;
    end else if (((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        X_I_address1 = i_cast_fu_144_p1;
    end else begin
        X_I_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        X_I_ce0 = 1'b1;
    end else begin
        X_I_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        X_I_ce1 = 1'b1;
    end else begin
        X_I_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        X_I_we0 = 1'b1;
    end else begin
        X_I_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        X_I_we1 = 1'b1;
    end else begin
        X_I_we1 = 1'b0;
    end
end

always @ (*) begin
    if (((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        X_R_address0 = X_R_addr_1_reg_248;
    end else if (((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        X_R_address0 = zext_ln587_fu_196_p1;
    end else begin
        X_R_address0 = 'bx;
    end
end

always @ (*) begin
    if (((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        X_R_address1 = X_R_addr_reg_238;
    end else if (((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        X_R_address1 = i_cast_fu_144_p1;
    end else begin
        X_R_address1 = 'bx;
    end
end

always @ (*) begin
    if ((((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        X_R_ce0 = 1'b1;
    end else begin
        X_R_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1)) | ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
        X_R_ce1 = 1'b1;
    end else begin
        X_R_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        X_R_we0 = 1'b1;
    end else begin
        X_R_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        X_R_we1 = 1'b1;
    end else begin
        X_R_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if (((icmp_ln50_fu_129_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_2 = 11'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_54;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_p_Val2_load = 1024'd0;
    end else begin
        ap_sig_allocacmp_p_Val2_load = p_Val2_s_fu_58;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln50_fu_129_p2 == 1'd1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign X_I_d0 = X_I_q1;

assign X_I_d1 = X_I_q0;

assign X_R_d0 = X_R_q1;

assign X_R_d1 = X_R_q0;

assign add_ln50_fu_135_p2 = (ap_sig_allocacmp_i_2 + 11'd1);

assign and_ln825_fu_160_p2 = (shl_ln825_fu_154_p2 & ap_sig_allocacmp_p_Val2_load);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_enable_operation_33 = (ap_predicate_op33_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_35 = (ap_predicate_op35_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_38 = (ap_predicate_op38_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_40 = (ap_predicate_op40_load_state1 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_42 = (ap_predicate_op42_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_43 = (ap_predicate_op43_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_44 = (ap_predicate_op44_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_45 = (ap_predicate_op45_store_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_46 = (ap_predicate_op46_load_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_47 = (ap_predicate_op47_store_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_48 = (ap_predicate_op48_store_state2 == 1'b1);
end

always @ (*) begin
    ap_enable_operation_49 = (ap_predicate_op49_store_state2 == 1'b1);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = 1'b0;

always @ (*) begin
    ap_enable_state1_pp0_iter0_stage0 = ((1'b1 == ap_CS_fsm_state1) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

always @ (*) begin
    ap_enable_state2_pp0_iter0_stage1 = ((1'b1 == ap_CS_fsm_state2) & (ap_enable_reg_pp0_iter0 == 1'b1));
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

always @ (*) begin
    ap_predicate_op33_load_state1 = ((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op35_load_state1 = ((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op38_load_state1 = ((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op40_load_state1 = ((p_Result_s_fu_166_p2 == 1'd1) & (icmp_ln50_fu_129_p2 == 1'd0));
end

always @ (*) begin
    ap_predicate_op42_load_state2 = ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0));
end

always @ (*) begin
    ap_predicate_op43_load_state2 = ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0));
end

always @ (*) begin
    ap_predicate_op44_load_state2 = ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0));
end

always @ (*) begin
    ap_predicate_op45_store_state2 = ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0));
end

always @ (*) begin
    ap_predicate_op46_load_state2 = ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0));
end

always @ (*) begin
    ap_predicate_op47_store_state2 = ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0));
end

always @ (*) begin
    ap_predicate_op48_store_state2 = ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0));
end

always @ (*) begin
    ap_predicate_op49_store_state2 = ((p_Result_s_reg_234 == 1'd1) & (icmp_ln50_reg_225 == 1'd0));
end

assign i_cast_fu_144_p1 = ap_sig_allocacmp_i_2;

assign icmp_ln50_fu_129_p2 = ((ap_sig_allocacmp_i_2 == 11'd1024) ? 1'b1 : 1'b0);

integer ap_tvar_int_0;

always @ (ap_sig_allocacmp_i_2) begin
    for (ap_tvar_int_0 = 10 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 9 - 0) begin
            or_ln34_8_fu_172_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            or_ln34_8_fu_172_p4[ap_tvar_int_0] = ap_sig_allocacmp_i_2[9 - ap_tvar_int_0];
        end
    end
end

always @ (*) begin
    p_Result_2_fu_186_p4 = ap_sig_allocacmp_p_Val2_load;
    p_Result_2_fu_186_p4[zext_ln850_fu_182_p1] = |(1'd1);
end

assign p_Result_s_fu_166_p2 = ((and_ln825_fu_160_p2 == 1024'd0) ? 1'b1 : 1'b0);

assign shl_ln825_fu_154_p2 = 1024'd1 << zext_ln825_fu_150_p1;

assign zext_ln587_fu_196_p1 = or_ln34_8_fu_172_p4;

assign zext_ln825_fu_150_p1 = ap_sig_allocacmp_i_2;

assign zext_ln850_fu_182_p1 = or_ln34_8_fu_172_p4;

endmodule //bit_reverse
