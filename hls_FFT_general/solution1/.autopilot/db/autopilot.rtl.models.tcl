set SynModuleInfo {
  {SRCNAME fft_stages MODELNAME fft_stages RTLNAME fft_stages IS_TOP 1
    SUBMODULES {
      {MODELNAME fft_stages_faddfsub_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_stages_faddfsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_stages_fsub_32ns_32ns_32_5_full_dsp_1 RTLNAME fft_stages_fsub_32ns_32ns_32_5_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME fft_stages_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME fft_stages_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME fft_stages_mux_42_32_1_1 RTLNAME fft_stages_mux_42_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fft_stages_mul_9s_9s_9_1_1 RTLNAME fft_stages_mul_9s_9s_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME fft_stages_W_real_ROM_AUTO_1R RTLNAME fft_stages_W_real_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME fft_stages_W_imag_ROM_AUTO_1R RTLNAME fft_stages_W_imag_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}
