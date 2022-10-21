############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_FFT_hardware
set_top fft
add_files ../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp
add_files ../FFT/FFT/HLS/2_Skeleton_Restructured/fft.h
add_files -tb ../FFT/FFT/HLS/2_Skeleton_Restructured/fft_test.cpp
add_files -tb ../FFT/FFT/HLS/2_Skeleton_Restructured/out.gold.dat
open_solution "solution1" -flow_target vivado
set_part {xc7z020clg400-1}
create_clock -period 10 -name default
source "./hls_FFT_hardware/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
