
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:072

00:00:082	
629.9532	
201.039Z17-268h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2W
Uc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/example_acc/example_acc/hls/impl/ipZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2S
Qc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/pulse_gen/pulse_gen/hls/impl/ipZ19-1700h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.srcs/utils_1/imports/synth_1/design_1_wrapper.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2w
uC:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.srcs/utils_1/imports/synth_1/design_1_wrapper.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
o
Command: %s
53*	vivadotcl2>
<synth_design -top design_1_wrapper -part xczu3eg-sfvc784-1-eZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xczu3egZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xczu3egZ17-349h px� 
H
Loading part %s157*device2
xczu3eg-sfvc784-1-eZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
29108Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2000.203 ; gain = 395.305
h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_wrapper2
 2x
tc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

design_12
 2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
138@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_example_acc_0_02
 2�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_example_acc_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_example_acc_0_02
 2
02
12�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_example_acc_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
ap_done2
design_1_example_acc_0_02
example_acc_02r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
1048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
ap_idle2
design_1_example_acc_0_02
example_acc_02r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
1048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

ap_ready2
design_1_example_acc_0_02
example_acc_02r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
1048@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	ap_return2
design_1_example_acc_0_02
example_acc_02r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
1048@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
example_acc_02
design_1_example_acc_0_02
272
232r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
1048@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_ps8_0_axi_periph_02
 2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2808@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
m00_couplers_imp_QJIMLI2
 2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
8208@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m00_couplers_imp_QJIMLI2
 2
02
12r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
8208@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
m01_couplers_imp_1D3SAH32
 2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
9528@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
m01_couplers_imp_1D3SAH32
 2
02
12r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
9528@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
s00_couplers_imp_1A7ZMW42
 2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
10848@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_auto_ds_02
 2�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_auto_ds_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_auto_ds_02
 2
02
12�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_auto_ds_0_stub.v2
68@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_auto_pc_02
 2�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_auto_pc_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_auto_pc_02
 2
02
12�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_auto_pc_0_stub.v2
68@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
s00_couplers_imp_1A7ZMW42
 2
02
12r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
10848@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_xbar_02
 2�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_xbar_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_xbar_02
 2
02
12�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_xbar_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_awprot2
design_1_xbar_02
xbar2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
7798@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
m_axi_arprot2
design_1_xbar_02
xbar2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
7798@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
xbar2
design_1_xbar_02
402
382r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
7798@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_ps8_0_axi_periph_02
 2
02
12r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2808@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_pulse_gen_0_12
 2�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_pulse_gen_0_1_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_pulse_gen_0_12
 2
02
12�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_pulse_gen_0_1_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
ap_done2
design_1_pulse_gen_0_12
pulse_gen_02r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2088@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2	
ap_idle2
design_1_pulse_gen_0_12
pulse_gen_02r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2088@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

ap_ready2
design_1_pulse_gen_0_12
pulse_gen_02r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2088@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
pulse_gen_02
design_1_pulse_gen_0_12
242
212r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2088@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_rst_ps8_0_99M_02
 2�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_rst_ps8_0_99M_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_rst_ps8_0_99M_02
 2
02
12�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_rst_ps8_0_99M_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

mb_reset2
design_1_rst_ps8_0_99M_02
rst_ps8_0_99M2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2308@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
bus_struct_reset2
design_1_rst_ps8_0_99M_02
rst_ps8_0_99M2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2308@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
peripheral_reset2
design_1_rst_ps8_0_99M_02
rst_ps8_0_99M2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2308@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
interconnect_aresetn2
design_1_rst_ps8_0_99M_02
rst_ps8_0_99M2r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2308@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
rst_ps8_0_99M2
design_1_rst_ps8_0_99M_02
102
62r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2308@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
design_1_zynq_ultra_ps_e_0_02
 2�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_zynq_ultra_ps_e_0_0_stub.v2
68@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_zynq_ultra_ps_e_0_02
 2
