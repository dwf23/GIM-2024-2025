set moduleName accelerator_Pipeline_VITIS_LOOP_165_9
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
set C_modelName {accelerator_Pipeline_VITIS_LOOP_165_9}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_0_0_01214_3_1_lcssa int 16 regular  }
	{ p_0_0_01214_3_lcssa int 16 regular  }
	{ p_0_0_01217_3_1_lcssa int 16 regular  }
	{ p_0_0_01217_3_lcssa int 16 regular  }
	{ mux_case_1144 int 16 regular  }
	{ mux_case_0143 int 16 regular  }
	{ mux_case_1146 int 16 regular  }
	{ mux_case_0145 int 16 regular  }
	{ mux_case_1148 int 16 regular  }
	{ mux_case_0147 int 16 regular  }
	{ mux_case_1150 int 16 regular  }
	{ mux_case_0149 int 16 regular  }
	{ retval_4_1_0_0_0_load181_out int 16 regular {pointer 1}  }
	{ retval_4_0_0_0_0_load179_out int 16 regular {pointer 1}  }
	{ retval_3_1_0_0_0_load177_out int 16 regular {pointer 1}  }
	{ retval_3_0_0_0_0_load175_out int 16 regular {pointer 1}  }
	{ retval_2_1_1_0_0_0_load173_out int 16 regular {pointer 1}  }
	{ retval_2_1_0_0_0_0_load171_out int 16 regular {pointer 1}  }
	{ retval_2_0_1_0_0_0_load169_out int 16 regular {pointer 1}  }
	{ retval_2_0_0_0_0_0_load167_out int 16 regular {pointer 1}  }
	{ retval_1_1_1_0_0_0_load165_out int 16 regular {pointer 1}  }
	{ retval_1_1_0_0_0_0_load163_out int 16 regular {pointer 1}  }
	{ retval_1_0_1_0_0_0_load161_out int 16 regular {pointer 1}  }
	{ retval_1_0_0_0_0_0_load159_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_0_0_01214_3_1_lcssa", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01214_3_lcssa", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01217_3_1_lcssa", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01217_3_lcssa", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_1144", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_0143", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_1146", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_0145", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_1148", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_0147", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_1150", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_0149", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_4_1_0_0_0_load181_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_4_0_0_0_0_load179_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_3_1_0_0_0_load177_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_3_0_0_0_0_load175_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_1_1_0_0_0_load173_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_1_0_0_0_0_load171_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_0_1_0_0_0_load169_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_0_0_0_0_0_load167_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_1_1_0_0_0_load165_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_1_0_0_0_0_load163_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_0_1_0_0_0_load161_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_0_0_0_0_0_load159_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_0_0_01214_3_1_lcssa sc_in sc_lv 16 signal 0 } 
	{ p_0_0_01214_3_lcssa sc_in sc_lv 16 signal 1 } 
	{ p_0_0_01217_3_1_lcssa sc_in sc_lv 16 signal 2 } 
	{ p_0_0_01217_3_lcssa sc_in sc_lv 16 signal 3 } 
	{ mux_case_1144 sc_in sc_lv 16 signal 4 } 
	{ mux_case_0143 sc_in sc_lv 16 signal 5 } 
	{ mux_case_1146 sc_in sc_lv 16 signal 6 } 
	{ mux_case_0145 sc_in sc_lv 16 signal 7 } 
	{ mux_case_1148 sc_in sc_lv 16 signal 8 } 
	{ mux_case_0147 sc_in sc_lv 16 signal 9 } 
	{ mux_case_1150 sc_in sc_lv 16 signal 10 } 
	{ mux_case_0149 sc_in sc_lv 16 signal 11 } 
	{ retval_4_1_0_0_0_load181_out sc_out sc_lv 16 signal 12 } 
	{ retval_4_1_0_0_0_load181_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ retval_4_0_0_0_0_load179_out sc_out sc_lv 16 signal 13 } 
	{ retval_4_0_0_0_0_load179_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ retval_3_1_0_0_0_load177_out sc_out sc_lv 16 signal 14 } 
	{ retval_3_1_0_0_0_load177_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ retval_3_0_0_0_0_load175_out sc_out sc_lv 16 signal 15 } 
	{ retval_3_0_0_0_0_load175_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ retval_2_1_1_0_0_0_load173_out sc_out sc_lv 16 signal 16 } 
	{ retval_2_1_1_0_0_0_load173_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ retval_2_1_0_0_0_0_load171_out sc_out sc_lv 16 signal 17 } 
	{ retval_2_1_0_0_0_0_load171_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ retval_2_0_1_0_0_0_load169_out sc_out sc_lv 16 signal 18 } 
	{ retval_2_0_1_0_0_0_load169_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ retval_2_0_0_0_0_0_load167_out sc_out sc_lv 16 signal 19 } 
	{ retval_2_0_0_0_0_0_load167_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ retval_1_1_1_0_0_0_load165_out sc_out sc_lv 16 signal 20 } 
	{ retval_1_1_1_0_0_0_load165_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ retval_1_1_0_0_0_0_load163_out sc_out sc_lv 16 signal 21 } 
	{ retval_1_1_0_0_0_0_load163_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ retval_1_0_1_0_0_0_load161_out sc_out sc_lv 16 signal 22 } 
	{ retval_1_0_1_0_0_0_load161_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ retval_1_0_0_0_0_0_load159_out sc_out sc_lv 16 signal 23 } 
	{ retval_1_0_0_0_0_0_load159_out_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_0_0_01214_3_1_lcssa", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01214_3_1_lcssa", "role": "default" }} , 
 	{ "name": "p_0_0_01214_3_lcssa", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01214_3_lcssa", "role": "default" }} , 
 	{ "name": "p_0_0_01217_3_1_lcssa", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01217_3_1_lcssa", "role": "default" }} , 
 	{ "name": "p_0_0_01217_3_lcssa", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01217_3_lcssa", "role": "default" }} , 
 	{ "name": "mux_case_1144", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_1144", "role": "default" }} , 
 	{ "name": "mux_case_0143", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_0143", "role": "default" }} , 
 	{ "name": "mux_case_1146", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_1146", "role": "default" }} , 
 	{ "name": "mux_case_0145", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_0145", "role": "default" }} , 
 	{ "name": "mux_case_1148", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_1148", "role": "default" }} , 
 	{ "name": "mux_case_0147", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_0147", "role": "default" }} , 
 	{ "name": "mux_case_1150", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_1150", "role": "default" }} , 
 	{ "name": "mux_case_0149", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_0149", "role": "default" }} , 
 	{ "name": "retval_4_1_0_0_0_load181_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_4_1_0_0_0_load181_out", "role": "default" }} , 
 	{ "name": "retval_4_1_0_0_0_load181_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_4_1_0_0_0_load181_out", "role": "ap_vld" }} , 
 	{ "name": "retval_4_0_0_0_0_load179_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_4_0_0_0_0_load179_out", "role": "default" }} , 
 	{ "name": "retval_4_0_0_0_0_load179_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_4_0_0_0_0_load179_out", "role": "ap_vld" }} , 
 	{ "name": "retval_3_1_0_0_0_load177_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_3_1_0_0_0_load177_out", "role": "default" }} , 
 	{ "name": "retval_3_1_0_0_0_load177_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_3_1_0_0_0_load177_out", "role": "ap_vld" }} , 
 	{ "name": "retval_3_0_0_0_0_load175_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_3_0_0_0_0_load175_out", "role": "default" }} , 
 	{ "name": "retval_3_0_0_0_0_load175_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_3_0_0_0_0_load175_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_1_1_0_0_0_load173_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_1_1_0_0_0_load173_out", "role": "default" }} , 
 	{ "name": "retval_2_1_1_0_0_0_load173_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_1_1_0_0_0_load173_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_1_0_0_0_0_load171_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_1_0_0_0_0_load171_out", "role": "default" }} , 
 	{ "name": "retval_2_1_0_0_0_0_load171_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_1_0_0_0_0_load171_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_0_1_0_0_0_load169_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_0_1_0_0_0_load169_out", "role": "default" }} , 
 	{ "name": "retval_2_0_1_0_0_0_load169_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_0_1_0_0_0_load169_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_0_0_0_0_0_load167_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_0_0_0_0_0_load167_out", "role": "default" }} , 
 	{ "name": "retval_2_0_0_0_0_0_load167_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_0_0_0_0_0_load167_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_1_1_0_0_0_load165_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_1_1_0_0_0_load165_out", "role": "default" }} , 
 	{ "name": "retval_1_1_1_0_0_0_load165_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_1_1_0_0_0_load165_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_1_0_0_0_0_load163_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_1_0_0_0_0_load163_out", "role": "default" }} , 
 	{ "name": "retval_1_1_0_0_0_0_load163_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_1_0_0_0_0_load163_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_0_1_0_0_0_load161_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_0_1_0_0_0_load161_out", "role": "default" }} , 
 	{ "name": "retval_1_0_1_0_0_0_load161_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_0_1_0_0_0_load161_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_0_0_0_0_0_load159_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_0_0_0_0_0_load159_out", "role": "default" }} , 
 	{ "name": "retval_1_0_0_0_0_0_load159_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_0_0_0_0_0_load159_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_165_9",
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
			{"Name" : "mux_case_1144", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_0143", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1146", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_0145", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1148", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_0147", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1150", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_0149", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_4_1_0_0_0_load181_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_4_0_0_0_0_load179_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_3_1_0_0_0_load177_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_3_0_0_0_0_load175_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_1_1_0_0_0_load173_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_1_0_0_0_0_load171_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_0_1_0_0_0_load169_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_0_0_0_0_0_load167_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_1_1_0_0_0_load165_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_1_0_0_0_0_load163_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_0_1_0_0_0_load161_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_0_0_0_0_0_load159_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_165_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_Pipeline_VITIS_LOOP_165_9 {
		p_0_0_01214_3_1_lcssa {Type I LastRead 0 FirstWrite -1}
		p_0_0_01214_3_lcssa {Type I LastRead 0 FirstWrite -1}
		p_0_0_01217_3_1_lcssa {Type I LastRead 0 FirstWrite -1}
		p_0_0_01217_3_lcssa {Type I LastRead 0 FirstWrite -1}
		mux_case_1144 {Type I LastRead 0 FirstWrite -1}
		mux_case_0143 {Type I LastRead 0 FirstWrite -1}
		mux_case_1146 {Type I LastRead 0 FirstWrite -1}
		mux_case_0145 {Type I LastRead 0 FirstWrite -1}
		mux_case_1148 {Type I LastRead 0 FirstWrite -1}
		mux_case_0147 {Type I LastRead 0 FirstWrite -1}
		mux_case_1150 {Type I LastRead 0 FirstWrite -1}
		mux_case_0149 {Type I LastRead 0 FirstWrite -1}
		retval_4_1_0_0_0_load181_out {Type O LastRead -1 FirstWrite 0}
		retval_4_0_0_0_0_load179_out {Type O LastRead -1 FirstWrite 0}
		retval_3_1_0_0_0_load177_out {Type O LastRead -1 FirstWrite 0}
		retval_3_0_0_0_0_load175_out {Type O LastRead -1 FirstWrite 0}
		retval_2_1_1_0_0_0_load173_out {Type O LastRead -1 FirstWrite 0}
		retval_2_1_0_0_0_0_load171_out {Type O LastRead -1 FirstWrite 0}
		retval_2_0_1_0_0_0_load169_out {Type O LastRead -1 FirstWrite 0}
		retval_2_0_0_0_0_0_load167_out {Type O LastRead -1 FirstWrite 0}
		retval_1_1_1_0_0_0_load165_out {Type O LastRead -1 FirstWrite 0}
		retval_1_1_0_0_0_0_load163_out {Type O LastRead -1 FirstWrite 0}
		retval_1_0_1_0_0_0_load161_out {Type O LastRead -1 FirstWrite 0}
		retval_1_0_0_0_0_0_load159_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_0_0_01214_3_1_lcssa { ap_none {  { p_0_0_01214_3_1_lcssa in_data 0 16 } } }
	p_0_0_01214_3_lcssa { ap_none {  { p_0_0_01214_3_lcssa in_data 0 16 } } }
	p_0_0_01217_3_1_lcssa { ap_none {  { p_0_0_01217_3_1_lcssa in_data 0 16 } } }
	p_0_0_01217_3_lcssa { ap_none {  { p_0_0_01217_3_lcssa in_data 0 16 } } }
	mux_case_1144 { ap_none {  { mux_case_1144 in_data 0 16 } } }
	mux_case_0143 { ap_none {  { mux_case_0143 in_data 0 16 } } }
	mux_case_1146 { ap_none {  { mux_case_1146 in_data 0 16 } } }
	mux_case_0145 { ap_none {  { mux_case_0145 in_data 0 16 } } }
	mux_case_1148 { ap_none {  { mux_case_1148 in_data 0 16 } } }
	mux_case_0147 { ap_none {  { mux_case_0147 in_data 0 16 } } }
	mux_case_1150 { ap_none {  { mux_case_1150 in_data 0 16 } } }
	mux_case_0149 { ap_none {  { mux_case_0149 in_data 0 16 } } }
	retval_4_1_0_0_0_load181_out { ap_vld {  { retval_4_1_0_0_0_load181_out out_data 1 16 }  { retval_4_1_0_0_0_load181_out_ap_vld out_vld 1 1 } } }
	retval_4_0_0_0_0_load179_out { ap_vld {  { retval_4_0_0_0_0_load179_out out_data 1 16 }  { retval_4_0_0_0_0_load179_out_ap_vld out_vld 1 1 } } }
	retval_3_1_0_0_0_load177_out { ap_vld {  { retval_3_1_0_0_0_load177_out out_data 1 16 }  { retval_3_1_0_0_0_load177_out_ap_vld out_vld 1 1 } } }
	retval_3_0_0_0_0_load175_out { ap_vld {  { retval_3_0_0_0_0_load175_out out_data 1 16 }  { retval_3_0_0_0_0_load175_out_ap_vld out_vld 1 1 } } }
	retval_2_1_1_0_0_0_load173_out { ap_vld {  { retval_2_1_1_0_0_0_load173_out out_data 1 16 }  { retval_2_1_1_0_0_0_load173_out_ap_vld out_vld 1 1 } } }
	retval_2_1_0_0_0_0_load171_out { ap_vld {  { retval_2_1_0_0_0_0_load171_out out_data 1 16 }  { retval_2_1_0_0_0_0_load171_out_ap_vld out_vld 1 1 } } }
	retval_2_0_1_0_0_0_load169_out { ap_vld {  { retval_2_0_1_0_0_0_load169_out out_data 1 16 }  { retval_2_0_1_0_0_0_load169_out_ap_vld out_vld 1 1 } } }
	retval_2_0_0_0_0_0_load167_out { ap_vld {  { retval_2_0_0_0_0_0_load167_out out_data 1 16 }  { retval_2_0_0_0_0_0_load167_out_ap_vld out_vld 1 1 } } }
	retval_1_1_1_0_0_0_load165_out { ap_vld {  { retval_1_1_1_0_0_0_load165_out out_data 1 16 }  { retval_1_1_1_0_0_0_load165_out_ap_vld out_vld 1 1 } } }
	retval_1_1_0_0_0_0_load163_out { ap_vld {  { retval_1_1_0_0_0_0_load163_out out_data 1 16 }  { retval_1_1_0_0_0_0_load163_out_ap_vld out_vld 1 1 } } }
	retval_1_0_1_0_0_0_load161_out { ap_vld {  { retval_1_0_1_0_0_0_load161_out out_data 1 16 }  { retval_1_0_1_0_0_0_load161_out_ap_vld out_vld 1 1 } } }
	retval_1_0_0_0_0_0_load159_out { ap_vld {  { retval_1_0_0_0_0_0_load159_out out_data 1 16 }  { retval_1_0_0_0_0_0_load159_out_ap_vld out_vld 1 1 } } }
}
