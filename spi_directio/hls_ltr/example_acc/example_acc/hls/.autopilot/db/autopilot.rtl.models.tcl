set SynModuleInfo {
  {SRCNAME example_acc_Pipeline_VITIS_LOOP_11_1 MODELNAME example_acc_Pipeline_VITIS_LOOP_11_1 RTLNAME example_acc_example_acc_Pipeline_VITIS_LOOP_11_1
    SUBMODULES {
      {MODELNAME example_acc_flow_control_loop_pipe_sequential_init RTLNAME example_acc_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME example_acc_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME example_acc_Pipeline_VITIS_LOOP_31_1 MODELNAME example_acc_Pipeline_VITIS_LOOP_31_1 RTLNAME example_acc_example_acc_Pipeline_VITIS_LOOP_31_1
    SUBMODULES {
      {MODELNAME example_acc_bitselect_1ns_32ns_32ns_1_1_1 RTLNAME example_acc_bitselect_1ns_32ns_32ns_1_1_1 BINDTYPE op TYPE bitselect IMPL auto}
    }
  }
  {SRCNAME example_acc MODELNAME example_acc RTLNAME example_acc IS_TOP 1
    SUBMODULES {
      {MODELNAME example_acc_control_s_axi RTLNAME example_acc_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME example_acc_regslice_both RTLNAME example_acc_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
