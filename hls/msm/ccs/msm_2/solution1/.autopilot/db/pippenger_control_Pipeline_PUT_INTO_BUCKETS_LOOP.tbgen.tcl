set moduleName pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP
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
set C_modelName {pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict scalar_partition_buffer { MEM_WIDTH 15 MEM_SIZE 26 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict scalar_partition_buffer_2 { MEM_WIDTH 15 MEM_SIZE 26 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict buckets_x { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buckets_x_1 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buckets_y { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buckets_y_1 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buckets_z { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buckets_z_1 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buckets_t { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict buckets_t_1 { MEM_WIDTH 256 MEM_SIZE 425984 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ x int 256 regular  }
	{ y int 256 regular  }
	{ z int 256 regular  }
	{ t int 256 regular  }
	{ scalar_partition_buffer int 15 regular {array 13 { 1 3 } 1 1 }  }
	{ scalar_partition_buffer_2 int 15 regular {array 13 { 1 3 } 1 1 }  }
	{ buckets_x int 256 regular {array 13312 { 2 0 } 1 1 }  }
	{ buckets_x_1 int 256 regular {array 13312 { 2 0 } 1 1 }  }
	{ buckets_y int 256 regular {array 13312 { 2 0 } 1 1 }  }
	{ buckets_y_1 int 256 regular {array 13312 { 2 0 } 1 1 }  }
	{ buckets_z int 256 regular {array 13312 { 2 0 } 1 1 }  }
	{ buckets_z_1 int 256 regular {array 13312 { 2 0 } 1 1 }  }
	{ buckets_t int 256 regular {array 13312 { 2 0 } 1 1 }  }
	{ buckets_t_1 int 256 regular {array 13312 { 2 0 } 1 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "x", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "y", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "z", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "t", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "scalar_partition_buffer", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "scalar_partition_buffer_2", "interface" : "memory", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "buckets_x", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "buckets_x_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "buckets_y", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "buckets_y_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "buckets_z", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "buckets_z_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "buckets_t", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} , 
 	{ "Name" : "buckets_t_1", "interface" : "memory", "bitwidth" : 256, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 88
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ x sc_in sc_lv 256 signal 0 } 
	{ y sc_in sc_lv 256 signal 1 } 
	{ z sc_in sc_lv 256 signal 2 } 
	{ t sc_in sc_lv 256 signal 3 } 
	{ scalar_partition_buffer_address0 sc_out sc_lv 4 signal 4 } 
	{ scalar_partition_buffer_ce0 sc_out sc_logic 1 signal 4 } 
	{ scalar_partition_buffer_q0 sc_in sc_lv 15 signal 4 } 
	{ scalar_partition_buffer_2_address0 sc_out sc_lv 4 signal 5 } 
	{ scalar_partition_buffer_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ scalar_partition_buffer_2_q0 sc_in sc_lv 15 signal 5 } 
	{ buckets_x_address0 sc_out sc_lv 14 signal 6 } 
	{ buckets_x_ce0 sc_out sc_logic 1 signal 6 } 
	{ buckets_x_we0 sc_out sc_logic 1 signal 6 } 
	{ buckets_x_d0 sc_out sc_lv 256 signal 6 } 
	{ buckets_x_q0 sc_in sc_lv 256 signal 6 } 
	{ buckets_x_address1 sc_out sc_lv 14 signal 6 } 
	{ buckets_x_ce1 sc_out sc_logic 1 signal 6 } 
	{ buckets_x_we1 sc_out sc_logic 1 signal 6 } 
	{ buckets_x_d1 sc_out sc_lv 256 signal 6 } 
	{ buckets_x_1_address0 sc_out sc_lv 14 signal 7 } 
	{ buckets_x_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ buckets_x_1_we0 sc_out sc_logic 1 signal 7 } 
	{ buckets_x_1_d0 sc_out sc_lv 256 signal 7 } 
	{ buckets_x_1_q0 sc_in sc_lv 256 signal 7 } 
	{ buckets_x_1_address1 sc_out sc_lv 14 signal 7 } 
	{ buckets_x_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ buckets_x_1_we1 sc_out sc_logic 1 signal 7 } 
	{ buckets_x_1_d1 sc_out sc_lv 256 signal 7 } 
	{ buckets_y_address0 sc_out sc_lv 14 signal 8 } 
	{ buckets_y_ce0 sc_out sc_logic 1 signal 8 } 
	{ buckets_y_we0 sc_out sc_logic 1 signal 8 } 
	{ buckets_y_d0 sc_out sc_lv 256 signal 8 } 
	{ buckets_y_q0 sc_in sc_lv 256 signal 8 } 
	{ buckets_y_address1 sc_out sc_lv 14 signal 8 } 
	{ buckets_y_ce1 sc_out sc_logic 1 signal 8 } 
	{ buckets_y_we1 sc_out sc_logic 1 signal 8 } 
	{ buckets_y_d1 sc_out sc_lv 256 signal 8 } 
	{ buckets_y_1_address0 sc_out sc_lv 14 signal 9 } 
	{ buckets_y_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ buckets_y_1_we0 sc_out sc_logic 1 signal 9 } 
	{ buckets_y_1_d0 sc_out sc_lv 256 signal 9 } 
	{ buckets_y_1_q0 sc_in sc_lv 256 signal 9 } 
	{ buckets_y_1_address1 sc_out sc_lv 14 signal 9 } 
	{ buckets_y_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ buckets_y_1_we1 sc_out sc_logic 1 signal 9 } 
	{ buckets_y_1_d1 sc_out sc_lv 256 signal 9 } 
	{ buckets_z_address0 sc_out sc_lv 14 signal 10 } 
	{ buckets_z_ce0 sc_out sc_logic 1 signal 10 } 
	{ buckets_z_we0 sc_out sc_logic 1 signal 10 } 
	{ buckets_z_d0 sc_out sc_lv 256 signal 10 } 
	{ buckets_z_q0 sc_in sc_lv 256 signal 10 } 
	{ buckets_z_address1 sc_out sc_lv 14 signal 10 } 
	{ buckets_z_ce1 sc_out sc_logic 1 signal 10 } 
	{ buckets_z_we1 sc_out sc_logic 1 signal 10 } 
	{ buckets_z_d1 sc_out sc_lv 256 signal 10 } 
	{ buckets_z_1_address0 sc_out sc_lv 14 signal 11 } 
	{ buckets_z_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ buckets_z_1_we0 sc_out sc_logic 1 signal 11 } 
	{ buckets_z_1_d0 sc_out sc_lv 256 signal 11 } 
	{ buckets_z_1_q0 sc_in sc_lv 256 signal 11 } 
	{ buckets_z_1_address1 sc_out sc_lv 14 signal 11 } 
	{ buckets_z_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ buckets_z_1_we1 sc_out sc_logic 1 signal 11 } 
	{ buckets_z_1_d1 sc_out sc_lv 256 signal 11 } 
	{ buckets_t_address0 sc_out sc_lv 14 signal 12 } 
	{ buckets_t_ce0 sc_out sc_logic 1 signal 12 } 
	{ buckets_t_we0 sc_out sc_logic 1 signal 12 } 
	{ buckets_t_d0 sc_out sc_lv 256 signal 12 } 
	{ buckets_t_q0 sc_in sc_lv 256 signal 12 } 
	{ buckets_t_address1 sc_out sc_lv 14 signal 12 } 
	{ buckets_t_ce1 sc_out sc_logic 1 signal 12 } 
	{ buckets_t_we1 sc_out sc_logic 1 signal 12 } 
	{ buckets_t_d1 sc_out sc_lv 256 signal 12 } 
	{ buckets_t_1_address0 sc_out sc_lv 14 signal 13 } 
	{ buckets_t_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ buckets_t_1_we0 sc_out sc_logic 1 signal 13 } 
	{ buckets_t_1_d0 sc_out sc_lv 256 signal 13 } 
	{ buckets_t_1_q0 sc_in sc_lv 256 signal 13 } 
	{ buckets_t_1_address1 sc_out sc_lv 14 signal 13 } 
	{ buckets_t_1_ce1 sc_out sc_logic 1 signal 13 } 
	{ buckets_t_1_we1 sc_out sc_logic 1 signal 13 } 
	{ buckets_t_1_d1 sc_out sc_lv 256 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "x", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "x", "role": "default" }} , 
 	{ "name": "y", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "y", "role": "default" }} , 
 	{ "name": "z", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "z", "role": "default" }} , 
 	{ "name": "t", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "t", "role": "default" }} , 
 	{ "name": "scalar_partition_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "scalar_partition_buffer", "role": "address0" }} , 
 	{ "name": "scalar_partition_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_partition_buffer", "role": "ce0" }} , 
 	{ "name": "scalar_partition_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "scalar_partition_buffer", "role": "q0" }} , 
 	{ "name": "scalar_partition_buffer_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "scalar_partition_buffer_2", "role": "address0" }} , 
 	{ "name": "scalar_partition_buffer_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_partition_buffer_2", "role": "ce0" }} , 
 	{ "name": "scalar_partition_buffer_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "scalar_partition_buffer_2", "role": "q0" }} , 
 	{ "name": "buckets_x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_x", "role": "address0" }} , 
 	{ "name": "buckets_x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x", "role": "ce0" }} , 
 	{ "name": "buckets_x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x", "role": "we0" }} , 
 	{ "name": "buckets_x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_x", "role": "d0" }} , 
 	{ "name": "buckets_x_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_x", "role": "q0" }} , 
 	{ "name": "buckets_x_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_x", "role": "address1" }} , 
 	{ "name": "buckets_x_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x", "role": "ce1" }} , 
 	{ "name": "buckets_x_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x", "role": "we1" }} , 
 	{ "name": "buckets_x_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_x", "role": "d1" }} , 
 	{ "name": "buckets_x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "address0" }} , 
 	{ "name": "buckets_x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "ce0" }} , 
 	{ "name": "buckets_x_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "we0" }} , 
 	{ "name": "buckets_x_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "d0" }} , 
 	{ "name": "buckets_x_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "q0" }} , 
 	{ "name": "buckets_x_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "address1" }} , 
 	{ "name": "buckets_x_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "ce1" }} , 
 	{ "name": "buckets_x_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "we1" }} , 
 	{ "name": "buckets_x_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_x_1", "role": "d1" }} , 
 	{ "name": "buckets_y_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_y", "role": "address0" }} , 
 	{ "name": "buckets_y_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y", "role": "ce0" }} , 
 	{ "name": "buckets_y_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y", "role": "we0" }} , 
 	{ "name": "buckets_y_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_y", "role": "d0" }} , 
 	{ "name": "buckets_y_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_y", "role": "q0" }} , 
 	{ "name": "buckets_y_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_y", "role": "address1" }} , 
 	{ "name": "buckets_y_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y", "role": "ce1" }} , 
 	{ "name": "buckets_y_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y", "role": "we1" }} , 
 	{ "name": "buckets_y_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_y", "role": "d1" }} , 
 	{ "name": "buckets_y_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "address0" }} , 
 	{ "name": "buckets_y_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "ce0" }} , 
 	{ "name": "buckets_y_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "we0" }} , 
 	{ "name": "buckets_y_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "d0" }} , 
 	{ "name": "buckets_y_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "q0" }} , 
 	{ "name": "buckets_y_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "address1" }} , 
 	{ "name": "buckets_y_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "ce1" }} , 
 	{ "name": "buckets_y_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "we1" }} , 
 	{ "name": "buckets_y_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_y_1", "role": "d1" }} , 
 	{ "name": "buckets_z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_z", "role": "address0" }} , 
 	{ "name": "buckets_z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z", "role": "ce0" }} , 
 	{ "name": "buckets_z_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z", "role": "we0" }} , 
 	{ "name": "buckets_z_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_z", "role": "d0" }} , 
 	{ "name": "buckets_z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_z", "role": "q0" }} , 
 	{ "name": "buckets_z_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_z", "role": "address1" }} , 
 	{ "name": "buckets_z_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z", "role": "ce1" }} , 
 	{ "name": "buckets_z_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z", "role": "we1" }} , 
 	{ "name": "buckets_z_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_z", "role": "d1" }} , 
 	{ "name": "buckets_z_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "address0" }} , 
 	{ "name": "buckets_z_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "ce0" }} , 
 	{ "name": "buckets_z_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "we0" }} , 
 	{ "name": "buckets_z_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "d0" }} , 
 	{ "name": "buckets_z_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "q0" }} , 
 	{ "name": "buckets_z_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "address1" }} , 
 	{ "name": "buckets_z_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "ce1" }} , 
 	{ "name": "buckets_z_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "we1" }} , 
 	{ "name": "buckets_z_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_z_1", "role": "d1" }} , 
 	{ "name": "buckets_t_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_t", "role": "address0" }} , 
 	{ "name": "buckets_t_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t", "role": "ce0" }} , 
 	{ "name": "buckets_t_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t", "role": "we0" }} , 
 	{ "name": "buckets_t_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_t", "role": "d0" }} , 
 	{ "name": "buckets_t_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_t", "role": "q0" }} , 
 	{ "name": "buckets_t_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_t", "role": "address1" }} , 
 	{ "name": "buckets_t_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t", "role": "ce1" }} , 
 	{ "name": "buckets_t_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t", "role": "we1" }} , 
 	{ "name": "buckets_t_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_t", "role": "d1" }} , 
 	{ "name": "buckets_t_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "address0" }} , 
 	{ "name": "buckets_t_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "ce0" }} , 
 	{ "name": "buckets_t_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "we0" }} , 
 	{ "name": "buckets_t_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "d0" }} , 
 	{ "name": "buckets_t_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "q0" }} , 
 	{ "name": "buckets_t_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "address1" }} , 
 	{ "name": "buckets_t_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "ce1" }} , 
 	{ "name": "buckets_t_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "we1" }} , 
 	{ "name": "buckets_t_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "buckets_t_1", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "22"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U27", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U28", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U29", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U30", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U31", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U32", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U33", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U34", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_256ns_512_5_1_U35", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256ns_254ns_509_5_1_U36", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U37", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U38", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U39", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U40", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U41", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U42", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U43", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U44", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_256s_256_5_1_U45", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_edwards_point_add_fu_300.mul_256s_254ns_256_5_1_U46", "Parent" : "1"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "83", "Max" : "83"}
	, {"Name" : "Interval", "Min" : "83", "Max" : "83"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	x { ap_none {  { x in_data 0 256 } } }
	y { ap_none {  { y in_data 0 256 } } }
	z { ap_none {  { z in_data 0 256 } } }
	t { ap_none {  { t in_data 0 256 } } }
	scalar_partition_buffer { ap_memory {  { scalar_partition_buffer_address0 mem_address 1 4 }  { scalar_partition_buffer_ce0 mem_ce 1 1 }  { scalar_partition_buffer_q0 mem_dout 0 15 } } }
	scalar_partition_buffer_2 { ap_memory {  { scalar_partition_buffer_2_address0 mem_address 1 4 }  { scalar_partition_buffer_2_ce0 mem_ce 1 1 }  { scalar_partition_buffer_2_q0 mem_dout 0 15 } } }
	buckets_x { ap_memory {  { buckets_x_address0 mem_address 1 14 }  { buckets_x_ce0 mem_ce 1 1 }  { buckets_x_we0 mem_we 1 1 }  { buckets_x_d0 mem_din 1 256 }  { buckets_x_q0 mem_dout 0 256 }  { buckets_x_address1 MemPortADDR2 1 14 }  { buckets_x_ce1 MemPortCE2 1 1 }  { buckets_x_we1 MemPortWE2 1 1 }  { buckets_x_d1 MemPortDIN2 1 256 } } }
	buckets_x_1 { ap_memory {  { buckets_x_1_address0 mem_address 1 14 }  { buckets_x_1_ce0 mem_ce 1 1 }  { buckets_x_1_we0 mem_we 1 1 }  { buckets_x_1_d0 mem_din 1 256 }  { buckets_x_1_q0 mem_dout 0 256 }  { buckets_x_1_address1 MemPortADDR2 1 14 }  { buckets_x_1_ce1 MemPortCE2 1 1 }  { buckets_x_1_we1 MemPortWE2 1 1 }  { buckets_x_1_d1 MemPortDIN2 1 256 } } }
	buckets_y { ap_memory {  { buckets_y_address0 mem_address 1 14 }  { buckets_y_ce0 mem_ce 1 1 }  { buckets_y_we0 mem_we 1 1 }  { buckets_y_d0 mem_din 1 256 }  { buckets_y_q0 mem_dout 0 256 }  { buckets_y_address1 MemPortADDR2 1 14 }  { buckets_y_ce1 MemPortCE2 1 1 }  { buckets_y_we1 MemPortWE2 1 1 }  { buckets_y_d1 MemPortDIN2 1 256 } } }
	buckets_y_1 { ap_memory {  { buckets_y_1_address0 mem_address 1 14 }  { buckets_y_1_ce0 mem_ce 1 1 }  { buckets_y_1_we0 mem_we 1 1 }  { buckets_y_1_d0 mem_din 1 256 }  { buckets_y_1_q0 mem_dout 0 256 }  { buckets_y_1_address1 MemPortADDR2 1 14 }  { buckets_y_1_ce1 MemPortCE2 1 1 }  { buckets_y_1_we1 MemPortWE2 1 1 }  { buckets_y_1_d1 MemPortDIN2 1 256 } } }
	buckets_z { ap_memory {  { buckets_z_address0 mem_address 1 14 }  { buckets_z_ce0 mem_ce 1 1 }  { buckets_z_we0 mem_we 1 1 }  { buckets_z_d0 mem_din 1 256 }  { buckets_z_q0 in_data 0 256 }  { buckets_z_address1 MemPortADDR2 1 14 }  { buckets_z_ce1 MemPortCE2 1 1 }  { buckets_z_we1 MemPortWE2 1 1 }  { buckets_z_d1 MemPortDIN2 1 256 } } }
	buckets_z_1 { ap_memory {  { buckets_z_1_address0 mem_address 1 14 }  { buckets_z_1_ce0 mem_ce 1 1 }  { buckets_z_1_we0 mem_we 1 1 }  { buckets_z_1_d0 mem_din 1 256 }  { buckets_z_1_q0 in_data 0 256 }  { buckets_z_1_address1 MemPortADDR2 1 14 }  { buckets_z_1_ce1 MemPortCE2 1 1 }  { buckets_z_1_we1 MemPortWE2 1 1 }  { buckets_z_1_d1 MemPortDIN2 1 256 } } }
	buckets_t { ap_memory {  { buckets_t_address0 mem_address 1 14 }  { buckets_t_ce0 mem_ce 1 1 }  { buckets_t_we0 mem_we 1 1 }  { buckets_t_d0 mem_din 1 256 }  { buckets_t_q0 in_data 0 256 }  { buckets_t_address1 MemPortADDR2 1 14 }  { buckets_t_ce1 MemPortCE2 1 1 }  { buckets_t_we1 MemPortWE2 1 1 }  { buckets_t_d1 MemPortDIN2 1 256 } } }
	buckets_t_1 { ap_memory {  { buckets_t_1_address0 mem_address 1 14 }  { buckets_t_1_ce0 mem_ce 1 1 }  { buckets_t_1_we0 mem_we 1 1 }  { buckets_t_1_d0 mem_din 1 256 }  { buckets_t_1_q0 in_data 0 256 }  { buckets_t_1_address1 MemPortADDR2 1 14 }  { buckets_t_1_ce1 MemPortCE2 1 1 }  { buckets_t_1_we1 MemPortWE2 1 1 }  { buckets_t_1_d1 MemPortDIN2 1 256 } } }
}
