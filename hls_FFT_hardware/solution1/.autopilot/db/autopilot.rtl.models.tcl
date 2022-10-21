set SynModuleInfo {
  {SRCNAME fft_Pipeline_Reverse MODELNAME fft_Pipeline_Reverse RTLNAME fft_fft_Pipeline_Reverse
    SUBMODULES {
      {MODELNAME fft_mux_42_32_1_1 RTLNAME fft_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fft_flow_control_loop_pipe_sequential_init RTLNAME fft_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME fft_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME fft_Pipeline_DFTpts MODELNAME fft_Pipeline_DFTpts RTLNAME fft_fft_Pipeline_DFTpts}
  {SRCNAME fft_stages_Pipeline_DFTpts MODELNAME fft_stages_Pipeline_DFTpts RTLNAME fft_fft_stages_Pipeline_DFTpts
    SUBMODULES {
      {MODELNAME fft_mul_9s_9s_9_1_1 RTLNAME fft_mul_9s_9s_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fft_fft_stages_Pipeline_DFTpts_W_real_ROM_AUTO_1R RTLNAME fft_fft_stages_Pipeline_DFTpts_W_real_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_fft_stages_Pipeline_DFTpts_W_imag_ROM_AUTO_1R RTLNAME fft_fft_stages_Pipeline_DFTpts_W_imag_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft_stages MODELNAME fft_stages RTLNAME fft_fft_stages}
  {SRCNAME fft_Pipeline_butterfly MODELNAME fft_Pipeline_butterfly RTLNAME fft_fft_Pipeline_butterfly
    SUBMODULES {
      {MODELNAME fft_mux_32_32_1_1 RTLNAME fft_mux_32_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME fft MODELNAME fft RTLNAME fft IS_TOP 1
    SUBMODULES {
      {MODELNAME fft_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_fadd_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_fadd_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME fft_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fft_W_real_ROM_AUTO_1R RTLNAME fft_W_real_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_W_imag_ROM_AUTO_1R RTLNAME fft_W_imag_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_Stage0_R_RAM_AUTO_1R1W RTLNAME fft_Stage0_R_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_Stage1_R_RAM_AUTO_1R1W RTLNAME fft_Stage1_R_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_Stage2_R_RAM_AUTO_1R1W RTLNAME fft_Stage2_R_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
