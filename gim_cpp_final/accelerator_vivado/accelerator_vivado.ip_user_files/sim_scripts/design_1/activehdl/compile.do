transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xilinx_vip
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_17
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_17
vlib activehdl/xil_defaultlib
vlib activehdl/xbip_utils_v3_0_13
vlib activehdl/axi_utils_v2_0_9
vlib activehdl/xbip_pipe_v3_0_9
vlib activehdl/xbip_dsp48_wrapper_v3_0_6
vlib activehdl/xbip_dsp48_addsub_v3_0_9
vlib activehdl/xbip_dsp48_multadd_v3_0_9
vlib activehdl/xbip_bram18k_v3_0_9
vlib activehdl/mult_gen_v12_0_21
vlib activehdl/floating_point_v7_1_18
vlib activehdl/lib_cdc_v1_0_3
vlib activehdl/proc_sys_reset_v5_0_15

vmap xilinx_vip activehdl/xilinx_vip
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 activehdl/axi_vip_v1_1_17
vmap zynq_ultra_ps_e_vip_v1_0_17 activehdl/zynq_ultra_ps_e_vip_v1_0_17
vmap xil_defaultlib activehdl/xil_defaultlib
vmap xbip_utils_v3_0_13 activehdl/xbip_utils_v3_0_13
vmap axi_utils_v2_0_9 activehdl/axi_utils_v2_0_9
vmap xbip_pipe_v3_0_9 activehdl/xbip_pipe_v3_0_9
vmap xbip_dsp48_wrapper_v3_0_6 activehdl/xbip_dsp48_wrapper_v3_0_6
vmap xbip_dsp48_addsub_v3_0_9 activehdl/xbip_dsp48_addsub_v3_0_9
vmap xbip_dsp48_multadd_v3_0_9 activehdl/xbip_dsp48_multadd_v3_0_9
vmap xbip_bram18k_v3_0_9 activehdl/xbip_bram18k_v3_0_9
vmap mult_gen_v12_0_21 activehdl/mult_gen_v12_0_21
vmap floating_point_v7_1_18 activehdl/floating_point_v7_1_18
vmap lib_cdc_v1_0_3 activehdl/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 activehdl/proc_sys_reset_v5_0_15

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -sv2k12 "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17  -sv2k12 "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work xbip_utils_v3_0_13 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/24e7/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_9 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/1a81/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_9 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/713b/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_6 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/f596/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_9 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/378b/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_9 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/fe6e/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_9 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/cd0f/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_21 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/f2b8/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_18 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_18  -v2k5 "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/0861/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/ip/accelerator_dcmp_64ns_64ns_1_1_no_dsp_1_ip.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_accelerator_Pipeline_VITIS_LOOP_47_1.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_accelerator_Pipeline_VITIS_LOOP_65_3.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_accelerator_Pipeline_VITIS_LOOP_157_9.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_dcmp_64ns_64ns_1_1_no_dsp_1.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_flow_control_loop_pipe_sequential_init.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_mac_muladd_16s_16s_25ns_25_4_1.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_mac_mulsub_16s_6ns_25s_25_4_1.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_model_array.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_mul_16s_16s_25_1_1.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_mul_16s_16s_32_1_1.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_mul_32s_7s_34_1_1.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator_sparsemux_7_2_16_1_1.v" \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/250c/hdl/verilog/accelerator.v" \
"../../../bd/design_1/ip/design_1_accelerator_0_0/sim/design_1_accelerator_0_0.v" \

vcom -work lib_cdc_v1_0_3 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15 -93  \
"../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  \
"../../../bd/design_1/ip/design_1_rst_ps8_0_99M_0/sim/design_1_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../accelerator_vivado.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_17 -l zynq_ultra_ps_e_vip_v1_0_17 -l xil_defaultlib -l xbip_utils_v3_0_13 -l axi_utils_v2_0_9 -l xbip_pipe_v3_0_9 -l xbip_dsp48_wrapper_v3_0_6 -l xbip_dsp48_addsub_v3_0_9 -l xbip_dsp48_multadd_v3_0_9 -l xbip_bram18k_v3_0_9 -l mult_gen_v12_0_21 -l floating_point_v7_1_18 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_15 \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

