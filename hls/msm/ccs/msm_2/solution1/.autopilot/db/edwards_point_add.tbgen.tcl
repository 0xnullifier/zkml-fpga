set moduleName edwards_point_add
set isTopModule 0
set isCombinational 0
set isDatapathOnly 1
set isPipelined 1
set pipeline_type function
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
set C_modelName {edwards_point_add}
set C_modelType { int 1024 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ X1 int 256 regular  }
	{ Y1 int 256 regular  }
	{ Z1 int 256 regular  }
	{ T1 int 256 regular  }
	{ X2 int 256 regular  }
	{ Y2 int 256 regular  }
	{ Z2 int 256 regular  }
	{ T2 int 256 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "X1", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "Y1", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "Z1", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "T1", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "X2", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "Y2", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "Z2", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "T2", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ X1 sc_in sc_lv 256 signal 0 } 
	{ Y1 sc_in sc_lv 256 signal 1 } 
	{ Z1 sc_in sc_lv 256 signal 2 } 
	{ T1 sc_in sc_lv 256 signal 3 } 
	{ X2 sc_in sc_lv 256 signal 4 } 
	{ Y2 sc_in sc_lv 256 signal 5 } 
	{ Z2 sc_in sc_lv 256 signal 6 } 
	{ T2 sc_in sc_lv 256 signal 7 } 
	{ ap_return_0 sc_out sc_lv 256 signal -1 } 
	{ ap_return_1 sc_out sc_lv 256 signal -1 } 
	{ ap_return_2 sc_out sc_lv 256 signal -1 } 
	{ ap_return_3 sc_out sc_lv 256 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "X1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X1", "role": "default" }} , 
 	{ "name": "Y1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "Y1", "role": "default" }} , 
 	{ "name": "Z1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "Z1", "role": "default" }} , 
 	{ "name": "T1", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "T1", "role": "default" }} , 
 	{ "name": "X2", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "X2", "role": "default" }} , 
 	{ "name": "Y2", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "Y2", "role": "default" }} , 
 	{ "name": "Z2", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "Z2", "role": "default" }} , 
 	{ "name": "T2", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "T2", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_5_1_U27", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_5_1_U28", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_5_1_U29", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_5_1_U30", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_5_1_U31", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_5_1_U32", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_5_1_U33", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_5_1_U34", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_256ns_512_5_1_U35", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256ns_254ns_509_5_1_U36", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_5_1_U37", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_5_1_U38", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_5_1_U39", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_5_1_U40", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_5_1_U41", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_5_1_U42", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_5_1_U43", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_5_1_U44", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_256s_256_5_1_U45", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_256s_254ns_256_5_1_U46", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	X1 { ap_none {  { X1 in_data 0 256 } } }
	Y1 { ap_none {  { Y1 in_data 0 256 } } }
	Z1 { ap_none {  { Z1 in_data 0 256 } } }
	T1 { ap_none {  { T1 in_data 0 256 } } }
	X2 { ap_none {  { X2 in_data 0 256 } } }
	Y2 { ap_none {  { Y2 in_data 0 256 } } }
	Z2 { ap_none {  { Z2 in_data 0 256 } } }
	T2 { ap_none {  { T2 in_data 0 256 } } }
}
