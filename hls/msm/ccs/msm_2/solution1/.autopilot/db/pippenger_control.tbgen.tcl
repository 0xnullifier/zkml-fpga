set moduleName pippenger_control
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
set C_modelName {pippenger_control}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ x_point_stream int 256 regular {fifo 0 volatile } {global 0}  }
	{ y_point_stream int 256 regular {fifo 0 volatile } {global 0}  }
	{ z_point_stream int 256 regular {fifo 0 volatile } {global 0}  }
	{ t_point_stream int 256 regular {fifo 0 volatile } {global 0}  }
	{ scalar_point_stream int 256 regular {fifo 0 volatile } {global 0}  }
	{ point_result_stream int 1024 regular {fifo 1 volatile } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "x_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "y_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "z_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "t_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "scalar_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "point_result_stream", "interface" : "fifo", "bitwidth" : 1024, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x_point_stream_dout sc_in sc_lv 256 signal 0 } 
	{ x_point_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ x_point_stream_read sc_out sc_logic 1 signal 0 } 
	{ x_point_stream_num_data_valid sc_in sc_lv 7 signal 0 } 
	{ x_point_stream_fifo_cap sc_in sc_lv 7 signal 0 } 
	{ y_point_stream_dout sc_in sc_lv 256 signal 1 } 
	{ y_point_stream_empty_n sc_in sc_logic 1 signal 1 } 
	{ y_point_stream_read sc_out sc_logic 1 signal 1 } 
	{ y_point_stream_num_data_valid sc_in sc_lv 7 signal 1 } 
	{ y_point_stream_fifo_cap sc_in sc_lv 7 signal 1 } 
	{ z_point_stream_dout sc_in sc_lv 256 signal 2 } 
	{ z_point_stream_empty_n sc_in sc_logic 1 signal 2 } 
	{ z_point_stream_read sc_out sc_logic 1 signal 2 } 
	{ z_point_stream_num_data_valid sc_in sc_lv 7 signal 2 } 
	{ z_point_stream_fifo_cap sc_in sc_lv 7 signal 2 } 
	{ t_point_stream_dout sc_in sc_lv 256 signal 3 } 
	{ t_point_stream_empty_n sc_in sc_logic 1 signal 3 } 
	{ t_point_stream_read sc_out sc_logic 1 signal 3 } 
	{ t_point_stream_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ t_point_stream_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ scalar_point_stream_dout sc_in sc_lv 256 signal 4 } 
	{ scalar_point_stream_empty_n sc_in sc_logic 1 signal 4 } 
	{ scalar_point_stream_read sc_out sc_logic 1 signal 4 } 
	{ scalar_point_stream_num_data_valid sc_in sc_lv 7 signal 4 } 
	{ scalar_point_stream_fifo_cap sc_in sc_lv 7 signal 4 } 
	{ point_result_stream_din sc_out sc_lv 1024 signal 5 } 
	{ point_result_stream_full_n sc_in sc_logic 1 signal 5 } 
	{ point_result_stream_write sc_out sc_logic 1 signal 5 } 
	{ point_result_stream_num_data_valid sc_in sc_lv 7 signal 5 } 
	{ point_result_stream_fifo_cap sc_in sc_lv 7 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x_point_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "x_point_stream", "role": "dout" }} , 
 	{ "name": "x_point_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_point_stream", "role": "empty_n" }} , 
 	{ "name": "x_point_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_point_stream", "role": "read" }} , 
 	{ "name": "x_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "x_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "x_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "x_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "y_point_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "y_point_stream", "role": "dout" }} , 
 	{ "name": "y_point_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_point_stream", "role": "empty_n" }} , 
 	{ "name": "y_point_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_point_stream", "role": "read" }} , 
 	{ "name": "y_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "y_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "y_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "y_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "z_point_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "z_point_stream", "role": "dout" }} , 
 	{ "name": "z_point_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_point_stream", "role": "empty_n" }} , 
 	{ "name": "z_point_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_point_stream", "role": "read" }} , 
 	{ "name": "z_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "z_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "z_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "z_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "t_point_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "t_point_stream", "role": "dout" }} , 
 	{ "name": "t_point_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_point_stream", "role": "empty_n" }} , 
 	{ "name": "t_point_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_point_stream", "role": "read" }} , 
 	{ "name": "t_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "t_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "t_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "t_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "scalar_point_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "dout" }} , 
 	{ "name": "scalar_point_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "empty_n" }} , 
 	{ "name": "scalar_point_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "read" }} , 
 	{ "name": "scalar_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "scalar_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "point_result_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "point_result_stream", "role": "din" }} , 
 	{ "name": "point_result_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_result_stream", "role": "full_n" }} , 
 	{ "name": "point_result_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_result_stream", "role": "write" }} , 
 	{ "name": "point_result_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "point_result_stream", "role": "num_data_valid" }} , 
 	{ "name": "point_result_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "point_result_stream", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "13", "14"],
		"CDFG" : "pippenger_control",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26769", "EstimateLatencyMax" : "1946183709",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_point_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x_point_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_point_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y_point_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "z_point_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "z_point_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "t_point_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "t_point_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scalar_point_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "scalar_point_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "point_result_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_aggregate_and_output_results_fu_163", "Port" : "point_result_stream", "Inst_start_state" : "2", "Inst_end_state" : "7"}]}],
		"Loop" : [
			{"Name" : "MAIN_LOOP", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state7"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scalar_partition_buffer_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scalar_partition_buffer_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buckets_x_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buckets_x_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buckets_y_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buckets_y_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buckets_z_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buckets_z_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buckets_t_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.buckets_t_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PARTITION_SCALAR_fu_155", "Parent" : "0", "Child" : ["12"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PARTITION_SCALAR_fu_155.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_aggregate_and_output_results_fu_163", "Parent" : "0",
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
				"LoopDec" : {"FSMBitwidth" : "1026", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state1026"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177", "Parent" : "0", "Child" : ["15", "36"],
		"CDFG" : "pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "83", "EstimateLatencyMax" : "83",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "y", "Type" : "None", "Direction" : "I"},
			{"Name" : "z", "Type" : "None", "Direction" : "I"},
			{"Name" : "t", "Type" : "None", "Direction" : "I"},
			{"Name" : "scalar_partition_buffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "scalar_partition_buffer_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buckets_x", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buckets_x_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buckets_y", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buckets_y_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buckets_z", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buckets_z_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buckets_t", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "buckets_t_1", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "PUT_INTO_BUCKETS_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter15", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter15", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300", "Parent" : "14", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35"],
		"CDFG" : "edwards_point_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "21", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y1", "Type" : "None", "Direction" : "I"},
			{"Name" : "Z1", "Type" : "None", "Direction" : "I"},
			{"Name" : "T1", "Type" : "None", "Direction" : "I"},
			{"Name" : "X2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Y2", "Type" : "None", "Direction" : "I"},
			{"Name" : "Z2", "Type" : "None", "Direction" : "I"},
			{"Name" : "T2", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U27", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U28", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U29", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U30", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U31", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U32", "Parent" : "15"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U33", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U34", "Parent" : "15"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U35", "Parent" : "15"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256ns_254ns_509_5_1_U36", "Parent" : "15"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U37", "Parent" : "15"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U38", "Parent" : "15"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U39", "Parent" : "15"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U40", "Parent" : "15"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U41", "Parent" : "15"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U42", "Parent" : "15"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U43", "Parent" : "15"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U44", "Parent" : "15"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U45", "Parent" : "15"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.grp_edwards_point_add_fu_300.mul_256s_254ns_256_5_1_U46", "Parent" : "15"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"}]}


set ArgLastReadFirstWriteLatency {
	pippenger_control {
		x_point_stream {Type I LastRead 1 FirstWrite -1}
		y_point_stream {Type I LastRead 1 FirstWrite -1}
		z_point_stream {Type I LastRead 1 FirstWrite -1}
		t_point_stream {Type I LastRead 1 FirstWrite -1}
		scalar_point_stream {Type I LastRead 1 FirstWrite -1}
		point_result_stream {Type O LastRead -1 FirstWrite 2}}
	pippenger_control_Pipeline_PARTITION_SCALAR {
		scalar_partition_buffer_2 {Type O LastRead -1 FirstWrite 2}
		scalar_partition_buffer {Type O LastRead -1 FirstWrite 2}
		scalar {Type I LastRead 0 FirstWrite -1}}
	aggregate_and_output_results {
		buckets_x_0 {Type I LastRead 1023 FirstWrite -1}
		buckets_x_1 {Type I LastRead 1024 FirstWrite -1}
		buckets_y_0 {Type I LastRead 1023 FirstWrite -1}
		buckets_y_1 {Type I LastRead 1024 FirstWrite -1}
		buckets_z_0 {Type I LastRead 1023 FirstWrite -1}
		buckets_z_1 {Type I LastRead 1024 FirstWrite -1}
		buckets_t_0 {Type I LastRead 1023 FirstWrite -1}
		buckets_t_1 {Type I LastRead 1024 FirstWrite -1}
		point_result_stream {Type O LastRead -1 FirstWrite 2}}
	pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP {
		x {Type I LastRead 0 FirstWrite -1}
		y {Type I LastRead 0 FirstWrite -1}
		z {Type I LastRead 0 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}
		scalar_partition_buffer {Type I LastRead 0 FirstWrite -1}
		scalar_partition_buffer_2 {Type I LastRead 0 FirstWrite -1}
		buckets_x {Type IO LastRead 2 FirstWrite 5}
		buckets_x_1 {Type IO LastRead 2 FirstWrite 5}
		buckets_y {Type IO LastRead 2 FirstWrite 5}
		buckets_y_1 {Type IO LastRead 2 FirstWrite 5}
		buckets_z {Type IO LastRead 6 FirstWrite 5}
		buckets_z_1 {Type IO LastRead 6 FirstWrite 5}
		buckets_t {Type IO LastRead 6 FirstWrite 5}
		buckets_t_1 {Type IO LastRead 6 FirstWrite 5}}
	edwards_point_add {
		X1 {Type I LastRead 0 FirstWrite -1}
		Y1 {Type I LastRead 0 FirstWrite -1}
		Z1 {Type I LastRead 0 FirstWrite -1}
		T1 {Type I LastRead 0 FirstWrite -1}
		X2 {Type I LastRead 0 FirstWrite -1}
		Y2 {Type I LastRead 0 FirstWrite -1}
		Z2 {Type I LastRead 0 FirstWrite -1}
		T2 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26769", "Max" : "1946183709"}
	, {"Name" : "Interval", "Min" : "26769", "Max" : "1946183709"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	x_point_stream { ap_fifo {  { x_point_stream_dout fifo_data_in 0 256 }  { x_point_stream_empty_n fifo_status 0 1 }  { x_point_stream_read fifo_port_we 1 1 }  { x_point_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { x_point_stream_fifo_cap fifo_update 0 7 } } }
	y_point_stream { ap_fifo {  { y_point_stream_dout fifo_data_in 0 256 }  { y_point_stream_empty_n fifo_status 0 1 }  { y_point_stream_read fifo_port_we 1 1 }  { y_point_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { y_point_stream_fifo_cap fifo_update 0 7 } } }
	z_point_stream { ap_fifo {  { z_point_stream_dout fifo_data_in 0 256 }  { z_point_stream_empty_n fifo_status 0 1 }  { z_point_stream_read fifo_port_we 1 1 }  { z_point_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { z_point_stream_fifo_cap fifo_update 0 7 } } }
	t_point_stream { ap_fifo {  { t_point_stream_dout fifo_data_in 0 256 }  { t_point_stream_empty_n fifo_status 0 1 }  { t_point_stream_read fifo_port_we 1 1 }  { t_point_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { t_point_stream_fifo_cap fifo_update 0 3 } } }
	scalar_point_stream { ap_fifo {  { scalar_point_stream_dout fifo_data_in 0 256 }  { scalar_point_stream_empty_n fifo_status 0 1 }  { scalar_point_stream_read fifo_port_we 1 1 }  { scalar_point_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { scalar_point_stream_fifo_cap fifo_update 0 7 } } }
	point_result_stream { ap_fifo {  { point_result_stream_din fifo_data_in 1 1024 }  { point_result_stream_full_n fifo_status 0 1 }  { point_result_stream_write fifo_port_we 1 1 }  { point_result_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { point_result_stream_fifo_cap fifo_update 0 7 } } }
}
