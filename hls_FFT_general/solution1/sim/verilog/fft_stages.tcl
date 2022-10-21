
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $coutputgroup]
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_3_d0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_3_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_2_d0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_2_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_1_d0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_1_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_0_d0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_0_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_I_0_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_3_d0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_3_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_3_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_2_d0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_2_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_2_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_1_d0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_1_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_1_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_0_d0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_0_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/OUT_R_0_address0 -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinputgroup]
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/stage -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_3_q0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_3_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_2_q0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_2_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_1_q0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_1_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_0_q0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_I_0_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_3_q0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_3_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_3_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_2_q0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_2_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_2_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_1_q0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_1_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_1_address0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_0_q0 -into $return_group -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_0_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/X_R_0_address0 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/ap_start -into $blocksiggroup
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/ap_done -into $blocksiggroup
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/ap_idle -into $blocksiggroup
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_fft_stages_top/AESL_inst_fft_stages/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_fft_stages_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_fft_stages_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fft_stages_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_X_R_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_X_R_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_X_R_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_X_R_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_X_I_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_X_I_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_X_I_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_X_I_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_stage -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_OUT_R_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_OUT_R_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_OUT_R_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_OUT_R_3 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_OUT_I_0 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_OUT_I_1 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_OUT_I_2 -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_stages_top/LENGTH_OUT_I_3 -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcoutputgroup]
add_wave /apatb_fft_stages_top/OUT_I_3_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_I_3_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_I_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_I_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_I_2_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_I_2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_I_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_I_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_I_1_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_I_1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_I_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_I_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_I_0_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_I_0_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_I_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_I_0_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_R_3_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_R_3_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_R_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_R_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_R_2_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_R_2_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_R_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_R_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_R_1_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_R_1_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_R_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_R_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_R_0_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/OUT_R_0_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_R_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/OUT_R_0_address0 -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinputgroup]
add_wave /apatb_fft_stages_top/stage -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_I_3_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_I_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/X_I_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_I_2_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_I_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/X_I_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_I_1_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_I_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/X_I_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_I_0_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_I_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/X_I_0_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_R_3_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_R_3_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/X_R_3_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_R_2_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_R_2_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/X_R_2_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_R_1_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_R_1_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/X_R_1_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_R_0_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_stages_top/X_R_0_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_stages_top/X_R_0_address0 -into $tb_return_group -radix hex
save_wave_config fft_stages.wcfg
run all
quit

