
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinoutgroup]
add_wave /apatb_fft_top/AESL_inst_fft/X_I_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_I_address0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_q1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_d1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_address1 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_q0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_d0 -into $return_group -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/AESL_inst_fft/X_R_address0 -into $return_group -radix hex
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
add_wave /apatb_fft_top/LENGTH_X_R -into $tb_portdepth_group -radix hex
add_wave /apatb_fft_top/LENGTH_X_I -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinoutgroup]
add_wave /apatb_fft_top/X_I_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_I_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_I_address0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_q1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_d1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_address1 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_q0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_d0 -into $tb_return_group -radix hex
add_wave /apatb_fft_top/X_R_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_fft_top/X_R_address0 -into $tb_return_group -radix hex
save_wave_config fft.wcfg
run all
quit

