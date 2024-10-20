set moduleName accelerator_Pipeline_VITIS_LOOP_156_9
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
set C_modelName {accelerator_Pipeline_VITIS_LOOP_156_9}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ mux_case_146 int 16 regular  }
	{ mux_case_045 int 16 regular  }
	{ mux_case_148 int 16 regular  }
	{ mux_case_047 int 16 regular  }
	{ mux_case_150 int 16 regular  }
	{ mux_case_049 int 16 regular  }
	{ mux_case_152 int 16 regular  }
	{ mux_case_051 int 16 regular  }
	{ mux_case_154 int 16 regular  }
	{ mux_case_053 int 16 regular  }
	{ mux_case_156 int 16 regular  }
	{ mux_case_055 int 16 regular  }
	{ retval_4_1_0_0_0_load107_out int 16 regular {pointer 1}  }
	{ retval_4_0_0_0_0_load105_out int 16 regular {pointer 1}  }
	{ retval_3_1_0_0_0_load103_out int 16 regular {pointer 1}  }
	{ retval_3_0_0_0_0_load101_out int 16 regular {pointer 1}  }
	{ retval_2_1_1_0_0_0_load99_out int 16 regular {pointer 1}  }
	{ retval_2_1_0_0_0_0_load97_out int 16 regular {pointer 1}  }
	{ retval_2_0_1_0_0_0_load95_out int 16 regular {pointer 1}  }
	{ retval_2_0_0_0_0_0_load93_out int 16 regular {pointer 1}  }
	{ retval_1_1_1_0_0_0_load91_out int 16 regular {pointer 1}  }
	{ retval_1_1_0_0_0_0_load89_out int 16 regular {pointer 1}  }
	{ retval_1_0_1_0_0_0_load87_out int 16 regular {pointer 1}  }
	{ retval_1_0_0_0_0_0_load85_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "mux_case_146", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_045", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_148", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_047", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_150", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_049", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_152", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_051", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_154", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_053", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_156", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_055", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_4_1_0_0_0_load107_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_4_0_0_0_0_load105_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_3_1_0_0_0_load103_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_3_0_0_0_0_load101_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_1_1_0_0_0_load99_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_1_0_0_0_0_load97_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_0_1_0_0_0_load95_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_0_0_0_0_0_load93_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_1_1_0_0_0_load91_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_1_0_0_0_0_load89_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_0_1_0_0_0_load87_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_0_0_0_0_0_load85_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mux_case_146 sc_in sc_lv 16 signal 0 } 
	{ mux_case_045 sc_in sc_lv 16 signal 1 } 
	{ mux_case_148 sc_in sc_lv 16 signal 2 } 
	{ mux_case_047 sc_in sc_lv 16 signal 3 } 
	{ mux_case_150 sc_in sc_lv 16 signal 4 } 
	{ mux_case_049 sc_in sc_lv 16 signal 5 } 
	{ mux_case_152 sc_in sc_lv 16 signal 6 } 
	{ mux_case_051 sc_in sc_lv 16 signal 7 } 
	{ mux_case_154 sc_in sc_lv 16 signal 8 } 
	{ mux_case_053 sc_in sc_lv 16 signal 9 } 
	{ mux_case_156 sc_in sc_lv 16 signal 10 } 
	{ mux_case_055 sc_in sc_lv 16 signal 11 } 
	{ retval_4_1_0_0_0_load107_out sc_out sc_lv 16 signal 12 } 
	{ retval_4_1_0_0_0_load107_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ retval_4_0_0_0_0_load105_out sc_out sc_lv 16 signal 13 } 
	{ retval_4_0_0_0_0_load105_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ retval_3_1_0_0_0_load103_out sc_out sc_lv 16 signal 14 } 
	{ retval_3_1_0_0_0_load103_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ retval_3_0_0_0_0_load101_out sc_out sc_lv 16 signal 15 } 
	{ retval_3_0_0_0_0_load101_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ retval_2_1_1_0_0_0_load99_out sc_out sc_lv 16 signal 16 } 
	{ retval_2_1_1_0_0_0_load99_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ retval_2_1_0_0_0_0_load97_out sc_out sc_lv 16 signal 17 } 
	{ retval_2_1_0_0_0_0_load97_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ retval_2_0_1_0_0_0_load95_out sc_out sc_lv 16 signal 18 } 
	{ retval_2_0_1_0_0_0_load95_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ retval_2_0_0_0_0_0_load93_out sc_out sc_lv 16 signal 19 } 
	{ retval_2_0_0_0_0_0_load93_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ retval_1_1_1_0_0_0_load91_out sc_out sc_lv 16 signal 20 } 
	{ retval_1_1_1_0_0_0_load91_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ retval_1_1_0_0_0_0_load89_out sc_out sc_lv 16 signal 21 } 
	{ retval_1_1_0_0_0_0_load89_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ retval_1_0_1_0_0_0_load87_out sc_out sc_lv 16 signal 22 } 
	{ retval_1_0_1_0_0_0_load87_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ retval_1_0_0_0_0_0_load85_out sc_out sc_lv 16 signal 23 } 
	{ retval_1_0_0_0_0_0_load85_out_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mux_case_146", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_146", "role": "default" }} , 
 	{ "name": "mux_case_045", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_045", "role": "default" }} , 
 	{ "name": "mux_case_148", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_148", "role": "default" }} , 
 	{ "name": "mux_case_047", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_047", "role": "default" }} , 
 	{ "name": "mux_case_150", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_150", "role": "default" }} , 
 	{ "name": "mux_case_049", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_049", "role": "default" }} , 
 	{ "name": "mux_case_152", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_152", "role": "default" }} , 
 	{ "name": "mux_case_051", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_051", "role": "default" }} , 
 	{ "name": "mux_case_154", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_154", "role": "default" }} , 
 	{ "name": "mux_case_053", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_053", "role": "default" }} , 
 	{ "name": "mux_case_156", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_156", "role": "default" }} , 
 	{ "name": "mux_case_055", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_055", "role": "default" }} , 
 	{ "name": "retval_4_1_0_0_0_load107_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_4_1_0_0_0_load107_out", "role": "default" }} , 
 	{ "name": "retval_4_1_0_0_0_load107_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_4_1_0_0_0_load107_out", "role": "ap_vld" }} , 
 	{ "name": "retval_4_0_0_0_0_load105_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_4_0_0_0_0_load105_out", "role": "default" }} , 
 	{ "name": "retval_4_0_0_0_0_load105_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_4_0_0_0_0_load105_out", "role": "ap_vld" }} , 
 	{ "name": "retval_3_1_0_0_0_load103_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_3_1_0_0_0_load103_out", "role": "default" }} , 
 	{ "name": "retval_3_1_0_0_0_load103_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_3_1_0_0_0_load103_out", "role": "ap_vld" }} , 
 	{ "name": "retval_3_0_0_0_0_load101_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_3_0_0_0_0_load101_out", "role": "default" }} , 
 	{ "name": "retval_3_0_0_0_0_load101_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_3_0_0_0_0_load101_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_1_1_0_0_0_load99_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_1_1_0_0_0_load99_out", "role": "default" }} , 
 	{ "name": "retval_2_1_1_0_0_0_load99_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_1_1_0_0_0_load99_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_1_0_0_0_0_load97_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_1_0_0_0_0_load97_out", "role": "default" }} , 
 	{ "name": "retval_2_1_0_0_0_0_load97_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_1_0_0_0_0_load97_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_0_1_0_0_0_load95_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_0_1_0_0_0_load95_out", "role": "default" }} , 
 	{ "name": "retval_2_0_1_0_0_0_load95_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_0_1_0_0_0_load95_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_0_0_0_0_0_load93_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_0_0_0_0_0_load93_out", "role": "default" }} , 
 	{ "name": "retval_2_0_0_0_0_0_load93_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_0_0_0_0_0_load93_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_1_1_0_0_0_load91_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_1_1_0_0_0_load91_out", "role": "default" }} , 
 	{ "name": "retval_1_1_1_0_0_0_load91_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_1_1_0_0_0_load91_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_1_0_0_0_0_load89_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_1_0_0_0_0_load89_out", "role": "default" }} , 
 	{ "name": "retval_1_1_0_0_0_0_load89_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_1_0_0_0_0_load89_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_0_1_0_0_0_load87_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_0_1_0_0_0_load87_out", "role": "default" }} , 
 	{ "name": "retval_1_0_1_0_0_0_load87_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_0_1_0_0_0_load87_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_0_0_0_0_0_load85_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_0_0_0_0_0_load85_out", "role": "default" }} , 
 	{ "name": "retval_1_0_0_0_0_0_load85_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_0_0_0_0_0_load85_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_156_9",
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
			{"Name" : "mux_case_146", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_045", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_148", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_047", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_150", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_049", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_152", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_051", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_154", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_053", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_156", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_055", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_4_1_0_0_0_load107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_4_0_0_0_0_load105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_3_1_0_0_0_load103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_3_0_0_0_0_load101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_1_1_0_0_0_load99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_1_0_0_0_0_load97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_0_1_0_0_0_load95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_0_0_0_0_0_load93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_1_1_0_0_0_load91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_1_0_0_0_0_load89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_0_1_0_0_0_load87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_0_0_0_0_0_load85_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_Pipeline_VITIS_LOOP_156_9 {
		mux_case_146 {Type I LastRead 0 FirstWrite -1}
		mux_case_045 {Type I LastRead 0 FirstWrite -1}
		mux_case_148 {Type I LastRead 0 FirstWrite -1}
		mux_case_047 {Type I LastRead 0 FirstWrite -1}
		mux_case_150 {Type I LastRead 0 FirstWrite -1}
		mux_case_049 {Type I LastRead 0 FirstWrite -1}
		mux_case_152 {Type I LastRead 0 FirstWrite -1}
		mux_case_051 {Type I LastRead 0 FirstWrite -1}
		mux_case_154 {Type I LastRead 0 FirstWrite -1}
		mux_case_053 {Type I LastRead 0 FirstWrite -1}
		mux_case_156 {Type I LastRead 0 FirstWrite -1}
		mux_case_055 {Type I LastRead 0 FirstWrite -1}
		retval_4_1_0_0_0_load107_out {Type O LastRead -1 FirstWrite 0}
		retval_4_0_0_0_0_load105_out {Type O LastRead -1 FirstWrite 0}
		retval_3_1_0_0_0_load103_out {Type O LastRead -1 FirstWrite 0}
		retval_3_0_0_0_0_load101_out {Type O LastRead -1 FirstWrite 0}
		retval_2_1_1_0_0_0_load99_out {Type O LastRead -1 FirstWrite 0}
		retval_2_1_0_0_0_0_load97_out {Type O LastRead -1 FirstWrite 0}
		retval_2_0_1_0_0_0_load95_out {Type O LastRead -1 FirstWrite 0}
		retval_2_0_0_0_0_0_load93_out {Type O LastRead -1 FirstWrite 0}
		retval_1_1_1_0_0_0_load91_out {Type O LastRead -1 FirstWrite 0}
		retval_1_1_0_0_0_0_load89_out {Type O LastRead -1 FirstWrite 0}
		retval_1_0_1_0_0_0_load87_out {Type O LastRead -1 FirstWrite 0}
		retval_1_0_0_0_0_0_load85_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mux_case_146 { ap_none {  { mux_case_146 in_data 0 16 } } }
	mux_case_045 { ap_none {  { mux_case_045 in_data 0 16 } } }
	mux_case_148 { ap_none {  { mux_case_148 in_data 0 16 } } }
	mux_case_047 { ap_none {  { mux_case_047 in_data 0 16 } } }
	mux_case_150 { ap_none {  { mux_case_150 in_data 0 16 } } }
	mux_case_049 { ap_none {  { mux_case_049 in_data 0 16 } } }
	mux_case_152 { ap_none {  { mux_case_152 in_data 0 16 } } }
	mux_case_051 { ap_none {  { mux_case_051 in_data 0 16 } } }
	mux_case_154 { ap_none {  { mux_case_154 in_data 0 16 } } }
	mux_case_053 { ap_none {  { mux_case_053 in_data 0 16 } } }
	mux_case_156 { ap_none {  { mux_case_156 in_data 0 16 } } }
	mux_case_055 { ap_none {  { mux_case_055 in_data 0 16 } } }
	retval_4_1_0_0_0_load107_out { ap_vld {  { retval_4_1_0_0_0_load107_out out_data 1 16 }  { retval_4_1_0_0_0_load107_out_ap_vld out_vld 1 1 } } }
	retval_4_0_0_0_0_load105_out { ap_vld {  { retval_4_0_0_0_0_load105_out out_data 1 16 }  { retval_4_0_0_0_0_load105_out_ap_vld out_vld 1 1 } } }
	retval_3_1_0_0_0_load103_out { ap_vld {  { retval_3_1_0_0_0_load103_out out_data 1 16 }  { retval_3_1_0_0_0_load103_out_ap_vld out_vld 1 1 } } }
	retval_3_0_0_0_0_load101_out { ap_vld {  { retval_3_0_0_0_0_load101_out out_data 1 16 }  { retval_3_0_0_0_0_load101_out_ap_vld out_vld 1 1 } } }
	retval_2_1_1_0_0_0_load99_out { ap_vld {  { retval_2_1_1_0_0_0_load99_out out_data 1 16 }  { retval_2_1_1_0_0_0_load99_out_ap_vld out_vld 1 1 } } }
	retval_2_1_0_0_0_0_load97_out { ap_vld {  { retval_2_1_0_0_0_0_load97_out out_data 1 16 }  { retval_2_1_0_0_0_0_load97_out_ap_vld out_vld 1 1 } } }
	retval_2_0_1_0_0_0_load95_out { ap_vld {  { retval_2_0_1_0_0_0_load95_out out_data 1 16 }  { retval_2_0_1_0_0_0_load95_out_ap_vld out_vld 1 1 } } }
	retval_2_0_0_0_0_0_load93_out { ap_vld {  { retval_2_0_0_0_0_0_load93_out out_data 1 16 }  { retval_2_0_0_0_0_0_load93_out_ap_vld out_vld 1 1 } } }
	retval_1_1_1_0_0_0_load91_out { ap_vld {  { retval_1_1_1_0_0_0_load91_out out_data 1 16 }  { retval_1_1_1_0_0_0_load91_out_ap_vld out_vld 1 1 } } }
	retval_1_1_0_0_0_0_load89_out { ap_vld {  { retval_1_1_0_0_0_0_load89_out out_data 1 16 }  { retval_1_1_0_0_0_0_load89_out_ap_vld out_vld 1 1 } } }
	retval_1_0_1_0_0_0_load87_out { ap_vld {  { retval_1_0_1_0_0_0_load87_out out_data 1 16 }  { retval_1_0_1_0_0_0_load87_out_ap_vld out_vld 1 1 } } }
	retval_1_0_0_0_0_0_load85_out { ap_vld {  { retval_1_0_0_0_0_0_load85_out out_data 1 16 }  { retval_1_0_0_0_0_0_load85_out_ap_vld out_vld 1 1 } } }
}
