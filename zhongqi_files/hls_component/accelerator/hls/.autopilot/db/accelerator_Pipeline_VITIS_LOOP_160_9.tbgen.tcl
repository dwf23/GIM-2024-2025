set moduleName accelerator_Pipeline_VITIS_LOOP_160_9
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
set C_modelName {accelerator_Pipeline_VITIS_LOOP_160_9}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ p_0_0_01382_1_lcssa_lcssa int 16 regular  }
	{ p_0_0_01382_lcssa_lcssa int 16 regular  }
	{ p_0_0_01385_1_lcssa_lcssa int 16 regular  }
	{ p_0_0_01385_lcssa_lcssa int 16 regular  }
	{ mux_case_173 int 16 regular  }
	{ mux_case_072 int 16 regular  }
	{ mux_case_175 int 16 regular  }
	{ mux_case_074 int 16 regular  }
	{ mux_case_177 int 16 regular  }
	{ mux_case_076 int 16 regular  }
	{ mux_case_179 int 16 regular  }
	{ mux_case_078 int 16 regular  }
	{ retval_4_1_0_0_0_load134_out int 16 regular {pointer 1}  }
	{ retval_4_0_0_0_0_load132_out int 16 regular {pointer 1}  }
	{ retval_3_1_0_0_0_load130_out int 16 regular {pointer 1}  }
	{ retval_3_0_0_0_0_load128_out int 16 regular {pointer 1}  }
	{ retval_2_1_1_0_0_0_load126_out int 16 regular {pointer 1}  }
	{ retval_2_1_0_0_0_0_load124_out int 16 regular {pointer 1}  }
	{ retval_2_0_1_0_0_0_load122_out int 16 regular {pointer 1}  }
	{ retval_2_0_0_0_0_0_load120_out int 16 regular {pointer 1}  }
	{ retval_1_1_1_0_0_0_load118_out int 16 regular {pointer 1}  }
	{ retval_1_1_0_0_0_0_load116_out int 16 regular {pointer 1}  }
	{ retval_1_0_1_0_0_0_load114_out int 16 regular {pointer 1}  }
	{ retval_1_0_0_0_0_0_load112_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_0_0_01382_1_lcssa_lcssa", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01382_lcssa_lcssa", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01385_1_lcssa_lcssa", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_0_0_01385_lcssa_lcssa", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_173", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_072", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_175", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_074", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_177", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_076", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_179", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "mux_case_078", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "retval_4_1_0_0_0_load134_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_4_0_0_0_0_load132_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_3_1_0_0_0_load130_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_3_0_0_0_0_load128_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_1_1_0_0_0_load126_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_1_0_0_0_0_load124_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_0_1_0_0_0_load122_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_2_0_0_0_0_0_load120_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_1_1_0_0_0_load118_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_1_0_0_0_0_load116_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_0_1_0_0_0_load114_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "retval_1_0_0_0_0_0_load112_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_0_0_01382_1_lcssa_lcssa sc_in sc_lv 16 signal 0 } 
	{ p_0_0_01382_lcssa_lcssa sc_in sc_lv 16 signal 1 } 
	{ p_0_0_01385_1_lcssa_lcssa sc_in sc_lv 16 signal 2 } 
	{ p_0_0_01385_lcssa_lcssa sc_in sc_lv 16 signal 3 } 
	{ mux_case_173 sc_in sc_lv 16 signal 4 } 
	{ mux_case_072 sc_in sc_lv 16 signal 5 } 
	{ mux_case_175 sc_in sc_lv 16 signal 6 } 
	{ mux_case_074 sc_in sc_lv 16 signal 7 } 
	{ mux_case_177 sc_in sc_lv 16 signal 8 } 
	{ mux_case_076 sc_in sc_lv 16 signal 9 } 
	{ mux_case_179 sc_in sc_lv 16 signal 10 } 
	{ mux_case_078 sc_in sc_lv 16 signal 11 } 
	{ retval_4_1_0_0_0_load134_out sc_out sc_lv 16 signal 12 } 
	{ retval_4_1_0_0_0_load134_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ retval_4_0_0_0_0_load132_out sc_out sc_lv 16 signal 13 } 
	{ retval_4_0_0_0_0_load132_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ retval_3_1_0_0_0_load130_out sc_out sc_lv 16 signal 14 } 
	{ retval_3_1_0_0_0_load130_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ retval_3_0_0_0_0_load128_out sc_out sc_lv 16 signal 15 } 
	{ retval_3_0_0_0_0_load128_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ retval_2_1_1_0_0_0_load126_out sc_out sc_lv 16 signal 16 } 
	{ retval_2_1_1_0_0_0_load126_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ retval_2_1_0_0_0_0_load124_out sc_out sc_lv 16 signal 17 } 
	{ retval_2_1_0_0_0_0_load124_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ retval_2_0_1_0_0_0_load122_out sc_out sc_lv 16 signal 18 } 
	{ retval_2_0_1_0_0_0_load122_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ retval_2_0_0_0_0_0_load120_out sc_out sc_lv 16 signal 19 } 
	{ retval_2_0_0_0_0_0_load120_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ retval_1_1_1_0_0_0_load118_out sc_out sc_lv 16 signal 20 } 
	{ retval_1_1_1_0_0_0_load118_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ retval_1_1_0_0_0_0_load116_out sc_out sc_lv 16 signal 21 } 
	{ retval_1_1_0_0_0_0_load116_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ retval_1_0_1_0_0_0_load114_out sc_out sc_lv 16 signal 22 } 
	{ retval_1_0_1_0_0_0_load114_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ retval_1_0_0_0_0_0_load112_out sc_out sc_lv 16 signal 23 } 
	{ retval_1_0_0_0_0_0_load112_out_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_0_0_01382_1_lcssa_lcssa", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01382_1_lcssa_lcssa", "role": "default" }} , 
 	{ "name": "p_0_0_01382_lcssa_lcssa", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01382_lcssa_lcssa", "role": "default" }} , 
 	{ "name": "p_0_0_01385_1_lcssa_lcssa", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01385_1_lcssa_lcssa", "role": "default" }} , 
 	{ "name": "p_0_0_01385_lcssa_lcssa", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_0_0_01385_lcssa_lcssa", "role": "default" }} , 
 	{ "name": "mux_case_173", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_173", "role": "default" }} , 
 	{ "name": "mux_case_072", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_072", "role": "default" }} , 
 	{ "name": "mux_case_175", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_175", "role": "default" }} , 
 	{ "name": "mux_case_074", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_074", "role": "default" }} , 
 	{ "name": "mux_case_177", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_177", "role": "default" }} , 
 	{ "name": "mux_case_076", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_076", "role": "default" }} , 
 	{ "name": "mux_case_179", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_179", "role": "default" }} , 
 	{ "name": "mux_case_078", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "mux_case_078", "role": "default" }} , 
 	{ "name": "retval_4_1_0_0_0_load134_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_4_1_0_0_0_load134_out", "role": "default" }} , 
 	{ "name": "retval_4_1_0_0_0_load134_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_4_1_0_0_0_load134_out", "role": "ap_vld" }} , 
 	{ "name": "retval_4_0_0_0_0_load132_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_4_0_0_0_0_load132_out", "role": "default" }} , 
 	{ "name": "retval_4_0_0_0_0_load132_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_4_0_0_0_0_load132_out", "role": "ap_vld" }} , 
 	{ "name": "retval_3_1_0_0_0_load130_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_3_1_0_0_0_load130_out", "role": "default" }} , 
 	{ "name": "retval_3_1_0_0_0_load130_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_3_1_0_0_0_load130_out", "role": "ap_vld" }} , 
 	{ "name": "retval_3_0_0_0_0_load128_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_3_0_0_0_0_load128_out", "role": "default" }} , 
 	{ "name": "retval_3_0_0_0_0_load128_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_3_0_0_0_0_load128_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_1_1_0_0_0_load126_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_1_1_0_0_0_load126_out", "role": "default" }} , 
 	{ "name": "retval_2_1_1_0_0_0_load126_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_1_1_0_0_0_load126_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_1_0_0_0_0_load124_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_1_0_0_0_0_load124_out", "role": "default" }} , 
 	{ "name": "retval_2_1_0_0_0_0_load124_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_1_0_0_0_0_load124_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_0_1_0_0_0_load122_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_0_1_0_0_0_load122_out", "role": "default" }} , 
 	{ "name": "retval_2_0_1_0_0_0_load122_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_0_1_0_0_0_load122_out", "role": "ap_vld" }} , 
 	{ "name": "retval_2_0_0_0_0_0_load120_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_2_0_0_0_0_0_load120_out", "role": "default" }} , 
 	{ "name": "retval_2_0_0_0_0_0_load120_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_2_0_0_0_0_0_load120_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_1_1_0_0_0_load118_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_1_1_0_0_0_load118_out", "role": "default" }} , 
 	{ "name": "retval_1_1_1_0_0_0_load118_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_1_1_0_0_0_load118_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_1_0_0_0_0_load116_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_1_0_0_0_0_load116_out", "role": "default" }} , 
 	{ "name": "retval_1_1_0_0_0_0_load116_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_1_0_0_0_0_load116_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_0_1_0_0_0_load114_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_0_1_0_0_0_load114_out", "role": "default" }} , 
 	{ "name": "retval_1_0_1_0_0_0_load114_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_0_1_0_0_0_load114_out", "role": "ap_vld" }} , 
 	{ "name": "retval_1_0_0_0_0_0_load112_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "retval_1_0_0_0_0_0_load112_out", "role": "default" }} , 
 	{ "name": "retval_1_0_0_0_0_0_load112_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "retval_1_0_0_0_0_0_load112_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_160_9",
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
			{"Name" : "p_0_0_01382_1_lcssa_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01382_lcssa_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01385_1_lcssa_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_0_0_01385_lcssa_lcssa", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_173", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_072", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_175", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_074", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_177", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_076", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_179", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_078", "Type" : "None", "Direction" : "I"},
			{"Name" : "retval_4_1_0_0_0_load134_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_4_0_0_0_0_load132_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_3_1_0_0_0_load130_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_3_0_0_0_0_load128_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_1_1_0_0_0_load126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_1_0_0_0_0_load124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_0_1_0_0_0_load122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_2_0_0_0_0_0_load120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_1_1_0_0_0_load118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_1_0_0_0_0_load116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_0_1_0_0_0_load114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "retval_1_0_0_0_0_0_load112_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_160_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_Pipeline_VITIS_LOOP_160_9 {
		p_0_0_01382_1_lcssa_lcssa {Type I LastRead 0 FirstWrite -1}
		p_0_0_01382_lcssa_lcssa {Type I LastRead 0 FirstWrite -1}
		p_0_0_01385_1_lcssa_lcssa {Type I LastRead 0 FirstWrite -1}
		p_0_0_01385_lcssa_lcssa {Type I LastRead 0 FirstWrite -1}
		mux_case_173 {Type I LastRead 0 FirstWrite -1}
		mux_case_072 {Type I LastRead 0 FirstWrite -1}
		mux_case_175 {Type I LastRead 0 FirstWrite -1}
		mux_case_074 {Type I LastRead 0 FirstWrite -1}
		mux_case_177 {Type I LastRead 0 FirstWrite -1}
		mux_case_076 {Type I LastRead 0 FirstWrite -1}
		mux_case_179 {Type I LastRead 0 FirstWrite -1}
		mux_case_078 {Type I LastRead 0 FirstWrite -1}
		retval_4_1_0_0_0_load134_out {Type O LastRead -1 FirstWrite 0}
		retval_4_0_0_0_0_load132_out {Type O LastRead -1 FirstWrite 0}
		retval_3_1_0_0_0_load130_out {Type O LastRead -1 FirstWrite 0}
		retval_3_0_0_0_0_load128_out {Type O LastRead -1 FirstWrite 0}
		retval_2_1_1_0_0_0_load126_out {Type O LastRead -1 FirstWrite 0}
		retval_2_1_0_0_0_0_load124_out {Type O LastRead -1 FirstWrite 0}
		retval_2_0_1_0_0_0_load122_out {Type O LastRead -1 FirstWrite 0}
		retval_2_0_0_0_0_0_load120_out {Type O LastRead -1 FirstWrite 0}
		retval_1_1_1_0_0_0_load118_out {Type O LastRead -1 FirstWrite 0}
		retval_1_1_0_0_0_0_load116_out {Type O LastRead -1 FirstWrite 0}
		retval_1_0_1_0_0_0_load114_out {Type O LastRead -1 FirstWrite 0}
		retval_1_0_0_0_0_0_load112_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_0_0_01382_1_lcssa_lcssa { ap_none {  { p_0_0_01382_1_lcssa_lcssa in_data 0 16 } } }
	p_0_0_01382_lcssa_lcssa { ap_none {  { p_0_0_01382_lcssa_lcssa in_data 0 16 } } }
	p_0_0_01385_1_lcssa_lcssa { ap_none {  { p_0_0_01385_1_lcssa_lcssa in_data 0 16 } } }
	p_0_0_01385_lcssa_lcssa { ap_none {  { p_0_0_01385_lcssa_lcssa in_data 0 16 } } }
	mux_case_173 { ap_none {  { mux_case_173 in_data 0 16 } } }
	mux_case_072 { ap_none {  { mux_case_072 in_data 0 16 } } }
	mux_case_175 { ap_none {  { mux_case_175 in_data 0 16 } } }
	mux_case_074 { ap_none {  { mux_case_074 in_data 0 16 } } }
	mux_case_177 { ap_none {  { mux_case_177 in_data 0 16 } } }
	mux_case_076 { ap_none {  { mux_case_076 in_data 0 16 } } }
	mux_case_179 { ap_none {  { mux_case_179 in_data 0 16 } } }
	mux_case_078 { ap_none {  { mux_case_078 in_data 0 16 } } }
	retval_4_1_0_0_0_load134_out { ap_vld {  { retval_4_1_0_0_0_load134_out out_data 1 16 }  { retval_4_1_0_0_0_load134_out_ap_vld out_vld 1 1 } } }
	retval_4_0_0_0_0_load132_out { ap_vld {  { retval_4_0_0_0_0_load132_out out_data 1 16 }  { retval_4_0_0_0_0_load132_out_ap_vld out_vld 1 1 } } }
	retval_3_1_0_0_0_load130_out { ap_vld {  { retval_3_1_0_0_0_load130_out out_data 1 16 }  { retval_3_1_0_0_0_load130_out_ap_vld out_vld 1 1 } } }
	retval_3_0_0_0_0_load128_out { ap_vld {  { retval_3_0_0_0_0_load128_out out_data 1 16 }  { retval_3_0_0_0_0_load128_out_ap_vld out_vld 1 1 } } }
	retval_2_1_1_0_0_0_load126_out { ap_vld {  { retval_2_1_1_0_0_0_load126_out out_data 1 16 }  { retval_2_1_1_0_0_0_load126_out_ap_vld out_vld 1 1 } } }
	retval_2_1_0_0_0_0_load124_out { ap_vld {  { retval_2_1_0_0_0_0_load124_out out_data 1 16 }  { retval_2_1_0_0_0_0_load124_out_ap_vld out_vld 1 1 } } }
	retval_2_0_1_0_0_0_load122_out { ap_vld {  { retval_2_0_1_0_0_0_load122_out out_data 1 16 }  { retval_2_0_1_0_0_0_load122_out_ap_vld out_vld 1 1 } } }
	retval_2_0_0_0_0_0_load120_out { ap_vld {  { retval_2_0_0_0_0_0_load120_out out_data 1 16 }  { retval_2_0_0_0_0_0_load120_out_ap_vld out_vld 1 1 } } }
	retval_1_1_1_0_0_0_load118_out { ap_vld {  { retval_1_1_1_0_0_0_load118_out out_data 1 16 }  { retval_1_1_1_0_0_0_load118_out_ap_vld out_vld 1 1 } } }
	retval_1_1_0_0_0_0_load116_out { ap_vld {  { retval_1_1_0_0_0_0_load116_out out_data 1 16 }  { retval_1_1_0_0_0_0_load116_out_ap_vld out_vld 1 1 } } }
	retval_1_0_1_0_0_0_load114_out { ap_vld {  { retval_1_0_1_0_0_0_load114_out out_data 1 16 }  { retval_1_0_1_0_0_0_load114_out_ap_vld out_vld 1 1 } } }
	retval_1_0_0_0_0_0_load112_out { ap_vld {  { retval_1_0_0_0_0_0_load112_out out_data 1 16 }  { retval_1_0_0_0_0_0_load112_out_ap_vld out_vld 1 1 } } }
}
