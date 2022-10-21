############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_FFT_bitReverse
set_top bit_reverse
add_files ../FFT/FFT/HLS/1_Subcomponents/1_bit_reverse/bit_reverse.h
add_files ../FFT/FFT/HLS/1_Subcomponents/1_bit_reverse/bit_reverse.cpp
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/1_bit_reverse/out.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../FFT/FFT/HLS/1_Subcomponents/1_bit_reverse/bit_reverse_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./hls_FFT_bitReverse/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
