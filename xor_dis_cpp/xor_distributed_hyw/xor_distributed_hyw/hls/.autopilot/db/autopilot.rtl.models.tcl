set SynModuleInfo {
  {SRCNAME accelerator_controller_Pipeline_VITIS_LOOP_26_1 MODELNAME accelerator_controller_Pipeline_VITIS_LOOP_26_1 RTLNAME accelerator_controller_accelerator_controller_Pipeline_VITIS_LOOP_26_1
    SUBMODULES {
      {MODELNAME accelerator_controller_flow_control_loop_pipe_sequential_init RTLNAME accelerator_controller_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME accelerator_controller_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME accelerator_controller_Pipeline_VITIS_LOOP_60_4 MODELNAME accelerator_controller_Pipeline_VITIS_LOOP_60_4 RTLNAME accelerator_controller_accelerator_controller_Pipeline_VITIS_LOOP_60_4
    SUBMODULES {
      {MODELNAME accelerator_controller_sparsemux_9_2_13_1_1 RTLNAME accelerator_controller_sparsemux_9_2_13_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
      {MODELNAME accelerator_controller_mul_16s_13ns_28_1_1 RTLNAME accelerator_controller_mul_16s_13ns_28_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_controller_mul_16s_10ns_26_1_1 RTLNAME accelerator_controller_mul_16s_10ns_26_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME accelerator_controller_mac_muladd_16s_13ns_28ns_28_4_1 RTLNAME accelerator_controller_mac_muladd_16s_13ns_28ns_28_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME accelerator_controller MODELNAME accelerator_controller RTLNAME accelerator_controller IS_TOP 1
    SUBMODULES {
      {MODELNAME accelerator_controller_control_s_axi RTLNAME accelerator_controller_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
