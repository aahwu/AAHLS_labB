
set PATH=
call E:/Xilinx/Vivado/2022.1/bin/xelab xil_defaultlib.apatb_fft_stages_top glbl -Oenable_linking_all_libraries  -prj fft_stages.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  -L floating_point_v7_0_20 -L floating_point_v7_1_14 --lib "ieee_proposed=./ieee_proposed" -s fft_stages -debug wave
call E:/Xilinx/Vivado/2022.1/bin/xsim --noieeewarnings fft_stages -tclbatch fft_stages.tcl -view fft_stages_dataflow_ana.wcfg -protoinst fft_stages.protoinst
