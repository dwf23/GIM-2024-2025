transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_19
vlib riviera/zynq_ultra_ps_e_vip_v1_0_19
vlib riviera/xil_defaultlib
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_16

vmap xilinx_vip riviera/xilinx_vip
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19
vmap zynq_ultra_ps_e_vip_v1_0_19 riviera/zynq_ultra_ps_e_vip_v1_0_19
vmap xil_defaultlib riviera/xil_defaultlib
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_19  -incr "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/6f8f/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/sim/design_1_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_ps8_0_99M_0/sim/design_1_rst_ps8_0_99M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../project_1.gen/sources_1/bd/design_1/ipshared/6f8f/hdl" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l axi_infrastructure_v1_1_0 -l axi_vip_v1_1_19 -l zynq_ultra_ps_e_vip_v1_0_19 -l xil_defaultlib -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0220/hdl/verilog/spi_master.v" \
"../../../bd/design_1/ip/design_1_spi_master_0_1/sim/design_1_spi_master_0_1.v" \
"../../../../project_1.gen/sources_1/bd/design_1/ipshared/0bb8/hdl/verilog/spi_master_logic.v" \
"../../../bd/design_1/ip/design_1_spi_master_logic_0_0/sim/design_1_spi_master_logic_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

