create_project prj -part xczu3eg-sfvc784-1-e -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "C:/ELEC522/GIM/GIM-2024-2025/gim_cpp_final/accelerator_component/accelerator/hls/syn/verilog/accelerator_dcmp_64ns_64ns_1_1_no_dsp_1_ip.tcl"
