set moduleName accelerator_Pipeline_VITIS_LOOP_69_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {accelerator_Pipeline_VITIS_LOOP_69_4}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ bias_2_local_1_0 int 16 regular  }
	{ bias_2_local_0 int 16 regular  }
	{ bias_1_local_1_0 int 16 regular  }
	{ bias_1_local_0 int 16 regular  }
	{ w2_local_3_0 int 16 regular  }
	{ w2_local_2_0 int 16 regular  }
	{ w2_local_1_0 int 16 regular  }
	{ w2_local_0 int 16 regular  }
	{ w1_local_3_0 int 16 regular  }
	{ w1_local_2_0 int 16 regular  }
	{ w1_local_1_0 int 16 regular  }
	{ w1_local_0 int 16 regular  }
	{ mux_case_15664 int 16 regular  }
	{ mux_case_05560 int 16 regular  }
	{ mux_case_15456 int 16 regular  }
	{ mux_case_05352 int 16 regular  }
	{ mux_case_15248 int 16 regular  }
	{ mux_case_05144 int 16 regular  }
	{ mux_case_15040 int 16 regular  }
	{ mux_case_04936 int 16 regular  }
	{ mux_case_14832 int 16 regular  }
	{ mux_case_04728 int 16 regular  }
	{ mux_case_14624 int 16 regular  }
	{ mux_case_04520 int 16 regular  }
	{ retval_0_3_0_0_0_load82 int 16 regular  }
	{ retval_0_2_0_0_0_load76 int 16 regular  }
	{ retval_0_1_0_0_0_load70 int 16 regular  }
	{ retval_0_0_0_0_0_load64 int 16 regular  }
	{ training int 16 regular  }
	{ cmp_i_i100 int 1 regular  }
	{ bias_2_local_1_1_out int 16 regular {pointer 1}  }
	{ bias_2_local_193_out int 16 regular {pointer 1}  }
	{ bias_1_local_1_1_out int 16 regular {pointer 1}  }
	{ bias_1_local_191_out int 16 regular {pointer 1}  }
	{ w2_local_3_1_out int 16 regular {pointer 1}  }
	{ w2_local_2_1_out int 16 regular {pointer 1}  }
	{ w2_local_1_1_out int 16 regular {pointer 1}  }
	{ w2_local_189_out int 16 regular {pointer 1}  }
	{ w1_local_3_1_out int 16 regular {pointer 1}  }
	{ w1_local_2_1_out int 16 regular {pointer 1}  }
	{ w1_local_1_1_out int 16 regular {pointer 1}  }
	{ w1_local_187_out int 16 regular {pointer 1}  }
	{ mux_case_15663_out int 16 regular {pointer 1}  }
	{ mux_case_05559_out int 16 regular {pointer 1}  }
	{ mux_case_15455_out int 16 regular {pointer 1}  }
	{ mux_case_05351_out int 16 regular {pointer 1}  }
	{ mux_case_15247_out int 16 regular {pointer 1}  }
	{ mux_case_05143_out int 16 regular {pointer 1}  }
	{ mux_case_15039_out int 16 regular {pointer 1}  }
	{ mux_case_04935_out int 16 regular {pointer 1}  }
	{ mux_case_14831_out int 16 regular {pointer 1}  }
	{ mux_case_04727_out int 16 regular {pointer 1}  }
	{ mux_case_14623_out int 16 regular {pointer 1}  }
	{ mux_case_04519_out int 16 regular {pointer 1}  }
	{ retval_0_3_0_0_0_load81_out int 16 regular {pointer 1}  }
	{ retval_0_2_0_0_0_load75_out int 16 regular {pointer 1}  }
	{ retval_0_1_0_0_0_load69_out int 16 regular {pointer 1}  }
	{ retval_0_0_0_0_0_load63_out int 16 regular {pointer 1}  }
	{ retval_0_3_0_0_0_load_out int 16 regular {pointer 1}  }
	{ retval_0_2_0_0_0_load_out int 16 regular {pointer 1}  }
	{ retval_0_1_0_0_0_load_out int 16 regular {pointer 1}  }
	{ retval_0_0_0_0_0_load_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_4_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_5_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_6_out int 16 regular {pointer 1}  }
	{ array_back2_bias_change_out int 16 regular {pointer 1}  }
	{ array_back2_bias_change_2_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_4_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_5_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_6_out int 16 regular {pointer 1}  }
	{ array_back1_bias_change_out int 16 regular {pointer 1}  }
	{ array_back1_bias_change_2_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bias_2_local_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2_local_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1_local_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1_local_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_3_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_2_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_3_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_2_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_15664", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_05560", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_15456", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_05352", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_15248", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_05144", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_15040", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_04936", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_14832", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_04728", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_14624", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_04520", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_0_3_0_0_0_load82", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_0_2_0_0_0_load76", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_0_1_0_0_0_load70", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_0_0_0_0_0_load64", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "training", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i100", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2_local_1_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_2_local_193_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_1_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_191_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_3_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_2_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_1_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_189_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_3_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_2_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_1_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_187_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_15663_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_05559_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_15455_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_05351_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_15247_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_05143_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_15039_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_04935_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_14831_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_04727_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_14623_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_04519_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_3_0_0_0_load81_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_2_0_0_0_load75_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_1_0_0_0_load69_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_0_0_0_0_load63_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_3_0_0_0_load_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_2_0_0_0_load_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_1_0_0_0_load_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_0_0_0_0_load_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_4_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_5_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_6_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_bias_change_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_bias_change_2_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_4_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_5_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_6_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_bias_change_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_bias_change_2_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 125
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bias_2_local_1_0 sc_in sc_lv 16 signal 0 } 
	{ bias_2_local_0 sc_in sc_lv 16 signal 1 } 
	{ bias_1_local_1_0 sc_in sc_lv 16 signal 2 } 
	{ bias_1_local_0 sc_in sc_lv 16 signal 3 } 
	{ w2_local_3_0 sc_in sc_lv 16 signal 4 } 
	{ w2_local_2_0 sc_in sc_lv 16 signal 5 } 
	{ w2_local_1_0 sc_in sc_lv 16 signal 6 } 
	{ w2_local_0 sc_in sc_lv 16 signal 7 } 
	{ w1_local_3_0 sc_in sc_lv 16 signal 8 } 
	{ w1_local_2_0 sc_in sc_lv 16 signal 9 } 
	{ w1_local_1_0 sc_in sc_lv 16 signal 10 } 
	{ w1_local_0 sc_in sc_lv 16 signal 11 } 
	{ mux_case_15664 sc_in sc_lv 16 signal 12 } 
	{ mux_case_05560 sc_in sc_lv 16 signal 13 } 
	{ mux_case_15456 sc_in sc_lv 16 signal 14 } 
	{ mux_case_05352 sc_in sc_lv 16 signal 15 } 
	{ mux_case_15248 sc_in sc_lv 16 signal 16 } 
	{ mux_case_05144 sc_in sc_lv 16 signal 17 } 
	{ mux_case_15040 sc_in sc_lv 16 signal 18 } 
	{ mux_case_04936 sc_in sc_lv 16 signal 19 } 
	{ mux_case_14832 sc_in sc_lv 16 signal 20 } 
	{ mux_case_04728 sc_in sc_lv 16 signal 21 } 
	{ mux_case_14624 sc_in sc_lv 16 signal 22 } 
	{ mux_case_04520 sc_in sc_lv 16 signal 23 } 
	{ retval_0_3_0_0_0_load82 sc_in sc_lv 16 signal 24 } 
	{ retval_0_2_0_0_0_load76 sc_in sc_lv 16 signal 25 } 
	{ retval_0_1_0_0_0_load70 sc_in sc_lv 16 signal 26 } 
	{ retval_0_0_0_0_0_load64 sc_in sc_lv 16 signal 27 } 
	{ training sc_in sc_lv 16 signal 28 } 
	{ cmp_i_i100 sc_in sc_lv 1 signal 29 } 
	{ bias_2_local_1_1_out sc_out sc_lv 16 signal 30 } 
	{ bias_2_local_1_1_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ bias_2_local_193_out sc_out sc_lv 16 signal 31 } 
	{ bias_2_local_193_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ bias_1_local_1_1_out sc_out sc_lv 16 signal 32 } 
	{ bias_1_local_1_1_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ bias_1_local_191_out sc_out sc_lv 16 signal 33 } 
	{ bias_1_local_191_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ w2_local_3_1_out sc_out sc_lv 16 signal 34 } 
	{ w2_local_3_1_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ w2_local_2_1_out sc_out sc_lv 16 signal 35 } 
	{ w2_local_2_1_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ w2_local_1_1_out sc_out sc_lv 16 signal 36 } 
	{ w2_local_1_1_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ w2_local_189_out sc_out sc_lv 16 signal 37 } 
	{ w2_local_189_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ w1_local_3_1_out sc_out sc_lv 16 signal 38 } 
	{ w1_local_3_1_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ w1_local_2_1_out sc_out sc_lv 16 signal 39 } 
	{ w1_local_2_1_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ w1_local_1_1_out sc_out sc_lv 16 signal 40 } 
	{ w1_local_1_1_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ w1_local_187_out sc_out sc_lv 16 signal 41 } 
	{ w1_local_187_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ mux_case_15663_out sc_out sc_lv 16 signal 42 } 
	{ mux_case_15663_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ mux_case_05559_out sc_out sc_lv 16 signal 43 } 
	{ mux_case_05559_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ mux_case_15455_out sc_out sc_lv 16 signal 44 } 
	{ mux_case_15455_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ mux_case_05351_out sc_out sc_lv 16 signal 45 } 
	{ mux_case_05351_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ mux_case_15247_out sc_out sc_lv 16 signal 46 } 
	{ mux_case_15247_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ mux_case_05143_out sc_out sc_lv 16 signal 47 } 
	{ mux_case_05143_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ mux_case_15039_out sc_out sc_lv 16 signal 48 } 
	{ mux_case_15039_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ mux_case_04935_out sc_out sc_lv 16 signal 49 } 
	{ mux_case_04935_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ mux_case_14831_out sc_out sc_lv 16 signal 50 } 
	{ mux_case_14831_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ mux_case_04727_out sc_out sc_lv 16 signal 51 } 
	{ mux_case_04727_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ mux_case_14623_out sc_out sc_lv 16 signal 52 } 
	{ mux_case_14623_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ mux_case_04519_out sc_out sc_lv 16 signal 53 } 
	{ mux_case_04519_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ retval_0_3_0_0_0_load81_out sc_out sc_lv 16 signal 54 } 
	{ retval_0_3_0_0_0_load81_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ retval_0_2_0_0_0_load75_out sc_out sc_lv 16 signal 55 } 
	{ retval_0_2_0_0_0_load75_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ retval_0_1_0_0_0_load69_out sc_out sc_lv 16 signal 56 } 
	{ retval_0_1_0_0_0_load69_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ retval_0_0_0_0_0_load63_out sc_out sc_lv 16 signal 57 } 
	{ retval_0_0_0_0_0_load63_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ retval_0_3_0_0_0_load_out sc_out sc_lv 16 signal 58 } 
	{ retval_0_3_0_0_0_load_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ retval_0_2_0_0_0_load_out sc_out sc_lv 16 signal 59 } 
	{ retval_0_2_0_0_0_load_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ retval_0_1_0_0_0_load_out sc_out sc_lv 16 signal 60 } 
	{ retval_0_1_0_0_0_load_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ retval_0_0_0_0_0_load_out sc_out sc_lv 16 signal 61 } 
	{ retval_0_0_0_0_0_load_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ array_back2_weight_changes_out sc_out sc_lv 16 signal 62 } 
	{ array_back2_weight_changes_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ array_back2_weight_changes_4_out sc_out sc_lv 16 signal 63 } 
	{ array_back2_weight_changes_4_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ array_back2_weight_changes_5_out sc_out sc_lv 16 signal 64 } 
	{ array_back2_weight_changes_5_out_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ array_back2_weight_changes_6_out sc_out sc_lv 16 signal 65 } 
	{ array_back2_weight_changes_6_out_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ array_back2_bias_change_out sc_out sc_lv 16 signal 66 } 
	{ array_back2_bias_change_out_ap_vld sc_out sc_logic 1 outvld 66 } 
	{ array_back2_bias_change_2_out sc_out sc_lv 16 signal 67 } 
	{ array_back2_bias_change_2_out_ap_vld sc_out sc_logic 1 outvld 67 } 
	{ array_back1_weight_changes_out sc_out sc_lv 16 signal 68 } 
	{ array_back1_weight_changes_out_ap_vld sc_out sc_logic 1 outvld 68 } 
	{ array_back1_weight_changes_4_out sc_out sc_lv 16 signal 69 } 
	{ array_back1_weight_changes_4_out_ap_vld sc_out sc_logic 1 outvld 69 } 
	{ array_back1_weight_changes_5_out sc_out sc_lv 16 signal 70 } 
	{ array_back1_weight_changes_5_out_ap_vld sc_out sc_logic 1 outvld 70 } 
	{ array_back1_weight_changes_6_out sc_out sc_lv 16 signal 71 } 
	{ array_back1_weight_changes_6_out_ap_vld sc_out sc_logic 1 outvld 71 } 
	{ array_back1_bias_change_out sc_out sc_lv 16 signal 72 } 
	{ array_back1_bias_change_out_ap_vld sc_out sc_logic 1 outvld 72 } 
	{ array_back1_bias_change_2_out sc_out sc_lv 16 signal 73 } 
	{ array_back1_bias_change_2_out_ap_vld sc_out sc_logic 1 outvld 73 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bias_2_local_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_1_0", "role": "default" }} , 
 	{ "name": "bias_2_local_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_0", "role": "default" }} , 
 	{ "name": "bias_1_local_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_1_0", "role": "default" }} , 
 	{ "name": "bias_1_local_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_0", "role": "default" }} , 
 	{ "name": "w2_local_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_3_0", "role": "default" }} , 
 	{ "name": "w2_local_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_2_0", "role": "default" }} , 
 	{ "name": "w2_local_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_0", "role": "default" }} , 
 	{ "name": "w2_local_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_0", "role": "default" }} , 
 	{ "name": "w1_local_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_3_0", "role": "default" }} , 
 	{ "name": "w1_local_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_2_0", "role": "default" }} , 
 	{ "name": "w1_local_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_0", "role": "default" }} , 
 	{ "name": "w1_local_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_0", "role": "default" }} , 
 	{ "name": "mux_case_15664", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_15664", "role": "default" }} , 
 	{ "name": "mux_case_05560", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_05560", "role": "default" }} , 
 	{ "name": "mux_case_15456", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_15456", "role": "default" }} , 
 	{ "name": "mux_case_05352", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_05352", "role": "default" }} , 
 	{ "name": "mux_case_15248", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_15248", "role": "default" }} , 
 	{ "name": "mux_case_05144", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_05144", "role": "default" }} , 
 	{ "name": "mux_case_15040", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_15040", "role": "default" }} , 
 	{ "name": "mux_case_04936", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_04936", "role": "default" }} , 
 	{ "name": "mux_case_14832", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_14832", "role": "default" }} , 
 	{ "name": "mux_case_04728", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_04728", "role": "default" }} , 
 	{ "name": "mux_case_14624", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_14624", "role": "default" }} , 
 	{ "name": "mux_case_04520", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_04520", "role": "default" }} , 
 	{ "name": "retval_0_3_0_0_0_load82", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_3_0_0_0_load82", "role": "default" }} , 
 	{ "name": "retval_0_2_0_0_0_load76", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_2_0_0_0_load76", "role": "default" }} , 
 	{ "name": "retval_0_1_0_0_0_load70", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_1_0_0_0_load70", "role": "default" }} , 
 	{ "name": "retval_0_0_0_0_0_load64", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_0_0_0_0_load64", "role": "default" }} , 
 	{ "name": "training", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "training", "role": "default" }} , 
 	{ "name": "cmp_i_i100", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i100", "role": "default" }} , 
 	{ "name": "bias_2_local_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_1_1_out", "role": "default" }} , 
 	{ "name": "bias_2_local_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "bias_2_local_193_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_193_out", "role": "default" }} , 
 	{ "name": "bias_2_local_193_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_193_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_1_1_out", "role": "default" }} , 
 	{ "name": "bias_1_local_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_191_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_191_out", "role": "default" }} , 
 	{ "name": "bias_1_local_191_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_191_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_3_1_out", "role": "default" }} , 
 	{ "name": "w2_local_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_2_1_out", "role": "default" }} , 
 	{ "name": "w2_local_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_1_out", "role": "default" }} , 
 	{ "name": "w2_local_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_189_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_189_out", "role": "default" }} , 
 	{ "name": "w2_local_189_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_189_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_3_1_out", "role": "default" }} , 
 	{ "name": "w1_local_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_2_1_out", "role": "default" }} , 
 	{ "name": "w1_local_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_1_out", "role": "default" }} , 
 	{ "name": "w1_local_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_187_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_187_out", "role": "default" }} , 
 	{ "name": "w1_local_187_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_187_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_15663_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_15663_out", "role": "default" }} , 
 	{ "name": "mux_case_15663_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_15663_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_05559_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_05559_out", "role": "default" }} , 
 	{ "name": "mux_case_05559_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_05559_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_15455_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_15455_out", "role": "default" }} , 
 	{ "name": "mux_case_15455_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_15455_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_05351_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_05351_out", "role": "default" }} , 
 	{ "name": "mux_case_05351_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_05351_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_15247_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_15247_out", "role": "default" }} , 
 	{ "name": "mux_case_15247_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_15247_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_05143_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_05143_out", "role": "default" }} , 
 	{ "name": "mux_case_05143_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_05143_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_15039_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_15039_out", "role": "default" }} , 
 	{ "name": "mux_case_15039_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_15039_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_04935_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_04935_out", "role": "default" }} , 
 	{ "name": "mux_case_04935_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_04935_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_14831_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_14831_out", "role": "default" }} , 
 	{ "name": "mux_case_14831_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_14831_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_04727_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_04727_out", "role": "default" }} , 
 	{ "name": "mux_case_04727_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_04727_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_14623_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_14623_out", "role": "default" }} , 
 	{ "name": "mux_case_14623_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_14623_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_04519_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_04519_out", "role": "default" }} , 
 	{ "name": "mux_case_04519_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_04519_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_3_0_0_0_load81_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_3_0_0_0_load81_out", "role": "default" }} , 
 	{ "name": "retval_0_3_0_0_0_load81_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_3_0_0_0_load81_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_2_0_0_0_load75_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_2_0_0_0_load75_out", "role": "default" }} , 
 	{ "name": "retval_0_2_0_0_0_load75_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_2_0_0_0_load75_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_1_0_0_0_load69_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_1_0_0_0_load69_out", "role": "default" }} , 
 	{ "name": "retval_0_1_0_0_0_load69_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_1_0_0_0_load69_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_0_0_0_0_load63_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_0_0_0_0_load63_out", "role": "default" }} , 
 	{ "name": "retval_0_0_0_0_0_load63_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_0_0_0_0_load63_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_3_0_0_0_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_3_0_0_0_load_out", "role": "default" }} , 
 	{ "name": "retval_0_3_0_0_0_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_3_0_0_0_load_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_2_0_0_0_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_2_0_0_0_load_out", "role": "default" }} , 
 	{ "name": "retval_0_2_0_0_0_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_2_0_0_0_load_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_1_0_0_0_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_1_0_0_0_load_out", "role": "default" }} , 
 	{ "name": "retval_0_1_0_0_0_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_1_0_0_0_load_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_0_0_0_0_load_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_0_0_0_0_load_out", "role": "default" }} , 
 	{ "name": "retval_0_0_0_0_0_load_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_0_0_0_0_load_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_4_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_4_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_5_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_5_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_6_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_6_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_bias_change_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_bias_change_out", "role": "default" }} , 
 	{ "name": "array_back2_bias_change_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_bias_change_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_bias_change_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_bias_change_2_out", "role": "default" }} , 
 	{ "name": "array_back2_bias_change_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_bias_change_2_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_4_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_4_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_5_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_5_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_6_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_6_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_bias_change_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_out", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_bias_change_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_bias_change_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_2_out", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_bias_change_2_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "20", "21", "22", "23", "24", "25", "26", "27"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_69_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bias_2_local_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_local_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_local_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_local_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_15664", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_05560", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_15456", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_05352", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_15248", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_05144", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_15040", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_04936", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_14832", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_04728", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_14624", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_04520", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_0_3_0_0_0_load82", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_0_2_0_0_0_load76", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_0_1_0_0_0_load70", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_0_0_0_0_0_load64", "Type" : "None", "Direction" : "I"},
			{"Name" : "training", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i100", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_local_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_193_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_191_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_189_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_187_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_15663_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_05559_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_15455_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_05351_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_15247_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_05143_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_15039_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_04935_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_14831_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_04727_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_14623_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_04519_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_3_0_0_0_load81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_2_0_0_0_load75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_1_0_0_0_load69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_0_0_0_0_load63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_3_0_0_0_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_2_0_0_0_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_1_0_0_0_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_0_0_0_0_load_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_bias_change_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_bias_change_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_bias_change_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_bias_change_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_4", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "PostState" : ["ap_ST_fsm_state16", "ap_ST_fsm_state17"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19"],
		"CDFG" : "model_array",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "3", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "3",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "training", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_32s_7s_34_1_1_U17", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_32s_7s_34_1_1_U18", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_32s_7s_34_1_1_U19", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_32s_7s_34_1_1_U20", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_16s_16s_32_1_1_U21", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_16s_16s_32_1_1_U22", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_16s_16s_32_1_1_U23", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_16s_16s_25_1_1_U24", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_16s_16s_32_1_1_U25", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_16s_16s_25_1_1_U26", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_16s_16s_25_1_1_U27", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mul_16s_16s_25_1_1_U28", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mac_mulsub_16s_6ns_25s_25_4_1_U29", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mac_muladd_16s_16s_25ns_25_4_1_U30", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mac_muladd_16s_16s_25ns_25_4_1_U31", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mac_muladd_16s_16s_25ns_25_4_1_U32", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mac_muladd_16s_16s_25ns_25_4_1_U33", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_890.mac_mulsub_16s_6ns_25s_25_4_1_U34", "Parent" : "1"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U51", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_10_1_1_U52", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_10_1_1_U53", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_10_1_1_U54", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U55", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U56", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U57", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U58", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_Pipeline_VITIS_LOOP_69_4 {
		bias_2_local_1_0 {Type I LastRead 0 FirstWrite -1}
		bias_2_local_0 {Type I LastRead 0 FirstWrite -1}
		bias_1_local_1_0 {Type I LastRead 0 FirstWrite -1}
		bias_1_local_0 {Type I LastRead 0 FirstWrite -1}
		w2_local_3_0 {Type I LastRead 0 FirstWrite -1}
		w2_local_2_0 {Type I LastRead 0 FirstWrite -1}
		w2_local_1_0 {Type I LastRead 0 FirstWrite -1}
		w2_local_0 {Type I LastRead 0 FirstWrite -1}
		w1_local_3_0 {Type I LastRead 0 FirstWrite -1}
		w1_local_2_0 {Type I LastRead 0 FirstWrite -1}
		w1_local_1_0 {Type I LastRead 0 FirstWrite -1}
		w1_local_0 {Type I LastRead 0 FirstWrite -1}
		mux_case_15664 {Type I LastRead 0 FirstWrite -1}
		mux_case_05560 {Type I LastRead 0 FirstWrite -1}
		mux_case_15456 {Type I LastRead 0 FirstWrite -1}
		mux_case_05352 {Type I LastRead 0 FirstWrite -1}
		mux_case_15248 {Type I LastRead 0 FirstWrite -1}
		mux_case_05144 {Type I LastRead 0 FirstWrite -1}
		mux_case_15040 {Type I LastRead 0 FirstWrite -1}
		mux_case_04936 {Type I LastRead 0 FirstWrite -1}
		mux_case_14832 {Type I LastRead 0 FirstWrite -1}
		mux_case_04728 {Type I LastRead 0 FirstWrite -1}
		mux_case_14624 {Type I LastRead 0 FirstWrite -1}
		mux_case_04520 {Type I LastRead 0 FirstWrite -1}
		retval_0_3_0_0_0_load82 {Type I LastRead 0 FirstWrite -1}
		retval_0_2_0_0_0_load76 {Type I LastRead 0 FirstWrite -1}
		retval_0_1_0_0_0_load70 {Type I LastRead 0 FirstWrite -1}
		retval_0_0_0_0_0_load64 {Type I LastRead 0 FirstWrite -1}
		training {Type I LastRead 0 FirstWrite -1}
		cmp_i_i100 {Type I LastRead 0 FirstWrite -1}
		bias_2_local_1_1_out {Type O LastRead -1 FirstWrite 2}
		bias_2_local_193_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_1_1_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_191_out {Type O LastRead -1 FirstWrite 2}
		w2_local_3_1_out {Type O LastRead -1 FirstWrite 2}
		w2_local_2_1_out {Type O LastRead -1 FirstWrite 2}
		w2_local_1_1_out {Type O LastRead -1 FirstWrite 2}
		w2_local_189_out {Type O LastRead -1 FirstWrite 2}
		w1_local_3_1_out {Type O LastRead -1 FirstWrite 2}
		w1_local_2_1_out {Type O LastRead -1 FirstWrite 2}
		w1_local_1_1_out {Type O LastRead -1 FirstWrite 2}
		w1_local_187_out {Type O LastRead -1 FirstWrite 2}
		mux_case_15663_out {Type O LastRead -1 FirstWrite 2}
		mux_case_05559_out {Type O LastRead -1 FirstWrite 2}
		mux_case_15455_out {Type O LastRead -1 FirstWrite 2}
		mux_case_05351_out {Type O LastRead -1 FirstWrite 2}
		mux_case_15247_out {Type O LastRead -1 FirstWrite 2}
		mux_case_05143_out {Type O LastRead -1 FirstWrite 2}
		mux_case_15039_out {Type O LastRead -1 FirstWrite 2}
		mux_case_04935_out {Type O LastRead -1 FirstWrite 2}
		mux_case_14831_out {Type O LastRead -1 FirstWrite 2}
		mux_case_04727_out {Type O LastRead -1 FirstWrite 2}
		mux_case_14623_out {Type O LastRead -1 FirstWrite 2}
		mux_case_04519_out {Type O LastRead -1 FirstWrite 2}
		retval_0_3_0_0_0_load81_out {Type O LastRead -1 FirstWrite 2}
		retval_0_2_0_0_0_load75_out {Type O LastRead -1 FirstWrite 2}
		retval_0_1_0_0_0_load69_out {Type O LastRead -1 FirstWrite 2}
		retval_0_0_0_0_0_load63_out {Type O LastRead -1 FirstWrite 2}
		retval_0_3_0_0_0_load_out {Type O LastRead -1 FirstWrite 15}
		retval_0_2_0_0_0_load_out {Type O LastRead -1 FirstWrite 15}
		retval_0_1_0_0_0_load_out {Type O LastRead -1 FirstWrite 15}
		retval_0_0_0_0_0_load_out {Type O LastRead -1 FirstWrite 15}
		array_back2_weight_changes_out {Type O LastRead -1 FirstWrite 15}
		array_back2_weight_changes_4_out {Type O LastRead -1 FirstWrite 15}
		array_back2_weight_changes_5_out {Type O LastRead -1 FirstWrite 15}
		array_back2_weight_changes_6_out {Type O LastRead -1 FirstWrite 15}
		array_back2_bias_change_out {Type O LastRead -1 FirstWrite 15}
		array_back2_bias_change_2_out {Type O LastRead -1 FirstWrite 15}
		array_back1_weight_changes_out {Type O LastRead -1 FirstWrite 15}
		array_back1_weight_changes_4_out {Type O LastRead -1 FirstWrite 15}
		array_back1_weight_changes_5_out {Type O LastRead -1 FirstWrite 15}
		array_back1_weight_changes_6_out {Type O LastRead -1 FirstWrite 15}
		array_back1_bias_change_out {Type O LastRead -1 FirstWrite 15}
		array_back1_bias_change_2_out {Type O LastRead -1 FirstWrite 15}}
	model_array {
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		training {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "15", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bias_2_local_1_0 { ap_none {  { bias_2_local_1_0 in_data 0 16 } } }
	bias_2_local_0 { ap_none {  { bias_2_local_0 in_data 0 16 } } }
	bias_1_local_1_0 { ap_none {  { bias_1_local_1_0 in_data 0 16 } } }
	bias_1_local_0 { ap_none {  { bias_1_local_0 in_data 0 16 } } }
	w2_local_3_0 { ap_none {  { w2_local_3_0 in_data 0 16 } } }
	w2_local_2_0 { ap_none {  { w2_local_2_0 in_data 0 16 } } }
	w2_local_1_0 { ap_none {  { w2_local_1_0 in_data 0 16 } } }
	w2_local_0 { ap_none {  { w2_local_0 in_data 0 16 } } }
	w1_local_3_0 { ap_none {  { w1_local_3_0 in_data 0 16 } } }
	w1_local_2_0 { ap_none {  { w1_local_2_0 in_data 0 16 } } }
	w1_local_1_0 { ap_none {  { w1_local_1_0 in_data 0 16 } } }
	w1_local_0 { ap_none {  { w1_local_0 in_data 0 16 } } }
	mux_case_15664 { ap_none {  { mux_case_15664 in_data 0 16 } } }
	mux_case_05560 { ap_none {  { mux_case_05560 in_data 0 16 } } }
	mux_case_15456 { ap_none {  { mux_case_15456 in_data 0 16 } } }
	mux_case_05352 { ap_none {  { mux_case_05352 in_data 0 16 } } }
	mux_case_15248 { ap_none {  { mux_case_15248 in_data 0 16 } } }
	mux_case_05144 { ap_none {  { mux_case_05144 in_data 0 16 } } }
	mux_case_15040 { ap_none {  { mux_case_15040 in_data 0 16 } } }
	mux_case_04936 { ap_none {  { mux_case_04936 in_data 0 16 } } }
	mux_case_14832 { ap_none {  { mux_case_14832 in_data 0 16 } } }
	mux_case_04728 { ap_none {  { mux_case_04728 in_data 0 16 } } }
	mux_case_14624 { ap_none {  { mux_case_14624 in_data 0 16 } } }
	mux_case_04520 { ap_none {  { mux_case_04520 in_data 0 16 } } }
	retval_0_3_0_0_0_load82 { ap_none {  { retval_0_3_0_0_0_load82 in_data 0 16 } } }
	retval_0_2_0_0_0_load76 { ap_none {  { retval_0_2_0_0_0_load76 in_data 0 16 } } }
	retval_0_1_0_0_0_load70 { ap_none {  { retval_0_1_0_0_0_load70 in_data 0 16 } } }
	retval_0_0_0_0_0_load64 { ap_none {  { retval_0_0_0_0_0_load64 in_data 0 16 } } }
	training { ap_none {  { training in_data 0 16 } } }
	cmp_i_i100 { ap_none {  { cmp_i_i100 in_data 0 1 } } }
	bias_2_local_1_1_out { ap_vld {  { bias_2_local_1_1_out out_data 1 16 }  { bias_2_local_1_1_out_ap_vld out_vld 1 1 } } }
	bias_2_local_193_out { ap_vld {  { bias_2_local_193_out out_data 1 16 }  { bias_2_local_193_out_ap_vld out_vld 1 1 } } }
	bias_1_local_1_1_out { ap_vld {  { bias_1_local_1_1_out out_data 1 16 }  { bias_1_local_1_1_out_ap_vld out_vld 1 1 } } }
	bias_1_local_191_out { ap_vld {  { bias_1_local_191_out out_data 1 16 }  { bias_1_local_191_out_ap_vld out_vld 1 1 } } }
	w2_local_3_1_out { ap_vld {  { w2_local_3_1_out out_data 1 16 }  { w2_local_3_1_out_ap_vld out_vld 1 1 } } }
	w2_local_2_1_out { ap_vld {  { w2_local_2_1_out out_data 1 16 }  { w2_local_2_1_out_ap_vld out_vld 1 1 } } }
	w2_local_1_1_out { ap_vld {  { w2_local_1_1_out out_data 1 16 }  { w2_local_1_1_out_ap_vld out_vld 1 1 } } }
	w2_local_189_out { ap_vld {  { w2_local_189_out out_data 1 16 }  { w2_local_189_out_ap_vld out_vld 1 1 } } }
	w1_local_3_1_out { ap_vld {  { w1_local_3_1_out out_data 1 16 }  { w1_local_3_1_out_ap_vld out_vld 1 1 } } }
	w1_local_2_1_out { ap_vld {  { w1_local_2_1_out out_data 1 16 }  { w1_local_2_1_out_ap_vld out_vld 1 1 } } }
	w1_local_1_1_out { ap_vld {  { w1_local_1_1_out out_data 1 16 }  { w1_local_1_1_out_ap_vld out_vld 1 1 } } }
	w1_local_187_out { ap_vld {  { w1_local_187_out out_data 1 16 }  { w1_local_187_out_ap_vld out_vld 1 1 } } }
	mux_case_15663_out { ap_vld {  { mux_case_15663_out out_data 1 16 }  { mux_case_15663_out_ap_vld out_vld 1 1 } } }
	mux_case_05559_out { ap_vld {  { mux_case_05559_out out_data 1 16 }  { mux_case_05559_out_ap_vld out_vld 1 1 } } }
	mux_case_15455_out { ap_vld {  { mux_case_15455_out out_data 1 16 }  { mux_case_15455_out_ap_vld out_vld 1 1 } } }
	mux_case_05351_out { ap_vld {  { mux_case_05351_out out_data 1 16 }  { mux_case_05351_out_ap_vld out_vld 1 1 } } }
	mux_case_15247_out { ap_vld {  { mux_case_15247_out out_data 1 16 }  { mux_case_15247_out_ap_vld out_vld 1 1 } } }
	mux_case_05143_out { ap_vld {  { mux_case_05143_out out_data 1 16 }  { mux_case_05143_out_ap_vld out_vld 1 1 } } }
	mux_case_15039_out { ap_vld {  { mux_case_15039_out out_data 1 16 }  { mux_case_15039_out_ap_vld out_vld 1 1 } } }
	mux_case_04935_out { ap_vld {  { mux_case_04935_out out_data 1 16 }  { mux_case_04935_out_ap_vld out_vld 1 1 } } }
	mux_case_14831_out { ap_vld {  { mux_case_14831_out out_data 1 16 }  { mux_case_14831_out_ap_vld out_vld 1 1 } } }
	mux_case_04727_out { ap_vld {  { mux_case_04727_out out_data 1 16 }  { mux_case_04727_out_ap_vld out_vld 1 1 } } }
	mux_case_14623_out { ap_vld {  { mux_case_14623_out out_data 1 16 }  { mux_case_14623_out_ap_vld out_vld 1 1 } } }
	mux_case_04519_out { ap_vld {  { mux_case_04519_out out_data 1 16 }  { mux_case_04519_out_ap_vld out_vld 1 1 } } }
	retval_0_3_0_0_0_load81_out { ap_vld {  { retval_0_3_0_0_0_load81_out out_data 1 16 }  { retval_0_3_0_0_0_load81_out_ap_vld out_vld 1 1 } } }
	retval_0_2_0_0_0_load75_out { ap_vld {  { retval_0_2_0_0_0_load75_out out_data 1 16 }  { retval_0_2_0_0_0_load75_out_ap_vld out_vld 1 1 } } }
	retval_0_1_0_0_0_load69_out { ap_vld {  { retval_0_1_0_0_0_load69_out out_data 1 16 }  { retval_0_1_0_0_0_load69_out_ap_vld out_vld 1 1 } } }
	retval_0_0_0_0_0_load63_out { ap_vld {  { retval_0_0_0_0_0_load63_out out_data 1 16 }  { retval_0_0_0_0_0_load63_out_ap_vld out_vld 1 1 } } }
	retval_0_3_0_0_0_load_out { ap_vld {  { retval_0_3_0_0_0_load_out out_data 1 16 }  { retval_0_3_0_0_0_load_out_ap_vld out_vld 1 1 } } }
	retval_0_2_0_0_0_load_out { ap_vld {  { retval_0_2_0_0_0_load_out out_data 1 16 }  { retval_0_2_0_0_0_load_out_ap_vld out_vld 1 1 } } }
	retval_0_1_0_0_0_load_out { ap_vld {  { retval_0_1_0_0_0_load_out out_data 1 16 }  { retval_0_1_0_0_0_load_out_ap_vld out_vld 1 1 } } }
	retval_0_0_0_0_0_load_out { ap_vld {  { retval_0_0_0_0_0_load_out out_data 1 16 }  { retval_0_0_0_0_0_load_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_out { ap_vld {  { array_back2_weight_changes_out out_data 1 16 }  { array_back2_weight_changes_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_4_out { ap_vld {  { array_back2_weight_changes_4_out out_data 1 16 }  { array_back2_weight_changes_4_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_5_out { ap_vld {  { array_back2_weight_changes_5_out out_data 1 16 }  { array_back2_weight_changes_5_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_6_out { ap_vld {  { array_back2_weight_changes_6_out out_data 1 16 }  { array_back2_weight_changes_6_out_ap_vld out_vld 1 1 } } }
	array_back2_bias_change_out { ap_vld {  { array_back2_bias_change_out out_data 1 16 }  { array_back2_bias_change_out_ap_vld out_vld 1 1 } } }
	array_back2_bias_change_2_out { ap_vld {  { array_back2_bias_change_2_out out_data 1 16 }  { array_back2_bias_change_2_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_out { ap_vld {  { array_back1_weight_changes_out out_data 1 16 }  { array_back1_weight_changes_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_4_out { ap_vld {  { array_back1_weight_changes_4_out out_data 1 16 }  { array_back1_weight_changes_4_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_5_out { ap_vld {  { array_back1_weight_changes_5_out out_data 1 16 }  { array_back1_weight_changes_5_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_6_out { ap_vld {  { array_back1_weight_changes_6_out out_data 1 16 }  { array_back1_weight_changes_6_out_ap_vld out_vld 1 1 } } }
	array_back1_bias_change_out { ap_vld {  { array_back1_bias_change_out out_data 1 16 }  { array_back1_bias_change_out_ap_vld out_vld 1 1 } } }
	array_back1_bias_change_2_out { ap_vld {  { array_back1_bias_change_2_out out_data 1 16 }  { array_back1_bias_change_2_out_ap_vld out_vld 1 1 } } }
}
