set SynModuleInfo {
  {SRCNAME FFT_Pipeline_VITIS_LOOP_58_1 MODELNAME FFT_Pipeline_VITIS_LOOP_58_1 RTLNAME FFT_FFT_Pipeline_VITIS_LOOP_58_1
    SUBMODULES {
      {MODELNAME FFT_flow_control_loop_pipe_sequential_init RTLNAME FFT_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME FFT_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME FFT_Pipeline_bitreversal_label1 MODELNAME FFT_Pipeline_bitreversal_label1 RTLNAME FFT_FFT_Pipeline_bitreversal_label1
    SUBMODULES {
      {MODELNAME FFT_FFT_Pipeline_bitreversal_label1_rev_32_ROM_AUTO_1R RTLNAME FFT_FFT_Pipeline_bitreversal_label1_rev_32_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME FFT0.1_Pipeline_FFT_label1 MODELNAME FFT0_1_Pipeline_FFT_label1 RTLNAME FFT_FFT0_1_Pipeline_FFT_label1
    SUBMODULES {
      {MODELNAME FFT_mul_mul_16s_10s_24_4_1 RTLNAME FFT_mul_mul_16s_10s_24_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME FFT_mac_mulsub_16s_9s_24s_24_4_1 RTLNAME FFT_mac_mulsub_16s_9s_24s_24_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME FFT_mac_muladd_16s_9s_24s_24_4_1 RTLNAME FFT_mac_muladd_16s_9s_24s_24_4_1 BINDTYPE op TYPE add IMPL dsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R RTLNAME FFT_FFT0_1_Pipeline_FFT_label1_W_M_real_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME FFT_FFT0_1_Pipeline_FFT_label1_W_M_imag_V_ROM_AUTO_1R RTLNAME FFT_FFT0_1_Pipeline_FFT_label1_W_M_imag_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME FFT0.1 MODELNAME FFT0_1 RTLNAME FFT_FFT0_1}
  {SRCNAME FFT_Pipeline_FFT_label1 MODELNAME FFT_Pipeline_FFT_label1 RTLNAME FFT_FFT_Pipeline_FFT_label1}
  {SRCNAME FFT_Pipeline_VITIS_LOOP_68_2 MODELNAME FFT_Pipeline_VITIS_LOOP_68_2 RTLNAME FFT_FFT_Pipeline_VITIS_LOOP_68_2}
  {SRCNAME FFT MODELNAME FFT RTLNAME FFT IS_TOP 1
    SUBMODULES {
      {MODELNAME FFT_xin_M_real_V_RAM_AUTO_1R1W RTLNAME FFT_xin_M_real_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME FFT_data_OUT0_M_real_V_RAM_AUTO_1R1W RTLNAME FFT_data_OUT0_M_real_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME FFT_xout_M_real_V_RAM_AUTO_1R1W RTLNAME FFT_xout_M_real_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME FFT_regslice_both RTLNAME FFT_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME FFT_regslice_both_U}
    }
  }
}
