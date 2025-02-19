set SynModuleInfo {
  {SRCNAME spi_master_Pipeline_VITIS_LOOP_30_2 MODELNAME spi_master_Pipeline_VITIS_LOOP_30_2 RTLNAME spi_master_spi_master_Pipeline_VITIS_LOOP_30_2
    SUBMODULES {
      {MODELNAME spi_master_bitselect_1ns_32ns_32ns_1_1_1 RTLNAME spi_master_bitselect_1ns_32ns_32ns_1_1_1 BINDTYPE op TYPE bitselect IMPL auto}
      {MODELNAME spi_master_flow_control_loop_pipe_sequential_init RTLNAME spi_master_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME spi_master_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME spi_master MODELNAME spi_master RTLNAME spi_master IS_TOP 1}
}