02
12�
�C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/.Xil/Vivado-35544-LAPTOP-DP0OJSK0/realtime/design_1_zynq_ultra_ps_e_0_0_stub.v2
68@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
maxigp2_awuser2
design_1_zynq_ultra_ps_e_0_02
zynq_ultra_ps_e_02r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2378@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
maxigp2_aruser2
design_1_zynq_ultra_ps_e_0_02
zynq_ultra_ps_e_02r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2378@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
zynq_ultra_ps_e_02
design_1_zynq_ultra_ps_e_0_02
422
402r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
2378@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

design_12
 2
02
12r
nc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/synth/design_1.v2
138@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
design_1_wrapper2
 2
02
12x
tc:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/hdl/design_1_wrapper.v2
138@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
s00_couplers_imp_1A7ZMW4Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
s00_couplers_imp_1A7ZMW4Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m01_couplers_imp_1D3SAH3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m01_couplers_imp_1D3SAH3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m01_couplers_imp_1D3SAH3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m01_couplers_imp_1D3SAH3Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M_ACLK2
m00_couplers_imp_QJIMLIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	M_ARESETN2
m00_couplers_imp_QJIMLIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S_ACLK2
m00_couplers_imp_QJIMLIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	S_ARESETN2
m00_couplers_imp_QJIMLIZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M00_ACLK2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M01_ACLK2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S00_ACLK2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2115.492 ; gain = 510.594
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2115.492 ; gain = 510.594
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 2115.492 ; gain = 510.594
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0142

2115.4922
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_in_context.xdc2 
design_1_i/zynq_ultra_ps_e_0	8Z20-848h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_clock: 2

00:00:052

00:00:052

2115.4922
0.000Z17-268h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0/design_1_zynq_ultra_ps_e_0_0_in_context.xdc2 
design_1_i/zynq_ultra_ps_e_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/design_1_example_acc_0_0/design_1_example_acc_0_0_in_context.xdc2
design_1_i/example_acc_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_example_acc_0_0/design_1_example_acc_0_0/design_1_example_acc_0_0_in_context.xdc2
design_1_i/example_acc_0	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2$
 design_1_i/ps8_0_axi_periph/xbar	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0/design_1_xbar_0_in_context.xdc2$
 design_1_i/ps8_0_axi_periph/xbar	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0/design_1_auto_ds_0_in_context.xdc24
0design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_auto_ds_0/design_1_auto_ds_0/design_1_auto_ds_0_in_context.xdc24
0design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc24
0design_1_i/ps8_0_axi_periph/s00_couplers/auto_pc	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0/design_1_auto_pc_0_in_context.xdc24
0design_1_i/ps8_0_axi_periph/s00_couplers/auto_pc	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_rst_ps8_0_99M_0/design_1_rst_ps8_0_99M_0/design_1_rst_ps8_0_99M_0_in_context.xdc2
design_1_i/rst_ps8_0_99M	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_rst_ps8_0_99M_0/design_1_rst_ps8_0_99M_0/design_1_rst_ps8_0_99M_0_in_context.xdc2
design_1_i/rst_ps8_0_99M	8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_pulse_gen_0_1/design_1_pulse_gen_0_1/design_1_pulse_gen_0_1_in_context.xdc2
design_1_i/pulse_gen_0	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.gen/sources_1/bd/design_1/ip/design_1_pulse_gen_0_1/design_1_pulse_gen_0_1/design_1_pulse_gen_0_1_in_context.xdc2
design_1_i/pulse_gen_0	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2g
cC:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.srcs/constrs_1/new/io_ports.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2g
cC:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.srcs/constrs_1/new/io_ports.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2e
cC:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.srcs/constrs_1/new/io_ports.xdc2$
".Xil/design_1_wrapper_propImpl.xdcZ1-236h px� 
�
Parsing XDC File [%s]
179*designutils2c
_C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2c
_C:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2115.4922
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0042

2115.4922
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2115.492 ; gain = 510.594
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
<
%s
*synth2$
"Loading part: xczu3eg-sfvc784-1-e
h p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2115.492 ; gain = 510.594
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2115.492 ; gain = 510.594
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:20 ; elapsed = 00:00:22 . Memory (MB): peak = 2115.492 ; gain = 510.594
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 360 (col length:72)
BRAMs: 432 (col length: RAMB18 72 RAMB36 36)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M00_ACLK2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M00_ARESETN2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

