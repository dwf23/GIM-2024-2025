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
dict set ap_memory_interface_dict w1_0 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w1_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w2_0 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict w2_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bias_1 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict bias_2 { MEM_WIDTH 16 MEM_SIZE 4 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ w1_0 int 16 regular {axi_slave 0}  }
	{ w1_1 int 16 regular {axi_slave 0}  }
	{ w2_0 int 16 regular {axi_slave 0}  }
	{ w2_1 int 16 regular {axi_slave 0}  }
	{ bias_1 int 16 regular {axi_slave 0}  }
	{ bias_2 int 16 regular {axi_slave 0}  }
	{ training int 16 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w1_0", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "w1_1", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "w2_0", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":72}, "offset_end" : {"in":79}} , 
 	{ "Name" : "w2_1", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":80}, "offset_end" : {"in":87}} , 
 	{ "Name" : "bias_1", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "bias_2", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "training", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 16, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 256, "offset" : {"out":16}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
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
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"accelerator","role":"start","value":"0","valid_bit":"0"},{"name":"accelerator","role":"continue","value":"0","valid_bit":"4"},{"name":"accelerator","role":"auto_start","value":"0","valid_bit":"7"},{"name":"w1_0","role":"data","value":"56"},{"name":"w1_1","role":"data","value":"64"},{"name":"w2_0","role":"data","value":"72"},{"name":"w2_1","role":"data","value":"80"},{"name":"bias_1","role":"data","value":"88"},{"name":"bias_2","role":"data","value":"96"},{"name":"training","role":"data","value":"104"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"accelerator","role":"start","value":"0","valid_bit":"0"},{"name":"accelerator","role":"done","value":"0","valid_bit":"1"},{"name":"accelerator","role":"idle","value":"0","valid_bit":"2"},{"name":"accelerator","role":"ready","value":"0","valid_bit":"3"},{"name":"accelerator","role":"auto_start","value":"0","valid_bit":"7"},{"name":"return","role":"data","value":"16"}] },
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
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "26", "28"],
		"CDFG" : "accelerator",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "162", "EstimateLatencyMax" : "72663",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_accelerator_Pipeline_VITIS_LOOP_55_1_fu_402", "Port" : "bias_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "bias_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_accelerator_Pipeline_VITIS_LOOP_55_1_fu_402", "Port" : "bias_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "training", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_55_1_fu_402", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_55_1",
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
			{"Name" : "bias_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bias_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "w1_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_1_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_0_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w2_local_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w1_local_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx90_promoted157_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx89_promoted155_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx97_promoted153_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx96_promoted151_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_55_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_55_1_fu_402.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434", "Parent" : "0", "Child" : ["4", "21", "22", "23", "24", "25"],
		"CDFG" : "accelerator_Pipeline_VITIS_LOOP_73_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "146", "EstimateLatencyMax" : "72647",
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
			{"Name" : "bias_2_local_idx90_promoted157_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_local_idx89_promoted155_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_local_idx97_promoted153_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_local_idx96_promoted151_reload", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "bias_2_local_idx90_val110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_2_local_idx89_val109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx97_val108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "bias_1_local_idx96_val107_out", "Type" : "Vld", "Direction" : "O"},
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
			{"Name" : "VITIS_LOOP_73_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "148", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state146"], "QuitState" : ["ap_ST_fsm_state146"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state147", "ap_ST_fsm_state148"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596", "Parent" : "3", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
		"CDFG" : "model_array",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "9",
		"VariableLatency" : "0", "ExactLatency" : "8", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
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
	{"ID" : "5", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_32s_7s_34_1_1_U23", "Parent" : "4"},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_32s_7s_34_1_1_U24", "Parent" : "4"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_16s_16s_25_1_1_U25", "Parent" : "4"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_16s_16s_25_1_1_U26", "Parent" : "4"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_16s_16s_32_1_1_U27", "Parent" : "4"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_16s_16s_32_1_1_U28", "Parent" : "4"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_16s_16s_32_1_1_U29", "Parent" : "4"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_16s_16s_25_1_1_U30", "Parent" : "4"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_16s_16s_25_1_1_U31", "Parent" : "4"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mul_16s_16s_32_1_1_U32", "Parent" : "4"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mac_mulsub_16s_6ns_25s_25_4_1_U33", "Parent" : "4"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U34", "Parent" : "4"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U35", "Parent" : "4"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U36", "Parent" : "4"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mac_muladd_16s_16s_25ns_25_4_1_U37", "Parent" : "4"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.grp_model_array_fu_596.mac_mulsub_16s_6ns_25s_25_4_1_U38", "Parent" : "4"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.dcmp_64ns_64ns_1_2_no_dsp_1_U55", "Parent" : "3"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.sparsemux_7_2_16_1_1_U56", "Parent" : "3"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.sparsemux_7_2_16_1_1_U57", "Parent" : "3"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.sparsemux_7_2_16_1_1_U58", "Parent" : "3"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_73_3_fu_434.sparsemux_7_2_16_1_1_U59", "Parent" : "3"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_165_9_fu_485", "Parent" : "0", "Child" : ["27"],
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
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_accelerator_Pipeline_VITIS_LOOP_165_9_fu_485.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator {
		w1_0 {Type I LastRead 1 FirstWrite -1}
		w1_1 {Type I LastRead 1 FirstWrite -1}
		w2_0 {Type I LastRead 1 FirstWrite -1}
		w2_1 {Type I LastRead 1 FirstWrite -1}
		bias_1 {Type I LastRead 1 FirstWrite -1}
		bias_2 {Type I LastRead 1 FirstWrite -1}
		training {Type I LastRead 4 FirstWrite -1}}
	accelerator_Pipeline_VITIS_LOOP_55_1 {
		bias_1 {Type I LastRead 1 FirstWrite -1}
		bias_2 {Type I LastRead 1 FirstWrite -1}
		w1_1_load {Type I LastRead 0 FirstWrite -1}
		w1_0_load {Type I LastRead 0 FirstWrite -1}
		w1_1_load_1 {Type I LastRead 0 FirstWrite -1}
		w1_0_load_1 {Type I LastRead 0 FirstWrite -1}
		w2_1_load {Type I LastRead 0 FirstWrite -1}
		w2_0_load {Type I LastRead 0 FirstWrite -1}
		w2_1_load_1 {Type I LastRead 0 FirstWrite -1}
		w2_0_load_1 {Type I LastRead 0 FirstWrite -1}
		w2_local_3_out {Type O LastRead -1 FirstWrite 1}
		w2_local_2_out {Type O LastRead -1 FirstWrite 1}
		w1_local_3_out {Type O LastRead -1 FirstWrite 1}
		w1_local_2_out {Type O LastRead -1 FirstWrite 1}
		w2_local_1_out {Type O LastRead -1 FirstWrite 1}
		w2_local_out {Type O LastRead -1 FirstWrite 1}
		w1_local_1_out {Type O LastRead -1 FirstWrite 1}
		w1_local_out {Type O LastRead -1 FirstWrite 1}
		bias_2_local_idx90_promoted157_out {Type O LastRead -1 FirstWrite 1}
		bias_2_local_idx89_promoted155_out {Type O LastRead -1 FirstWrite 1}
		bias_1_local_idx97_promoted153_out {Type O LastRead -1 FirstWrite 1}
		bias_1_local_idx96_promoted151_out {Type O LastRead -1 FirstWrite 1}}
	accelerator_Pipeline_VITIS_LOOP_73_3 {
		w2_local_1_reload {Type I LastRead 0 FirstWrite -1}
		w2_local_reload {Type I LastRead 0 FirstWrite -1}
		w2_local_3_reload {Type I LastRead 0 FirstWrite -1}
		w2_local_2_reload {Type I LastRead 0 FirstWrite -1}
		w1_local_1_reload {Type I LastRead 0 FirstWrite -1}
		w1_local_reload {Type I LastRead 0 FirstWrite -1}
		w1_local_3_reload {Type I LastRead 0 FirstWrite -1}
		w1_local_2_reload {Type I LastRead 0 FirstWrite -1}
		bias_2_local_idx90_promoted157_reload {Type I LastRead 0 FirstWrite -1}
		bias_2_local_idx89_promoted155_reload {Type I LastRead 0 FirstWrite -1}
		bias_1_local_idx97_promoted153_reload {Type I LastRead 0 FirstWrite -1}
		bias_1_local_idx96_promoted151_reload {Type I LastRead 0 FirstWrite -1}
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
		bias_2_local_idx90_val110_out {Type O LastRead -1 FirstWrite 2}
		bias_2_local_idx89_val109_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_idx97_val108_out {Type O LastRead -1 FirstWrite 2}
		bias_1_local_idx96_val107_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_3_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_2_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_1_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_out {Type O LastRead -1 FirstWrite 2}
		output_array_inference_4_out {Type O LastRead -1 FirstWrite 146}
		output_array_inference_5_out {Type O LastRead -1 FirstWrite 146}
		output_array_inference_6_out {Type O LastRead -1 FirstWrite 146}
		output_array_inference_7_out {Type O LastRead -1 FirstWrite 146}
		array_back2_weight_changes_24_out {Type O LastRead -1 FirstWrite 146}
		array_back2_weight_changes_25_out {Type O LastRead -1 FirstWrite 146}
		array_back2_weight_changes_26_out {Type O LastRead -1 FirstWrite 146}
		array_back2_weight_changes_27_out {Type O LastRead -1 FirstWrite 146}
		array_back2_bias_change_8_out {Type O LastRead -1 FirstWrite 146}
		array_back2_bias_change_9_out {Type O LastRead -1 FirstWrite 146}
		array_back1_weight_changes_24_out {Type O LastRead -1 FirstWrite 146}
		array_back1_weight_changes_25_out {Type O LastRead -1 FirstWrite 146}
		array_back1_weight_changes_26_out {Type O LastRead -1 FirstWrite 146}
		array_back1_weight_changes_27_out {Type O LastRead -1 FirstWrite 146}
		array_back1_bias_change_8_out {Type O LastRead -1 FirstWrite 146}
		array_back1_bias_change_9_out {Type O LastRead -1 FirstWrite 146}}
	model_array {
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 1 FirstWrite -1}
		p_read30 {Type I LastRead 2 FirstWrite -1}
		p_read31 {Type I LastRead 3 FirstWrite -1}
		biases_0_0_val {Type I LastRead 2 FirstWrite -1}
		biases_0_1_val {Type I LastRead 7 FirstWrite -1}
		output_kmin1_0_0_val {Type I LastRead 0 FirstWrite -1}
		output_kmin1_0_1_val {Type I LastRead 1 FirstWrite -1}
		delta_k_0_0_val {Type I LastRead 0 FirstWrite -1}
		delta_k_0_1_val {Type I LastRead 2 FirstWrite -1}
		training {Type I LastRead 1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "162", "Max" : "72663"}
	, {"Name" : "Interval", "Min" : "163", "Max" : "72664"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
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
