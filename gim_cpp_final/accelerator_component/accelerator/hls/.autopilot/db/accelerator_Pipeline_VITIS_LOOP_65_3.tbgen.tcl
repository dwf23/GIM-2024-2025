set moduleName accelerator_Pipeline_VITIS_LOOP_65_3
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
set C_modelName {accelerator_Pipeline_VITIS_LOOP_65_3}
set C_modelType { int 1 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ w2_local_1_reload int 16 regular  }
	{ w2_local_reload int 16 regular  }
	{ w2_local_3_reload int 16 regular  }
	{ w2_local_2_reload int 16 regular  }
	{ w1_local_1_reload int 16 regular  }
	{ w1_local_reload int 16 regular  }
	{ w1_local_3_reload int 16 regular  }
	{ w1_local_2_reload int 16 regular  }
	{ bias_2_local_idx4_promoted151_reload int 16 regular  }
	{ bias_2_local_idx_promoted149_reload int 16 regular  }
	{ bias_1_local_idx1_promoted147_reload int 16 regular  }
	{ bias_1_local_idx_promoted145_reload int 16 regular  }
	{ training int 16 regular  }
	{ cmp_i_i int 1 regular  }
	{ w2_local_3_0_out int 16 regular {pointer 1}  }
	{ w2_local_2_0_out int 16 regular {pointer 1}  }
	{ w2_local_1_0_out int 16 regular {pointer 1}  }
	{ w2_local_0_out int 16 regular {pointer 1}  }
	{ w1_local_3_0_out int 16 regular {pointer 1}  }
	{ w1_local_2_0_out int 16 regular {pointer 1}  }
	{ w1_local_1_0_out int 16 regular {pointer 1}  }
	{ w1_local_0_out int 16 regular {pointer 1}  }
	{ bias_2_local_idx4_val110_out int 16 regular {pointer 1}  }
	{ bias_2_local_idx_val109_out int 16 regular {pointer 1}  }
	{ bias_1_local_idx1_val108_out int 16 regular {pointer 1}  }
	{ bias_1_local_idx_val107_out int 16 regular {pointer 1}  }
	{ output_array_inference_3_out int 16 regular {pointer 1}  }
	{ output_array_inference_2_out int 16 regular {pointer 1}  }
	{ output_array_inference_1_out int 16 regular {pointer 1}  }
	{ output_array_inference_out int 16 regular {pointer 1}  }
	{ output_array_inference_4_out int 16 regular {pointer 1}  }
	{ output_array_inference_5_out int 16 regular {pointer 1}  }
	{ output_array_inference_6_out int 16 regular {pointer 1}  }
	{ output_array_inference_7_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_24_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_25_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_26_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_27_out int 16 regular {pointer 1}  }
	{ array_back2_bias_change_8_out int 16 regular {pointer 1}  }
	{ array_back2_bias_change_9_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_24_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_25_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_26_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_27_out int 16 regular {pointer 1}  }
	{ array_back1_bias_change_8_out int 16 regular {pointer 1}  }
	{ array_back1_bias_change_9_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w2_local_1_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_3_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_2_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_1_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_3_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_2_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2_local_idx4_promoted151_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2_local_idx_promoted149_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1_local_idx1_promoted147_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1_local_idx_promoted145_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "training", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_3_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_2_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_1_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_3_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_2_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_1_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_2_local_idx4_val110_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_2_local_idx_val109_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_idx1_val108_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_idx_val107_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_2_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_4_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_5_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_6_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_7_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_24_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_25_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_26_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_27_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_bias_change_8_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_bias_change_9_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_24_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_25_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_26_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_27_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_bias_change_8_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_bias_change_9_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 85
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w2_local_1_reload sc_in sc_lv 16 signal 0 } 
	{ w2_local_reload sc_in sc_lv 16 signal 1 } 
	{ w2_local_3_reload sc_in sc_lv 16 signal 2 } 
	{ w2_local_2_reload sc_in sc_lv 16 signal 3 } 
	{ w1_local_1_reload sc_in sc_lv 16 signal 4 } 
	{ w1_local_reload sc_in sc_lv 16 signal 5 } 
	{ w1_local_3_reload sc_in sc_lv 16 signal 6 } 
	{ w1_local_2_reload sc_in sc_lv 16 signal 7 } 
	{ bias_2_local_idx4_promoted151_reload sc_in sc_lv 16 signal 8 } 
	{ bias_2_local_idx_promoted149_reload sc_in sc_lv 16 signal 9 } 
	{ bias_1_local_idx1_promoted147_reload sc_in sc_lv 16 signal 10 } 
	{ bias_1_local_idx_promoted145_reload sc_in sc_lv 16 signal 11 } 
	{ training sc_in sc_lv 16 signal 12 } 
	{ cmp_i_i sc_in sc_lv 1 signal 13 } 
	{ w2_local_3_0_out sc_out sc_lv 16 signal 14 } 
	{ w2_local_3_0_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ w2_local_2_0_out sc_out sc_lv 16 signal 15 } 
	{ w2_local_2_0_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ w2_local_1_0_out sc_out sc_lv 16 signal 16 } 
	{ w2_local_1_0_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ w2_local_0_out sc_out sc_lv 16 signal 17 } 
	{ w2_local_0_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ w1_local_3_0_out sc_out sc_lv 16 signal 18 } 
	{ w1_local_3_0_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ w1_local_2_0_out sc_out sc_lv 16 signal 19 } 
	{ w1_local_2_0_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ w1_local_1_0_out sc_out sc_lv 16 signal 20 } 
	{ w1_local_1_0_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ w1_local_0_out sc_out sc_lv 16 signal 21 } 
	{ w1_local_0_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ bias_2_local_idx4_val110_out sc_out sc_lv 16 signal 22 } 
	{ bias_2_local_idx4_val110_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ bias_2_local_idx_val109_out sc_out sc_lv 16 signal 23 } 
	{ bias_2_local_idx_val109_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ bias_1_local_idx1_val108_out sc_out sc_lv 16 signal 24 } 
	{ bias_1_local_idx1_val108_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ bias_1_local_idx_val107_out sc_out sc_lv 16 signal 25 } 
	{ bias_1_local_idx_val107_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ output_array_inference_3_out sc_out sc_lv 16 signal 26 } 
	{ output_array_inference_3_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ output_array_inference_2_out sc_out sc_lv 16 signal 27 } 
	{ output_array_inference_2_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ output_array_inference_1_out sc_out sc_lv 16 signal 28 } 
	{ output_array_inference_1_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ output_array_inference_out sc_out sc_lv 16 signal 29 } 
	{ output_array_inference_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ output_array_inference_4_out sc_out sc_lv 16 signal 30 } 
	{ output_array_inference_4_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ output_array_inference_5_out sc_out sc_lv 16 signal 31 } 
	{ output_array_inference_5_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ output_array_inference_6_out sc_out sc_lv 16 signal 32 } 
	{ output_array_inference_6_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ output_array_inference_7_out sc_out sc_lv 16 signal 33 } 
	{ output_array_inference_7_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ array_back2_weight_changes_24_out sc_out sc_lv 16 signal 34 } 
	{ array_back2_weight_changes_24_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ array_back2_weight_changes_25_out sc_out sc_lv 16 signal 35 } 
	{ array_back2_weight_changes_25_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ array_back2_weight_changes_26_out sc_out sc_lv 16 signal 36 } 
	{ array_back2_weight_changes_26_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ array_back2_weight_changes_27_out sc_out sc_lv 16 signal 37 } 
	{ array_back2_weight_changes_27_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ array_back2_bias_change_8_out sc_out sc_lv 16 signal 38 } 
	{ array_back2_bias_change_8_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ array_back2_bias_change_9_out sc_out sc_lv 16 signal 39 } 
	{ array_back2_bias_change_9_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ array_back1_weight_changes_24_out sc_out sc_lv 16 signal 40 } 
	{ array_back1_weight_changes_24_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ array_back1_weight_changes_25_out sc_out sc_lv 16 signal 41 } 
	{ array_back1_weight_changes_25_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ array_back1_weight_changes_26_out sc_out sc_lv 16 signal 42 } 
	{ array_back1_weight_changes_26_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ array_back1_weight_changes_27_out sc_out sc_lv 16 signal 43 } 
	{ array_back1_weight_changes_27_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ array_back1_bias_change_8_out sc_out sc_lv 16 signal 44 } 
	{ array_back1_bias_change_8_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ array_back1_bias_change_9_out sc_out sc_lv 16 signal 45 } 
	{ array_back1_bias_change_9_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w2_local_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_reload", "role": "default" }} , 
 	{ "name": "w2_local_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_reload", "role": "default" }} , 
 	{ "name": "w2_local_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_3_reload", "role": "default" }} , 
 	{ "name": "w2_local_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_2_reload", "role": "default" }} , 
 	{ "name": "w1_local_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_reload", "role": "default" }} , 
 	{ "name": "w1_local_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_reload", "role": "default" }} , 
 	{ "name": "w1_local_3_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_3_reload", "role": "default" }} , 
 	{ "name": "w1_local_2_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_2_reload", "role": "default" }} , 
 	{ "name": "bias_2_local_idx4_promoted151_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_idx4_promoted151_reload", "role": "default" }} , 
 	{ "name": "bias_2_local_idx_promoted149_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_idx_promoted149_reload", "role": "default" }} , 
 	{ "name": "bias_1_local_idx1_promoted147_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_idx1_promoted147_reload", "role": "default" }} , 
 	{ "name": "bias_1_local_idx_promoted145_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_idx_promoted145_reload", "role": "default" }} , 
 	{ "name": "training", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "training", "role": "default" }} , 
 	{ "name": "cmp_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i", "role": "default" }} , 
 	{ "name": "w2_local_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_3_0_out", "role": "default" }} , 
 	{ "name": "w2_local_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_2_0_out", "role": "default" }} , 
 	{ "name": "w2_local_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_0_out", "role": "default" }} , 
 	{ "name": "w2_local_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_0_out", "role": "default" }} , 
 	{ "name": "w2_local_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_0_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_3_0_out", "role": "default" }} , 
 	{ "name": "w1_local_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_2_0_out", "role": "default" }} , 
 	{ "name": "w1_local_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_0_out", "role": "default" }} , 
 	{ "name": "w1_local_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_0_out", "role": "default" }} , 
 	{ "name": "w1_local_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_0_out", "role": "ap_vld" }} , 
 	{ "name": "bias_2_local_idx4_val110_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_idx4_val110_out", "role": "default" }} , 
 	{ "name": "bias_2_local_idx4_val110_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_idx4_val110_out", "role": "ap_vld" }} , 
 	{ "name": "bias_2_local_idx_val109_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_idx_val109_out", "role": "default" }} , 
 	{ "name": "bias_2_local_idx_val109_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_idx_val109_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_idx1_val108_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_idx1_val108_out", "role": "default" }} , 
 	{ "name": "bias_1_local_idx1_val108_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_idx1_val108_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_idx_val107_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_idx_val107_out", "role": "default" }} , 
 	{ "name": "bias_1_local_idx_val107_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_idx_val107_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_3_out", "role": "default" }} , 
 	{ "name": "output_array_inference_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_3_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_2_out", "role": "default" }} , 
 	{ "name": "output_array_inference_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_2_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_1_out", "role": "default" }} , 
 	{ "name": "output_array_inference_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_1_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_out", "role": "default" }} , 
 	{ "name": "output_array_inference_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_4_out", "role": "default" }} , 
 	{ "name": "output_array_inference_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_4_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_5_out", "role": "default" }} , 
 	{ "name": "output_array_inference_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_5_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_6_out", "role": "default" }} , 
 	{ "name": "output_array_inference_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_6_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_7_out", "role": "default" }} , 
 	{ "name": "output_array_inference_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_7_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_24_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_24_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_25_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_25_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_26_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_26_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_27_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_27_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_bias_change_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_bias_change_8_out", "role": "default" }} , 
 	{ "name": "array_back2_bias_change_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_bias_change_8_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_bias_change_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_bias_change_9_out", "role": "default" }} , 
 	{ "name": "array_back2_bias_change_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_bias_change_9_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_24_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_24_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_25_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_25_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_26_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_26_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_27_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_27_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_bias_change_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_8_out", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_bias_change_8_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_bias_change_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_9_out", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_bias_change_9_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "18", "19", "20", "21", "22"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_65_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83", "EstimateLatencyMax" : "41084",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w2_local_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_local_idx4_promoted151_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_local_idx_promoted149_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_local_idx1_promoted147_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_local_idx_promoted145_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "training", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx4_val110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx_val109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx1_val108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx_val107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_bias_change_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_bias_change_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_bias_change_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_bias_change_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_65_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "85", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state83"], "QuitState" : ["ap_ST_fsm_state83"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state84", "ap_ST_fsm_state85"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "model_array",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "5",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
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
			{"Name" : "biases_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_kmin1_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_kmin1_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_k_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_k_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "training", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_32s_7s_34_1_1_U17", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_32s_7s_34_1_1_U18", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_16s_16s_25_1_1_U19", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_16s_16s_25_1_1_U20", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_16s_16s_25_1_1_U21", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_16s_16s_32_1_1_U22", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_16s_16s_25_1_1_U23", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_16s_16s_32_1_1_U24", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_16s_16s_32_1_1_U25", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mul_16s_16s_32_1_1_U26", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mac_mulsub_16s_6ns_25s_25_4_1_U27", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U28", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U29", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U30", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U31", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_596.mac_mulsub_16s_6ns_25s_25_4_1_U32", "Parent" : "1"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_1_no_dsp_1_U49", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U50", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U51", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U52", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U53", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_Pipeline_VITIS_LOOP_65_3 {
		w2_local_1_reload {Type I LastRead 0 FirstWrite -1}
		w2_local_reload {Type I LastRead 0 FirstWrite -1}
		w2_local_3_reload {Type I LastRead 0 FirstWrite -1}
		w2_local_2_reload {Type I LastRead 0 FirstWrite -1}
		w1_local_1_reload {Type I LastRead 0 FirstWrite -1}
		w1_local_reload {Type I LastRead 0 FirstWrite -1}
		w1_local_3_reload {Type I LastRead 0 FirstWrite -1}
		w1_local_2_reload {Type I LastRead 0 FirstWrite -1}
		bias_2_local_idx4_promoted151_reload {Type I LastRead 0 FirstWrite -1}
		bias_2_local_idx_promoted149_reload {Type I LastRead 0 FirstWrite -1}
		bias_1_local_idx1_promoted147_reload {Type I LastRead 0 FirstWrite -1}
		bias_1_local_idx_promoted145_reload {Type I LastRead 0 FirstWrite -1}
		training {Type I LastRead 0 FirstWrite -1}
		cmp_i_i {Type I LastRead 0 FirstWrite -1}
		w2_local_3_0_out {Type O LastRead -1 FirstWrite 2}
		w2_local_2_0_out {Type O LastRead -1 FirstWrite 2}
		w2_local_1_0_out {Type O LastRead -1 FirstWrite 2}
		w2_local_0_out {Type O LastRead -1 FirstWrite 2}
		w1_local_3_0_out {Type O LastRead -1 FirstWrite 2}
		w1_local_2_0_out {Type O LastRead -1 FirstWrite 2}
		w1_local_1_0_out {Type O LastRead -1 FirstWrite 2}
		w1_local_0_out {Type O LastRead -1 FirstWrite 2}
		bias_2_local_idx4_val110_out {Type O LastRead -1 FirstWrite 2}
		bias_2_local_idx_val109_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_idx1_val108_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_idx_val107_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_3_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_2_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_1_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_4_out {Type O LastRead -1 FirstWrite 83}
		output_array_inference_5_out {Type O LastRead -1 FirstWrite 83}
		output_array_inference_6_out {Type O LastRead -1 FirstWrite 83}
		output_array_inference_7_out {Type O LastRead -1 FirstWrite 83}
		array_back2_weight_changes_24_out {Type O LastRead -1 FirstWrite 83}
		array_back2_weight_changes_25_out {Type O LastRead -1 FirstWrite 83}
		array_back2_weight_changes_26_out {Type O LastRead -1 FirstWrite 83}
		array_back2_weight_changes_27_out {Type O LastRead -1 FirstWrite 83}
		array_back2_bias_change_8_out {Type O LastRead -1 FirstWrite 83}
		array_back2_bias_change_9_out {Type O LastRead -1 FirstWrite 83}
		array_back1_weight_changes_24_out {Type O LastRead -1 FirstWrite 83}
		array_back1_weight_changes_25_out {Type O LastRead -1 FirstWrite 83}
		array_back1_weight_changes_26_out {Type O LastRead -1 FirstWrite 83}
		array_back1_weight_changes_27_out {Type O LastRead -1 FirstWrite 83}
		array_back1_bias_change_8_out {Type O LastRead -1 FirstWrite 83}
		array_back1_bias_change_9_out {Type O LastRead -1 FirstWrite 83}}
	model_array {
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 1 FirstWrite -1}
		p_read31 {Type I LastRead 1 FirstWrite -1}
		biases_0_0_val {Type I LastRead 2 FirstWrite -1}
		biases_0_1_val {Type I LastRead 4 FirstWrite -1}
		output_kmin1_0_0_val {Type I LastRead 0 FirstWrite -1}
		output_kmin1_0_1_val {Type I LastRead 0 FirstWrite -1}
		delta_k_0_0_val {Type I LastRead 0 FirstWrite -1}
		delta_k_0_1_val {Type I LastRead 1 FirstWrite -1}
		training {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "83", "Max" : "41084"}
	, {"Name" : "Interval", "Min" : "83", "Max" : "41084"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w2_local_1_reload { ap_none {  { w2_local_1_reload in_data 0 16 } } }
	w2_local_reload { ap_none {  { w2_local_reload in_data 0 16 } } }
	w2_local_3_reload { ap_none {  { w2_local_3_reload in_data 0 16 } } }
	w2_local_2_reload { ap_none {  { w2_local_2_reload in_data 0 16 } } }
	w1_local_1_reload { ap_none {  { w1_local_1_reload in_data 0 16 } } }
	w1_local_reload { ap_none {  { w1_local_reload in_data 0 16 } } }
	w1_local_3_reload { ap_none {  { w1_local_3_reload in_data 0 16 } } }
	w1_local_2_reload { ap_none {  { w1_local_2_reload in_data 0 16 } } }
	bias_2_local_idx4_promoted151_reload { ap_none {  { bias_2_local_idx4_promoted151_reload in_data 0 16 } } }
	bias_2_local_idx_promoted149_reload { ap_none {  { bias_2_local_idx_promoted149_reload in_data 0 16 } } }
	bias_1_local_idx1_promoted147_reload { ap_none {  { bias_1_local_idx1_promoted147_reload in_data 0 16 } } }
	bias_1_local_idx_promoted145_reload { ap_none {  { bias_1_local_idx_promoted145_reload in_data 0 16 } } }
	training { ap_none {  { training in_data 0 16 } } }
	cmp_i_i { ap_none {  { cmp_i_i in_data 0 1 } } }
	w2_local_3_0_out { ap_vld {  { w2_local_3_0_out out_data 1 16 }  { w2_local_3_0_out_ap_vld out_vld 1 1 } } }
	w2_local_2_0_out { ap_vld {  { w2_local_2_0_out out_data 1 16 }  { w2_local_2_0_out_ap_vld out_vld 1 1 } } }
	w2_local_1_0_out { ap_vld {  { w2_local_1_0_out out_data 1 16 }  { w2_local_1_0_out_ap_vld out_vld 1 1 } } }
	w2_local_0_out { ap_vld {  { w2_local_0_out out_data 1 16 }  { w2_local_0_out_ap_vld out_vld 1 1 } } }
	w1_local_3_0_out { ap_vld {  { w1_local_3_0_out out_data 1 16 }  { w1_local_3_0_out_ap_vld out_vld 1 1 } } }
	w1_local_2_0_out { ap_vld {  { w1_local_2_0_out out_data 1 16 }  { w1_local_2_0_out_ap_vld out_vld 1 1 } } }
	w1_local_1_0_out { ap_vld {  { w1_local_1_0_out out_data 1 16 }  { w1_local_1_0_out_ap_vld out_vld 1 1 } } }
	w1_local_0_out { ap_vld {  { w1_local_0_out out_data 1 16 }  { w1_local_0_out_ap_vld out_vld 1 1 } } }
	bias_2_local_idx4_val110_out { ap_vld {  { bias_2_local_idx4_val110_out out_data 1 16 }  { bias_2_local_idx4_val110_out_ap_vld out_vld 1 1 } } }
	bias_2_local_idx_val109_out { ap_vld {  { bias_2_local_idx_val109_out out_data 1 16 }  { bias_2_local_idx_val109_out_ap_vld out_vld 1 1 } } }
	bias_1_local_idx1_val108_out { ap_vld {  { bias_1_local_idx1_val108_out out_data 1 16 }  { bias_1_local_idx1_val108_out_ap_vld out_vld 1 1 } } }
	bias_1_local_idx_val107_out { ap_vld {  { bias_1_local_idx_val107_out out_data 1 16 }  { bias_1_local_idx_val107_out_ap_vld out_vld 1 1 } } }
	output_array_inference_3_out { ap_vld {  { output_array_inference_3_out out_data 1 16 }  { output_array_inference_3_out_ap_vld out_vld 1 1 } } }
	output_array_inference_2_out { ap_vld {  { output_array_inference_2_out out_data 1 16 }  { output_array_inference_2_out_ap_vld out_vld 1 1 } } }
	output_array_inference_1_out { ap_vld {  { output_array_inference_1_out out_data 1 16 }  { output_array_inference_1_out_ap_vld out_vld 1 1 } } }
	output_array_inference_out { ap_vld {  { output_array_inference_out out_data 1 16 }  { output_array_inference_out_ap_vld out_vld 1 1 } } }
	output_array_inference_4_out { ap_vld {  { output_array_inference_4_out out_data 1 16 }  { output_array_inference_4_out_ap_vld out_vld 1 1 } } }
	output_array_inference_5_out { ap_vld {  { output_array_inference_5_out out_data 1 16 }  { output_array_inference_5_out_ap_vld out_vld 1 1 } } }
	output_array_inference_6_out { ap_vld {  { output_array_inference_6_out out_data 1 16 }  { output_array_inference_6_out_ap_vld out_vld 1 1 } } }
	output_array_inference_7_out { ap_vld {  { output_array_inference_7_out out_data 1 16 }  { output_array_inference_7_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_24_out { ap_vld {  { array_back2_weight_changes_24_out out_data 1 16 }  { array_back2_weight_changes_24_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_25_out { ap_vld {  { array_back2_weight_changes_25_out out_data 1 16 }  { array_back2_weight_changes_25_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_26_out { ap_vld {  { array_back2_weight_changes_26_out out_data 1 16 }  { array_back2_weight_changes_26_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_27_out { ap_vld {  { array_back2_weight_changes_27_out out_data 1 16 }  { array_back2_weight_changes_27_out_ap_vld out_vld 1 1 } } }
	array_back2_bias_change_8_out { ap_vld {  { array_back2_bias_change_8_out out_data 1 16 }  { array_back2_bias_change_8_out_ap_vld out_vld 1 1 } } }
	array_back2_bias_change_9_out { ap_vld {  { array_back2_bias_change_9_out out_data 1 16 }  { array_back2_bias_change_9_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_24_out { ap_vld {  { array_back1_weight_changes_24_out out_data 1 16 }  { array_back1_weight_changes_24_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_25_out { ap_vld {  { array_back1_weight_changes_25_out out_data 1 16 }  { array_back1_weight_changes_25_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_26_out { ap_vld {  { array_back1_weight_changes_26_out out_data 1 16 }  { array_back1_weight_changes_26_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_27_out { ap_vld {  { array_back1_weight_changes_27_out out_data 1 16 }  { array_back1_weight_changes_27_out_ap_vld out_vld 1 1 } } }
	array_back1_bias_change_8_out { ap_vld {  { array_back1_bias_change_8_out out_data 1 16 }  { array_back1_bias_change_8_out_ap_vld out_vld 1 1 } } }
	array_back1_bias_change_9_out { ap_vld {  { array_back1_bias_change_9_out out_data 1 16 }  { array_back1_bias_change_9_out_ap_vld out_vld 1 1 } } }
}
