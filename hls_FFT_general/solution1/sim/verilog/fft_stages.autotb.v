// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      fft_stages
`define AUTOTB_DUT_INST AESL_inst_fft_stages
`define AUTOTB_TOP      apatb_fft_stages_top
`define AUTOTB_LAT_RESULT_FILE "fft_stages.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "fft_stages.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_fft_stages_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_MEM_X_R_0 AESL_automem_X_R_0
`define AESL_MEM_INST_X_R_0 mem_inst_X_R_0
`define AESL_MEM_X_R_1 AESL_automem_X_R_1
`define AESL_MEM_INST_X_R_1 mem_inst_X_R_1
`define AESL_MEM_X_R_2 AESL_automem_X_R_2
`define AESL_MEM_INST_X_R_2 mem_inst_X_R_2
`define AESL_MEM_X_R_3 AESL_automem_X_R_3
`define AESL_MEM_INST_X_R_3 mem_inst_X_R_3
`define AESL_MEM_X_I_0 AESL_automem_X_I_0
`define AESL_MEM_INST_X_I_0 mem_inst_X_I_0
`define AESL_MEM_X_I_1 AESL_automem_X_I_1
`define AESL_MEM_INST_X_I_1 mem_inst_X_I_1
`define AESL_MEM_X_I_2 AESL_automem_X_I_2
`define AESL_MEM_INST_X_I_2 mem_inst_X_I_2
`define AESL_MEM_X_I_3 AESL_automem_X_I_3
`define AESL_MEM_INST_X_I_3 mem_inst_X_I_3
`define AESL_DEPTH_stage 1
`define AESL_MEM_OUT_R_0 AESL_automem_OUT_R_0
`define AESL_MEM_INST_OUT_R_0 mem_inst_OUT_R_0
`define AESL_MEM_OUT_R_1 AESL_automem_OUT_R_1
`define AESL_MEM_INST_OUT_R_1 mem_inst_OUT_R_1
`define AESL_MEM_OUT_R_2 AESL_automem_OUT_R_2
`define AESL_MEM_INST_OUT_R_2 mem_inst_OUT_R_2
`define AESL_MEM_OUT_R_3 AESL_automem_OUT_R_3
`define AESL_MEM_INST_OUT_R_3 mem_inst_OUT_R_3
`define AESL_MEM_OUT_I_0 AESL_automem_OUT_I_0
`define AESL_MEM_INST_OUT_I_0 mem_inst_OUT_I_0
`define AESL_MEM_OUT_I_1 AESL_automem_OUT_I_1
`define AESL_MEM_INST_OUT_I_1 mem_inst_OUT_I_1
`define AESL_MEM_OUT_I_2 AESL_automem_OUT_I_2
`define AESL_MEM_INST_OUT_I_2 mem_inst_OUT_I_2
`define AESL_MEM_OUT_I_3 AESL_automem_OUT_I_3
`define AESL_MEM_INST_OUT_I_3 mem_inst_OUT_I_3
`define AUTOTB_TVIN_X_R_0  "../tv/cdatafile/c.fft_stages.autotvin_X_R_0.dat"
`define AUTOTB_TVIN_X_R_1  "../tv/cdatafile/c.fft_stages.autotvin_X_R_1.dat"
`define AUTOTB_TVIN_X_R_2  "../tv/cdatafile/c.fft_stages.autotvin_X_R_2.dat"
`define AUTOTB_TVIN_X_R_3  "../tv/cdatafile/c.fft_stages.autotvin_X_R_3.dat"
`define AUTOTB_TVIN_X_I_0  "../tv/cdatafile/c.fft_stages.autotvin_X_I_0.dat"
`define AUTOTB_TVIN_X_I_1  "../tv/cdatafile/c.fft_stages.autotvin_X_I_1.dat"
`define AUTOTB_TVIN_X_I_2  "../tv/cdatafile/c.fft_stages.autotvin_X_I_2.dat"
`define AUTOTB_TVIN_X_I_3  "../tv/cdatafile/c.fft_stages.autotvin_X_I_3.dat"
`define AUTOTB_TVIN_stage  "../tv/cdatafile/c.fft_stages.autotvin_stage.dat"
`define AUTOTB_TVIN_OUT_R_0  "../tv/cdatafile/c.fft_stages.autotvin_OUT_R_0.dat"
`define AUTOTB_TVIN_OUT_R_1  "../tv/cdatafile/c.fft_stages.autotvin_OUT_R_1.dat"
`define AUTOTB_TVIN_OUT_R_2  "../tv/cdatafile/c.fft_stages.autotvin_OUT_R_2.dat"
`define AUTOTB_TVIN_OUT_R_3  "../tv/cdatafile/c.fft_stages.autotvin_OUT_R_3.dat"
`define AUTOTB_TVIN_OUT_I_0  "../tv/cdatafile/c.fft_stages.autotvin_OUT_I_0.dat"
`define AUTOTB_TVIN_OUT_I_1  "../tv/cdatafile/c.fft_stages.autotvin_OUT_I_1.dat"
`define AUTOTB_TVIN_OUT_I_2  "../tv/cdatafile/c.fft_stages.autotvin_OUT_I_2.dat"
`define AUTOTB_TVIN_OUT_I_3  "../tv/cdatafile/c.fft_stages.autotvin_OUT_I_3.dat"
`define AUTOTB_TVIN_X_R_0_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_X_R_0.dat"
`define AUTOTB_TVIN_X_R_1_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_X_R_1.dat"
`define AUTOTB_TVIN_X_R_2_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_X_R_2.dat"
`define AUTOTB_TVIN_X_R_3_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_X_R_3.dat"
`define AUTOTB_TVIN_X_I_0_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_X_I_0.dat"
`define AUTOTB_TVIN_X_I_1_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_X_I_1.dat"
`define AUTOTB_TVIN_X_I_2_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_X_I_2.dat"
`define AUTOTB_TVIN_X_I_3_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_X_I_3.dat"
`define AUTOTB_TVIN_stage_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_stage.dat"
`define AUTOTB_TVIN_OUT_R_0_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_OUT_R_0.dat"
`define AUTOTB_TVIN_OUT_R_1_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_OUT_R_1.dat"
`define AUTOTB_TVIN_OUT_R_2_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_OUT_R_2.dat"
`define AUTOTB_TVIN_OUT_R_3_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_OUT_R_3.dat"
`define AUTOTB_TVIN_OUT_I_0_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_OUT_I_0.dat"
`define AUTOTB_TVIN_OUT_I_1_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_OUT_I_1.dat"
`define AUTOTB_TVIN_OUT_I_2_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_OUT_I_2.dat"
`define AUTOTB_TVIN_OUT_I_3_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvin_OUT_I_3.dat"
`define AUTOTB_TVOUT_OUT_R_0  "../tv/cdatafile/c.fft_stages.autotvout_OUT_R_0.dat"
`define AUTOTB_TVOUT_OUT_R_1  "../tv/cdatafile/c.fft_stages.autotvout_OUT_R_1.dat"
`define AUTOTB_TVOUT_OUT_R_2  "../tv/cdatafile/c.fft_stages.autotvout_OUT_R_2.dat"
`define AUTOTB_TVOUT_OUT_R_3  "../tv/cdatafile/c.fft_stages.autotvout_OUT_R_3.dat"
`define AUTOTB_TVOUT_OUT_I_0  "../tv/cdatafile/c.fft_stages.autotvout_OUT_I_0.dat"
`define AUTOTB_TVOUT_OUT_I_1  "../tv/cdatafile/c.fft_stages.autotvout_OUT_I_1.dat"
`define AUTOTB_TVOUT_OUT_I_2  "../tv/cdatafile/c.fft_stages.autotvout_OUT_I_2.dat"
`define AUTOTB_TVOUT_OUT_I_3  "../tv/cdatafile/c.fft_stages.autotvout_OUT_I_3.dat"
`define AUTOTB_TVOUT_OUT_R_0_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvout_OUT_R_0.dat"
`define AUTOTB_TVOUT_OUT_R_1_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvout_OUT_R_1.dat"
`define AUTOTB_TVOUT_OUT_R_2_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvout_OUT_R_2.dat"
`define AUTOTB_TVOUT_OUT_R_3_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvout_OUT_R_3.dat"
`define AUTOTB_TVOUT_OUT_I_0_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvout_OUT_I_0.dat"
`define AUTOTB_TVOUT_OUT_I_1_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvout_OUT_I_1.dat"
`define AUTOTB_TVOUT_OUT_I_2_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvout_OUT_I_2.dat"
`define AUTOTB_TVOUT_OUT_I_3_out_wrapc  "../tv/rtldatafile/rtl.fft_stages.autotvout_OUT_I_3.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 8;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_X_R_0 = 256;
parameter LENGTH_X_R_1 = 256;
parameter LENGTH_X_R_2 = 256;
parameter LENGTH_X_R_3 = 256;
parameter LENGTH_X_I_0 = 256;
parameter LENGTH_X_I_1 = 256;
parameter LENGTH_X_I_2 = 256;
parameter LENGTH_X_I_3 = 256;
parameter LENGTH_stage = 1;
parameter LENGTH_OUT_R_0 = 256;
parameter LENGTH_OUT_R_1 = 256;
parameter LENGTH_OUT_R_2 = 256;
parameter LENGTH_OUT_R_3 = 256;
parameter LENGTH_OUT_I_0 = 256;
parameter LENGTH_OUT_I_1 = 256;
parameter LENGTH_OUT_I_2 = 256;
parameter LENGTH_OUT_I_3 = 256;

task read_token;
    input integer fp;
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [7 : 0] X_R_0_address0;
wire  X_R_0_ce0;
wire [31 : 0] X_R_0_q0;
wire [7 : 0] X_R_1_address0;
wire  X_R_1_ce0;
wire [31 : 0] X_R_1_q0;
wire [7 : 0] X_R_2_address0;
wire  X_R_2_ce0;
wire [31 : 0] X_R_2_q0;
wire [7 : 0] X_R_3_address0;
wire  X_R_3_ce0;
wire [31 : 0] X_R_3_q0;
wire [7 : 0] X_I_0_address0;
wire  X_I_0_ce0;
wire [31 : 0] X_I_0_q0;
wire [7 : 0] X_I_1_address0;
wire  X_I_1_ce0;
wire [31 : 0] X_I_1_q0;
wire [7 : 0] X_I_2_address0;
wire  X_I_2_ce0;
wire [31 : 0] X_I_2_q0;
wire [7 : 0] X_I_3_address0;
wire  X_I_3_ce0;
wire [31 : 0] X_I_3_q0;
wire [31 : 0] stage;
wire [7 : 0] OUT_R_0_address0;
wire  OUT_R_0_ce0;
wire  OUT_R_0_we0;
wire [31 : 0] OUT_R_0_d0;
wire [7 : 0] OUT_R_1_address0;
wire  OUT_R_1_ce0;
wire  OUT_R_1_we0;
wire [31 : 0] OUT_R_1_d0;
wire [7 : 0] OUT_R_2_address0;
wire  OUT_R_2_ce0;
wire  OUT_R_2_we0;
wire [31 : 0] OUT_R_2_d0;
wire [7 : 0] OUT_R_3_address0;
wire  OUT_R_3_ce0;
wire  OUT_R_3_we0;
wire [31 : 0] OUT_R_3_d0;
wire [7 : 0] OUT_I_0_address0;
wire  OUT_I_0_ce0;
wire  OUT_I_0_we0;
wire [31 : 0] OUT_I_0_d0;
wire [7 : 0] OUT_I_1_address0;
wire  OUT_I_1_ce0;
wire  OUT_I_1_we0;
wire [31 : 0] OUT_I_1_d0;
wire [7 : 0] OUT_I_2_address0;
wire  OUT_I_2_ce0;
wire  OUT_I_2_we0;
wire [31 : 0] OUT_I_2_d0;
wire [7 : 0] OUT_I_3_address0;
wire  OUT_I_3_ce0;
wire  OUT_I_3_we0;
wire [31 : 0] OUT_I_3_d0;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;


wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .X_R_0_address0(X_R_0_address0),
    .X_R_0_ce0(X_R_0_ce0),
    .X_R_0_q0(X_R_0_q0),
    .X_R_1_address0(X_R_1_address0),
    .X_R_1_ce0(X_R_1_ce0),
    .X_R_1_q0(X_R_1_q0),
    .X_R_2_address0(X_R_2_address0),
    .X_R_2_ce0(X_R_2_ce0),
    .X_R_2_q0(X_R_2_q0),
    .X_R_3_address0(X_R_3_address0),
    .X_R_3_ce0(X_R_3_ce0),
    .X_R_3_q0(X_R_3_q0),
    .X_I_0_address0(X_I_0_address0),
    .X_I_0_ce0(X_I_0_ce0),
    .X_I_0_q0(X_I_0_q0),
    .X_I_1_address0(X_I_1_address0),
    .X_I_1_ce0(X_I_1_ce0),
    .X_I_1_q0(X_I_1_q0),
    .X_I_2_address0(X_I_2_address0),
    .X_I_2_ce0(X_I_2_ce0),
    .X_I_2_q0(X_I_2_q0),
    .X_I_3_address0(X_I_3_address0),
    .X_I_3_ce0(X_I_3_ce0),
    .X_I_3_q0(X_I_3_q0),
    .stage(stage),
    .OUT_R_0_address0(OUT_R_0_address0),
    .OUT_R_0_ce0(OUT_R_0_ce0),
    .OUT_R_0_we0(OUT_R_0_we0),
    .OUT_R_0_d0(OUT_R_0_d0),
    .OUT_R_1_address0(OUT_R_1_address0),
    .OUT_R_1_ce0(OUT_R_1_ce0),
    .OUT_R_1_we0(OUT_R_1_we0),
    .OUT_R_1_d0(OUT_R_1_d0),
    .OUT_R_2_address0(OUT_R_2_address0),
    .OUT_R_2_ce0(OUT_R_2_ce0),
    .OUT_R_2_we0(OUT_R_2_we0),
    .OUT_R_2_d0(OUT_R_2_d0),
    .OUT_R_3_address0(OUT_R_3_address0),
    .OUT_R_3_ce0(OUT_R_3_ce0),
    .OUT_R_3_we0(OUT_R_3_we0),
    .OUT_R_3_d0(OUT_R_3_d0),
    .OUT_I_0_address0(OUT_I_0_address0),
    .OUT_I_0_ce0(OUT_I_0_ce0),
    .OUT_I_0_we0(OUT_I_0_we0),
    .OUT_I_0_d0(OUT_I_0_d0),
    .OUT_I_1_address0(OUT_I_1_address0),
    .OUT_I_1_ce0(OUT_I_1_ce0),
    .OUT_I_1_we0(OUT_I_1_we0),
    .OUT_I_1_d0(OUT_I_1_d0),
    .OUT_I_2_address0(OUT_I_2_address0),
    .OUT_I_2_ce0(OUT_I_2_ce0),
    .OUT_I_2_we0(OUT_I_2_we0),
    .OUT_I_2_d0(OUT_I_2_d0),
    .OUT_I_3_address0(OUT_I_3_address0),
    .OUT_I_3_ce0(OUT_I_3_ce0),
    .OUT_I_3_we0(OUT_I_3_we0),
    .OUT_I_3_d0(OUT_I_3_d0));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
//------------------------arrayX_R_0 Instantiation--------------

// The input and output of arrayX_R_0
wire    arrayX_R_0_ce0, arrayX_R_0_ce1;
wire [4 - 1 : 0]    arrayX_R_0_we0, arrayX_R_0_we1;
wire    [7 : 0]    arrayX_R_0_address0, arrayX_R_0_address1;
wire    [31 : 0]    arrayX_R_0_din0, arrayX_R_0_din1;
wire    [31 : 0]    arrayX_R_0_dout0, arrayX_R_0_dout1;
wire    arrayX_R_0_ready;
wire    arrayX_R_0_done;

`AESL_MEM_X_R_0 `AESL_MEM_INST_X_R_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_R_0_ce0),
    .we0        (arrayX_R_0_we0),
    .address0   (arrayX_R_0_address0),
    .din0       (arrayX_R_0_din0),
    .dout0      (arrayX_R_0_dout0),
    .ce1        (arrayX_R_0_ce1),
    .we1        (arrayX_R_0_we1),
    .address1   (arrayX_R_0_address1),
    .din1       (arrayX_R_0_din1),
    .dout1      (arrayX_R_0_dout1),
    .ready      (arrayX_R_0_ready),
    .done    (arrayX_R_0_done)
);

// Assignment between dut and arrayX_R_0
assign arrayX_R_0_address0 = X_R_0_address0;
assign arrayX_R_0_ce0 = X_R_0_ce0;
assign X_R_0_q0 = arrayX_R_0_dout0;
assign arrayX_R_0_we0 = 0;
assign arrayX_R_0_din0 = 0;
assign arrayX_R_0_we1 = 0;
assign arrayX_R_0_din1 = 0;
assign arrayX_R_0_ready=    ready;
assign arrayX_R_0_done = 0;


//------------------------arrayX_R_1 Instantiation--------------

// The input and output of arrayX_R_1
wire    arrayX_R_1_ce0, arrayX_R_1_ce1;
wire [4 - 1 : 0]    arrayX_R_1_we0, arrayX_R_1_we1;
wire    [7 : 0]    arrayX_R_1_address0, arrayX_R_1_address1;
wire    [31 : 0]    arrayX_R_1_din0, arrayX_R_1_din1;
wire    [31 : 0]    arrayX_R_1_dout0, arrayX_R_1_dout1;
wire    arrayX_R_1_ready;
wire    arrayX_R_1_done;

`AESL_MEM_X_R_1 `AESL_MEM_INST_X_R_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_R_1_ce0),
    .we0        (arrayX_R_1_we0),
    .address0   (arrayX_R_1_address0),
    .din0       (arrayX_R_1_din0),
    .dout0      (arrayX_R_1_dout0),
    .ce1        (arrayX_R_1_ce1),
    .we1        (arrayX_R_1_we1),
    .address1   (arrayX_R_1_address1),
    .din1       (arrayX_R_1_din1),
    .dout1      (arrayX_R_1_dout1),
    .ready      (arrayX_R_1_ready),
    .done    (arrayX_R_1_done)
);

// Assignment between dut and arrayX_R_1
assign arrayX_R_1_address0 = X_R_1_address0;
assign arrayX_R_1_ce0 = X_R_1_ce0;
assign X_R_1_q0 = arrayX_R_1_dout0;
assign arrayX_R_1_we0 = 0;
assign arrayX_R_1_din0 = 0;
assign arrayX_R_1_we1 = 0;
assign arrayX_R_1_din1 = 0;
assign arrayX_R_1_ready=    ready;
assign arrayX_R_1_done = 0;


//------------------------arrayX_R_2 Instantiation--------------

// The input and output of arrayX_R_2
wire    arrayX_R_2_ce0, arrayX_R_2_ce1;
wire [4 - 1 : 0]    arrayX_R_2_we0, arrayX_R_2_we1;
wire    [7 : 0]    arrayX_R_2_address0, arrayX_R_2_address1;
wire    [31 : 0]    arrayX_R_2_din0, arrayX_R_2_din1;
wire    [31 : 0]    arrayX_R_2_dout0, arrayX_R_2_dout1;
wire    arrayX_R_2_ready;
wire    arrayX_R_2_done;

`AESL_MEM_X_R_2 `AESL_MEM_INST_X_R_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_R_2_ce0),
    .we0        (arrayX_R_2_we0),
    .address0   (arrayX_R_2_address0),
    .din0       (arrayX_R_2_din0),
    .dout0      (arrayX_R_2_dout0),
    .ce1        (arrayX_R_2_ce1),
    .we1        (arrayX_R_2_we1),
    .address1   (arrayX_R_2_address1),
    .din1       (arrayX_R_2_din1),
    .dout1      (arrayX_R_2_dout1),
    .ready      (arrayX_R_2_ready),
    .done    (arrayX_R_2_done)
);

// Assignment between dut and arrayX_R_2
assign arrayX_R_2_address0 = X_R_2_address0;
assign arrayX_R_2_ce0 = X_R_2_ce0;
assign X_R_2_q0 = arrayX_R_2_dout0;
assign arrayX_R_2_we0 = 0;
assign arrayX_R_2_din0 = 0;
assign arrayX_R_2_we1 = 0;
assign arrayX_R_2_din1 = 0;
assign arrayX_R_2_ready=    ready;
assign arrayX_R_2_done = 0;


//------------------------arrayX_R_3 Instantiation--------------

// The input and output of arrayX_R_3
wire    arrayX_R_3_ce0, arrayX_R_3_ce1;
wire [4 - 1 : 0]    arrayX_R_3_we0, arrayX_R_3_we1;
wire    [7 : 0]    arrayX_R_3_address0, arrayX_R_3_address1;
wire    [31 : 0]    arrayX_R_3_din0, arrayX_R_3_din1;
wire    [31 : 0]    arrayX_R_3_dout0, arrayX_R_3_dout1;
wire    arrayX_R_3_ready;
wire    arrayX_R_3_done;

`AESL_MEM_X_R_3 `AESL_MEM_INST_X_R_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_R_3_ce0),
    .we0        (arrayX_R_3_we0),
    .address0   (arrayX_R_3_address0),
    .din0       (arrayX_R_3_din0),
    .dout0      (arrayX_R_3_dout0),
    .ce1        (arrayX_R_3_ce1),
    .we1        (arrayX_R_3_we1),
    .address1   (arrayX_R_3_address1),
    .din1       (arrayX_R_3_din1),
    .dout1      (arrayX_R_3_dout1),
    .ready      (arrayX_R_3_ready),
    .done    (arrayX_R_3_done)
);

// Assignment between dut and arrayX_R_3
assign arrayX_R_3_address0 = X_R_3_address0;
assign arrayX_R_3_ce0 = X_R_3_ce0;
assign X_R_3_q0 = arrayX_R_3_dout0;
assign arrayX_R_3_we0 = 0;
assign arrayX_R_3_din0 = 0;
assign arrayX_R_3_we1 = 0;
assign arrayX_R_3_din1 = 0;
assign arrayX_R_3_ready=    ready;
assign arrayX_R_3_done = 0;


//------------------------arrayX_I_0 Instantiation--------------

// The input and output of arrayX_I_0
wire    arrayX_I_0_ce0, arrayX_I_0_ce1;
wire [4 - 1 : 0]    arrayX_I_0_we0, arrayX_I_0_we1;
wire    [7 : 0]    arrayX_I_0_address0, arrayX_I_0_address1;
wire    [31 : 0]    arrayX_I_0_din0, arrayX_I_0_din1;
wire    [31 : 0]    arrayX_I_0_dout0, arrayX_I_0_dout1;
wire    arrayX_I_0_ready;
wire    arrayX_I_0_done;

`AESL_MEM_X_I_0 `AESL_MEM_INST_X_I_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_I_0_ce0),
    .we0        (arrayX_I_0_we0),
    .address0   (arrayX_I_0_address0),
    .din0       (arrayX_I_0_din0),
    .dout0      (arrayX_I_0_dout0),
    .ce1        (arrayX_I_0_ce1),
    .we1        (arrayX_I_0_we1),
    .address1   (arrayX_I_0_address1),
    .din1       (arrayX_I_0_din1),
    .dout1      (arrayX_I_0_dout1),
    .ready      (arrayX_I_0_ready),
    .done    (arrayX_I_0_done)
);

// Assignment between dut and arrayX_I_0
assign arrayX_I_0_address0 = X_I_0_address0;
assign arrayX_I_0_ce0 = X_I_0_ce0;
assign X_I_0_q0 = arrayX_I_0_dout0;
assign arrayX_I_0_we0 = 0;
assign arrayX_I_0_din0 = 0;
assign arrayX_I_0_we1 = 0;
assign arrayX_I_0_din1 = 0;
assign arrayX_I_0_ready=    ready;
assign arrayX_I_0_done = 0;


//------------------------arrayX_I_1 Instantiation--------------

// The input and output of arrayX_I_1
wire    arrayX_I_1_ce0, arrayX_I_1_ce1;
wire [4 - 1 : 0]    arrayX_I_1_we0, arrayX_I_1_we1;
wire    [7 : 0]    arrayX_I_1_address0, arrayX_I_1_address1;
wire    [31 : 0]    arrayX_I_1_din0, arrayX_I_1_din1;
wire    [31 : 0]    arrayX_I_1_dout0, arrayX_I_1_dout1;
wire    arrayX_I_1_ready;
wire    arrayX_I_1_done;

`AESL_MEM_X_I_1 `AESL_MEM_INST_X_I_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_I_1_ce0),
    .we0        (arrayX_I_1_we0),
    .address0   (arrayX_I_1_address0),
    .din0       (arrayX_I_1_din0),
    .dout0      (arrayX_I_1_dout0),
    .ce1        (arrayX_I_1_ce1),
    .we1        (arrayX_I_1_we1),
    .address1   (arrayX_I_1_address1),
    .din1       (arrayX_I_1_din1),
    .dout1      (arrayX_I_1_dout1),
    .ready      (arrayX_I_1_ready),
    .done    (arrayX_I_1_done)
);

// Assignment between dut and arrayX_I_1
assign arrayX_I_1_address0 = X_I_1_address0;
assign arrayX_I_1_ce0 = X_I_1_ce0;
assign X_I_1_q0 = arrayX_I_1_dout0;
assign arrayX_I_1_we0 = 0;
assign arrayX_I_1_din0 = 0;
assign arrayX_I_1_we1 = 0;
assign arrayX_I_1_din1 = 0;
assign arrayX_I_1_ready=    ready;
assign arrayX_I_1_done = 0;


//------------------------arrayX_I_2 Instantiation--------------

// The input and output of arrayX_I_2
wire    arrayX_I_2_ce0, arrayX_I_2_ce1;
wire [4 - 1 : 0]    arrayX_I_2_we0, arrayX_I_2_we1;
wire    [7 : 0]    arrayX_I_2_address0, arrayX_I_2_address1;
wire    [31 : 0]    arrayX_I_2_din0, arrayX_I_2_din1;
wire    [31 : 0]    arrayX_I_2_dout0, arrayX_I_2_dout1;
wire    arrayX_I_2_ready;
wire    arrayX_I_2_done;

`AESL_MEM_X_I_2 `AESL_MEM_INST_X_I_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_I_2_ce0),
    .we0        (arrayX_I_2_we0),
    .address0   (arrayX_I_2_address0),
    .din0       (arrayX_I_2_din0),
    .dout0      (arrayX_I_2_dout0),
    .ce1        (arrayX_I_2_ce1),
    .we1        (arrayX_I_2_we1),
    .address1   (arrayX_I_2_address1),
    .din1       (arrayX_I_2_din1),
    .dout1      (arrayX_I_2_dout1),
    .ready      (arrayX_I_2_ready),
    .done    (arrayX_I_2_done)
);

// Assignment between dut and arrayX_I_2
assign arrayX_I_2_address0 = X_I_2_address0;
assign arrayX_I_2_ce0 = X_I_2_ce0;
assign X_I_2_q0 = arrayX_I_2_dout0;
assign arrayX_I_2_we0 = 0;
assign arrayX_I_2_din0 = 0;
assign arrayX_I_2_we1 = 0;
assign arrayX_I_2_din1 = 0;
assign arrayX_I_2_ready=    ready;
assign arrayX_I_2_done = 0;


//------------------------arrayX_I_3 Instantiation--------------

// The input and output of arrayX_I_3
wire    arrayX_I_3_ce0, arrayX_I_3_ce1;
wire [4 - 1 : 0]    arrayX_I_3_we0, arrayX_I_3_we1;
wire    [7 : 0]    arrayX_I_3_address0, arrayX_I_3_address1;
wire    [31 : 0]    arrayX_I_3_din0, arrayX_I_3_din1;
wire    [31 : 0]    arrayX_I_3_dout0, arrayX_I_3_dout1;
wire    arrayX_I_3_ready;
wire    arrayX_I_3_done;

`AESL_MEM_X_I_3 `AESL_MEM_INST_X_I_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayX_I_3_ce0),
    .we0        (arrayX_I_3_we0),
    .address0   (arrayX_I_3_address0),
    .din0       (arrayX_I_3_din0),
    .dout0      (arrayX_I_3_dout0),
    .ce1        (arrayX_I_3_ce1),
    .we1        (arrayX_I_3_we1),
    .address1   (arrayX_I_3_address1),
    .din1       (arrayX_I_3_din1),
    .dout1      (arrayX_I_3_dout1),
    .ready      (arrayX_I_3_ready),
    .done    (arrayX_I_3_done)
);

// Assignment between dut and arrayX_I_3
assign arrayX_I_3_address0 = X_I_3_address0;
assign arrayX_I_3_ce0 = X_I_3_ce0;
assign X_I_3_q0 = arrayX_I_3_dout0;
assign arrayX_I_3_we0 = 0;
assign arrayX_I_3_din0 = 0;
assign arrayX_I_3_we1 = 0;
assign arrayX_I_3_din1 = 0;
assign arrayX_I_3_ready=    ready;
assign arrayX_I_3_done = 0;


// The signal of port stage
reg [31: 0] AESL_REG_stage = 0;
assign stage = AESL_REG_stage;
initial begin : read_file_process_stage
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [151  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_stage,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_stage);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_stage);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


//------------------------arrayOUT_R_0 Instantiation--------------

// The input and output of arrayOUT_R_0
wire    arrayOUT_R_0_ce0, arrayOUT_R_0_ce1;
wire [4 - 1 : 0]    arrayOUT_R_0_we0, arrayOUT_R_0_we1;
wire    [7 : 0]    arrayOUT_R_0_address0, arrayOUT_R_0_address1;
wire    [31 : 0]    arrayOUT_R_0_din0, arrayOUT_R_0_din1;
wire    [31 : 0]    arrayOUT_R_0_dout0, arrayOUT_R_0_dout1;
wire    arrayOUT_R_0_ready;
wire    arrayOUT_R_0_done;

`AESL_MEM_OUT_R_0 `AESL_MEM_INST_OUT_R_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_R_0_ce0),
    .we0        (arrayOUT_R_0_we0),
    .address0   (arrayOUT_R_0_address0),
    .din0       (arrayOUT_R_0_din0),
    .dout0      (arrayOUT_R_0_dout0),
    .ce1        (arrayOUT_R_0_ce1),
    .we1        (arrayOUT_R_0_we1),
    .address1   (arrayOUT_R_0_address1),
    .din1       (arrayOUT_R_0_din1),
    .dout1      (arrayOUT_R_0_dout1),
    .ready      (arrayOUT_R_0_ready),
    .done    (arrayOUT_R_0_done)
);

// Assignment between dut and arrayOUT_R_0
assign arrayOUT_R_0_address0 = OUT_R_0_address0;
assign arrayOUT_R_0_ce0 = OUT_R_0_ce0;
assign arrayOUT_R_0_we0[0] = OUT_R_0_we0;
assign arrayOUT_R_0_we0[1] = OUT_R_0_we0;
assign arrayOUT_R_0_we0[2] = OUT_R_0_we0;
assign arrayOUT_R_0_we0[3] = OUT_R_0_we0;
assign arrayOUT_R_0_din0 = OUT_R_0_d0;
assign arrayOUT_R_0_we1 = 0;
assign arrayOUT_R_0_din1 = 0;
assign arrayOUT_R_0_ready= ready_initial | arrayOUT_R_0_done;
assign arrayOUT_R_0_done =    AESL_done_delay;


//------------------------arrayOUT_R_1 Instantiation--------------

// The input and output of arrayOUT_R_1
wire    arrayOUT_R_1_ce0, arrayOUT_R_1_ce1;
wire [4 - 1 : 0]    arrayOUT_R_1_we0, arrayOUT_R_1_we1;
wire    [7 : 0]    arrayOUT_R_1_address0, arrayOUT_R_1_address1;
wire    [31 : 0]    arrayOUT_R_1_din0, arrayOUT_R_1_din1;
wire    [31 : 0]    arrayOUT_R_1_dout0, arrayOUT_R_1_dout1;
wire    arrayOUT_R_1_ready;
wire    arrayOUT_R_1_done;

`AESL_MEM_OUT_R_1 `AESL_MEM_INST_OUT_R_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_R_1_ce0),
    .we0        (arrayOUT_R_1_we0),
    .address0   (arrayOUT_R_1_address0),
    .din0       (arrayOUT_R_1_din0),
    .dout0      (arrayOUT_R_1_dout0),
    .ce1        (arrayOUT_R_1_ce1),
    .we1        (arrayOUT_R_1_we1),
    .address1   (arrayOUT_R_1_address1),
    .din1       (arrayOUT_R_1_din1),
    .dout1      (arrayOUT_R_1_dout1),
    .ready      (arrayOUT_R_1_ready),
    .done    (arrayOUT_R_1_done)
);

// Assignment between dut and arrayOUT_R_1
assign arrayOUT_R_1_address0 = OUT_R_1_address0;
assign arrayOUT_R_1_ce0 = OUT_R_1_ce0;
assign arrayOUT_R_1_we0[0] = OUT_R_1_we0;
assign arrayOUT_R_1_we0[1] = OUT_R_1_we0;
assign arrayOUT_R_1_we0[2] = OUT_R_1_we0;
assign arrayOUT_R_1_we0[3] = OUT_R_1_we0;
assign arrayOUT_R_1_din0 = OUT_R_1_d0;
assign arrayOUT_R_1_we1 = 0;
assign arrayOUT_R_1_din1 = 0;
assign arrayOUT_R_1_ready= ready_initial | arrayOUT_R_1_done;
assign arrayOUT_R_1_done =    AESL_done_delay;


//------------------------arrayOUT_R_2 Instantiation--------------

// The input and output of arrayOUT_R_2
wire    arrayOUT_R_2_ce0, arrayOUT_R_2_ce1;
wire [4 - 1 : 0]    arrayOUT_R_2_we0, arrayOUT_R_2_we1;
wire    [7 : 0]    arrayOUT_R_2_address0, arrayOUT_R_2_address1;
wire    [31 : 0]    arrayOUT_R_2_din0, arrayOUT_R_2_din1;
wire    [31 : 0]    arrayOUT_R_2_dout0, arrayOUT_R_2_dout1;
wire    arrayOUT_R_2_ready;
wire    arrayOUT_R_2_done;

`AESL_MEM_OUT_R_2 `AESL_MEM_INST_OUT_R_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_R_2_ce0),
    .we0        (arrayOUT_R_2_we0),
    .address0   (arrayOUT_R_2_address0),
    .din0       (arrayOUT_R_2_din0),
    .dout0      (arrayOUT_R_2_dout0),
    .ce1        (arrayOUT_R_2_ce1),
    .we1        (arrayOUT_R_2_we1),
    .address1   (arrayOUT_R_2_address1),
    .din1       (arrayOUT_R_2_din1),
    .dout1      (arrayOUT_R_2_dout1),
    .ready      (arrayOUT_R_2_ready),
    .done    (arrayOUT_R_2_done)
);

// Assignment between dut and arrayOUT_R_2
assign arrayOUT_R_2_address0 = OUT_R_2_address0;
assign arrayOUT_R_2_ce0 = OUT_R_2_ce0;
assign arrayOUT_R_2_we0[0] = OUT_R_2_we0;
assign arrayOUT_R_2_we0[1] = OUT_R_2_we0;
assign arrayOUT_R_2_we0[2] = OUT_R_2_we0;
assign arrayOUT_R_2_we0[3] = OUT_R_2_we0;
assign arrayOUT_R_2_din0 = OUT_R_2_d0;
assign arrayOUT_R_2_we1 = 0;
assign arrayOUT_R_2_din1 = 0;
assign arrayOUT_R_2_ready= ready_initial | arrayOUT_R_2_done;
assign arrayOUT_R_2_done =    AESL_done_delay;


//------------------------arrayOUT_R_3 Instantiation--------------

// The input and output of arrayOUT_R_3
wire    arrayOUT_R_3_ce0, arrayOUT_R_3_ce1;
wire [4 - 1 : 0]    arrayOUT_R_3_we0, arrayOUT_R_3_we1;
wire    [7 : 0]    arrayOUT_R_3_address0, arrayOUT_R_3_address1;
wire    [31 : 0]    arrayOUT_R_3_din0, arrayOUT_R_3_din1;
wire    [31 : 0]    arrayOUT_R_3_dout0, arrayOUT_R_3_dout1;
wire    arrayOUT_R_3_ready;
wire    arrayOUT_R_3_done;

`AESL_MEM_OUT_R_3 `AESL_MEM_INST_OUT_R_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_R_3_ce0),
    .we0        (arrayOUT_R_3_we0),
    .address0   (arrayOUT_R_3_address0),
    .din0       (arrayOUT_R_3_din0),
    .dout0      (arrayOUT_R_3_dout0),
    .ce1        (arrayOUT_R_3_ce1),
    .we1        (arrayOUT_R_3_we1),
    .address1   (arrayOUT_R_3_address1),
    .din1       (arrayOUT_R_3_din1),
    .dout1      (arrayOUT_R_3_dout1),
    .ready      (arrayOUT_R_3_ready),
    .done    (arrayOUT_R_3_done)
);

// Assignment between dut and arrayOUT_R_3
assign arrayOUT_R_3_address0 = OUT_R_3_address0;
assign arrayOUT_R_3_ce0 = OUT_R_3_ce0;
assign arrayOUT_R_3_we0[0] = OUT_R_3_we0;
assign arrayOUT_R_3_we0[1] = OUT_R_3_we0;
assign arrayOUT_R_3_we0[2] = OUT_R_3_we0;
assign arrayOUT_R_3_we0[3] = OUT_R_3_we0;
assign arrayOUT_R_3_din0 = OUT_R_3_d0;
assign arrayOUT_R_3_we1 = 0;
assign arrayOUT_R_3_din1 = 0;
assign arrayOUT_R_3_ready= ready_initial | arrayOUT_R_3_done;
assign arrayOUT_R_3_done =    AESL_done_delay;


//------------------------arrayOUT_I_0 Instantiation--------------

// The input and output of arrayOUT_I_0
wire    arrayOUT_I_0_ce0, arrayOUT_I_0_ce1;
wire [4 - 1 : 0]    arrayOUT_I_0_we0, arrayOUT_I_0_we1;
wire    [7 : 0]    arrayOUT_I_0_address0, arrayOUT_I_0_address1;
wire    [31 : 0]    arrayOUT_I_0_din0, arrayOUT_I_0_din1;
wire    [31 : 0]    arrayOUT_I_0_dout0, arrayOUT_I_0_dout1;
wire    arrayOUT_I_0_ready;
wire    arrayOUT_I_0_done;

`AESL_MEM_OUT_I_0 `AESL_MEM_INST_OUT_I_0(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_I_0_ce0),
    .we0        (arrayOUT_I_0_we0),
    .address0   (arrayOUT_I_0_address0),
    .din0       (arrayOUT_I_0_din0),
    .dout0      (arrayOUT_I_0_dout0),
    .ce1        (arrayOUT_I_0_ce1),
    .we1        (arrayOUT_I_0_we1),
    .address1   (arrayOUT_I_0_address1),
    .din1       (arrayOUT_I_0_din1),
    .dout1      (arrayOUT_I_0_dout1),
    .ready      (arrayOUT_I_0_ready),
    .done    (arrayOUT_I_0_done)
);

// Assignment between dut and arrayOUT_I_0
assign arrayOUT_I_0_address0 = OUT_I_0_address0;
assign arrayOUT_I_0_ce0 = OUT_I_0_ce0;
assign arrayOUT_I_0_we0[0] = OUT_I_0_we0;
assign arrayOUT_I_0_we0[1] = OUT_I_0_we0;
assign arrayOUT_I_0_we0[2] = OUT_I_0_we0;
assign arrayOUT_I_0_we0[3] = OUT_I_0_we0;
assign arrayOUT_I_0_din0 = OUT_I_0_d0;
assign arrayOUT_I_0_we1 = 0;
assign arrayOUT_I_0_din1 = 0;
assign arrayOUT_I_0_ready= ready_initial | arrayOUT_I_0_done;
assign arrayOUT_I_0_done =    AESL_done_delay;


//------------------------arrayOUT_I_1 Instantiation--------------

// The input and output of arrayOUT_I_1
wire    arrayOUT_I_1_ce0, arrayOUT_I_1_ce1;
wire [4 - 1 : 0]    arrayOUT_I_1_we0, arrayOUT_I_1_we1;
wire    [7 : 0]    arrayOUT_I_1_address0, arrayOUT_I_1_address1;
wire    [31 : 0]    arrayOUT_I_1_din0, arrayOUT_I_1_din1;
wire    [31 : 0]    arrayOUT_I_1_dout0, arrayOUT_I_1_dout1;
wire    arrayOUT_I_1_ready;
wire    arrayOUT_I_1_done;

`AESL_MEM_OUT_I_1 `AESL_MEM_INST_OUT_I_1(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_I_1_ce0),
    .we0        (arrayOUT_I_1_we0),
    .address0   (arrayOUT_I_1_address0),
    .din0       (arrayOUT_I_1_din0),
    .dout0      (arrayOUT_I_1_dout0),
    .ce1        (arrayOUT_I_1_ce1),
    .we1        (arrayOUT_I_1_we1),
    .address1   (arrayOUT_I_1_address1),
    .din1       (arrayOUT_I_1_din1),
    .dout1      (arrayOUT_I_1_dout1),
    .ready      (arrayOUT_I_1_ready),
    .done    (arrayOUT_I_1_done)
);

// Assignment between dut and arrayOUT_I_1
assign arrayOUT_I_1_address0 = OUT_I_1_address0;
assign arrayOUT_I_1_ce0 = OUT_I_1_ce0;
assign arrayOUT_I_1_we0[0] = OUT_I_1_we0;
assign arrayOUT_I_1_we0[1] = OUT_I_1_we0;
assign arrayOUT_I_1_we0[2] = OUT_I_1_we0;
assign arrayOUT_I_1_we0[3] = OUT_I_1_we0;
assign arrayOUT_I_1_din0 = OUT_I_1_d0;
assign arrayOUT_I_1_we1 = 0;
assign arrayOUT_I_1_din1 = 0;
assign arrayOUT_I_1_ready= ready_initial | arrayOUT_I_1_done;
assign arrayOUT_I_1_done =    AESL_done_delay;


//------------------------arrayOUT_I_2 Instantiation--------------

// The input and output of arrayOUT_I_2
wire    arrayOUT_I_2_ce0, arrayOUT_I_2_ce1;
wire [4 - 1 : 0]    arrayOUT_I_2_we0, arrayOUT_I_2_we1;
wire    [7 : 0]    arrayOUT_I_2_address0, arrayOUT_I_2_address1;
wire    [31 : 0]    arrayOUT_I_2_din0, arrayOUT_I_2_din1;
wire    [31 : 0]    arrayOUT_I_2_dout0, arrayOUT_I_2_dout1;
wire    arrayOUT_I_2_ready;
wire    arrayOUT_I_2_done;

`AESL_MEM_OUT_I_2 `AESL_MEM_INST_OUT_I_2(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_I_2_ce0),
    .we0        (arrayOUT_I_2_we0),
    .address0   (arrayOUT_I_2_address0),
    .din0       (arrayOUT_I_2_din0),
    .dout0      (arrayOUT_I_2_dout0),
    .ce1        (arrayOUT_I_2_ce1),
    .we1        (arrayOUT_I_2_we1),
    .address1   (arrayOUT_I_2_address1),
    .din1       (arrayOUT_I_2_din1),
    .dout1      (arrayOUT_I_2_dout1),
    .ready      (arrayOUT_I_2_ready),
    .done    (arrayOUT_I_2_done)
);

// Assignment between dut and arrayOUT_I_2
assign arrayOUT_I_2_address0 = OUT_I_2_address0;
assign arrayOUT_I_2_ce0 = OUT_I_2_ce0;
assign arrayOUT_I_2_we0[0] = OUT_I_2_we0;
assign arrayOUT_I_2_we0[1] = OUT_I_2_we0;
assign arrayOUT_I_2_we0[2] = OUT_I_2_we0;
assign arrayOUT_I_2_we0[3] = OUT_I_2_we0;
assign arrayOUT_I_2_din0 = OUT_I_2_d0;
assign arrayOUT_I_2_we1 = 0;
assign arrayOUT_I_2_din1 = 0;
assign arrayOUT_I_2_ready= ready_initial | arrayOUT_I_2_done;
assign arrayOUT_I_2_done =    AESL_done_delay;


//------------------------arrayOUT_I_3 Instantiation--------------

// The input and output of arrayOUT_I_3
wire    arrayOUT_I_3_ce0, arrayOUT_I_3_ce1;
wire [4 - 1 : 0]    arrayOUT_I_3_we0, arrayOUT_I_3_we1;
wire    [7 : 0]    arrayOUT_I_3_address0, arrayOUT_I_3_address1;
wire    [31 : 0]    arrayOUT_I_3_din0, arrayOUT_I_3_din1;
wire    [31 : 0]    arrayOUT_I_3_dout0, arrayOUT_I_3_dout1;
wire    arrayOUT_I_3_ready;
wire    arrayOUT_I_3_done;

`AESL_MEM_OUT_I_3 `AESL_MEM_INST_OUT_I_3(
    .clk        (AESL_clock),
    .rst        (AESL_reset),
    .ce0        (arrayOUT_I_3_ce0),
    .we0        (arrayOUT_I_3_we0),
    .address0   (arrayOUT_I_3_address0),
    .din0       (arrayOUT_I_3_din0),
    .dout0      (arrayOUT_I_3_dout0),
    .ce1        (arrayOUT_I_3_ce1),
    .we1        (arrayOUT_I_3_we1),
    .address1   (arrayOUT_I_3_address1),
    .din1       (arrayOUT_I_3_din1),
    .dout1      (arrayOUT_I_3_dout1),
    .ready      (arrayOUT_I_3_ready),
    .done    (arrayOUT_I_3_done)
);

// Assignment between dut and arrayOUT_I_3
assign arrayOUT_I_3_address0 = OUT_I_3_address0;
assign arrayOUT_I_3_ce0 = OUT_I_3_ce0;
assign arrayOUT_I_3_we0[0] = OUT_I_3_we0;
assign arrayOUT_I_3_we0[1] = OUT_I_3_we0;
assign arrayOUT_I_3_we0[2] = OUT_I_3_we0;
assign arrayOUT_I_3_we0[3] = OUT_I_3_we0;
assign arrayOUT_I_3_din0 = OUT_I_3_d0;
assign arrayOUT_I_3_we1 = 0;
assign arrayOUT_I_3_din1 = 0;
assign arrayOUT_I_3_ready= ready_initial | arrayOUT_I_3_done;
assign arrayOUT_I_3_done =    AESL_done_delay;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        repeat(6) @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_X_R_0;
reg [31:0] size_X_R_0;
reg [31:0] size_X_R_0_backup;
reg end_X_R_1;
reg [31:0] size_X_R_1;
reg [31:0] size_X_R_1_backup;
reg end_X_R_2;
reg [31:0] size_X_R_2;
reg [31:0] size_X_R_2_backup;
reg end_X_R_3;
reg [31:0] size_X_R_3;
reg [31:0] size_X_R_3_backup;
reg end_X_I_0;
reg [31:0] size_X_I_0;
reg [31:0] size_X_I_0_backup;
reg end_X_I_1;
reg [31:0] size_X_I_1;
reg [31:0] size_X_I_1_backup;
reg end_X_I_2;
reg [31:0] size_X_I_2;
reg [31:0] size_X_I_2_backup;
reg end_X_I_3;
reg [31:0] size_X_I_3;
reg [31:0] size_X_I_3_backup;
reg end_stage;
reg [31:0] size_stage;
reg [31:0] size_stage_backup;
reg end_OUT_R_0;
reg [31:0] size_OUT_R_0;
reg [31:0] size_OUT_R_0_backup;
reg end_OUT_R_1;
reg [31:0] size_OUT_R_1;
reg [31:0] size_OUT_R_1_backup;
reg end_OUT_R_2;
reg [31:0] size_OUT_R_2;
reg [31:0] size_OUT_R_2_backup;
reg end_OUT_R_3;
reg [31:0] size_OUT_R_3;
reg [31:0] size_OUT_R_3_backup;
reg end_OUT_I_0;
reg [31:0] size_OUT_I_0;
reg [31:0] size_OUT_I_0_backup;
reg end_OUT_I_1;
reg [31:0] size_OUT_I_1;
reg [31:0] size_OUT_I_1_backup;
reg end_OUT_I_2;
reg [31:0] size_OUT_I_2;
reg [31:0] size_OUT_I_2_backup;
reg end_OUT_I_3;
reg [31:0] size_OUT_I_3;
reg [31:0] size_OUT_I_3_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(0+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
task write_binary;
    input integer fp;
    input reg[64-1:0] in;
    input integer in_bw;
    reg [63:0] tmp_long;
    reg[64-1:0] local_in;
    integer char_num;
    integer long_num;
    integer i;
    integer j;
    begin
        long_num = (in_bw + 63) / 64;
        char_num = ((in_bw - 1) % 64 + 7) / 8;
        for(i=long_num;i>0;i=i-1) begin
             local_in = in;
             tmp_long = local_in >> ((i-1)*64);
             for(j=0;j<64;j=j+1)
                 if (tmp_long[j] === 1'bx)
                     tmp_long[j] = 1'b0;
             if (i == long_num) begin
                 case(char_num)
                     1: $fwrite(fp,"%c",tmp_long[7:0]);
                     2: $fwrite(fp,"%c%c",tmp_long[15:8],tmp_long[7:0]);
                     3: $fwrite(fp,"%c%c%c",tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     4: $fwrite(fp,"%c%c%c%c",tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     5: $fwrite(fp,"%c%c%c%c%c",tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     6: $fwrite(fp,"%c%c%c%c%c%c",tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     7: $fwrite(fp,"%c%c%c%c%c%c%c",tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     8: $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
                     default: ;
                 endcase
             end
             else begin
                 $fwrite(fp,"%c%c%c%c%c%c%c%c",tmp_long[63:56],tmp_long[55:48],tmp_long[47:40],tmp_long[39:32],tmp_long[31:24],tmp_long[23:16],tmp_long[15:8],tmp_long[7:0]);
             end
        end
    end
endtask;

reg dump_tvout_finish_OUT_R_0;

initial begin : dump_tvout_runtime_sign_OUT_R_0
    integer fp;
    dump_tvout_finish_OUT_R_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_R_0 = 1;
end


reg dump_tvout_finish_OUT_R_1;

initial begin : dump_tvout_runtime_sign_OUT_R_1
    integer fp;
    dump_tvout_finish_OUT_R_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_R_1 = 1;
end


reg dump_tvout_finish_OUT_R_2;

initial begin : dump_tvout_runtime_sign_OUT_R_2
    integer fp;
    dump_tvout_finish_OUT_R_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_R_2 = 1;
end


reg dump_tvout_finish_OUT_R_3;

initial begin : dump_tvout_runtime_sign_OUT_R_3
    integer fp;
    dump_tvout_finish_OUT_R_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_R_3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_R_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_R_3 = 1;
end


reg dump_tvout_finish_OUT_I_0;

initial begin : dump_tvout_runtime_sign_OUT_I_0
    integer fp;
    dump_tvout_finish_OUT_I_0 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_0_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_0_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_0_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_I_0 = 1;
end


reg dump_tvout_finish_OUT_I_1;

initial begin : dump_tvout_runtime_sign_OUT_I_1
    integer fp;
    dump_tvout_finish_OUT_I_1 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_1_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_1_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_1_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_I_1 = 1;
end


reg dump_tvout_finish_OUT_I_2;

initial begin : dump_tvout_runtime_sign_OUT_I_2
    integer fp;
    dump_tvout_finish_OUT_I_2 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_2_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_2_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_2_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_I_2 = 1;
end


reg dump_tvout_finish_OUT_I_3;

initial begin : dump_tvout_runtime_sign_OUT_I_3
    integer fp;
    dump_tvout_finish_OUT_I_3 = 0;
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_3_out_wrapc, "wb");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    repeat(5) @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_OUT_I_3_out_wrapc, "ab");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_OUT_I_3_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    write_binary(fp,64'h5a5aa5a50f0ff0f0,64);
    $fclose(fp);
    repeat(5) @ (posedge AESL_clock);
    dump_tvout_finish_OUT_I_3 = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

always @(posedge AESL_clock)
begin
    if (finish_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

// Dependence Check (WAW) "ap_enable_operation_233"(W:SV22-22) -> "ap_enable_operation_249"(W:SV23-23) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_235"(W:SV22-22) -> "ap_enable_operation_251"(W:SV23-23) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_237"(W:SV22-22) -> "ap_enable_operation_253"(W:SV23-23) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_239"(W:SV22-22) -> "ap_enable_operation_255"(W:SV23-23) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_249"(W:SV23-23) -> "ap_enable_operation_233"(W:SV22-22) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_251"(W:SV23-23) -> "ap_enable_operation_235"(W:SV22-22) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_253"(W:SV23-23) -> "ap_enable_operation_237"(W:SV22-22) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_255"(W:SV23-23) -> "ap_enable_operation_239"(W:SV22-22) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_257"(W:SV24-24) -> "ap_enable_operation_271"(W:SV25-25) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_260"(W:SV24-24) -> "ap_enable_operation_274"(W:SV25-25) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_263"(W:SV24-24) -> "ap_enable_operation_277"(W:SV25-25) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_266"(W:SV24-24) -> "ap_enable_operation_280"(W:SV25-25) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_271"(W:SV25-25) -> "ap_enable_operation_257"(W:SV24-24) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_274"(W:SV25-25) -> "ap_enable_operation_260"(W:SV24-24) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_277"(W:SV25-25) -> "ap_enable_operation_263"(W:SV24-24) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_280"(W:SV25-25) -> "ap_enable_operation_266"(W:SV24-24) @ `AUTOTB_DUT_INST

`endif
///////////////////////////////////////////////////////
// dataflow status monitor
///////////////////////////////////////////////////////
dataflow_monitor U_dataflow_monitor(
    .clock(AESL_clock),
    .reset(rst),
    .finish(all_finish));

`include "fifo_para.vh"

endmodule
