set moduleName aggregate_and_output_results
set isTopModule 0
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
set cdfgNum 11
set C_modelName {aggregate_and_output_results}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict buckets_x_0 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buckets_x_1 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buckets_y_0 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buckets_y_1 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buckets_z_0 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buckets_z_1 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buckets_t_0 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buckets_t_1 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ buckets_x_0 int 256 regular {array 13312 { 1 3 } 1 1 }  }
	{ buckets_x_1 int 256 regular {array 13312 { 1 3 } 1 1 }  }
	{ buckets_y_0 int 256 regular {array 13312 { 1 3 } 1 1 }  }
	{ buckets_y_1 int 256 regular {array 13312 { 1 3 } 1 1 }  }
	{ buckets_z_0 int 256 regular {array 13312 { 1 3 } 1 1 }  }
	{ buckets_z_1 int 256 regular {array 13312 { 1 3 } 1 1 }  }
	{ buckets_t_0 int 256 regular {array 13312 { 1 3 } 1 1 }  }
	{ buckets_t_1 int 256 regular {array 13312 { 1 3 } 1 1 }  }
	{ point_result_stream int 1024 regular {fifo 1 volatile } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "buckets_x_0", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "buckets_x_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "buckets_y_0", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "buckets_y_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "buckets_z_0", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "buckets_z_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "buckets_t_0", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "buckets_t_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "point_result_stream", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 35
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buckets_x_0_address0 sc_out sc_lv 14 signal 0 } 
	{ buckets_x_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ buckets_x_0_q0 sc_in sc_lv 256 signal 0 } 
	{ buckets_x_1_address0 sc_out sc_lv 14 signal 1 } 
	{ buckets_x_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ buckets_x_1_q0 sc_in sc_lv 256 signal 1 } 
	{ buckets_y_0_address0 sc_out sc_lv 14 signal 2 } 
	{ buckets_y_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ buckets_y_0_q0 sc_in sc_lv 256 signal 2 } 
	{ buckets_y_1_address0 sc_out sc_lv 14 signal 3 } 
	{ buckets_y_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ buckets_y_1_q0 sc_in sc_lv 256 signal 3 } 
	{ buckets_z_0_address0 sc_out sc_lv 14 signal 4 } 
	{ buckets_z_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ buckets_z_0_q0 sc_in sc_lv 256 signal 4 } 
	{ buckets_z_1_address0 sc_out sc_lv 14 signal 5 } 
	{ buckets_z_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ buckets_z_1_q0 sc_in sc_lv 256 signal 5 } 
	{ buckets_t_0_address0 sc_out sc_lv 14 signal 6 } 
	{ buckets_t_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ buckets_t_0_q0 sc_in sc_lv 256 signal 6 } 
	{ buckets_t_1_address0 sc_out sc_lv 14 signal 7 } 
	{ buckets_t_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ buckets_t_1_q0 sc_in sc_lv 256 signal 7 } 
	{ point_result_stream_din sc_out sc_lv 1024 signal 8 } 
	{ point_result_stream_full_n sc_in sc_logic 1 signal 8 } 
	{ point_result_stream_write sc_out sc_logic 1 signal 8 } 
	{ point_result_stream_num_data_valid sc_in sc_lv 7 signal 8 } 
	{ point_result_stream_fifo_cap sc_in sc_lv 7 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buckets_x_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_x_0", "role": "address0" }} , 
 	{ "name": "buckets_x_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x_0", "role": "ce0" }} , 
 	{ "name": "buckets_x_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_x_0", "role": "q0" }} , 
 	{ "name": "buckets_x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "address0" }} , 
 	{ "name": "buckets_x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "ce0" }} , 
 	{ "name": "buckets_x_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "q0" }} , 
 	{ "name": "buckets_y_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_y_0", "role": "address0" }} , 
 	{ "name": "buckets_y_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y_0", "role": "ce0" }} , 
 	{ "name": "buckets_y_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_y_0", "role": "q0" }} , 
 	{ "name": "buckets_y_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "address0" }} , 
 	{ "name": "buckets_y_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "ce0" }} , 
 	{ "name": "buckets_y_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "q0" }} , 
 	{ "name": "buckets_z_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_z_0", "role": "address0" }} , 
 	{ "name": "buckets_z_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z_0", "role": "ce0" }} , 
 	{ "name": "buckets_z_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_z_0", "role": "q0" }} , 
 	{ "name": "buckets_z_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "address0" }} , 
 	{ "name": "buckets_z_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "ce0" }} , 
 	{ "name": "buckets_z_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "q0" }} , 
 	{ "name": "buckets_t_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_t_0", "role": "address0" }} , 
 	{ "name": "buckets_t_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t_0", "role": "ce0" }} , 
 	{ "name": "buckets_t_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_t_0", "role": "q0" }} , 
 	{ "name": "buckets_t_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "address0" }} , 
 	{ "name": "buckets_t_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "ce0" }} , 
 	{ "name": "buckets_t_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "q0" }} , 
 	{ "name": "point_result_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "point_result_stream", "role": "din" }} , 
 	{ "name": "point_result_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_result_stream", "role": "full_n" }} , 
 	{ "name": "point_result_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_result_stream", "role": "write" }} , 
 	{ "name": "point_result_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "point_result_stream", "role": "num_data_valid" }} , 
 	{ "name": "point_result_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "point_result_stream", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "aggregate_and_output_results",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26651", "EstimateLatencyMax" : "26651",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buckets_x_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buckets_x_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buckets_y_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buckets_y_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buckets_z_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buckets_z_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buckets_t_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buckets_t_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "point_result_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "point_result_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "AGGREGATE_AND_OUT", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "1026", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state1026"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]}]}


set ArgLastReadFirstWriteLatency {
	aggregate_and_output_results {
		buckets_x_0 {Type I LastRead 1023 FirstWrite -1}
		buckets_x_1 {Type I LastRead 1024 FirstWrite -1}
		buckets_y_0 {Type I LastRead 1023 FirstWrite -1}
		buckets_y_1 {Type I LastRead 1024 FirstWrite -1}
		buckets_z_0 {Type I LastRead 1023 FirstWrite -1}
		buckets_z_1 {Type I LastRead 1024 FirstWrite -1}
		buckets_t_0 {Type I LastRead 1023 FirstWrite -1}
		buckets_t_1 {Type I LastRead 1024 FirstWrite -1}
		point_result_stream {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26651", "Max" : "26651"}
	, {"Name" : "Interval", "Min" : "26651", "Max" : "26651"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buckets_x_0 { ap_memory {  { buckets_x_0_address0 mem_address 1 14 }  { buckets_x_0_ce0 mem_ce 1 1 }  { buckets_x_0_q0 mem_dout 0 256 } } }
	buckets_x_1 { ap_memory {  { buckets_x_1_address0 mem_address 1 14 }  { buckets_x_1_ce0 mem_ce 1 1 }  { buckets_x_1_q0 mem_dout 0 256 } } }
	buckets_y_0 { ap_memory {  { buckets_y_0_address0 mem_address 1 14 }  { buckets_y_0_ce0 mem_ce 1 1 }  { buckets_y_0_q0 mem_dout 0 256 } } }
	buckets_y_1 { ap_memory {  { buckets_y_1_address0 mem_address 1 14 }  { buckets_y_1_ce0 mem_ce 1 1 }  { buckets_y_1_q0 mem_dout 0 256 } } }
	buckets_z_0 { ap_memory {  { buckets_z_0_address0 mem_address 1 14 }  { buckets_z_0_ce0 mem_ce 1 1 }  { buckets_z_0_q0 mem_dout 0 256 } } }
	buckets_z_1 { ap_memory {  { buckets_z_1_address0 mem_address 1 14 }  { buckets_z_1_ce0 mem_ce 1 1 }  { buckets_z_1_q0 mem_dout 0 256 } } }
	buckets_t_0 { ap_memory {  { buckets_t_0_address0 mem_address 1 14 }  { buckets_t_0_ce0 mem_ce 1 1 }  { buckets_t_0_q0 mem_dout 0 256 } } }
	buckets_t_1 { ap_memory {  { buckets_t_1_address0 mem_address 1 14 }  { buckets_t_1_ce0 mem_ce 1 1 }  { buckets_t_1_q0 mem_dout 0 256 } } }
	point_result_stream { ap_fifo {  { point_result_stream_din fifo_data_in 1 1024 }  { point_result_stream_full_n fifo_status 0 1 }  { point_result_stream_write fifo_port_we 1 1 }  { point_result_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { point_result_stream_fifo_cap fifo_update 0 7 } } }
}
