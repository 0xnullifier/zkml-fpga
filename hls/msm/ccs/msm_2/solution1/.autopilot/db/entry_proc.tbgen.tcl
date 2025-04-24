set moduleName entry_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 11
set C_modelName {entry_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ result_x int 64 regular  }
	{ result_x_c int 64 regular {fifo 1}  }
	{ result_y int 64 regular  }
	{ result_y_c int 64 regular {fifo 1}  }
	{ result_z int 64 regular  }
	{ result_z_c int 64 regular {fifo 1}  }
	{ result_t int 64 regular  }
	{ result_t_c int 64 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "result_x", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "result_x_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_y", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "result_y_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_z", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "result_z_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
 	{ "Name" : "result_t", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "result_t_c", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ result_x sc_in sc_lv 64 signal 0 } 
	{ result_x_c_din sc_out sc_lv 64 signal 1 } 
	{ result_x_c_full_n sc_in sc_logic 1 signal 1 } 
	{ result_x_c_write sc_out sc_logic 1 signal 1 } 
	{ result_x_c_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ result_x_c_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ result_y sc_in sc_lv 64 signal 2 } 
	{ result_y_c_din sc_out sc_lv 64 signal 3 } 
	{ result_y_c_full_n sc_in sc_logic 1 signal 3 } 
	{ result_y_c_write sc_out sc_logic 1 signal 3 } 
	{ result_y_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ result_y_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ result_z sc_in sc_lv 64 signal 4 } 
	{ result_z_c_din sc_out sc_lv 64 signal 5 } 
	{ result_z_c_full_n sc_in sc_logic 1 signal 5 } 
	{ result_z_c_write sc_out sc_logic 1 signal 5 } 
	{ result_z_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ result_z_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ result_t sc_in sc_lv 64 signal 6 } 
	{ result_t_c_din sc_out sc_lv 64 signal 7 } 
	{ result_t_c_full_n sc_in sc_logic 1 signal 7 } 
	{ result_t_c_write sc_out sc_logic 1 signal 7 } 
	{ result_t_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ result_t_c_fifo_cap sc_in sc_lv 3 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "result_x", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_x", "role": "default" }} , 
 	{ "name": "result_x_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_x_c", "role": "din" }} , 
 	{ "name": "result_x_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_x_c", "role": "full_n" }} , 
 	{ "name": "result_x_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_x_c", "role": "write" }} , 
 	{ "name": "result_x_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_x_c", "role": "num_data_valid" }} , 
 	{ "name": "result_x_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_x_c", "role": "fifo_cap" }} , 
 	{ "name": "result_y", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_y", "role": "default" }} , 
 	{ "name": "result_y_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_y_c", "role": "din" }} , 
 	{ "name": "result_y_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_y_c", "role": "full_n" }} , 
 	{ "name": "result_y_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_y_c", "role": "write" }} , 
 	{ "name": "result_y_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_y_c", "role": "num_data_valid" }} , 
 	{ "name": "result_y_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_y_c", "role": "fifo_cap" }} , 
 	{ "name": "result_z", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_z", "role": "default" }} , 
 	{ "name": "result_z_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_z_c", "role": "din" }} , 
 	{ "name": "result_z_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_z_c", "role": "full_n" }} , 
 	{ "name": "result_z_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_z_c", "role": "write" }} , 
 	{ "name": "result_z_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_z_c", "role": "num_data_valid" }} , 
 	{ "name": "result_z_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_z_c", "role": "fifo_cap" }} , 
 	{ "name": "result_t", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_t", "role": "default" }} , 
 	{ "name": "result_t_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_t_c", "role": "din" }} , 
 	{ "name": "result_t_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_t_c", "role": "full_n" }} , 
 	{ "name": "result_t_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_t_c", "role": "write" }} , 
 	{ "name": "result_t_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_t_c", "role": "num_data_valid" }} , 
 	{ "name": "result_t_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_t_c", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "entry_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "result_x", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_x_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "result_x_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "result_y", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_y_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "result_y_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "result_z", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_z_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "result_z_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "result_t", "Type" : "None", "Direction" : "I"},
			{"Name" : "result_t_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "result_t_c_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	entry_proc {
		result_x {Type I LastRead 0 FirstWrite -1}
		result_x_c {Type O LastRead -1 FirstWrite 0}
		result_y {Type I LastRead 0 FirstWrite -1}
		result_y_c {Type O LastRead -1 FirstWrite 0}
		result_z {Type I LastRead 0 FirstWrite -1}
		result_z_c {Type O LastRead -1 FirstWrite 0}
		result_t {Type I LastRead 0 FirstWrite -1}
		result_t_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	result_x { ap_none {  { result_x in_data 0 64 } } }
	result_x_c { ap_fifo {  { result_x_c_din fifo_data_in 1 64 }  { result_x_c_full_n fifo_status 0 1 }  { result_x_c_write fifo_port_we 1 1 }  { result_x_c_num_data_valid fifo_status_num_data_valid 0 3 }  { result_x_c_fifo_cap fifo_update 0 3 } } }
	result_y { ap_none {  { result_y in_data 0 64 } } }
	result_y_c { ap_fifo {  { result_y_c_din fifo_data_in 1 64 }  { result_y_c_full_n fifo_status 0 1 }  { result_y_c_write fifo_port_we 1 1 }  { result_y_c_num_data_valid fifo_status_num_data_valid 0 3 }  { result_y_c_fifo_cap fifo_update 0 3 } } }
	result_z { ap_none {  { result_z in_data 0 64 } } }
	result_z_c { ap_fifo {  { result_z_c_din fifo_data_in 1 64 }  { result_z_c_full_n fifo_status 0 1 }  { result_z_c_write fifo_port_we 1 1 }  { result_z_c_num_data_valid fifo_status_num_data_valid 0 3 }  { result_z_c_fifo_cap fifo_update 0 3 } } }
	result_t { ap_none {  { result_t in_data 0 64 } } }
	result_t_c { ap_fifo {  { result_t_c_din fifo_data_in 1 64 }  { result_t_c_full_n fifo_status 0 1 }  { result_t_c_write fifo_port_we 1 1 }  { result_t_c_num_data_valid fifo_status_num_data_valid 0 3 }  { result_t_c_fifo_cap fifo_update 0 3 } } }
}
