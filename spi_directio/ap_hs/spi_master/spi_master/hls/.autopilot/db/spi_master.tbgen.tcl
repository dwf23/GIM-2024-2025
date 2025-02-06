set moduleName spi_master
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
set svuvm_can_support 1
set cdfgNum 3
set C_modelName {spi_master}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ sclk int 1 regular {pointer 1 directio }  }
	{ cs int 1 regular {pointer 1 directio }  }
	{ mosi int 1 regular {pointer 1 directio }  }
	{ miso int 1 regular {pointer 0 directio }  }
	{ data_out int 32 regular {pointer 0 directio }  }
	{ data_in int 32 regular {pointer 1 directio }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "sclk", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cs", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mosi", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "miso", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "data_out", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_in", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sclk sc_out sc_lv 1 signal 0 } 
	{ cs sc_out sc_lv 1 signal 1 } 
	{ mosi sc_out sc_lv 1 signal 2 } 
	{ miso sc_in sc_lv 1 signal 3 } 
	{ miso_ap_vld sc_in sc_logic 1 invld 3 } 
	{ data_out sc_in sc_lv 32 signal 4 } 
	{ data_out_ap_vld sc_in sc_logic 1 invld 4 } 
	{ data_in sc_out sc_lv 32 signal 5 } 
	{ data_in_ap_vld sc_out sc_logic 1 outvld 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sclk", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "sclk", "role": "default" }} , 
 	{ "name": "cs", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "cs", "role": "default" }} , 
 	{ "name": "mosi", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "mosi", "role": "default" }} , 
 	{ "name": "miso", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "miso", "role": "default" }} , 
 	{ "name": "miso_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "miso", "role": "ap_vld" }} , 
 	{ "name": "data_out", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_out", "role": "default" }} , 
 	{ "name": "data_out_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_out", "role": "ap_vld" }} , 
 	{ "name": "data_in", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data_in", "role": "default" }} , 
 	{ "name": "data_in_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "data_in", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "spi_master",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sclk", "Type" : "None", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "sclk_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cs", "Type" : "None", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "cs_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mosi", "Type" : "None", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mosi_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "miso", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "miso_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_out", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in", "Type" : "Vld", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_in_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_1", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "129", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "PreState" : ["ap_ST_fsm_state1"], "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "PostState" : []}}]}]}


set ArgLastReadFirstWriteLatency {
	spi_master {
		sclk {Type O LastRead -1 FirstWrite 2}
		cs {Type O LastRead -1 FirstWrite 2}
		mosi {Type O LastRead -1 FirstWrite 2}
		miso {Type I LastRead 128 FirstWrite -1}
		data_out {Type I LastRead 66 FirstWrite -1}
		data_in {Type O LastRead -1 FirstWrite 65}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	sclk { ap_none {  { sclk out_data 1 1 } } }
	cs { ap_none {  { cs out_data 1 1 } } }
	mosi { ap_none {  { mosi out_data 1 1 } } }
	miso { ap_vld {  { miso in_data 0 1 }  { miso_ap_vld in_vld 0 1 } } }
	data_out { ap_vld {  { data_out in_data 0 32 }  { data_out_ap_vld in_vld 0 1 } } }
	data_in { ap_vld {  { data_in out_data 1 32 }  { data_in_ap_vld out_vld 1 1 } } }
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
