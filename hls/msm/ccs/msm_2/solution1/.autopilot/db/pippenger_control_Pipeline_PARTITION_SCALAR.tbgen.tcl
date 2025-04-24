set moduleName pippenger_control_Pipeline_PARTITION_SCALAR
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
set cdfgNum 11
set C_modelName {pippenger_control_Pipeline_PARTITION_SCALAR}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict scalar_partition_buffer_2 { MEM_WIDTH 15 MEM_SIZE 26 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict scalar_partition_buffer { MEM_WIDTH 15 MEM_SIZE 26 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ scalar_partition_buffer_2 int 15 regular {array 13 { 0 3 } 0 1 }  }
	{ scalar_partition_buffer int 15 regular {array 13 { 0 3 } 0 1 }  }
	{ scalar int 256 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "scalar_partition_buffer_2", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scalar_partition_buffer", "interface" : "memory", "bitwidth" : 15, "direction" : "WRITEONLY"} , 
 	{ "Name" : "scalar", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ scalar_partition_buffer_2_address0 sc_out sc_lv 4 signal 0 } 
	{ scalar_partition_buffer_2_ce0 sc_out sc_logic 1 signal 0 } 
	{ scalar_partition_buffer_2_we0 sc_out sc_logic 1 signal 0 } 
	{ scalar_partition_buffer_2_d0 sc_out sc_lv 15 signal 0 } 
	{ scalar_partition_buffer_address0 sc_out sc_lv 4 signal 1 } 
	{ scalar_partition_buffer_ce0 sc_out sc_logic 1 signal 1 } 
	{ scalar_partition_buffer_we0 sc_out sc_logic 1 signal 1 } 
	{ scalar_partition_buffer_d0 sc_out sc_lv 15 signal 1 } 
	{ scalar sc_in sc_lv 256 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "scalar_partition_buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "scalar_partition_buffer_2", "role": "address0" }} , 
 	{ "name": "scalar_partition_buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_partition_buffer_2", "role": "ce0" }} , 
 	{ "name": "scalar_partition_buffer_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_partition_buffer_2", "role": "we0" }} , 
 	{ "name": "scalar_partition_buffer_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "scalar_partition_buffer_2", "role": "d0" }} , 
 	{ "name": "scalar_partition_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "scalar_partition_buffer", "role": "address0" }} , 
 	{ "name": "scalar_partition_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_partition_buffer", "role": "ce0" }} , 
 	{ "name": "scalar_partition_buffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_partition_buffer", "role": "we0" }} , 
 	{ "name": "scalar_partition_buffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "scalar_partition_buffer", "role": "d0" }} , 
 	{ "name": "scalar", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "scalar", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "pippenger_control_Pipeline_PARTITION_SCALAR",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "28",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "scalar_partition_buffer_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scalar_partition_buffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "scalar", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "PARTITION_SCALAR", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pippenger_control_Pipeline_PARTITION_SCALAR {
		scalar_partition_buffer_2 {Type O LastRead -1 FirstWrite 2}
		scalar_partition_buffer {Type O LastRead -1 FirstWrite 2}
		scalar {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "28", "Max" : "28"}
	, {"Name" : "Interval", "Min" : "28", "Max" : "28"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	scalar_partition_buffer_2 { ap_memory {  { scalar_partition_buffer_2_address0 mem_address 1 4 }  { scalar_partition_buffer_2_ce0 mem_ce 1 1 }  { scalar_partition_buffer_2_we0 mem_we 1 1 }  { scalar_partition_buffer_2_d0 mem_din 1 15 } } }
	scalar_partition_buffer { ap_memory {  { scalar_partition_buffer_address0 mem_address 1 4 }  { scalar_partition_buffer_ce0 mem_ce 1 1 }  { scalar_partition_buffer_we0 mem_we 1 1 }  { scalar_partition_buffer_d0 mem_din 1 15 } } }
	scalar { ap_none {  { scalar in_data 0 256 } } }
}
