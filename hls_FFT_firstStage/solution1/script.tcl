############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_FFT_firstStage
set_top fft_stage_first
add_files ../FFT/FFT/HLS/1_Subcomponents/fft_stage_first/fft_stage_first.cpp
add_files ../FFT/FFT/HLS/1_Subcomponents/fft_stage_first/fft_stage_first.h
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stage_first/fft_stage_first_test.cpp
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stage_first/out.gold.dat
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
source "./hls_FFT_firstStage/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
