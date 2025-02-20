set SynModuleInfo {
  {SRCNAME example_acc MODELNAME example_acc RTLNAME example_acc IS_TOP 1
    SUBMODULES {
      {MODELNAME example_acc_control_s_axi RTLNAME example_acc_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME example_acc_flow_control_loop_pipe RTLNAME example_acc_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME example_acc_flow_control_loop_pipe_U}
    }
  }
}
