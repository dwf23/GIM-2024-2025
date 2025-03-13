set moduleName accelerator_controller_Pipeline_VITIS_LOOP_26_1
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
set C_modelName {accelerator_controller_Pipeline_VITIS_LOOP_26_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict w1 { MEM_WIDTH 16 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bias_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ w1 int 16 regular {array 4 { 1 1 } 1 1 }  }
	{ bias_1 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ w1_local_4_out int 16 regular {pointer 1}  }
	{ w1_local_out int 16 regular {pointer 1}  }
	{ w1_local_6_out int 16 regular {pointer 1}  }
	{ w1_local_5_out int 16 regular {pointer 1}  }
	{ array_back1_bias_change_1_out int 16 regular {pointer 1}  }
	{ array_back1_bias_change_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_4_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_6_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w1_local_5_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_bias_change_1_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "array_back1_bias_change_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 27
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
	{ bias_1_address0 sc_out sc_lv 1 signal 1 } 
	{ bias_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ bias_1_q0 sc_in sc_lv 16 signal 1 } 
	{ w1_local_4_out sc_out sc_lv 16 signal 2 } 
	{ w1_local_4_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ w1_local_out sc_out sc_lv 16 signal 3 } 
	{ w1_local_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ w1_local_6_out sc_out sc_lv 16 signal 4 } 
	{ w1_local_6_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ w1_local_5_out sc_out sc_lv 16 signal 5 } 
	{ w1_local_5_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ array_back1_bias_change_1_out sc_out sc_lv 16 signal 6 } 
	{ array_back1_bias_change_1_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ array_back1_bias_change_out sc_out sc_lv 16 signal 7 } 
	{ array_back1_bias_change_out_ap_vld sc_out sc_logic 1 outvld 7 } 
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
 	{ "name": "bias_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "address0" }} , 
 	{ "name": "bias_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "ce0" }} , 
 	{ "name": "bias_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1", "role": "q0" }} , 
 	{ "name": "w1_local_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_4_out", "role": "default" }} , 
 	{ "name": "w1_local_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_4_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_out", "role": "default" }} , 
 	{ "name": "w1_local_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_6_out", "role": "default" }} , 
 	{ "name": "w1_local_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_6_out", "role": "ap_vld" }} , 
 	{ "name": "w1_local_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_5_out", "role": "default" }} , 
 	{ "name": "w1_local_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w1_local_5_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_bias_change_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_1_out", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_bias_change_1_out", "role": "ap_vld" }} , 
 	{ "name": "array_back1_bias_change_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "array_back1_bias_change_out", "role": "default" }} , 
 	{ "name": "array_back1_bias_change_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "array_back1_bias_change_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "accelerator_controller_Pipeline_VITIS_LOOP_26_1",
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
			{"Name" : "bias_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w1_local_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_bias_change_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "array_back1_bias_change_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_26_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_controller_Pipeline_VITIS_LOOP_26_1 {
		w1 {Type I LastRead 1 FirstWrite -1}
		bias_1 {Type I LastRead 0 FirstWrite -1}
		w1_local_4_out {Type O LastRead -1 FirstWrite 0}
		w1_local_out {Type O LastRead -1 FirstWrite 0}
		w1_local_6_out {Type O LastRead -1 FirstWrite 0}
		w1_local_5_out {Type O LastRead -1 FirstWrite 0}
		array_back1_bias_change_1_out {Type O LastRead -1 FirstWrite 0}
		array_back1_bias_change_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w1 { ap_memory {  { w1_address0 mem_address 1 2 }  { w1_ce0 mem_ce 1 1 }  { w1_q0 mem_dout 0 16 }  { w1_address1 MemPortADDR2 1 2 }  { w1_ce1 MemPortCE2 1 1 }  { w1_q1 MemPortDOUT2 0 16 } } }
	bias_1 { ap_memory {  { bias_1_address0 mem_address 1 1 }  { bias_1_ce0 mem_ce 1 1 }  { bias_1_q0 mem_dout 0 16 } } }
	w1_local_4_out { ap_vld {  { w1_local_4_out out_data 1 16 }  { w1_local_4_out_ap_vld out_vld 1 1 } } }
	w1_local_out { ap_vld {  { w1_local_out out_data 1 16 }  { w1_local_out_ap_vld out_vld 1 1 } } }
	w1_local_6_out { ap_vld {  { w1_local_6_out out_data 1 16 }  { w1_local_6_out_ap_vld out_vld 1 1 } } }
	w1_local_5_out { ap_vld {  { w1_local_5_out out_data 1 16 }  { w1_local_5_out_ap_vld out_vld 1 1 } } }
	array_back1_bias_change_1_out { ap_vld {  { array_back1_bias_change_1_out out_data 1 16 }  { array_back1_bias_change_1_out_ap_vld out_vld 1 1 } } }
	array_back1_bias_change_out { ap_vld {  { array_back1_bias_change_out out_data 1 16 }  { array_back1_bias_change_out_ap_vld out_vld 1 1 } } }
}
