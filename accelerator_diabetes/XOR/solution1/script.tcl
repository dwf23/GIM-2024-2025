############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project XOR
set_top accelerator
add_files accelerator.cpp
add_files act_pe.cpp
add_files array.cpp
add_files bias_pe.cpp
add_files error_pe.cpp
add_files weight_pe.cpp
add_files -tb main.cpp -cflags "-DHWCOSIM -Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7k70t-fbv676-1}
create_clock -period 10 -name default
config_cosim -tool xsim
source "./XOR/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -tool xsim
export_design -format ip_catalog
