set SynModuleInfo {
  {SRCNAME example_acc MODELNAME example_acc RTLNAME example_acc IS_TOP 1
    SUBMODULES {
      {MODELNAME example_acc_regslice_both RTLNAME example_acc_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
      {MODELNAME example_acc_flow_control_loop_pipe RTLNAME example_acc_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME example_acc_flow_control_loop_pipe_U}
    }
  }
}
