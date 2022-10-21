############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_FFT_general
set_top fft_stages
add_files ../FFT/FFT/HLS/1_Subcomponents/fft_stages/fft_stages.cpp
add_files ../FFT/FFT/HLS/1_Subcomponents/fft_stages/fft_stages.h
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stages/fft_stages_test.cpp
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stages/out2.gold.dat
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stages/out3.gold.dat
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stages/out4.gold.dat
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stages/out5.gold.dat
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stages/out6.gold.dat
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stages/out7.gold.dat
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stages/out8.gold.dat
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/fft_stages/out9.gold.dat
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
source "./hls_FFT_general/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
