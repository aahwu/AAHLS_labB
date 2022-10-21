
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $coutputgroup]
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_3_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_3_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_3_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_3_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_3_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_3_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_2_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_2_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_2_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_2_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_2_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_2_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_1_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_1_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_1_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_1_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_1_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_1_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_0_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_0_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_0_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_0_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_0_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_0_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_I_0_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_3_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_3_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_3_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_3_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_3_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_3_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_2_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_2_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_2_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_2_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_2_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_2_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_1_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_1_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_1_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_1_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_1_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_1_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_0_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_0_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_0_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_0_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_0_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_0_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/OUT_R_0_address0 -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_fft_top/AESL_inst_fft/X_I_3_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_3_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_3_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_3_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_3_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_2_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_2_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_2_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_2_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_2_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_1_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_1_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_1_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_1_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_1_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_0_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_0_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_0_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_0_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_0_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_3_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_3_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_3_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_3_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_3_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_2_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_2_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_2_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_2_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_2_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_1_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_1_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_1_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_1_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_1_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_0_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_0_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_0_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_0_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_0_address0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_fft_top/AESL_inst_fft/ap_start -into $blocksiggroup
add_wave /apatb_fft_top/AESL_inst_fft/ap_done -into $blocksiggroup
add_wave /apatb_fft_top/AESL_inst_fft/ap_idle -into $blocksiggroup
add_wave /apatb_fft_top/AESL_inst_fft/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_fft_top/AESL_inst_fft/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_fft_top/AESL_inst_fft/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_fft_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_fft_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fft_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fft_top/LENGTH_X_R_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_X_R_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_X_R_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_X_R_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_X_I_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_X_I_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_X_I_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_X_I_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_OUT_R_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_OUT_R_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_OUT_R_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_OUT_R_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_OUT_I_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_OUT_I_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_OUT_I_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_OUT_I_3 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcoutputgroup]
add_wave /apatb_fft_top/OUT_I_3_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_3_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_3_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_3_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_3_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_3_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_2_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_2_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_2_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_2_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_2_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_1_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_1_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_1_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_1_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_1_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_0_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_0_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_0_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_0_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_0_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_I_0_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_I_0_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_3_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_3_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_3_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_3_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_3_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_3_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_2_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_2_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_2_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_2_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_2_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_1_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_1_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_1_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_1_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_1_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_0_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_0_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_0_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_0_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_0_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/OUT_R_0_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/OUT_R_0_address0 -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinputgroup]
add_wave /apatb_fft_top/X_I_3_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_3_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_3_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_3_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_2_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_2_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_2_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_2_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_1_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_1_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_1_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_1_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_0_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_0_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_0_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_0_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_0_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_3_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_3_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_3_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_3_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_2_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_2_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_2_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_2_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_1_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_1_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_1_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_1_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_0_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_0_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_0_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_0_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_0_address0 -into $tb_return_group -radix hex
save_wave_config fft.wcfg
run all
quit

