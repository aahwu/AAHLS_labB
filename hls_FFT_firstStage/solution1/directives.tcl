############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name fft_stage_first "fft_stage_first"
set_directive_unroll -factor 2 "fft_stage_first/DFTpts"
set_directive_array_partition -type cyclic -factor 4 -dim 1 "fft_stage_first" X_I
set_directive_array_partition -type cyclic -factor 4 -dim 1 "fft_stage_first" X_R
set_directive_array_partition -type cyclic -factor 4 -dim 1 "fft_stage_first" OUT_R
set_directive_array_partition -type cyclic -factor 4 -dim 1 "fft_stage_first" OUT_I
