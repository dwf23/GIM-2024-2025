set SynModuleInfo {
  {SRCNAME accelerator_Pipeline_VITIS_LOOP_47_1 MODELNAME accelerator_Pipeline_VITIS_LOOP_47_1 RTLNAME accelerator_accelerator_Pipeline_VITIS_LOOP_47_1
    SUBMODULES {
      {MODELNAME accelerator_flow_control_loop_pipe_sequential_init RTLNAME accelerator_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accelerator_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME model_array MODELNAME model_array RTLNAME accelerator_model_array
    SUBMODULES {
      {MODELNAME accelerator_mul_32s_10s_40_1_0 RTLNAME accelerator_mul_32s_10s_40_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mul_16s_16s_32_1_0 RTLNAME accelerator_mul_16s_16s_32_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mul_16s_16s_28_1_0 RTLNAME accelerator_mul_16s_16s_28_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mul_16s_10ns_26_1_0 RTLNAME accelerator_mul_16s_10ns_26_1_0 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mac_muladd_16s_16s_28ns_28_4_0 RTLNAME accelerator_mac_muladd_16s_16s_28ns_28_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mac_mulsub_16s_9ns_28s_28_4_0 RTLNAME accelerator_mac_mulsub_16s_9ns_28s_28_4_0 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME accelerator_Pipeline_VITIS_LOOP_69_4 MODELNAME accelerator_Pipeline_VITIS_LOOP_69_4 RTLNAME accelerator_accelerator_Pipeline_VITIS_LOOP_69_4
    SUBMODULES {
      {MODELNAME accelerator_dcmp_64ns_64ns_1_2_no_dsp_1 RTLNAME accelerator_dcmp_64ns_64ns_1_2_no_dsp_1 BINDTYPE op TYPE dcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mux_4_2_13_1_1 RTLNAME accelerator_mux_4_2_13_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_mul_17s_10ns_27_1_1 RTLNAME accelerator_mul_17s_10ns_27_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME accelerator_Pipeline_VITIS_LOOP_160_9 MODELNAME accelerator_Pipeline_VITIS_LOOP_160_9 RTLNAME accelerator_accelerator_Pipeline_VITIS_LOOP_160_9}
  {SRCNAME accelerator MODELNAME accelerator RTLNAME accelerator IS_TOP 1}
}
