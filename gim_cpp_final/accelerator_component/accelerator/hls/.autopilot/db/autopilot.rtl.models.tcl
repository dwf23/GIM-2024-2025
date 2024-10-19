set SynModuleInfo {
  {SRCNAME accelerator_Pipeline_VITIS_LOOP_47_1 MODELNAME accelerator_Pipeline_VITIS_LOOP_47_1 RTLNAME accelerator_accelerator_Pipeline_VITIS_LOOP_47_1
    SUBMODULES {
      {MODELNAME accelerator_flow_control_loop_pipe_sequential_init RTLNAME accelerator_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accelerator_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME model_array MODELNAME model_array RTLNAME accelerator_model_array
    SUBMODULES {
      {MODELNAME accelerator_mul_32s_7s_34_1_1 RTLNAME accelerator_mul_32s_7s_34_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mul_16s_16s_25_1_1 RTLNAME accelerator_mul_16s_16s_25_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mul_16s_16s_32_1_1 RTLNAME accelerator_mul_16s_16s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mac_mulsub_16s_6ns_25s_25_4_1 RTLNAME accelerator_mac_mulsub_16s_6ns_25s_25_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
      {MODELNAME accelerator_mac_muladd_16s_16s_25ns_25_4_1 RTLNAME accelerator_mac_muladd_16s_16s_25ns_25_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME accelerator_Pipeline_VITIS_LOOP_65_3 MODELNAME accelerator_Pipeline_VITIS_LOOP_65_3 RTLNAME accelerator_accelerator_Pipeline_VITIS_LOOP_65_3
    SUBMODULES {
      {MODELNAME accelerator_dcmp_64ns_64ns_1_1_no_dsp_1 RTLNAME accelerator_dcmp_64ns_64ns_1_1_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_sparsemux_7_2_16_1_1 RTLNAME accelerator_sparsemux_7_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME accelerator_Pipeline_VITIS_LOOP_157_9 MODELNAME accelerator_Pipeline_VITIS_LOOP_157_9 RTLNAME accelerator_accelerator_Pipeline_VITIS_LOOP_157_9}
  {SRCNAME accelerator MODELNAME accelerator RTLNAME accelerator IS_TOP 1}
}
