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
set C_modelArgList {
	{ bias_2_local_1_2 int 16 regular  }
	{ bias_2_local_0_2 int 16 regular  }
	{ bias_1_local_1_2 int 16 regular  }
	{ bias_1_local_0_2 int 16 regular  }
	{ w2_local_1_1_2 int 16 regular  }
	{ w2_local_1_0_2 int 16 regular  }
	{ w2_local_0_1_2 int 16 regular  }
	{ w2_local_0_0_2 int 16 regular  }
	{ w1_local_1_1_2 int 16 regular  }
	{ w1_local_1_0_2 int 16 regular  }
	{ w1_local_0_1_2 int 16 regular  }
	{ w1_local_0_0_2 int 16 regular  }
	{ output_array_inference_3_0 int 16 regular  }
	{ output_array_inference_2_0 int 16 regular  }
	{ output_array_inference_1_0 int 16 regular  }
	{ output_array_inference_0_0 int 16 regular  }
	{ training int 16 regular  }
	{ cmp_i_i116 int 1 regular  }
	{ bias_2_local_1_3_out int 16 regular {pointer 1}  }
	{ bias_2_local_0_3_out int 16 regular {pointer 1}  }
	{ bias_1_local_1_3_out int 16 regular {pointer 1}  }
	{ bias_1_local_0_3_out int 16 regular {pointer 1}  }
	{ w2_local_1_1_3_out int 16 regular {pointer 1}  }
	{ w2_local_1_0_3_out int 16 regular {pointer 1}  }
	{ w2_local_0_1_3_out int 16 regular {pointer 1}  }
	{ w2_local_0_0_3_out int 16 regular {pointer 1}  }
	{ w1_local_1_1_3_out int 16 regular {pointer 1}  }
	{ w1_local_1_0_3_out int 16 regular {pointer 1}  }
	{ w1_local_0_1_3_out int 16 regular {pointer 1}  }
	{ w1_local_0_0_3_out int 16 regular {pointer 1}  }
	{ output_array_inference_3_1_out int 16 regular {pointer 1}  }
	{ output_array_inference_2_1_out int 16 regular {pointer 1}  }
	{ output_array_inference_1_1_out int 16 regular {pointer 1}  }
	{ output_array_inference_0_1_out int 16 regular {pointer 1}  }
	{ select_ln96_1_out int 16 regular {pointer 1}  }
	{ select_ln96_3_out int 16 regular {pointer 1}  }
	{ select_ln96_5_out int 16 regular {pointer 1}  }
	{ select_ln96_7_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_0_0_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_0_1_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_1_0_out int 16 regular {pointer 1}  }
	{ array_back2_weight_changes_1_1_out int 16 regular {pointer 1}  }
	{ array_back2_bias_change_0_out int 16 regular {pointer 1}  }
	{ array_back2_bias_change_1_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_0_0_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_0_1_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_1_0_out int 16 regular {pointer 1}  }
	{ array_back1_weight_changes_1_1_out int 16 regular {pointer 1}  }
	{ array_back1_bias_change_0_out int 16 regular {pointer 1}  }
	{ array_back1_bias_change_1_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "bias_2_local_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2_local_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1_local_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1_local_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_1_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_1_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_0_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_0_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_1_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_1_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_0_1_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_0_0_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_array_inference_3_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_array_inference_2_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_array_inference_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_array_inference_0_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "training", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i116", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2_local_1_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_2_local_0_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_1_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_0_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_1_1_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_1_0_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_0_1_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_0_0_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_1_1_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_1_0_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_0_1_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_0_0_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_3_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_2_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_1_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_inference_0_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln96_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln96_3_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln96_5_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "select_ln96_7_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_0_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_0_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_1_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_weight_changes_1_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_bias_change_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back2_bias_change_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_0_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_0_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_1_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_weight_changes_1_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_bias_change_0_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_bias_change_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 89
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bias_2_local_1_2 sc_in sc_lv 16 signal 0 } 
	{ bias_2_local_0_2 sc_in sc_lv 16 signal 1 } 
	{ bias_1_local_1_2 sc_in sc_lv 16 signal 2 } 
	{ bias_1_local_0_2 sc_in sc_lv 16 signal 3 } 
	{ w2_local_1_1_2 sc_in sc_lv 16 signal 4 } 
	{ w2_local_1_0_2 sc_in sc_lv 16 signal 5 } 
	{ w2_local_0_1_2 sc_in sc_lv 16 signal 6 } 
	{ w2_local_0_0_2 sc_in sc_lv 16 signal 7 } 
	{ w1_local_1_1_2 sc_in sc_lv 16 signal 8 } 
	{ w1_local_1_0_2 sc_in sc_lv 16 signal 9 } 
	{ w1_local_0_1_2 sc_in sc_lv 16 signal 10 } 
	{ w1_local_0_0_2 sc_in sc_lv 16 signal 11 } 
	{ output_array_inference_3_0 sc_in sc_lv 16 signal 12 } 
	{ output_array_inference_2_0 sc_in sc_lv 16 signal 13 } 
	{ output_array_inference_1_0 sc_in sc_lv 16 signal 14 } 
	{ output_array_inference_0_0 sc_in sc_lv 16 signal 15 } 
	{ training sc_in sc_lv 16 signal 16 } 
	{ cmp_i_i116 sc_in sc_lv 1 signal 17 } 
	{ bias_2_local_1_3_out sc_out sc_lv 16 signal 18 } 
	{ bias_2_local_1_3_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ bias_2_local_0_3_out sc_out sc_lv 16 signal 19 } 
	{ bias_2_local_0_3_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ bias_1_local_1_3_out sc_out sc_lv 16 signal 20 } 
	{ bias_1_local_1_3_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ bias_1_local_0_3_out sc_out sc_lv 16 signal 21 } 
	{ bias_1_local_0_3_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ w2_local_1_1_3_out sc_out sc_lv 16 signal 22 } 
	{ w2_local_1_1_3_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ w2_local_1_0_3_out sc_out sc_lv 16 signal 23 } 
	{ w2_local_1_0_3_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ w2_local_0_1_3_out sc_out sc_lv 16 signal 24 } 
	{ w2_local_0_1_3_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ w2_local_0_0_3_out sc_out sc_lv 16 signal 25 } 
	{ w2_local_0_0_3_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ w1_local_1_1_3_out sc_out sc_lv 16 signal 26 } 
	{ w1_local_1_1_3_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ w1_local_1_0_3_out sc_out sc_lv 16 signal 27 } 
	{ w1_local_1_0_3_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ w1_local_0_1_3_out sc_out sc_lv 16 signal 28 } 
	{ w1_local_0_1_3_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ w1_local_0_0_3_out sc_out sc_lv 16 signal 29 } 
	{ w1_local_0_0_3_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ output_array_inference_3_1_out sc_out sc_lv 16 signal 30 } 
	{ output_array_inference_3_1_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ output_array_inference_2_1_out sc_out sc_lv 16 signal 31 } 
	{ output_array_inference_2_1_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ output_array_inference_1_1_out sc_out sc_lv 16 signal 32 } 
	{ output_array_inference_1_1_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ output_array_inference_0_1_out sc_out sc_lv 16 signal 33 } 
	{ output_array_inference_0_1_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ select_ln96_1_out sc_out sc_lv 16 signal 34 } 
	{ select_ln96_1_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ select_ln96_3_out sc_out sc_lv 16 signal 35 } 
	{ select_ln96_3_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ select_ln96_5_out sc_out sc_lv 16 signal 36 } 
	{ select_ln96_5_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ select_ln96_7_out sc_out sc_lv 16 signal 37 } 
	{ select_ln96_7_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ array_back2_weight_changes_0_0_out sc_out sc_lv 16 signal 38 } 
	{ array_back2_weight_changes_0_0_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ array_back2_weight_changes_0_1_out sc_out sc_lv 16 signal 39 } 
	{ array_back2_weight_changes_0_1_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ array_back2_weight_changes_1_0_out sc_out sc_lv 16 signal 40 } 
	{ array_back2_weight_changes_1_0_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ array_back2_weight_changes_1_1_out sc_out sc_lv 16 signal 41 } 
	{ array_back2_weight_changes_1_1_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ array_back2_bias_change_0_out sc_out sc_lv 16 signal 42 } 
	{ array_back2_bias_change_0_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ array_back2_bias_change_1_out sc_out sc_lv 16 signal 43 } 
	{ array_back2_bias_change_1_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ array_back1_weight_changes_0_0_out sc_out sc_lv 16 signal 44 } 
	{ array_back1_weight_changes_0_0_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ array_back1_weight_changes_0_1_out sc_out sc_lv 16 signal 45 } 
	{ array_back1_weight_changes_0_1_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ array_back1_weight_changes_1_0_out sc_out sc_lv 16 signal 46 } 
	{ array_back1_weight_changes_1_0_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ array_back1_weight_changes_1_1_out sc_out sc_lv 16 signal 47 } 
	{ array_back1_weight_changes_1_1_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ array_back1_bias_change_0_out sc_out sc_lv 16 signal 48 } 
	{ array_back1_bias_change_0_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ array_back1_bias_change_1_out sc_out sc_lv 16 signal 49 } 
	{ array_back1_bias_change_1_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bias_2_local_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_1_2", "role": "default" }} , 
 	{ "name": "bias_2_local_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_0_2", "role": "default" }} , 
 	{ "name": "bias_1_local_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_1_2", "role": "default" }} , 
 	{ "name": "bias_1_local_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_0_2", "role": "default" }} , 
 	{ "name": "w2_local_1_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_1_2", "role": "default" }} , 
 	{ "name": "w2_local_1_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_0_2", "role": "default" }} , 
 	{ "name": "w2_local_0_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_0_1_2", "role": "default" }} , 
 	{ "name": "w2_local_0_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_0_0_2", "role": "default" }} , 
 	{ "name": "w1_local_1_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_1_2", "role": "default" }} , 
 	{ "name": "w1_local_1_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_0_2", "role": "default" }} , 
 	{ "name": "w1_local_0_1_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_0_1_2", "role": "default" }} , 
 	{ "name": "w1_local_0_0_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_0_0_2", "role": "default" }} , 
 	{ "name": "output_array_inference_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_3_0", "role": "default" }} , 
 	{ "name": "output_array_inference_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_2_0", "role": "default" }} , 
 	{ "name": "output_array_inference_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_1_0", "role": "default" }} , 
 	{ "name": "output_array_inference_0_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_0_0", "role": "default" }} , 
 	{ "name": "training", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "training", "role": "default" }} , 
 	{ "name": "cmp_i_i116", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i116", "role": "default" }} , 
 	{ "name": "bias_2_local_1_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_1_3_out", "role": "default" }} , 
 	{ "name": "bias_2_local_1_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_1_3_out", "role": "ap_vld" }} , 
 	{ "name": "bias_2_local_0_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_0_3_out", "role": "default" }} , 
 	{ "name": "bias_2_local_0_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_0_3_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_1_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_1_3_out", "role": "default" }} , 
 	{ "name": "bias_1_local_1_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_1_3_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_0_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_0_3_out", "role": "default" }} , 
 	{ "name": "bias_1_local_0_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_0_3_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_1_1_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_1_3_out", "role": "default" }} , 
 	{ "name": "w2_local_1_1_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_1_1_3_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_1_0_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_0_3_out", "role": "default" }} , 
 	{ "name": "w2_local_1_0_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_1_0_3_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_0_1_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_0_1_3_out", "role": "default" }} , 
 	{ "name": "w2_local_0_1_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_0_1_3_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_0_0_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_0_0_3_out", "role": "default" }} , 
 	{ "name": "w2_local_0_0_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_0_0_3_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_1_1_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_1_3_out", "role": "default" }} , 
 	{ "name": "w1_local_1_1_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_1_1_3_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_1_0_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_0_3_out", "role": "default" }} , 
 	{ "name": "w1_local_1_0_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_1_0_3_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_0_1_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_0_1_3_out", "role": "default" }} , 
 	{ "name": "w1_local_0_1_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_0_1_3_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_0_0_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_0_0_3_out", "role": "default" }} , 
 	{ "name": "w1_local_0_0_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_0_0_3_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_3_1_out", "role": "default" }} , 
 	{ "name": "output_array_inference_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_2_1_out", "role": "default" }} , 
 	{ "name": "output_array_inference_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_1_1_out", "role": "default" }} , 
 	{ "name": "output_array_inference_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_inference_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_inference_0_1_out", "role": "default" }} , 
 	{ "name": "output_array_inference_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_inference_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln96_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "select_ln96_1_out", "role": "default" }} , 
 	{ "name": "select_ln96_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln96_1_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln96_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "select_ln96_3_out", "role": "default" }} , 
 	{ "name": "select_ln96_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln96_3_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln96_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "select_ln96_5_out", "role": "default" }} , 
 	{ "name": "select_ln96_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln96_5_out", "role": "ap_vld" }} , 
 	{ "name": "select_ln96_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "select_ln96_7_out", "role": "default" }} , 
 	{ "name": "select_ln96_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "select_ln96_7_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_0_0_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_0_0_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_0_1_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_1_0_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_weight_changes_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_weight_changes_1_1_out", "role": "default" }} , 
 	{ "name": "array_back2_weight_changes_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_weight_changes_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_bias_change_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_bias_change_0_out", "role": "default" }} , 
 	{ "name": "array_back2_bias_change_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_bias_change_0_out", "role": "ap_vld" }} , 
 	{ "name": "array_back2_bias_change_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back2_bias_change_1_out", "role": "default" }} , 
 	{ "name": "array_back2_bias_change_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back2_bias_change_1_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_0_0_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_0_0_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_0_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_0_1_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_0_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_0_1_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_1_0_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_weight_changes_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_weight_changes_1_1_out", "role": "default" }} , 
 	{ "name": "array_back1_weight_changes_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_weight_changes_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_bias_change_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_0_out", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_bias_change_0_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_bias_change_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_1_out", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_bias_change_1_out", "role": "ap_vld" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "24", "25", "26", "27", "28"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_69_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26", "EstimateLatencyMax" : "127",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "bias_2_local_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_local_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_local_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_local_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_1_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_1_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_0_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_0_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_1_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_1_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_0_1_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_0_0_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_array_inference_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_array_inference_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_array_inference_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_array_inference_0_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "training", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i116", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_local_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_1_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_1_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_0_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_0_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_1_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_1_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_0_1_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_0_0_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_inference_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln96_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln96_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln96_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "select_ln96_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_weight_changes_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_bias_change_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back2_bias_change_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_0_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_weight_changes_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_bias_change_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_bias_change_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_69_4", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage24", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage24_subdone", "PostState" : ["ap_ST_fsm_state28", "ap_ST_fsm_state29"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "model_array",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "4", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_kmin1_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_kmin1_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_k_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_k_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "training_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_32s_10s_40_1_0_U17", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_32s_10s_40_1_0_U18", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_32s_10s_40_1_0_U19", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_32s_10s_40_1_0_U20", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_16s_32_1_0_U21", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_16s_32_1_0_U22", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_16s_32_1_0_U23", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_16s_32_1_0_U24", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_16s_28_1_0_U25", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_16s_28_1_0_U26", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_16s_28_1_0_U27", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_16s_28_1_0_U28", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_10ns_26_1_0_U29", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_10ns_26_1_0_U30", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_10ns_26_1_0_U31", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mul_16s_10ns_26_1_0_U32", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mac_muladd_16s_16s_28ns_28_4_0_U33", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mac_muladd_16s_16s_28ns_28_4_0_U34", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mac_mulsub_16s_9ns_28s_28_4_0_U35", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mac_muladd_16s_16s_28ns_28_4_0_U36", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mac_muladd_16s_16s_28ns_28_4_0_U37", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_640.mac_mulsub_16s_9ns_28s_28_4_0_U38", "Parent" : "1"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U56", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_4_2_13_1_1_U57", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_4_2_13_1_1_U58", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_4_2_13_1_1_U59", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17s_10ns_27_1_1_U60", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_Pipeline_VITIS_LOOP_69_4 {
		bias_2_local_1_2 {Type I LastRead 0 FirstWrite -1}
		bias_2_local_0_2 {Type I LastRead 0 FirstWrite -1}
		bias_1_local_1_2 {Type I LastRead 0 FirstWrite -1}
		bias_1_local_0_2 {Type I LastRead 0 FirstWrite -1}
		w2_local_1_1_2 {Type I LastRead 0 FirstWrite -1}
		w2_local_1_0_2 {Type I LastRead 0 FirstWrite -1}
		w2_local_0_1_2 {Type I LastRead 0 FirstWrite -1}
		w2_local_0_0_2 {Type I LastRead 0 FirstWrite -1}
		w1_local_1_1_2 {Type I LastRead 0 FirstWrite -1}
		w1_local_1_0_2 {Type I LastRead 0 FirstWrite -1}
		w1_local_0_1_2 {Type I LastRead 0 FirstWrite -1}
		w1_local_0_0_2 {Type I LastRead 0 FirstWrite -1}
		output_array_inference_3_0 {Type I LastRead 0 FirstWrite -1}
		output_array_inference_2_0 {Type I LastRead 0 FirstWrite -1}
		output_array_inference_1_0 {Type I LastRead 0 FirstWrite -1}
		output_array_inference_0_0 {Type I LastRead 0 FirstWrite -1}
		training {Type I LastRead 0 FirstWrite -1}
		cmp_i_i116 {Type I LastRead 0 FirstWrite -1}
		bias_2_local_1_3_out {Type O LastRead -1 FirstWrite 2}
		bias_2_local_0_3_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_1_3_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_0_3_out {Type O LastRead -1 FirstWrite 2}
		w2_local_1_1_3_out {Type O LastRead -1 FirstWrite 2}
		w2_local_1_0_3_out {Type O LastRead -1 FirstWrite 2}
		w2_local_0_1_3_out {Type O LastRead -1 FirstWrite 2}
		w2_local_0_0_3_out {Type O LastRead -1 FirstWrite 2}
		w1_local_1_1_3_out {Type O LastRead -1 FirstWrite 2}
		w1_local_1_0_3_out {Type O LastRead -1 FirstWrite 2}
		w1_local_0_1_3_out {Type O LastRead -1 FirstWrite 2}
		w1_local_0_0_3_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_3_1_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_2_1_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_1_1_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_0_1_out {Type O LastRead -1 FirstWrite 2}
		select_ln96_1_out {Type O LastRead -1 FirstWrite 26}
		select_ln96_3_out {Type O LastRead -1 FirstWrite 26}
		select_ln96_5_out {Type O LastRead -1 FirstWrite 26}
		select_ln96_7_out {Type O LastRead -1 FirstWrite 26}
		array_back2_weight_changes_0_0_out {Type O LastRead -1 FirstWrite 26}
		array_back2_weight_changes_0_1_out {Type O LastRead -1 FirstWrite 26}
		array_back2_weight_changes_1_0_out {Type O LastRead -1 FirstWrite 26}
		array_back2_weight_changes_1_1_out {Type O LastRead -1 FirstWrite 26}
		array_back2_bias_change_0_out {Type O LastRead -1 FirstWrite 26}
		array_back2_bias_change_1_out {Type O LastRead -1 FirstWrite 26}
		array_back1_weight_changes_0_0_out {Type O LastRead -1 FirstWrite 26}
		array_back1_weight_changes_0_1_out {Type O LastRead -1 FirstWrite 26}
		array_back1_weight_changes_1_0_out {Type O LastRead -1 FirstWrite 26}
		array_back1_weight_changes_1_1_out {Type O LastRead -1 FirstWrite 26}
		array_back1_bias_change_0_out {Type O LastRead -1 FirstWrite 26}
		array_back1_bias_change_1_out {Type O LastRead -1 FirstWrite 26}}
	model_array {
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		biases_0_0_val {Type I LastRead 0 FirstWrite -1}
		biases_0_1_val {Type I LastRead 0 FirstWrite -1}
		output_kmin1_0_0_val {Type I LastRead 0 FirstWrite -1}
		output_kmin1_0_1_val {Type I LastRead 0 FirstWrite -1}
		delta_k_0_0_val {Type I LastRead 0 FirstWrite -1}
		delta_k_0_1_val {Type I LastRead 0 FirstWrite -1}
		training_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26", "Max" : "127"}
	, {"Name" : "Interval", "Min" : "26", "Max" : "127"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	bias_2_local_1_2 { ap_none {  { bias_2_local_1_2 in_data 0 16 } } }
	bias_2_local_0_2 { ap_none {  { bias_2_local_0_2 in_data 0 16 } } }
	bias_1_local_1_2 { ap_none {  { bias_1_local_1_2 in_data 0 16 } } }
	bias_1_local_0_2 { ap_none {  { bias_1_local_0_2 in_data 0 16 } } }
	w2_local_1_1_2 { ap_none {  { w2_local_1_1_2 in_data 0 16 } } }
	w2_local_1_0_2 { ap_none {  { w2_local_1_0_2 in_data 0 16 } } }
	w2_local_0_1_2 { ap_none {  { w2_local_0_1_2 in_data 0 16 } } }
	w2_local_0_0_2 { ap_none {  { w2_local_0_0_2 in_data 0 16 } } }
	w1_local_1_1_2 { ap_none {  { w1_local_1_1_2 in_data 0 16 } } }
	w1_local_1_0_2 { ap_none {  { w1_local_1_0_2 in_data 0 16 } } }
	w1_local_0_1_2 { ap_none {  { w1_local_0_1_2 in_data 0 16 } } }
	w1_local_0_0_2 { ap_none {  { w1_local_0_0_2 in_data 0 16 } } }
	output_array_inference_3_0 { ap_none {  { output_array_inference_3_0 in_data 0 16 } } }
	output_array_inference_2_0 { ap_none {  { output_array_inference_2_0 in_data 0 16 } } }
	output_array_inference_1_0 { ap_none {  { output_array_inference_1_0 in_data 0 16 } } }
	output_array_inference_0_0 { ap_none {  { output_array_inference_0_0 in_data 0 16 } } }
	training { ap_none {  { training in_data 0 16 } } }
	cmp_i_i116 { ap_none {  { cmp_i_i116 in_data 0 1 } } }
	bias_2_local_1_3_out { ap_vld {  { bias_2_local_1_3_out out_data 1 16 }  { bias_2_local_1_3_out_ap_vld out_vld 1 1 } } }
	bias_2_local_0_3_out { ap_vld {  { bias_2_local_0_3_out out_data 1 16 }  { bias_2_local_0_3_out_ap_vld out_vld 1 1 } } }
	bias_1_local_1_3_out { ap_vld {  { bias_1_local_1_3_out out_data 1 16 }  { bias_1_local_1_3_out_ap_vld out_vld 1 1 } } }
	bias_1_local_0_3_out { ap_vld {  { bias_1_local_0_3_out out_data 1 16 }  { bias_1_local_0_3_out_ap_vld out_vld 1 1 } } }
	w2_local_1_1_3_out { ap_vld {  { w2_local_1_1_3_out out_data 1 16 }  { w2_local_1_1_3_out_ap_vld out_vld 1 1 } } }
	w2_local_1_0_3_out { ap_vld {  { w2_local_1_0_3_out out_data 1 16 }  { w2_local_1_0_3_out_ap_vld out_vld 1 1 } } }
	w2_local_0_1_3_out { ap_vld {  { w2_local_0_1_3_out out_data 1 16 }  { w2_local_0_1_3_out_ap_vld out_vld 1 1 } } }
	w2_local_0_0_3_out { ap_vld {  { w2_local_0_0_3_out out_data 1 16 }  { w2_local_0_0_3_out_ap_vld out_vld 1 1 } } }
	w1_local_1_1_3_out { ap_vld {  { w1_local_1_1_3_out out_data 1 16 }  { w1_local_1_1_3_out_ap_vld out_vld 1 1 } } }
	w1_local_1_0_3_out { ap_vld {  { w1_local_1_0_3_out out_data 1 16 }  { w1_local_1_0_3_out_ap_vld out_vld 1 1 } } }
	w1_local_0_1_3_out { ap_vld {  { w1_local_0_1_3_out out_data 1 16 }  { w1_local_0_1_3_out_ap_vld out_vld 1 1 } } }
	w1_local_0_0_3_out { ap_vld {  { w1_local_0_0_3_out out_data 1 16 }  { w1_local_0_0_3_out_ap_vld out_vld 1 1 } } }
	output_array_inference_3_1_out { ap_vld {  { output_array_inference_3_1_out out_data 1 16 }  { output_array_inference_3_1_out_ap_vld out_vld 1 1 } } }
	output_array_inference_2_1_out { ap_vld {  { output_array_inference_2_1_out out_data 1 16 }  { output_array_inference_2_1_out_ap_vld out_vld 1 1 } } }
	output_array_inference_1_1_out { ap_vld {  { output_array_inference_1_1_out out_data 1 16 }  { output_array_inference_1_1_out_ap_vld out_vld 1 1 } } }
	output_array_inference_0_1_out { ap_vld {  { output_array_inference_0_1_out out_data 1 16 }  { output_array_inference_0_1_out_ap_vld out_vld 1 1 } } }
	select_ln96_1_out { ap_vld {  { select_ln96_1_out out_data 1 16 }  { select_ln96_1_out_ap_vld out_vld 1 1 } } }
	select_ln96_3_out { ap_vld {  { select_ln96_3_out out_data 1 16 }  { select_ln96_3_out_ap_vld out_vld 1 1 } } }
	select_ln96_5_out { ap_vld {  { select_ln96_5_out out_data 1 16 }  { select_ln96_5_out_ap_vld out_vld 1 1 } } }
	select_ln96_7_out { ap_vld {  { select_ln96_7_out out_data 1 16 }  { select_ln96_7_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_0_0_out { ap_vld {  { array_back2_weight_changes_0_0_out out_data 1 16 }  { array_back2_weight_changes_0_0_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_0_1_out { ap_vld {  { array_back2_weight_changes_0_1_out out_data 1 16 }  { array_back2_weight_changes_0_1_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_1_0_out { ap_vld {  { array_back2_weight_changes_1_0_out out_data 1 16 }  { array_back2_weight_changes_1_0_out_ap_vld out_vld 1 1 } } }
	array_back2_weight_changes_1_1_out { ap_vld {  { array_back2_weight_changes_1_1_out out_data 1 16 }  { array_back2_weight_changes_1_1_out_ap_vld out_vld 1 1 } } }
	array_back2_bias_change_0_out { ap_vld {  { array_back2_bias_change_0_out out_data 1 16 }  { array_back2_bias_change_0_out_ap_vld out_vld 1 1 } } }
	array_back2_bias_change_1_out { ap_vld {  { array_back2_bias_change_1_out out_data 1 16 }  { array_back2_bias_change_1_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_0_0_out { ap_vld {  { array_back1_weight_changes_0_0_out out_data 1 16 }  { array_back1_weight_changes_0_0_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_0_1_out { ap_vld {  { array_back1_weight_changes_0_1_out out_data 1 16 }  { array_back1_weight_changes_0_1_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_1_0_out { ap_vld {  { array_back1_weight_changes_1_0_out out_data 1 16 }  { array_back1_weight_changes_1_0_out_ap_vld out_vld 1 1 } } }
	array_back1_weight_changes_1_1_out { ap_vld {  { array_back1_weight_changes_1_1_out out_data 1 16 }  { array_back1_weight_changes_1_1_out_ap_vld out_vld 1 1 } } }
	array_back1_bias_change_0_out { ap_vld {  { array_back1_bias_change_0_out out_data 1 16 }  { array_back1_bias_change_0_out_ap_vld out_vld 1 1 } } }
	array_back1_bias_change_1_out { ap_vld {  { array_back1_bias_change_1_out out_data 1 16 }  { array_back1_bias_change_1_out_ap_vld out_vld 1 1 } } }
}
