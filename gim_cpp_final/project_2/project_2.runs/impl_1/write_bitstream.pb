
b
Command: %s
1870*	planAhead2-
+open_checkpoint design_1_wrapper_routed.dcpZ12-2866h px� 
L

Starting %s Task
103*constraints2
open_checkpointZ18-103h px� 
�

%s
*constraints2`
^Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.050 . Memory (MB): peak = 331.371 ; gain = 6.301h px� 
H
Loading part %s157*device2
xczu3eg-sfvc784-1-eZ21-403h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1222

1488.4882
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
168Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
T
Netlist was created with %s %s291*project2
Vivado2
2024.1Z1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read ShapeDB Complete: 2

00:00:002
00:00:00.0182

1554.4652
1.699Z17-268h px� 
L
*Restoring timing data from binary archive.264*timingZ38-478h px� 
F
$Binary timing data restore complete.265*timingZ38-479h px� 
L
*Restoring constraints from binary archive.481*projectZ1-856h px� 
E
#Binary constraint restore complete.478*projectZ1-853h px� 
K
!Start Reading Physical Databases.35885*designutilsZ20-5722h px� 
:
Reading placement.
206*designutilsZ20-206h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read Netlist Cache: 2

00:00:002
00:00:00.0092

1910.7772
0.000Z17-268h px� 
D
Reading placer database...
1602*designutilsZ20-1892h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read Device Cache: 2

00:00:002
00:00:00.0382

1910.7772
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read PlaceDB: 2

00:00:012

00:00:012

1921.3872
9.871Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read PulsedLatchDB: 2

00:00:002

00:00:002

1921.3872
0.000Z17-268h px� 
8
Reading routing.
207*designutilsZ20-207h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read RouteStorage: 2

00:00:082

00:00:082

2418.9962	
497.609Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Read Physdb Files: 2

00:00:092

00:00:092

2418.9962	
508.219Z17-268h px� 
x
7Restored from archive | CPU: %s secs | Memory: %s MB |
1612*designutils2

9.0000002

0.000000Z20-1924h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Finished XDEF File Restore: 2

00:00:092

00:00:092

2418.9962	
508.219Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0022

2418.9962
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 19 instances were transformed.
  DSP48E2 => DSP48E2 (DSP_ALU, DSP_A_B_DATA, DSP_C_DATA, DSP_MULTIPLIER, DSP_M_DATA, DSP_OUTPUT, DSP_PREADD, DSP_PREADD_DATA): 12 instances
  DSP48E2 => DSP48E2 (inverted pins: OPMODE[2], OPMODE[0]) (DSP_ALU, DSP_A_B_DATA, DSP_C_DATA, DSP_MULTIPLIER, DSP_M_DATA, DSP_OUTPUT, DSP_PREADD, DSP_PREADD_DATA): 2 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 1 instance 
  RAM32M16 => RAM32M16 (RAMD32(x14), RAMS32(x2)): 4 instances
Z1-111h px� 
o
'Checkpoint was created with %s build %s378*project2
Vivado v2024.1 (64-bit)2	
5076996Z1-604h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
open_checkpoint: 2

00:00:262

00:00:412

2418.9962

2105.055Z17-268h px� 
^
Command: %s
53*	vivadotcl2-
+write_bitstream -force design_1_wrapper.bitZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xczu3egZ17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xczu3egZ17-349h px� 
f
,Running DRC as a precondition to command %s
1349*	planAhead2
write_bitstreamZ12-1349h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
G
"No user IP repositories specified
1154*coregenZ19-1704h px� 
j
"Loaded Vivado IP repository '%s'.
1332*coregen2!
C:/Xilinx/Vivado/2024.1/data/ipZ19-2313h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U34/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg	�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U34/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U34/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg/C[47:0]�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U34/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg/C2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U35/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg	�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U35/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U35/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg/C[47:0]�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U35/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg/C2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U36/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg	�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U36/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U36/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg/C[47:0]�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U36/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg/C2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U37/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg	�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U37/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U37/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg/C[47:0]�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mac_muladd_16s_16s_25ns_25_4_1_U37/accelerator_mac_muladd_16s_16s_25ns_25_4_1_DSP48_0_U/p_reg_reg/C2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg	vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg2�
 "�
~design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg/A[29:0]xdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg/A2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg	vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg2�
 "�
~design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg/B[17:0]xdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg/B2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
tdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg	tdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg2�
 "�
|design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg/A[29:0]vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg/A2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPIP-2h px� 
�
fInput pipelining: DSP %s input %s is not pipelined. Pipelining DSP48 input will improve performance.%s*DRC2�
 "�
tdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg	tdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg2�
 "�
|design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg/B[17:0]vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg/B2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPIP-2h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
{design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mul_ln14_2_reg_733_reg	{design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mul_ln14_2_reg_733_reg2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mul_ln14_2_reg_733_reg/P[47:0]}design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mul_ln14_2_reg_733_reg/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPOP-3h px� 
�
�PREG Output pipelining: DSP %s output %s is not pipelined (PREG=0). Pipelining the DSP48 output will improve performance and often saves power so it is suggested whenever possible to fully pipeline this function.  If this DSP48 function was inferred, it is suggested to describe an additional register stage after this function.  If the DSP48 was instantiated in the design, it is suggested to set the PREG attribute to 1.%s*DRC2�
 "�
ydesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mul_ln14_reg_723_reg	ydesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mul_ln14_reg_723_reg2�
 "�
�design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mul_ln14_reg_723_reg/P[47:0]{design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/mul_ln14_reg_723_reg/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPOP-3h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg	vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg2�
 "�
~design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg/P[47:0]xdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_1_reg_708_reg/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPOP-4h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_2_reg_808_reg	vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_2_reg_808_reg2�
 "�
~design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_2_reg_808_reg/P[47:0]xdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_2_reg_808_reg/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPOP-4h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_3_reg_834_reg	vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_3_reg_834_reg2�
 "�
~design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_3_reg_834_reg/P[47:0]xdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_3_reg_834_reg/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPOP-4h px� 
�	
�MREG Output pipelining: DSP %s multiplier stage %s is not pipelined (MREG=0). Pipelining the multiplier function will improve performance and will save significant power so it is suggested whenever possible to fully pipeline this function.  If this multiplier was inferred, it is suggested to describe an additional register stage after this function.  If there is no registered adder/accumulator following the multiply function, two pipeline stages are suggested to allow both the MREG and PREG registers to be used.  If the DSP48 was instantiated in the design, it is suggested to set both the MREG and PREG attributes to 1 when performing multiply functions.%s*DRC2�
 "�
tdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg	tdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg2�
 "�
|design_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg/P[47:0]vdesign_1_i/accelerator_0/inst/grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434/grp_model_array_fu_596/tmp_reg_703_reg/P2+
 %DRC|Netlist|Instance|Pipeline|DSP48E28ZDPOP-4h px� 
�
�LUT equation term check: Used physical LUT pin 'A2' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A3)+((~A3)*(~A5)*A4)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1	�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_12�
 "�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I1�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I12+
 %DRC|Physical Configuration|Chip Level8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A2' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A3)+((~A3)*(~A1)*A4)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1	�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_12�
 "�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I1�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I12+
 %DRC|Physical Configuration|Chip Level8Z	PDCN-1569h px� 
�
�LUT equation term check: Used physical LUT pin 'A2' of cell %s (pin %s) is not included in the LUT equation: 'O5=(A5)+((~A5)*(~A4)*A1)'. If this cell is a user instantiated LUT in the design, please remove connectivity to the pin or change the equation and/or INIT string of the LUT to prevent this issue. If the cell is inferred or IP created LUT, please regenerate the IP and/or resynthesize the design to attempt to correct the issue.%s*DRC2�
 "�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1	�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_12�
 "�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I1�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/gpregsm1.user_valid_i_1/I12+
 %DRC|Physical Configuration|Chip Level8Z	PDCN-1569h px� 
�<
`No routable loads: 33 net(s) have no routable loads. The problem bus(es) and/or net(s) are %s.%s*DRC2�:
 "�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/aempty_fwft_i"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg[2:0]�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg[2:0]�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg[2:0]�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.rd_rst_reg"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2:0]�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2:0]�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg[2:0]�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/rstblk/ngwrdrst.grst.wr_rst_reg"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_fb"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_READ.read_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/cmd_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i"�
�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i�design_1_i/ps8_0_axi_periph/s00_couplers/auto_ds/inst/gen_downsizer.gen_simple_downsizer.axi_downsizer_inst/USE_WRITE.write_addr_inst/USE_B_CHANNEL.cmd_b_queue/inst/fifo_gen_inst/inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gl0.wr/gwss.wsts/ram_afull_i:..."
(the first 15 of 21 listed)2+
 %DRC|Implementation|Routing|Chip Level8Z	RTSTAT-10h px� 
U
DRC finished with %s
1905*	planAhead2
0 Errors, 18 WarningsZ12-3199h px� 
i
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px� 
W
)Running write_bitstream with %s threads.
1750*designutils2
2Z20-2272h px� 
?
Loading data files...
1271*designutilsZ12-1165h px� 
>
Loading site data...
1273*designutilsZ12-1167h px� 
?
Loading route data...
1272*designutilsZ12-1166h px� 
?
Processing options...
1362*designutilsZ12-1514h px� 
<
Creating bitmap...
1249*designutilsZ12-1141h px� 
7
Creating bitstream...
7*	bitstreamZ40-7h px� 
U
Writing bitstream %s...
11*	bitstream2
./design_1_wrapper.bitZ40-11h px� 
F
Bitgen Completed Successfully.
1606*	planAheadZ12-1842h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
222
182
02
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
write_bitstreamZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_bitstream: 2

00:00:122

00:00:122

2663.0822	
244.086Z17-268h px� 


End Record