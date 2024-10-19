set moduleName accelerator
set isTopModule 1
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
set C_modelName {accelerator}
set C_modelType { int 256 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict w1 { MEM_WIDTH 16 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w2 { MEM_WIDTH 16 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bias_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bias_2 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ w1 int 16 regular {array 4 { 1 1 } 1 1 }  }
	{ w2 int 16 regular {array 4 { 1 1 } 1 1 }  }
	{ bias_1 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ bias_2 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ training int 16 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "training", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 256} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ w1_address0 sc_out sc_lv 2 signal 0 } 
	{ w1_ce0 sc_out sc_logic 1 signal 0 } 
	{ w1_q0 sc_in sc_lv 16 signal 0 } 
	{ w1_address1 sc_out sc_lv 2 signal 0 } 
	{ w1_ce1 sc_out sc_logic 1 signal 0 } 
	{ w1_q1 sc_in sc_lv 16 signal 0 } 
	{ w2_address0 sc_out sc_lv 2 signal 1 } 
	{ w2_ce0 sc_out sc_logic 1 signal 1 } 
	{ w2_q0 sc_in sc_lv 16 signal 1 } 
	{ w2_address1 sc_out sc_lv 2 signal 1 } 
	{ w2_ce1 sc_out sc_logic 1 signal 1 } 
	{ w2_q1 sc_in sc_lv 16 signal 1 } 
	{ bias_1_address0 sc_out sc_lv 1 signal 2 } 
	{ bias_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ bias_1_q0 sc_in sc_lv 16 signal 2 } 
	{ bias_2_address0 sc_out sc_lv 1 signal 3 } 
	{ bias_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ bias_2_q0 sc_in sc_lv 16 signal 3 } 
	{ training sc_in sc_lv 16 signal 4 } 
	{ ap_return sc_out sc_lv 256 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "w1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "address0" }} , 
 	{ "name": "w1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "ce0" }} , 
 	{ "name": "w1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1", "role": "q0" }} , 
 	{ "name": "w1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "address1" }} , 
 	{ "name": "w1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "ce1" }} , 
 	{ "name": "w1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1", "role": "q1" }} , 
 	{ "name": "w2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w2", "role": "address0" }} , 
 	{ "name": "w2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w2", "role": "ce0" }} , 
 	{ "name": "w2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2", "role": "q0" }} , 
 	{ "name": "w2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w2", "role": "address1" }} , 
 	{ "name": "w2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w2", "role": "ce1" }} , 
 	{ "name": "w2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2", "role": "q1" }} , 
 	{ "name": "bias_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "address0" }} , 
 	{ "name": "bias_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "ce0" }} , 
 	{ "name": "bias_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1", "role": "q0" }} , 
 	{ "name": "bias_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2", "role": "address0" }} , 
 	{ "name": "bias_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_2", "role": "ce0" }} , 
 	{ "name": "bias_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2", "role": "q0" }} , 
 	{ "name": "training", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "training", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "26"],
		"CDFG" : "accelerator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "97", "EstimateLatencyMax" : "41098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_accelerator_Pipeline_VITIS_LOOP_47_1_fu_274", "Port" : "w1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_accelerator_Pipeline_VITIS_LOOP_47_1_fu_274", "Port" : "w2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "bias_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_accelerator_Pipeline_VITIS_LOOP_47_1_fu_274", "Port" : "bias_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "bias_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_accelerator_Pipeline_VITIS_LOOP_47_1_fu_274", "Port" : "bias_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "training", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_47_1_fu_274", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_47_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w2_local_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx4_promoted151_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx_promoted149_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx1_promoted147_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx_promoted145_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_47_1_fu_274.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298", "Parent" : "0", "Child" : ["4", "21", "22", "23", "24", "25"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596", "Parent" : "3", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_32s_7s_34_1_1_U17", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_32s_7s_34_1_1_U18", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_16s_16s_25_1_1_U19", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_16s_16s_25_1_1_U20", "Parent" : "4"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_16s_16s_25_1_1_U21", "Parent" : "4"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_16s_16s_32_1_1_U22", "Parent" : "4"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_16s_16s_25_1_1_U23", "Parent" : "4"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_16s_16s_32_1_1_U24", "Parent" : "4"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_16s_16s_32_1_1_U25", "Parent" : "4"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mul_16s_16s_32_1_1_U26", "Parent" : "4"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mac_mulsub_16s_6ns_25s_25_4_1_U27", "Parent" : "4"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U28", "Parent" : "4"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U29", "Parent" : "4"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U30", "Parent" : "4"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U31", "Parent" : "4"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.grp_model_array_fu_596.mac_mulsub_16s_6ns_25s_25_4_1_U32", "Parent" : "4"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.dcmp_64ns_64ns_1_1_no_dsp_1_U49", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.sparsemux_7_2_16_1_1_U50", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.sparsemux_7_2_16_1_1_U51", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.sparsemux_7_2_16_1_1_U52", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_65_3_fu_298.sparsemux_7_2_16_1_1_U53", "Parent" : "3"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_157_9_fu_349", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_157_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_0_0_01214_3_1_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01214_3_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01217_3_1_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01217_3_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1138", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_0137", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1140", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_0139", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1142", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_0141", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1144", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_0143", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_4_1_0_0_0_load175_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_4_0_0_0_0_load173_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_3_1_0_0_0_load171_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_3_0_0_0_0_load169_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_1_1_0_0_0_load167_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_1_0_0_0_0_load165_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_0_1_0_0_0_load163_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_0_0_0_0_0_load161_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_1_1_0_0_0_load159_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_1_0_0_0_0_load157_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_0_1_0_0_0_load155_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_0_0_0_0_0_load153_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_157_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_157_9_fu_349.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"}]}


