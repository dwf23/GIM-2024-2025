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
	{ w2_local_3_0 int 16 regular  }
	{ w2_local_2_0 int 16 regular  }
	{ w2_local_1_0 int 16 regular  }
	{ w2_local_0 int 16 regular  }
	{ w1_local_3_0 int 16 regular  }
	{ w1_local_2_0 int 16 regular  }
	{ w1_local_1_0 int 16 regular  }
	{ w1_local_0 int 16 regular  }
	{ mux_case_17944 int 16 regular  }
	{ mux_case_07840 int 16 regular  }
	{ mux_case_17736 int 16 regular  }
	{ mux_case_07632 int 16 regular  }
	{ mux_case_17528 int 16 regular  }
	{ mux_case_07424 int 16 regular  }
	{ mux_case_17320 int 16 regular  }
	{ mux_case_07216 int 16 regular  }
	{ retval_0_3_0_0_0_load109 int 16 regular  }
	{ retval_0_2_0_0_0_load103 int 16 regular  }
	{ retval_0_1_0_0_0_load97 int 16 regular  }
	{ retval_0_0_0_0_0_load91 int 16 regular  }
	{ p_0_0_01385_1_lcssa31 int 16 regular  }
	{ p_0_0_01385_lcssa29 int 16 regular  }
	{ p_0_0_01382_1_lcssa27 int 16 regular  }
	{ p_0_0_01382_lcssa25 int 16 regular  }
	{ training int 16 regular  }
	{ cmp_i_i113 int 1 regular  }
	{ w2_local_3_1_out int 16 regular {pointer 1}  }
	{ w2_local_2_1_out int 16 regular {pointer 1}  }
	{ w2_local_1_1_out int 16 regular {pointer 1}  }
	{ w2_local_165_out int 16 regular {pointer 1}  }
	{ w1_local_3_1_out int 16 regular {pointer 1}  }
	{ w1_local_2_1_out int 16 regular {pointer 1}  }
	{ w1_local_1_1_out int 16 regular {pointer 1}  }
	{ w1_local_163_out int 16 regular {pointer 1}  }
	{ mux_case_17943_out int 16 regular {pointer 1}  }
	{ mux_case_07839_out int 16 regular {pointer 1}  }
	{ mux_case_17735_out int 16 regular {pointer 1}  }
	{ mux_case_07631_out int 16 regular {pointer 1}  }
	{ mux_case_17527_out int 16 regular {pointer 1}  }
	{ mux_case_07423_out int 16 regular {pointer 1}  }
	{ mux_case_17319_out int 16 regular {pointer 1}  }
	{ mux_case_07215_out int 16 regular {pointer 1}  }
	{ retval_0_3_0_0_0_load108_out int 16 regular {pointer 1}  }
	{ retval_0_2_0_0_0_load102_out int 16 regular {pointer 1}  }
	{ retval_0_1_0_0_0_load96_out int 16 regular {pointer 1}  }
	{ retval_0_0_0_0_0_load90_out int 16 regular {pointer 1}  }
	{ bias_2_local_idx4_val23_out int 16 regular {pointer 1}  }
	{ bias_2_local_idx_val22_out int 16 regular {pointer 1}  }
	{ bias_1_local_idx1_val21_out int 16 regular {pointer 1}  }
	{ bias_1_local_idx_val20_out int 16 regular {pointer 1}  }
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
	{ "Name" : "w2_local_3_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_2_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_3_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_2_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_1_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_0", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_17944", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_07840", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_17736", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_07632", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_17528", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_07424", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_17320", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_07216", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_0_3_0_0_0_load109", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_0_2_0_0_0_load103", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_0_1_0_0_0_load97", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_0_0_0_0_0_load91", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01385_1_lcssa31", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01385_lcssa29", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01382_1_lcssa27", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01382_lcssa25", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "training", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "cmp_i_i113", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_3_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_2_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_1_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w2_local_165_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_3_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_2_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_1_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_163_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_17943_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_07839_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_17735_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_07631_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_17527_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_07423_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_17319_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mux_case_07215_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_3_0_0_0_load108_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_2_0_0_0_load102_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_1_0_0_0_load96_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_0_0_0_0_0_load90_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_2_local_idx4_val23_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_2_local_idx_val22_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_idx1_val21_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bias_1_local_idx_val20_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
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
set portNum 113
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w2_local_3_0 sc_in sc_lv 16 signal 0 } 
	{ w2_local_2_0 sc_in sc_lv 16 signal 1 } 
	{ w2_local_1_0 sc_in sc_lv 16 signal 2 } 
	{ w2_local_0 sc_in sc_lv 16 signal 3 } 
	{ w1_local_3_0 sc_in sc_lv 16 signal 4 } 
	{ w1_local_2_0 sc_in sc_lv 16 signal 5 } 
	{ w1_local_1_0 sc_in sc_lv 16 signal 6 } 
	{ w1_local_0 sc_in sc_lv 16 signal 7 } 
	{ mux_case_17944 sc_in sc_lv 16 signal 8 } 
	{ mux_case_07840 sc_in sc_lv 16 signal 9 } 
	{ mux_case_17736 sc_in sc_lv 16 signal 10 } 
	{ mux_case_07632 sc_in sc_lv 16 signal 11 } 
	{ mux_case_17528 sc_in sc_lv 16 signal 12 } 
	{ mux_case_07424 sc_in sc_lv 16 signal 13 } 
	{ mux_case_17320 sc_in sc_lv 16 signal 14 } 
	{ mux_case_07216 sc_in sc_lv 16 signal 15 } 
	{ retval_0_3_0_0_0_load109 sc_in sc_lv 16 signal 16 } 
	{ retval_0_2_0_0_0_load103 sc_in sc_lv 16 signal 17 } 
	{ retval_0_1_0_0_0_load97 sc_in sc_lv 16 signal 18 } 
	{ retval_0_0_0_0_0_load91 sc_in sc_lv 16 signal 19 } 
	{ p_0_0_01385_1_lcssa31 sc_in sc_lv 16 signal 20 } 
	{ p_0_0_01385_lcssa29 sc_in sc_lv 16 signal 21 } 
	{ p_0_0_01382_1_lcssa27 sc_in sc_lv 16 signal 22 } 
	{ p_0_0_01382_lcssa25 sc_in sc_lv 16 signal 23 } 
	{ training sc_in sc_lv 16 signal 24 } 
	{ cmp_i_i113 sc_in sc_lv 1 signal 25 } 
	{ w2_local_3_1_out sc_out sc_lv 16 signal 26 } 
	{ w2_local_3_1_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ w2_local_2_1_out sc_out sc_lv 16 signal 27 } 
	{ w2_local_2_1_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ w2_local_1_1_out sc_out sc_lv 16 signal 28 } 
	{ w2_local_1_1_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ w2_local_165_out sc_out sc_lv 16 signal 29 } 
	{ w2_local_165_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ w1_local_3_1_out sc_out sc_lv 16 signal 30 } 
	{ w1_local_3_1_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ w1_local_2_1_out sc_out sc_lv 16 signal 31 } 
	{ w1_local_2_1_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ w1_local_1_1_out sc_out sc_lv 16 signal 32 } 
	{ w1_local_1_1_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ w1_local_163_out sc_out sc_lv 16 signal 33 } 
	{ w1_local_163_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ mux_case_17943_out sc_out sc_lv 16 signal 34 } 
	{ mux_case_17943_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ mux_case_07839_out sc_out sc_lv 16 signal 35 } 
	{ mux_case_07839_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ mux_case_17735_out sc_out sc_lv 16 signal 36 } 
	{ mux_case_17735_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ mux_case_07631_out sc_out sc_lv 16 signal 37 } 
	{ mux_case_07631_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ mux_case_17527_out sc_out sc_lv 16 signal 38 } 
	{ mux_case_17527_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ mux_case_07423_out sc_out sc_lv 16 signal 39 } 
	{ mux_case_07423_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ mux_case_17319_out sc_out sc_lv 16 signal 40 } 
	{ mux_case_17319_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ mux_case_07215_out sc_out sc_lv 16 signal 41 } 
	{ mux_case_07215_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ retval_0_3_0_0_0_load108_out sc_out sc_lv 16 signal 42 } 
	{ retval_0_3_0_0_0_load108_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ retval_0_2_0_0_0_load102_out sc_out sc_lv 16 signal 43 } 
	{ retval_0_2_0_0_0_load102_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ retval_0_1_0_0_0_load96_out sc_out sc_lv 16 signal 44 } 
	{ retval_0_1_0_0_0_load96_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ retval_0_0_0_0_0_load90_out sc_out sc_lv 16 signal 45 } 
	{ retval_0_0_0_0_0_load90_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ bias_2_local_idx4_val23_out sc_out sc_lv 16 signal 46 } 
	{ bias_2_local_idx4_val23_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ bias_2_local_idx_val22_out sc_out sc_lv 16 signal 47 } 
	{ bias_2_local_idx_val22_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ bias_1_local_idx1_val21_out sc_out sc_lv 16 signal 48 } 
	{ bias_1_local_idx1_val21_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ bias_1_local_idx_val20_out sc_out sc_lv 16 signal 49 } 
	{ bias_1_local_idx_val20_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ retval_0_3_0_0_0_load_out sc_out sc_lv 16 signal 50 } 
	{ retval_0_3_0_0_0_load_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ retval_0_2_0_0_0_load_out sc_out sc_lv 16 signal 51 } 
	{ retval_0_2_0_0_0_load_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ retval_0_1_0_0_0_load_out sc_out sc_lv 16 signal 52 } 
	{ retval_0_1_0_0_0_load_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ retval_0_0_0_0_0_load_out sc_out sc_lv 16 signal 53 } 
	{ retval_0_0_0_0_0_load_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ array_back2_weight_changes_out sc_out sc_lv 16 signal 54 } 
	{ array_back2_weight_changes_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ array_back2_weight_changes_4_out sc_out sc_lv 16 signal 55 } 
	{ array_back2_weight_changes_4_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ array_back2_weight_changes_5_out sc_out sc_lv 16 signal 56 } 
	{ array_back2_weight_changes_5_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ array_back2_weight_changes_6_out sc_out sc_lv 16 signal 57 } 
	{ array_back2_weight_changes_6_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ array_back2_bias_change_out sc_out sc_lv 16 signal 58 } 
	{ array_back2_bias_change_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ array_back2_bias_change_2_out sc_out sc_lv 16 signal 59 } 
	{ array_back2_bias_change_2_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ array_back1_weight_changes_out sc_out sc_lv 16 signal 60 } 
	{ array_back1_weight_changes_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ array_back1_weight_changes_4_out sc_out sc_lv 16 signal 61 } 
	{ array_back1_weight_changes_4_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ array_back1_weight_changes_5_out sc_out sc_lv 16 signal 62 } 
	{ array_back1_weight_changes_5_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ array_back1_weight_changes_6_out sc_out sc_lv 16 signal 63 } 
	{ array_back1_weight_changes_6_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ array_back1_bias_change_out sc_out sc_lv 16 signal 64 } 
	{ array_back1_bias_change_out_ap_vld sc_out sc_logic 1 outvld 64 } 
	{ array_back1_bias_change_2_out sc_out sc_lv 16 signal 65 } 
	{ array_back1_bias_change_2_out_ap_vld sc_out sc_logic 1 outvld 65 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w2_local_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_3_0", "role": "default" }} , 
 	{ "name": "w2_local_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_2_0", "role": "default" }} , 
 	{ "name": "w2_local_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_0", "role": "default" }} , 
 	{ "name": "w2_local_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_0", "role": "default" }} , 
 	{ "name": "w1_local_3_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_3_0", "role": "default" }} , 
 	{ "name": "w1_local_2_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_2_0", "role": "default" }} , 
 	{ "name": "w1_local_1_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_0", "role": "default" }} , 
 	{ "name": "w1_local_0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_0", "role": "default" }} , 
 	{ "name": "mux_case_17944", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_17944", "role": "default" }} , 
 	{ "name": "mux_case_07840", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_07840", "role": "default" }} , 
 	{ "name": "mux_case_17736", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_17736", "role": "default" }} , 
 	{ "name": "mux_case_07632", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_07632", "role": "default" }} , 
 	{ "name": "mux_case_17528", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_17528", "role": "default" }} , 
 	{ "name": "mux_case_07424", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_07424", "role": "default" }} , 
 	{ "name": "mux_case_17320", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_17320", "role": "default" }} , 
 	{ "name": "mux_case_07216", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_07216", "role": "default" }} , 
 	{ "name": "retval_0_3_0_0_0_load109", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_3_0_0_0_load109", "role": "default" }} , 
 	{ "name": "retval_0_2_0_0_0_load103", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_2_0_0_0_load103", "role": "default" }} , 
 	{ "name": "retval_0_1_0_0_0_load97", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_1_0_0_0_load97", "role": "default" }} , 
 	{ "name": "retval_0_0_0_0_0_load91", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_0_0_0_0_load91", "role": "default" }} , 
 	{ "name": "p_0_0_01385_1_lcssa31", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01385_1_lcssa31", "role": "default" }} , 
 	{ "name": "p_0_0_01385_lcssa29", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01385_lcssa29", "role": "default" }} , 
 	{ "name": "p_0_0_01382_1_lcssa27", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01382_1_lcssa27", "role": "default" }} , 
 	{ "name": "p_0_0_01382_lcssa25", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01382_lcssa25", "role": "default" }} , 
 	{ "name": "training", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "training", "role": "default" }} , 
 	{ "name": "cmp_i_i113", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i113", "role": "default" }} , 
 	{ "name": "w2_local_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_3_1_out", "role": "default" }} , 
 	{ "name": "w2_local_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_2_1_out", "role": "default" }} , 
 	{ "name": "w2_local_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_1_out", "role": "default" }} , 
 	{ "name": "w2_local_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "w2_local_165_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_165_out", "role": "default" }} , 
 	{ "name": "w2_local_165_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w2_local_165_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_3_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_3_1_out", "role": "default" }} , 
 	{ "name": "w1_local_3_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_3_1_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_2_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_2_1_out", "role": "default" }} , 
 	{ "name": "w1_local_2_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_2_1_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_1_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_1_out", "role": "default" }} , 
 	{ "name": "w1_local_1_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_1_1_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_163_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_163_out", "role": "default" }} , 
 	{ "name": "w1_local_163_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_163_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_17943_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_17943_out", "role": "default" }} , 
 	{ "name": "mux_case_17943_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_17943_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_07839_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_07839_out", "role": "default" }} , 
 	{ "name": "mux_case_07839_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_07839_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_17735_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_17735_out", "role": "default" }} , 
 	{ "name": "mux_case_17735_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_17735_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_07631_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_07631_out", "role": "default" }} , 
 	{ "name": "mux_case_07631_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_07631_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_17527_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_17527_out", "role": "default" }} , 
 	{ "name": "mux_case_17527_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_17527_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_07423_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_07423_out", "role": "default" }} , 
 	{ "name": "mux_case_07423_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_07423_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_17319_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_17319_out", "role": "default" }} , 
 	{ "name": "mux_case_17319_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_17319_out", "role": "ap_vld" }} , 
 	{ "name": "mux_case_07215_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_07215_out", "role": "default" }} , 
 	{ "name": "mux_case_07215_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mux_case_07215_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_3_0_0_0_load108_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_3_0_0_0_load108_out", "role": "default" }} , 
 	{ "name": "retval_0_3_0_0_0_load108_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_3_0_0_0_load108_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_2_0_0_0_load102_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_2_0_0_0_load102_out", "role": "default" }} , 
 	{ "name": "retval_0_2_0_0_0_load102_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_2_0_0_0_load102_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_1_0_0_0_load96_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_1_0_0_0_load96_out", "role": "default" }} , 
 	{ "name": "retval_0_1_0_0_0_load96_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_1_0_0_0_load96_out", "role": "ap_vld" }} , 
 	{ "name": "retval_0_0_0_0_0_load90_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_0_0_0_0_0_load90_out", "role": "default" }} , 
 	{ "name": "retval_0_0_0_0_0_load90_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_0_0_0_0_0_load90_out", "role": "ap_vld" }} , 
 	{ "name": "bias_2_local_idx4_val23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_idx4_val23_out", "role": "default" }} , 
 	{ "name": "bias_2_local_idx4_val23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_idx4_val23_out", "role": "ap_vld" }} , 
 	{ "name": "bias_2_local_idx_val22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_idx_val22_out", "role": "default" }} , 
 	{ "name": "bias_2_local_idx_val22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_2_local_idx_val22_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_idx1_val21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_idx1_val21_out", "role": "default" }} , 
 	{ "name": "bias_1_local_idx1_val21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_idx1_val21_out", "role": "ap_vld" }} , 
 	{ "name": "bias_1_local_idx_val20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_idx_val20_out", "role": "default" }} , 
 	{ "name": "bias_1_local_idx_val20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "bias_1_local_idx_val20_out", "role": "ap_vld" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_69_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "83",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w2_local_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_3_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_2_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_1_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_17944", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_07840", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_17736", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_07632", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_17528", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_07424", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_17320", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_07216", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_0_3_0_0_0_load109", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_0_2_0_0_0_load103", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_0_1_0_0_0_load97", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_0_0_0_0_0_load91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01385_1_lcssa31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01385_lcssa29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01382_1_lcssa27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01382_lcssa25", "Type" : "None", "Direction" : "I"},
			{"Name" : "training", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_i113", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_165_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_3_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_2_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_1_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_163_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_17943_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_07839_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_17735_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_07631_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_17527_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_07423_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_17319_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_07215_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_3_0_0_0_load108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_2_0_0_0_load102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_1_0_0_0_load96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_0_0_0_0_0_load90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx4_val23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx_val22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx1_val21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx_val20_out", "Type" : "Vld", "Direction" : "O"},
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
				"LoopDec" : {"FSMBitwidth" : "19", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : ["ap_ST_fsm_state19", "ap_ST_fsm_state20"]}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
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
			{"Name" : "biases_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "biases_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_kmin1_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_kmin1_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_k_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "delta_k_0_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "training", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_32s_10s_40_1_1_U17", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_32s_10s_40_1_1_U18", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_32s_10s_40_1_1_U19", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_32s_10s_40_1_1_U20", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_16s_32_1_1_U21", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_16s_32_1_1_U22", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_16s_32_1_1_U23", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_16s_32_1_1_U24", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_16s_28_1_1_U25", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_16s_28_1_1_U26", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_16s_28_1_1_U27", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_16s_28_1_1_U28", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_10ns_26_1_1_U29", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_10ns_26_1_1_U30", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_10ns_26_1_1_U31", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mul_16s_10ns_26_1_1_U32", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mac_mulsub_16s_9ns_28s_28_4_1_U33", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mac_muladd_16s_16s_28ns_28_4_1_U34", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mac_muladd_16s_16s_28ns_28_4_1_U35", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mac_muladd_16s_16s_28ns_28_4_1_U36", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mac_muladd_16s_16s_28ns_28_4_1_U37", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_model_array_fu_816.mac_mulsub_16s_9ns_28s_28_4_1_U38", "Parent" : "1"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U56", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_13_1_1_U57", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_13_1_1_U58", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_13_1_1_U59", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_18s_10ns_28_1_1_U60", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U61", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U62", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U63", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_7_2_16_1_1_U64", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_Pipeline_VITIS_LOOP_69_4 {
		w2_local_3_0 {Type I LastRead 0 FirstWrite -1}
		w2_local_2_0 {Type I LastRead 0 FirstWrite -1}
		w2_local_1_0 {Type I LastRead 0 FirstWrite -1}
		w2_local_0 {Type I LastRead 0 FirstWrite -1}
		w1_local_3_0 {Type I LastRead 0 FirstWrite -1}
		w1_local_2_0 {Type I LastRead 0 FirstWrite -1}
		w1_local_1_0 {Type I LastRead 0 FirstWrite -1}
		w1_local_0 {Type I LastRead 0 FirstWrite -1}
		mux_case_17944 {Type I LastRead 0 FirstWrite -1}
		mux_case_07840 {Type I LastRead 0 FirstWrite -1}
		mux_case_17736 {Type I LastRead 0 FirstWrite -1}
		mux_case_07632 {Type I LastRead 0 FirstWrite -1}
		mux_case_17528 {Type I LastRead 0 FirstWrite -1}
		mux_case_07424 {Type I LastRead 0 FirstWrite -1}
		mux_case_17320 {Type I LastRead 0 FirstWrite -1}
		mux_case_07216 {Type I LastRead 0 FirstWrite -1}
		retval_0_3_0_0_0_load109 {Type I LastRead 0 FirstWrite -1}
		retval_0_2_0_0_0_load103 {Type I LastRead 0 FirstWrite -1}
		retval_0_1_0_0_0_load97 {Type I LastRead 0 FirstWrite -1}
		retval_0_0_0_0_0_load91 {Type I LastRead 0 FirstWrite -1}
		p_0_0_01385_1_lcssa31 {Type I LastRead 0 FirstWrite -1}
		p_0_0_01385_lcssa29 {Type I LastRead 0 FirstWrite -1}
		p_0_0_01382_1_lcssa27 {Type I LastRead 0 FirstWrite -1}
		p_0_0_01382_lcssa25 {Type I LastRead 0 FirstWrite -1}
		training {Type I LastRead 0 FirstWrite -1}
		cmp_i_i113 {Type I LastRead 0 FirstWrite -1}
		w2_local_3_1_out {Type O LastRead -1 FirstWrite 2}
		w2_local_2_1_out {Type O LastRead -1 FirstWrite 2}
		w2_local_1_1_out {Type O LastRead -1 FirstWrite 2}
		w2_local_165_out {Type O LastRead -1 FirstWrite 2}
		w1_local_3_1_out {Type O LastRead -1 FirstWrite 2}
		w1_local_2_1_out {Type O LastRead -1 FirstWrite 2}
		w1_local_1_1_out {Type O LastRead -1 FirstWrite 2}
		w1_local_163_out {Type O LastRead -1 FirstWrite 2}
		mux_case_17943_out {Type O LastRead -1 FirstWrite 2}
		mux_case_07839_out {Type O LastRead -1 FirstWrite 2}
		mux_case_17735_out {Type O LastRead -1 FirstWrite 2}
		mux_case_07631_out {Type O LastRead -1 FirstWrite 2}
		mux_case_17527_out {Type O LastRead -1 FirstWrite 2}
		mux_case_07423_out {Type O LastRead -1 FirstWrite 2}
		mux_case_17319_out {Type O LastRead -1 FirstWrite 2}
		mux_case_07215_out {Type O LastRead -1 FirstWrite 2}
		retval_0_3_0_0_0_load108_out {Type O LastRead -1 FirstWrite 2}
		retval_0_2_0_0_0_load102_out {Type O LastRead -1 FirstWrite 2}
		retval_0_1_0_0_0_load96_out {Type O LastRead -1 FirstWrite 2}
		retval_0_0_0_0_0_load90_out {Type O LastRead -1 FirstWrite 2}
		bias_2_local_idx4_val23_out {Type O LastRead -1 FirstWrite 2}
		bias_2_local_idx_val22_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_idx1_val21_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_idx_val20_out {Type O LastRead -1 FirstWrite 2}
		retval_0_3_0_0_0_load_out {Type O LastRead -1 FirstWrite 18}
		retval_0_2_0_0_0_load_out {Type O LastRead -1 FirstWrite 18}
		retval_0_1_0_0_0_load_out {Type O LastRead -1 FirstWrite 18}
		retval_0_0_0_0_0_load_out {Type O LastRead -1 FirstWrite 18}
		array_back2_weight_changes_out {Type O LastRead -1 FirstWrite 18}
		array_back2_weight_changes_4_out {Type O LastRead -1 FirstWrite 18}
		array_back2_weight_changes_5_out {Type O LastRead -1 FirstWrite 18}
		array_back2_weight_changes_6_out {Type O LastRead -1 FirstWrite 18}
		array_back2_bias_change_out {Type O LastRead -1 FirstWrite 18}
		array_back2_bias_change_2_out {Type O LastRead -1 FirstWrite 18}
		array_back1_weight_changes_out {Type O LastRead -1 FirstWrite 18}
		array_back1_weight_changes_4_out {Type O LastRead -1 FirstWrite 18}
		array_back1_weight_changes_5_out {Type O LastRead -1 FirstWrite 18}
		array_back1_weight_changes_6_out {Type O LastRead -1 FirstWrite 18}
		array_back1_bias_change_out {Type O LastRead -1 FirstWrite 18}
		array_back1_bias_change_2_out {Type O LastRead -1 FirstWrite 18}}
	model_array {
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		biases_0_0_val {Type I LastRead 0 FirstWrite -1}
		biases_0_1_val {Type I LastRead 0 FirstWrite -1}
		output_kmin1_0_0_val {Type I LastRead 0 FirstWrite -1}
		output_kmin1_0_1_val {Type I LastRead 0 FirstWrite -1}
		delta_k_0_0_val {Type I LastRead 0 FirstWrite -1}
		delta_k_0_1_val {Type I LastRead 0 FirstWrite -1}
		training {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "83"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "83"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w2_local_3_0 { ap_none {  { w2_local_3_0 in_data 0 16 } } }
	w2_local_2_0 { ap_none {  { w2_local_2_0 in_data 0 16 } } }
	w2_local_1_0 { ap_none {  { w2_local_1_0 in_data 0 16 } } }
	w2_local_0 { ap_none {  { w2_local_0 in_data 0 16 } } }
	w1_local_3_0 { ap_none {  { w1_local_3_0 in_data 0 16 } } }
	w1_local_2_0 { ap_none {  { w1_local_2_0 in_data 0 16 } } }
	w1_local_1_0 { ap_none {  { w1_local_1_0 in_data 0 16 } } }
	w1_local_0 { ap_none {  { w1_local_0 in_data 0 16 } } }
	mux_case_17944 { ap_none {  { mux_case_17944 in_data 0 16 } } }
	mux_case_07840 { ap_none {  { mux_case_07840 in_data 0 16 } } }
	mux_case_17736 { ap_none {  { mux_case_17736 in_data 0 16 } } }
	mux_case_07632 { ap_none {  { mux_case_07632 in_data 0 16 } } }
	mux_case_17528 { ap_none {  { mux_case_17528 in_data 0 16 } } }
	mux_case_07424 { ap_none {  { mux_case_07424 in_data 0 16 } } }
	mux_case_17320 { ap_none {  { mux_case_17320 in_data 0 16 } } }
	mux_case_07216 { ap_none {  { mux_case_07216 in_data 0 16 } } }
	retval_0_3_0_0_0_load109 { ap_none {  { retval_0_3_0_0_0_load109 in_data 0 16 } } }
	retval_0_2_0_0_0_load103 { ap_none {  { retval_0_2_0_0_0_load103 in_data 0 16 } } }
	retval_0_1_0_0_0_load97 { ap_none {  { retval_0_1_0_0_0_load97 in_data 0 16 } } }
	retval_0_0_0_0_0_load91 { ap_none {  { retval_0_0_0_0_0_load91 in_data 0 16 } } }
	p_0_0_01385_1_lcssa31 { ap_none {  { p_0_0_01385_1_lcssa31 in_data 0 16 } } }
	p_0_0_01385_lcssa29 { ap_none {  { p_0_0_01385_lcssa29 in_data 0 16 } } }
	p_0_0_01382_1_lcssa27 { ap_none {  { p_0_0_01382_1_lcssa27 in_data 0 16 } } }
	p_0_0_01382_lcssa25 { ap_none {  { p_0_0_01382_lcssa25 in_data 0 16 } } }
	training { ap_none {  { training in_data 0 16 } } }
	cmp_i_i113 { ap_none {  { cmp_i_i113 in_data 0 1 } } }
	w2_local_3_1_out { ap_vld {  { w2_local_3_1_out out_data 1 16 }  { w2_local_3_1_out_ap_vld out_vld 1 1 } } }
	w2_local_2_1_out { ap_vld {  { w2_local_2_1_out out_data 1 16 }  { w2_local_2_1_out_ap_vld out_vld 1 1 } } }
	w2_local_1_1_out { ap_vld {  { w2_local_1_1_out out_data 1 16 }  { w2_local_1_1_out_ap_vld out_vld 1 1 } } }
	w2_local_165_out { ap_vld {  { w2_local_165_out out_data 1 16 }  { w2_local_165_out_ap_vld out_vld 1 1 } } }
	w1_local_3_1_out { ap_vld {  { w1_local_3_1_out out_data 1 16 }  { w1_local_3_1_out_ap_vld out_vld 1 1 } } }
	w1_local_2_1_out { ap_vld {  { w1_local_2_1_out out_data 1 16 }  { w1_local_2_1_out_ap_vld out_vld 1 1 } } }
	w1_local_1_1_out { ap_vld {  { w1_local_1_1_out out_data 1 16 }  { w1_local_1_1_out_ap_vld out_vld 1 1 } } }
	w1_local_163_out { ap_vld {  { w1_local_163_out out_data 1 16 }  { w1_local_163_out_ap_vld out_vld 1 1 } } }
	mux_case_17943_out { ap_vld {  { mux_case_17943_out out_data 1 16 }  { mux_case_17943_out_ap_vld out_vld 1 1 } } }
	mux_case_07839_out { ap_vld {  { mux_case_07839_out out_data 1 16 }  { mux_case_07839_out_ap_vld out_vld 1 1 } } }
	mux_case_17735_out { ap_vld {  { mux_case_17735_out out_data 1 16 }  { mux_case_17735_out_ap_vld out_vld 1 1 } } }
	mux_case_07631_out { ap_vld {  { mux_case_07631_out out_data 1 16 }  { mux_case_07631_out_ap_vld out_vld 1 1 } } }
	mux_case_17527_out { ap_vld {  { mux_case_17527_out out_data 1 16 }  { mux_case_17527_out_ap_vld out_vld 1 1 } } }
	mux_case_07423_out { ap_vld {  { mux_case_07423_out out_data 1 16 }  { mux_case_07423_out_ap_vld out_vld 1 1 } } }
	mux_case_17319_out { ap_vld {  { mux_case_17319_out out_data 1 16 }  { mux_case_17319_out_ap_vld out_vld 1 1 } } }
	mux_case_07215_out { ap_vld {  { mux_case_07215_out out_data 1 16 }  { mux_case_07215_out_ap_vld out_vld 1 1 } } }
	retval_0_3_0_0_0_load108_out { ap_vld {  { retval_0_3_0_0_0_load108_out out_data 1 16 }  { retval_0_3_0_0_0_load108_out_ap_vld out_vld 1 1 } } }
	retval_0_2_0_0_0_load102_out { ap_vld {  { retval_0_2_0_0_0_load102_out out_data 1 16 }  { retval_0_2_0_0_0_load102_out_ap_vld out_vld 1 1 } } }
	retval_0_1_0_0_0_load96_out { ap_vld {  { retval_0_1_0_0_0_load96_out out_data 1 16 }  { retval_0_1_0_0_0_load96_out_ap_vld out_vld 1 1 } } }
	retval_0_0_0_0_0_load90_out { ap_vld {  { retval_0_0_0_0_0_load90_out out_data 1 16 }  { retval_0_0_0_0_0_load90_out_ap_vld out_vld 1 1 } } }
	bias_2_local_idx4_val23_out { ap_vld {  { bias_2_local_idx4_val23_out out_data 1 16 }  { bias_2_local_idx4_val23_out_ap_vld out_vld 1 1 } } }
	bias_2_local_idx_val22_out { ap_vld {  { bias_2_local_idx_val22_out out_data 1 16 }  { bias_2_local_idx_val22_out_ap_vld out_vld 1 1 } } }
	bias_1_local_idx1_val21_out { ap_vld {  { bias_1_local_idx1_val21_out out_data 1 16 }  { bias_1_local_idx1_val21_out_ap_vld out_vld 1 1 } } }
	bias_1_local_idx_val20_out { ap_vld {  { bias_1_local_idx_val20_out out_data 1 16 }  { bias_1_local_idx_val20_out_ap_vld out_vld 1 1 } } }
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
