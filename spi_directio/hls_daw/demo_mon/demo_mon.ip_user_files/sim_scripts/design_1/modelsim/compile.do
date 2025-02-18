vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_17
vlib modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_15
vlib modelsim_lib/msim/generic_baseblocks_v2_1_2
vlib modelsim_lib/msim/fifo_generator_v13_2_10
vlib modelsim_lib/msim/axi_data_fifo_v2_1_30
vlib modelsim_lib/msim/axi_register_slice_v2_1_31
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_31
vlib modelsim_lib/msim/axi_clock_converter_v2_1_30
vlib modelsim_lib/msim/blk_mem_gen_v8_4_8
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_31

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_17 modelsim_lib/msim/axi_vip_v1_1_17
vmap zynq_ultra_ps_e_vip_v1_0_17 modelsim_lib/msim/zynq_ultra_ps_e_vip_v1_0_17
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_15 modelsim_lib/msim/proc_sys_reset_v5_0_15
vmap generic_baseblocks_v2_1_2 modelsim_lib/msim/generic_baseblocks_v2_1_2
vmap fifo_generator_v13_2_10 modelsim_lib/msim/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 modelsim_lib/msim/axi_data_fifo_v2_1_30
vmap axi_register_slice_v2_1_31 modelsim_lib/msim/axi_register_slice_v2_1_31
vmap axi_protocol_converter_v2_1_31 modelsim_lib/msim/axi_protocol_converter_v2_1_31
vmap axi_clock_converter_v2_1_30 modelsim_lib/msim/axi_clock_converter_v2_1_30
vmap blk_mem_gen_v8_4_8 modelsim_lib/msim/blk_mem_gen_v8_4_8
vmap axi_dwidth_converter_v2_1_31 modelsim_lib/msim/axi_dwidth_converter_v2_1_31

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/4d04/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_17  -incr -mfcu  -sv -L axi_vip_v1_1_17 -L zynq_ultra_ps_e_vip_v1_0_17 -L xilinx_vip "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/fef3/hdl/verilog/example_acc_control_s_axi.v" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/fef3/hdl/verilog/example_acc_flow_control_loop_pipe.v" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/fef3/hdl/verilog/example_acc_regslice_both.v" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/fef3/hdl/verilog/example_acc.v" \
"../../../bd/design_1/ip/design_1_example_acc_0_0/sim/design_1_example_acc_0_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_15  -93  \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_ps8_0_99M_0/sim/design_1_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10  -93  \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/3c06/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_30  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_8  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_31  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/14b9/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ipshared/a317/hdl" "+incdir+../../../../demo_mon.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/drivers/example_acc_v1_0/src" "+incdir+C:/Xilinx/Vivado/2024.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_ds_0/sim/design_1_auto_ds_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

