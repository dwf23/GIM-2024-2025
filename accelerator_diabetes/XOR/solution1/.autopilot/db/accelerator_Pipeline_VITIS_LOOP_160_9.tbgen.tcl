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
set C_modelArgList {
	{ bias_1_local_1_5 int 16 regular  }
	{ bias_1_local_0_5 int 16 regular  }
	{ bias_2_local_1_5 int 16 regular  }
	{ bias_2_local_0_5 int 16 regular  }
	{ w1_local_0_1_5 int 16 regular  }
	{ w1_local_0_0_5 int 16 regular  }
	{ w2_local_0_1_5 int 16 regular  }
	{ w2_local_0_0_5 int 16 regular  }
	{ w1_local_1_1_5 int 16 regular  }
	{ w1_local_1_0_5 int 16 regular  }
	{ w2_local_1_1_5 int 16 regular  }
	{ w2_local_1_0_5 int 16 regular  }
	{ output_array_new_b2_1_0459_out int 16 regular {pointer 1}  }
	{ output_array_new_b2_0_0458_out int 16 regular {pointer 1}  }
	{ output_array_new_b1_1_0457_out int 16 regular {pointer 1}  }
	{ output_array_new_b1_0_0456_out int 16 regular {pointer 1}  }
	{ output_array_new_w2_1_1_0455_out int 16 regular {pointer 1}  }
	{ output_array_new_w2_1_0_0454_out int 16 regular {pointer 1}  }
	{ output_array_new_w2_0_1_0453_out int 16 regular {pointer 1}  }
	{ output_array_new_w2_0_0_0452_out int 16 regular {pointer 1}  }
	{ output_array_new_w1_1_1_0451_out int 16 regular {pointer 1}  }
	{ output_array_new_w1_1_0_0450_out int 16 regular {pointer 1}  }
	{ output_array_new_w1_0_1_0449_out int 16 regular {pointer 1}  }
	{ output_array_new_w1_0_0_0448_out int 16 regular {pointer 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "bias_1_local_1_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_1_local_0_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2_local_1_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "bias_2_local_0_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_0_1_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_0_0_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_0_1_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_0_0_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_1_1_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w1_local_1_0_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_1_1_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "w2_local_1_0_5", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "output_array_new_b2_1_0459_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_b2_0_0458_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_b1_1_0457_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_b1_0_0456_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_w2_1_1_0455_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_w2_1_0_0454_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_w2_0_1_0453_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_w2_0_0_0452_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_w1_1_1_0451_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_w1_1_0_0450_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_w1_0_1_0449_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_array_new_w1_0_0_0448_out", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bias_1_local_1_5 sc_in sc_lv 16 signal 0 } 
	{ bias_1_local_0_5 sc_in sc_lv 16 signal 1 } 
	{ bias_2_local_1_5 sc_in sc_lv 16 signal 2 } 
	{ bias_2_local_0_5 sc_in sc_lv 16 signal 3 } 
	{ w1_local_0_1_5 sc_in sc_lv 16 signal 4 } 
	{ w1_local_0_0_5 sc_in sc_lv 16 signal 5 } 
	{ w2_local_0_1_5 sc_in sc_lv 16 signal 6 } 
	{ w2_local_0_0_5 sc_in sc_lv 16 signal 7 } 
	{ w1_local_1_1_5 sc_in sc_lv 16 signal 8 } 
	{ w1_local_1_0_5 sc_in sc_lv 16 signal 9 } 
	{ w2_local_1_1_5 sc_in sc_lv 16 signal 10 } 
	{ w2_local_1_0_5 sc_in sc_lv 16 signal 11 } 
	{ output_array_new_b2_1_0459_out sc_out sc_lv 16 signal 12 } 
	{ output_array_new_b2_1_0459_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ output_array_new_b2_0_0458_out sc_out sc_lv 16 signal 13 } 
	{ output_array_new_b2_0_0458_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ output_array_new_b1_1_0457_out sc_out sc_lv 16 signal 14 } 
	{ output_array_new_b1_1_0457_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ output_array_new_b1_0_0456_out sc_out sc_lv 16 signal 15 } 
	{ output_array_new_b1_0_0456_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ output_array_new_w2_1_1_0455_out sc_out sc_lv 16 signal 16 } 
	{ output_array_new_w2_1_1_0455_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ output_array_new_w2_1_0_0454_out sc_out sc_lv 16 signal 17 } 
	{ output_array_new_w2_1_0_0454_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ output_array_new_w2_0_1_0453_out sc_out sc_lv 16 signal 18 } 
	{ output_array_new_w2_0_1_0453_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ output_array_new_w2_0_0_0452_out sc_out sc_lv 16 signal 19 } 
	{ output_array_new_w2_0_0_0452_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ output_array_new_w1_1_1_0451_out sc_out sc_lv 16 signal 20 } 
	{ output_array_new_w1_1_1_0451_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ output_array_new_w1_1_0_0450_out sc_out sc_lv 16 signal 21 } 
	{ output_array_new_w1_1_0_0450_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ output_array_new_w1_0_1_0449_out sc_out sc_lv 16 signal 22 } 
	{ output_array_new_w1_0_1_0449_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ output_array_new_w1_0_0_0448_out sc_out sc_lv 16 signal 23 } 
	{ output_array_new_w1_0_0_0448_out_ap_vld sc_out sc_logic 1 outvld 23 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bias_1_local_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_1_5", "role": "default" }} , 
 	{ "name": "bias_1_local_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_1_local_0_5", "role": "default" }} , 
 	{ "name": "bias_2_local_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_1_5", "role": "default" }} , 
 	{ "name": "bias_2_local_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "bias_2_local_0_5", "role": "default" }} , 
 	{ "name": "w1_local_0_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_0_1_5", "role": "default" }} , 
 	{ "name": "w1_local_0_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_0_0_5", "role": "default" }} , 
 	{ "name": "w2_local_0_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_0_1_5", "role": "default" }} , 
 	{ "name": "w2_local_0_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_0_0_5", "role": "default" }} , 
 	{ "name": "w1_local_1_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_1_5", "role": "default" }} , 
 	{ "name": "w1_local_1_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w1_local_1_0_5", "role": "default" }} , 
 	{ "name": "w2_local_1_1_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_1_5", "role": "default" }} , 
 	{ "name": "w2_local_1_0_5", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "w2_local_1_0_5", "role": "default" }} , 
 	{ "name": "output_array_new_b2_1_0459_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_b2_1_0459_out", "role": "default" }} , 
 	{ "name": "output_array_new_b2_1_0459_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_b2_1_0459_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_b2_0_0458_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_b2_0_0458_out", "role": "default" }} , 
 	{ "name": "output_array_new_b2_0_0458_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_b2_0_0458_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_b1_1_0457_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_b1_1_0457_out", "role": "default" }} , 
 	{ "name": "output_array_new_b1_1_0457_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_b1_1_0457_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_b1_0_0456_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_b1_0_0456_out", "role": "default" }} , 
 	{ "name": "output_array_new_b1_0_0456_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_b1_0_0456_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_w2_1_1_0455_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_w2_1_1_0455_out", "role": "default" }} , 
 	{ "name": "output_array_new_w2_1_1_0455_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_w2_1_1_0455_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_w2_1_0_0454_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_w2_1_0_0454_out", "role": "default" }} , 
 	{ "name": "output_array_new_w2_1_0_0454_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_w2_1_0_0454_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_w2_0_1_0453_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_w2_0_1_0453_out", "role": "default" }} , 
 	{ "name": "output_array_new_w2_0_1_0453_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_w2_0_1_0453_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_w2_0_0_0452_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_w2_0_0_0452_out", "role": "default" }} , 
 	{ "name": "output_array_new_w2_0_0_0452_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_w2_0_0_0452_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_w1_1_1_0451_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_w1_1_1_0451_out", "role": "default" }} , 
 	{ "name": "output_array_new_w1_1_1_0451_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_w1_1_1_0451_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_w1_1_0_0450_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_w1_1_0_0450_out", "role": "default" }} , 
 	{ "name": "output_array_new_w1_1_0_0450_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_w1_1_0_0450_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_w1_0_1_0449_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_w1_0_1_0449_out", "role": "default" }} , 
 	{ "name": "output_array_new_w1_0_1_0449_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_w1_0_1_0449_out", "role": "ap_vld" }} , 
 	{ "name": "output_array_new_w1_0_0_0448_out", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "output_array_new_w1_0_0_0448_out", "role": "default" }} , 
 	{ "name": "output_array_new_w1_0_0_0448_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "output_array_new_w1_0_0_0448_out", "role": "ap_vld" }}  ]}

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
			{"Name" : "bias_1_local_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_1_local_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_local_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_2_local_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_0_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_0_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_0_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_0_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_1_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w1_local_1_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_1_1_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w2_local_1_0_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_array_new_b2_1_0459_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_b2_0_0458_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_b1_1_0457_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_b1_0_0456_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_w2_1_1_0455_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_w2_1_0_0454_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_w2_0_1_0453_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_w2_0_0_0452_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_w1_1_1_0451_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_w1_1_0_0450_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_w1_0_1_0449_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "output_array_new_w1_0_0_0448_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_160_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	accelerator_Pipeline_VITIS_LOOP_160_9 {
		bias_1_local_1_5 {Type I LastRead 0 FirstWrite -1}
		bias_1_local_0_5 {Type I LastRead 0 FirstWrite -1}
		bias_2_local_1_5 {Type I LastRead 0 FirstWrite -1}
		bias_2_local_0_5 {Type I LastRead 0 FirstWrite -1}
		w1_local_0_1_5 {Type I LastRead 0 FirstWrite -1}
		w1_local_0_0_5 {Type I LastRead 0 FirstWrite -1}
		w2_local_0_1_5 {Type I LastRead 0 FirstWrite -1}
		w2_local_0_0_5 {Type I LastRead 0 FirstWrite -1}
		w1_local_1_1_5 {Type I LastRead 0 FirstWrite -1}
		w1_local_1_0_5 {Type I LastRead 0 FirstWrite -1}
		w2_local_1_1_5 {Type I LastRead 0 FirstWrite -1}
		w2_local_1_0_5 {Type I LastRead 0 FirstWrite -1}
		output_array_new_b2_1_0459_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_b2_0_0458_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_b1_1_0457_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_b1_0_0456_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_w2_1_1_0455_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_w2_1_0_0454_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_w2_0_1_0453_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_w2_0_0_0452_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_w1_1_1_0451_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_w1_1_0_0450_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_w1_0_1_0449_out {Type O LastRead -1 FirstWrite 0}
		output_array_new_w1_0_0_0448_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bias_1_local_1_5 { ap_none {  { bias_1_local_1_5 in_data 0 16 } } }
	bias_1_local_0_5 { ap_none {  { bias_1_local_0_5 in_data 0 16 } } }
	bias_2_local_1_5 { ap_none {  { bias_2_local_1_5 in_data 0 16 } } }
	bias_2_local_0_5 { ap_none {  { bias_2_local_0_5 in_data 0 16 } } }
	w1_local_0_1_5 { ap_none {  { w1_local_0_1_5 in_data 0 16 } } }
	w1_local_0_0_5 { ap_none {  { w1_local_0_0_5 in_data 0 16 } } }
	w2_local_0_1_5 { ap_none {  { w2_local_0_1_5 in_data 0 16 } } }
	w2_local_0_0_5 { ap_none {  { w2_local_0_0_5 in_data 0 16 } } }
	w1_local_1_1_5 { ap_none {  { w1_local_1_1_5 in_data 0 16 } } }
	w1_local_1_0_5 { ap_none {  { w1_local_1_0_5 in_data 0 16 } } }
	w2_local_1_1_5 { ap_none {  { w2_local_1_1_5 in_data 0 16 } } }
	w2_local_1_0_5 { ap_none {  { w2_local_1_0_5 in_data 0 16 } } }
	output_array_new_b2_1_0459_out { ap_vld {  { output_array_new_b2_1_0459_out out_data 1 16 }  { output_array_new_b2_1_0459_out_ap_vld out_vld 1 1 } } }
	output_array_new_b2_0_0458_out { ap_vld {  { output_array_new_b2_0_0458_out out_data 1 16 }  { output_array_new_b2_0_0458_out_ap_vld out_vld 1 1 } } }
	output_array_new_b1_1_0457_out { ap_vld {  { output_array_new_b1_1_0457_out out_data 1 16 }  { output_array_new_b1_1_0457_out_ap_vld out_vld 1 1 } } }
	output_array_new_b1_0_0456_out { ap_vld {  { output_array_new_b1_0_0456_out out_data 1 16 }  { output_array_new_b1_0_0456_out_ap_vld out_vld 1 1 } } }
	output_array_new_w2_1_1_0455_out { ap_vld {  { output_array_new_w2_1_1_0455_out out_data 1 16 }  { output_array_new_w2_1_1_0455_out_ap_vld out_vld 1 1 } } }
	output_array_new_w2_1_0_0454_out { ap_vld {  { output_array_new_w2_1_0_0454_out out_data 1 16 }  { output_array_new_w2_1_0_0454_out_ap_vld out_vld 1 1 } } }
	output_array_new_w2_0_1_0453_out { ap_vld {  { output_array_new_w2_0_1_0453_out out_data 1 16 }  { output_array_new_w2_0_1_0453_out_ap_vld out_vld 1 1 } } }
	output_array_new_w2_0_0_0452_out { ap_vld {  { output_array_new_w2_0_0_0452_out out_data 1 16 }  { output_array_new_w2_0_0_0452_out_ap_vld out_vld 1 1 } } }
	output_array_new_w1_1_1_0451_out { ap_vld {  { output_array_new_w1_1_1_0451_out out_data 1 16 }  { output_array_new_w1_1_1_0451_out_ap_vld out_vld 1 1 } } }
	output_array_new_w1_1_0_0450_out { ap_vld {  { output_array_new_w1_1_0_0450_out out_data 1 16 }  { output_array_new_w1_1_0_0450_out_ap_vld out_vld 1 1 } } }
	output_array_new_w1_0_1_0449_out { ap_vld {  { output_array_new_w1_0_1_0449_out out_data 1 16 }  { output_array_new_w1_0_1_0449_out_ap_vld out_vld 1 1 } } }
	output_array_new_w1_0_0_0448_out { ap_vld {  { output_array_new_w1_0_0_0448_out out_data 1 16 }  { output_array_new_w1_0_0_0448_out_ap_vld out_vld 1 1 } } }
}
