set moduleName spi_master_Pipeline_VITIS_LOOP_30_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 4
set C_modelName {spi_master_Pipeline_VITIS_LOOP_30_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ received_data int 32 regular  }
	{ sclk int 1 regular {pointer 1 directio }  }
	{ send_data int 32 regular  }
	{ mosi int 1 regular {pointer 1 directio }  }
	{ miso int 1 regular {pointer 0 directio }  }
	{ received_data_3_out int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "received_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sclk", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "send_data", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mosi", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "miso", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "received_data_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sclk_ap_ack sc_in sc_logic 1 outacc 1 } 
	{ mosi_ap_ack sc_in sc_logic 1 outacc 3 } 
	{ miso_ap_vld sc_in sc_logic 1 invld 4 } 
	{ received_data sc_in sc_lv 32 signal 0 } 
	{ sclk sc_out sc_lv 1 signal 1 } 
	{ sclk_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ send_data sc_in sc_lv 32 signal 2 } 
	{ mosi sc_out sc_lv 1 signal 3 } 
	{ mosi_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ miso sc_in sc_lv 1 signal 4 } 
	{ miso_ap_ack sc_out sc_logic 1 inacc 4 } 
	{ received_data_3_out sc_out sc_lv 32 signal 5 } 
	{ received_data_3_out_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sclk_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "sclk", "role": "ap_ack" }} , 
 	{ "name": "mosi_ap_ack", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "mosi", "role": "ap_ack" }} , 
 	{ "name": "miso_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "miso", "role": "ap_vld" }} , 
 	{ "name": "received_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "received_data", "role": "default" }} , 
 	{ "name": "sclk", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sclk", "role": "default" }} , 
 	{ "name": "sclk_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sclk", "role": "ap_vld" }} , 
 	{ "name": "send_data", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "send_data", "role": "default" }} , 
 	{ "name": "mosi", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mosi", "role": "default" }} , 
 	{ "name": "mosi_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "mosi", "role": "ap_vld" }} , 
 	{ "name": "miso", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "miso", "role": "default" }} , 
 	{ "name": "miso_ap_ack", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "miso", "role": "ap_ack" }} , 
 	{ "name": "received_data_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "received_data_3_out", "role": "default" }} , 
 	{ "name": "received_data_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "received_data_3_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "spi_master_Pipeline_VITIS_LOOP_30_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "received_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "sclk", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sclk_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "send_data", "Type" : "None", "Direction" : "I"},
			{"Name" : "mosi", "Type" : "HS", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mosi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "miso", "Type" : "HS", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "miso_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "received_data_3_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_30_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bitselect_1ns_32ns_32ns_1_1_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	spi_master_Pipeline_VITIS_LOOP_30_2 {
		received_data {Type I LastRead 0 FirstWrite -1}
		sclk {Type O LastRead -1 FirstWrite 1}
		send_data {Type I LastRead 0 FirstWrite -1}
		mosi {Type O LastRead -1 FirstWrite 1}
		miso {Type I LastRead 1 FirstWrite -1}
		received_data_3_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "130", "Max" : "130"}
	, {"Name" : "Interval", "Min" : "130", "Max" : "130"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	received_data { ap_none {  { received_data in_data 0 32 } } }
	sclk { ap_none {  { sclk_ap_ack out_acc 0 1 }  { sclk out_data 1 1 }  { sclk_ap_vld out_vld 1 1 } } }
	send_data { ap_none {  { send_data in_data 0 32 } } }
	mosi { ap_none {  { mosi_ap_ack out_acc 0 1 }  { mosi out_data 1 1 }  { mosi_ap_vld out_vld 1 1 } } }
	miso { ap_vld {  { miso_ap_vld in_vld 0 1 }  { miso in_data 0 1 }  { miso_ap_ack in_acc 1 1 } } }
	received_data_3_out { ap_vld {  { received_data_3_out out_data 1 32 }  { received_data_3_out_ap_vld out_vld 1 1 } } }
}
