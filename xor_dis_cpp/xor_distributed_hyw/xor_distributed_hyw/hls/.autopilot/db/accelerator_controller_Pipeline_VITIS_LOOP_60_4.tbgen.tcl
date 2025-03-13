set moduleName accelerator_controller_Pipeline_VITIS_LOOP_60_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {accelerator_controller_Pipeline_VITIS_LOOP_60_4}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ sext_ln13 int 16 regular  }
	{ sext_ln13_1 int 16 regular  }
	{ array_back1_bias_change_reload int 16 regular  }
	{ sext_ln13_2 int 16 regular  }
	{ sext_ln13_3 int 16 regular  }
	{ array_back1_bias_change_1_reload int 16 regular  }
	{ data_out int 64 regular {fifo 1 volatile }  }
	{ cmp_i_i58 int 1 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sext_ln13", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln13_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "array_back1_bias_change_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln13_2", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln13_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "array_back1_bias_change_1_reload", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cmp_i_i58", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sext_ln13 sc_in sc_lv 16 signal 0 } 
	{ sext_ln13_1 sc_in sc_lv 16 signal 1 } 
	{ array_back1_bias_change_reload sc_in sc_lv 16 signal 2 } 
	{ sext_ln13_2 sc_in sc_lv 16 signal 3 } 
	{ sext_ln13_3 sc_in sc_lv 16 signal 4 } 
	{ array_back1_bias_change_1_reload sc_in sc_lv 16 signal 5 } 
	{ data_out_din sc_out sc_lv 64 signal 6 } 
	{ data_out_full_n sc_in sc_logic 1 signal 6 } 
	{ data_out_write sc_out sc_logic 1 signal 6 } 
	{ cmp_i_i58 sc_in sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sext_ln13", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln13", "role": "default" }} , 
 	{ "name": "sext_ln13_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln13_1", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_reload", "role": "default" }} , 
 	{ "name": "sext_ln13_2", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln13_2", "role": "default" }} , 
 	{ "name": "sext_ln13_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln13_3", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_1_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_1_reload", "role": "default" }} , 
 	{ "name": "data_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out", "role": "din" }} , 
 	{ "name": "data_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "full_n" }} , 
 	{ "name": "data_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "write" }} , 
 	{ "name": "cmp_i_i58", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cmp_i_i58", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "accelerator_controller_Pipeline_VITIS_LOOP_60_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "9",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sext_ln13", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln13_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "array_back1_bias_change_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln13_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln13_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "array_back1_bias_change_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out", "Type" : "Fifo", "Direction" : "O"},
			{"Name" : "cmp_i_i58", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_13_1_1_U9", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_9_2_13_1_1_U10", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_13ns_28_1_1_U11", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_13ns_28_1_1_U12", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_10ns_26_1_1_U13", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_16s_10ns_26_1_1_U14", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_13ns_28ns_28_4_1_U15", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_13ns_28ns_28_4_1_U16", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_controller_Pipeline_VITIS_LOOP_60_4 {
		sext_ln13 {Type I LastRead 0 FirstWrite -1}
		sext_ln13_1 {Type I LastRead 0 FirstWrite -1}
		array_back1_bias_change_reload {Type I LastRead 0 FirstWrite -1}
		sext_ln13_2 {Type I LastRead 0 FirstWrite -1}
		sext_ln13_3 {Type I LastRead 0 FirstWrite -1}
		array_back1_bias_change_1_reload {Type I LastRead 0 FirstWrite -1}
		data_out {Type O LastRead 3 FirstWrite -1}
		cmp_i_i58 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "9"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "9"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sext_ln13 { ap_none {  { sext_ln13 in_data 0 16 } } }
	sext_ln13_1 { ap_none {  { sext_ln13_1 in_data 0 16 } } }
	array_back1_bias_change_reload { ap_none {  { array_back1_bias_change_reload in_data 0 16 } } }
	sext_ln13_2 { ap_none {  { sext_ln13_2 in_data 0 16 } } }
	sext_ln13_3 { ap_none {  { sext_ln13_3 in_data 0 16 } } }
	array_back1_bias_change_1_reload { ap_none {  { array_back1_bias_change_1_reload in_data 0 16 } } }
	data_out { ap_fifo {  { data_out_din fifo_data_in 1 64 }  { data_out_full_n fifo_status 0 1 }  { data_out_write fifo_port_we 1 1 } } }
	cmp_i_i58 { ap_none {  { cmp_i_i58 in_data 0 1 } } }
}