set ArgLastReadFirstWriteLatency {
	accelerator {
		w1 {Type I LastRead 1 FirstWrite -1}
		w2 {Type I LastRead 1 FirstWrite -1}
		bias_1 {Type I LastRead 0 FirstWrite -1}
		bias_2 {Type I LastRead 0 FirstWrite -1}
		training {Type I LastRead 2 FirstWrite -1}}
	accelerator_Pipeline_VITIS_LOOP_47_1 {
		w1 {Type I LastRead 1 FirstWrite -1}
		w2 {Type I LastRead 1 FirstWrite -1}
		bias_1 {Type I LastRead 0 FirstWrite -1}
		bias_2 {Type I LastRead 0 FirstWrite -1}
		w2_local_3_out {Type O LastRead -1 FirstWrite 0}
		w2_local_2_out {Type O LastRead -1 FirstWrite 0}
		w1_local_3_out {Type O LastRead -1 FirstWrite 0}
		w1_local_2_out {Type O LastRead -1 FirstWrite 0}
		w2_local_1_out {Type O LastRead -1 FirstWrite 0}
		w2_local_out {Type O LastRead -1 FirstWrite 0}
		w1_local_1_out {Type O LastRead -1 FirstWrite 0}
		w1_local_out {Type O LastRead -1 FirstWrite 0}
		bias_2_local_idx4_promoted151_out {Type O LastRead -1 FirstWrite 0}
		bias_2_local_idx_promoted149_out {Type O LastRead -1 FirstWrite 0}
		bias_1_local_idx1_promoted147_out {Type O LastRead -1 FirstWrite 0}
		bias_1_local_idx_promoted145_out {Type O LastRead -1 FirstWrite 0}}
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
		training {Type I LastRead 0 FirstWrite -1}}
	accelerator_Pipeline_VITIS_LOOP_157_9 {
		p_0_0_01214_3_1_lcssa {Type I LastRead 0 FirstWrite -1}
		p_0_0_01214_3_lcssa {Type I LastRead 0 FirstWrite -1}
		p_0_0_01217_3_1_lcssa {Type I LastRead 0 FirstWrite -1}
		p_0_0_01217_3_lcssa {Type I LastRead 0 FirstWrite -1}
		mux_case_1138 {Type I LastRead 0 FirstWrite -1}
		mux_case_0137 {Type I LastRead 0 FirstWrite -1}
		mux_case_1140 {Type I LastRead 0 FirstWrite -1}
		mux_case_0139 {Type I LastRead 0 FirstWrite -1}
		mux_case_1142 {Type I LastRead 0 FirstWrite -1}
		mux_case_0141 {Type I LastRead 0 FirstWrite -1}
		mux_case_1144 {Type I LastRead 0 FirstWrite -1}
		mux_case_0143 {Type I LastRead 0 FirstWrite -1}
		retval_4_1_0_0_0_load175_out {Type O LastRead -1 FirstWrite 0}
		retval_4_0_0_0_0_load173_out {Type O LastRead -1 FirstWrite 0}
		retval_3_1_0_0_0_load171_out {Type O LastRead -1 FirstWrite 0}
		retval_3_0_0_0_0_load169_out {Type O LastRead -1 FirstWrite 0}
		retval_2_1_1_0_0_0_load167_out {Type O LastRead -1 FirstWrite 0}
		retval_2_1_0_0_0_0_load165_out {Type O LastRead -1 FirstWrite 0}
		retval_2_0_1_0_0_0_load163_out {Type O LastRead -1 FirstWrite 0}
		retval_2_0_0_0_0_0_load161_out {Type O LastRead -1 FirstWrite 0}
		retval_1_1_1_0_0_0_load159_out {Type O LastRead -1 FirstWrite 0}
		retval_1_1_0_0_0_0_load157_out {Type O LastRead -1 FirstWrite 0}
		retval_1_0_1_0_0_0_load155_out {Type O LastRead -1 FirstWrite 0}
		retval_1_0_0_0_0_0_load153_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "97", "Max" : "41098"}
	, {"Name" : "Interval", "Min" : "98", "Max" : "41099"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w1 { ap_memory {  { w1_address0 mem_address 1 2 }  { w1_ce0 mem_ce 1 1 }  { w1_q0 mem_dout 0 16 }  { w1_address1 MemPortADDR2 1 2 }  { w1_ce1 MemPortCE2 1 1 }  { w1_q1 MemPortDOUT2 0 16 } } }
	w2 { ap_memory {  { w2_address0 mem_address 1 2 }  { w2_ce0 mem_ce 1 1 }  { w2_q0 mem_dout 0 16 }  { w2_address1 MemPortADDR2 1 2 }  { w2_ce1 MemPortCE2 1 1 }  { w2_q1 MemPortDOUT2 0 16 } } }
	bias_1 { ap_memory {  { bias_1_address0 mem_address 1 1 }  { bias_1_ce0 mem_ce 1 1 }  { bias_1_q0 mem_dout 0 16 } } }
	bias_2 { ap_memory {  { bias_2_address0 mem_address 1 1 }  { bias_2_ce0 mem_ce 1 1 }  { bias_2_q0 mem_dout 0 16 } } }
	training { ap_none {  { training in_data 0 16 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
