set moduleName accelerator_controller
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
set C_modelName {accelerator_controller}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict w1 { MEM_WIDTH 16 MEM_SIZE 8 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bias_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ w1 int 16 regular {array 4 { 1 1 } 1 1 }  }
	{ bias_1 int 16 regular {array 2 { 1 3 } 1 1 }  }
	{ training int 16 regular  }
	{ data_out int 64 regular {fifo 1 volatile }  }
	{ data_in int 64 unused {pointer 0}  }
	{ expecting_input uint 1 unused {axi_slave 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "training", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "data_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "expecting_input", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 1, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ w1_address0 sc_out sc_lv 2 signal 0 } 
	{ w1_ce0 sc_out sc_logic 1 signal 0 } 
	{ w1_q0 sc_in sc_lv 16 signal 0 } 
	{ w1_address1 sc_out sc_lv 2 signal 0 } 
	{ w1_ce1 sc_out sc_logic 1 signal 0 } 
	{ w1_q1 sc_in sc_lv 16 signal 0 } 
	{ bias_1_address0 sc_out sc_lv 1 signal 1 } 
	{ bias_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ bias_1_q0 sc_in sc_lv 16 signal 1 } 
	{ training sc_in sc_lv 16 signal 2 } 
	{ data_out_din sc_out sc_lv 64 signal 3 } 
	{ data_out_full_n sc_in sc_logic 1 signal 3 } 
	{ data_out_write sc_out sc_logic 1 signal 3 } 
	{ data_in sc_in sc_lv 64 signal 4 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"accelerator_controller","role":"start","value":"0","valid_bit":"0"},{"name":"accelerator_controller","role":"continue","value":"0","valid_bit":"4"},{"name":"accelerator_controller","role":"auto_start","value":"0","valid_bit":"7"},{"name":"expecting_input","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"accelerator_controller","role":"start","value":"0","valid_bit":"0"},{"name":"accelerator_controller","role":"done","value":"0","valid_bit":"1"},{"name":"accelerator_controller","role":"idle","value":"0","valid_bit":"2"},{"name":"accelerator_controller","role":"ready","value":"0","valid_bit":"3"},{"name":"accelerator_controller","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "w1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "address0" }} , 
 	{ "name": "w1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "ce0" }} , 
 	{ "name": "w1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1", "role": "q0" }} , 
 	{ "name": "w1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "w1", "role": "address1" }} , 
 	{ "name": "w1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "w1", "role": "ce1" }} , 
 	{ "name": "w1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1", "role": "q1" }} , 
 	{ "name": "bias_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "address0" }} , 
 	{ "name": "bias_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_1", "role": "ce0" }} , 
 	{ "name": "bias_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1", "role": "q0" }} , 
 	{ "name": "training", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "training", "role": "default" }} , 
 	{ "name": "data_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out", "role": "din" }} , 
 	{ "name": "data_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "full_n" }} , 
 	{ "name": "data_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "write" }} , 
 	{ "name": "data_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "13"],
		"CDFG" : "accelerator_controller",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "119",
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
					{"ID" : "1", "SubInstance" : "grp_accelerator_controller_Pipeline_VITIS_LOOP_26_1_fu_106", "Port" : "w1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "bias_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_accelerator_controller_Pipeline_VITIS_LOOP_26_1_fu_106", "Port" : "bias_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "training", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_out", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120", "Port" : "data_out", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "data_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "expecting_input", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_26_1_fu_106", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_26_1_fu_106.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120.sparsemux_9_2_13_1_1_U9", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120.sparsemux_9_2_13_1_1_U10", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120.mul_16s_13ns_28_1_1_U11", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120.mul_16s_13ns_28_1_1_U12", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120.mul_16s_10ns_26_1_1_U13", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120.mul_16s_10ns_26_1_1_U14", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120.mac_muladd_16s_13ns_28ns_28_4_1_U15", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120.mac_muladd_16s_13ns_28ns_28_4_1_U16", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_controller_Pipeline_VITIS_LOOP_60_4_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_controller {
		w1 {Type I LastRead 1 FirstWrite -1}
		bias_1 {Type I LastRead 0 FirstWrite -1}
		training {Type I LastRead 2 FirstWrite -1}
		data_out {Type O LastRead 3 FirstWrite -1}
		data_in {Type I LastRead -1 FirstWrite -1}
		expecting_input {Type I LastRead -1 FirstWrite -1}}
	accelerator_controller_Pipeline_VITIS_LOOP_26_1 {
		w1 {Type I LastRead 1 FirstWrite -1}
		bias_1 {Type I LastRead 0 FirstWrite -1}
		w1_local_4_out {Type O LastRead -1 FirstWrite 0}
		w1_local_out {Type O LastRead -1 FirstWrite 0}
		w1_local_6_out {Type O LastRead -1 FirstWrite 0}
		w1_local_5_out {Type O LastRead -1 FirstWrite 0}
		array_back1_bias_change_1_out {Type O LastRead -1 FirstWrite 0}
		array_back1_bias_change_out {Type O LastRead -1 FirstWrite 0}}
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
	{"Name" : "Latency", "Min" : "7", "Max" : "119"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "120"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	w1 { ap_memory {  { w1_address0 mem_address 1 2 }  { w1_ce0 mem_ce 1 1 }  { w1_q0 mem_dout 0 16 }  { w1_address1 MemPortADDR2 1 2 }  { w1_ce1 MemPortCE2 1 1 }  { w1_q1 MemPortDOUT2 0 16 } } }
	bias_1 { ap_memory {  { bias_1_address0 mem_address 1 1 }  { bias_1_ce0 mem_ce 1 1 }  { bias_1_q0 mem_dout 0 16 } } }
	training { ap_none {  { training in_data 0 16 } } }
	data_out { ap_fifo {  { data_out_din fifo_data_in 1 64 }  { data_out_full_n fifo_status 0 1 }  { data_out_write fifo_port_we 1 1 } } }
	data_in { ap_none {  { data_in in_data 0 64 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	data_out { fifo_write 1 no_conditional }
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
