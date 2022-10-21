create_project prj -part xc7z020-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_general/solution1/syn/verilog/fft_stages_faddfsub_32ns_32ns_32_5_full_dsp_1_ip.tcl"
source "C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_general/solution1/syn/verilog/fft_stages_fmul_32ns_32ns_32_4_max_dsp_1_ip.tcl"
source "C:/Users/ShaneWu/OneDrive/Desktop/Documents/NTU/HLS/labB/hls_FFT_general/solution1/syn/verilog/fft_stages_fsub_32ns_32ns_32_5_full_dsp_1_ip.tcl"
