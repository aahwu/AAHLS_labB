############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name fft "fft"
set_directive_unroll -factor 2 "fft_stage_first/DFTpts"
set_directive_unroll -skip_exit_check -factor 2 "fft_stages/butterfly"
set_directive_unroll -skip_exit_check -factor 2 "fft_stage_last/butterfly"
set_directive_unroll -skip_exit_check -factor 2 "bit_reverse/Reverse"