M01_ACLK2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
M01_ARESETN2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

S00_ACLK2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
S00_ARESETN2
design_1_ps8_0_axi_periph_0Z8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 2115.492 ; gain = 510.594
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:34 ; elapsed = 00:00:37 . Memory (MB): peak = 2593.996 ; gain = 989.098
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:34 ; elapsed = 00:00:37 . Memory (MB): peak = 2594.480 ; gain = 989.582
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:34 ; elapsed = 00:00:37 . Memory (MB): peak = 2604.254 ; gain = 999.355
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2y
wFinished IO Insertion : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 2620.027 ; gain = 1015.129
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 2620.027 ; gain = 1015.129
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 2620.027 ; gain = 1015.129
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 2620.027 ; gain = 1015.129
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 2620.027 ; gain = 1015.129
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 2620.027 ; gain = 1015.129
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
L
%s
*synth24
2+------+-----------------------------+----------+
h p
x
� 
L
%s
*synth24
2|      |BlackBox name                |Instances |
h p
x
� 
L
%s
*synth24
2+------+-----------------------------+----------+
h p
x
� 
L
%s
*synth24
2|1     |design_1_example_acc_0_0     |         1|
h p
x
� 
L
%s
*synth24
2|2     |design_1_xbar_0              |         1|
h p
x
� 
L
%s
*synth24
2|3     |design_1_auto_ds_0           |         1|
h p
x
� 
L
%s
*synth24
2|4     |design_1_auto_pc_0           |         1|
h p
x
� 
L
%s
*synth24
2|5     |design_1_pulse_gen_0_1       |         1|
h p
x
� 
L
%s
*synth24
2|6     |design_1_rst_ps8_0_99M_0     |         1|
h p
x
� 
L
%s
*synth24
2|7     |design_1_zynq_ultra_ps_e_0_0 |         1|
h p
x
� 
L
%s
*synth24
2+------+-----------------------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
F
%s*synth2.
,+------+---------------------------+------+
h px� 
F
%s*synth2.
,|      |Cell                       |Count |
h px� 
F
%s*synth2.
,+------+---------------------------+------+
h px� 
F
%s*synth2.
,|1     |design_1_auto_ds           |     1|
h px� 
F
%s*synth2.
,|2     |design_1_auto_pc           |     1|
h px� 
F
%s*synth2.
,|3     |design_1_example_acc_0     |     1|
h px� 
F
%s*synth2.
,|4     |design_1_pulse_gen_0       |     1|
h px� 
F
%s*synth2.
,|5     |design_1_rst_ps8_0_99M     |     1|
h px� 
F
%s*synth2.
,|6     |design_1_xbar              |     1|
h px� 
F
%s*synth2.
,|7     |design_1_zynq_ultra_ps_e_0 |     1|
h px� 
F
%s*synth2.
,|8     |IBUF                       |     2|
h px� 
F
%s*synth2.
,|9     |OBUF                       |     1|
h px� 
F
%s*synth2.
,+------+---------------------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:40 ; elapsed = 00:00:43 . Memory (MB): peak = 2620.027 ; gain = 1015.129
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 7 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:27 ; elapsed = 00:00:36 . Memory (MB): peak = 2620.027 ; gain = 1015.129
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:41 ; elapsed = 00:00:43 . Memory (MB): peak = 2620.027 ; gain = 1015.129
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0132

2620.0272
0.000Z17-268h px� 
S
-Analyzing %s Unisim elements for replacement
17*netlist2
2Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

2620.0272
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2[
Y  A total of 2 instances were transformed.
  IBUF => IBUF (IBUFCTRL, INBUF): 2 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

997defcaZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
522
432
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:502

00:00:542

2620.0272

1926.828Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

2620.0272
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2g
eC:/Users/Dawso/GIM-2024-2025/spi_directio/hls_daw/demo_rec/demo_rec.runs/synth_1/design_1_wrapper.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2k
ireport_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Wed Feb 19 23:48:48 2025Z17-206h px� 


End Record