############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name fft_stages "fft_stages"
set_directive_unroll -skip_exit_check -factor 2 "butterfly/butterfly"
set_directive_array_partition -type cyclic -factor 4 -dim 1 "fft_stages" X_R
set_directive_array_partition -type cyclic -factor 4 -dim 1 "fft_stages" X_I
set_directive_array_partition -type cyclic -factor 4 -dim 1 "fft_stages" OUT_R
set_directive_array_partition -type cyclic -factor 4 -dim 1 "fft_stages" OUT_I
set_directive_pipeline -rewind "fft_stages/DFTpts"
