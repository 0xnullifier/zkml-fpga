set moduleName WriteBack
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
set C_modelName {WriteBack}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 1}  }
	{ result_x int 64 regular {fifo 0}  }
	{ gmem1 int 256 regular {axi_master 1}  }
	{ result_y int 64 regular {fifo 0}  }
	{ gmem2 int 256 regular {axi_master 1}  }
	{ result_z int 64 regular {fifo 0}  }
	{ gmem3 int 256 regular {axi_master 1}  }
	{ result_t int 64 regular {fifo 0}  }
	{ point_result_stream int 1024 regular {fifo 0 volatile } {global 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "x_array","offset": { "type": "dynamic","port_name": "x_array","bundle": "control"},"direction": "READONLY"},{"cName": "result_x","offset": { "type": "dynamic","port_name": "result_x","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "result_x", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "y_array","offset": { "type": "dynamic","port_name": "y_array","bundle": "control"},"direction": "READONLY"},{"cName": "result_y","offset": { "type": "dynamic","port_name": "result_y","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "result_y", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "z_array","offset": { "type": "dynamic","port_name": "z_array","bundle": "control"},"direction": "READONLY"},{"cName": "result_z","offset": { "type": "dynamic","port_name": "result_z","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "result_z", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "t_array","offset": { "type": "dynamic","port_name": "t_array","bundle": "control"},"direction": "READONLY"},{"cName": "result_t","offset": { "type": "dynamic","port_name": "result_t","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "result_t", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "point_result_stream", "interface" : "fifo", "bitwidth" : 1024, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 216
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ result_t_dout sc_in sc_lv 64 signal 7 } 
	{ result_t_empty_n sc_in sc_logic 1 signal 7 } 
	{ result_t_read sc_out sc_logic 1 signal 7 } 
	{ result_t_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ result_t_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ result_z_dout sc_in sc_lv 64 signal 5 } 
	{ result_z_empty_n sc_in sc_logic 1 signal 5 } 
	{ result_z_read sc_out sc_logic 1 signal 5 } 
	{ result_z_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ result_z_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ result_y_dout sc_in sc_lv 64 signal 3 } 
	{ result_y_empty_n sc_in sc_logic 1 signal 3 } 
	{ result_y_read sc_out sc_logic 1 signal 3 } 
	{ result_y_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ result_y_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ result_x_dout sc_in sc_lv 64 signal 1 } 
	{ result_x_empty_n sc_in sc_logic 1 signal 1 } 
	{ result_x_read sc_out sc_logic 1 signal 1 } 
	{ result_x_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ result_x_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ m_axi_gmem0_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WDATA sc_out sc_lv 256 signal 0 } 
	{ m_axi_gmem0_0_WSTRB sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RDATA sc_in sc_lv 256 signal 0 } 
	{ m_axi_gmem0_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_gmem0_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem1_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem1_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_WDATA sc_out sc_lv 256 signal 2 } 
	{ m_axi_gmem1_0_WSTRB sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem1_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem1_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem1_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem1_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem1_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_RDATA sc_in sc_lv 256 signal 2 } 
	{ m_axi_gmem1_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem1_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem1_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem1_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_0_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem2_0_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem2_0_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem2_0_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem2_0_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem2_0_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem2_0_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem2_0_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem2_0_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem2_0_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem2_0_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem2_0_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_WDATA sc_out sc_lv 256 signal 4 } 
	{ m_axi_gmem2_0_WSTRB sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem2_0_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem2_0_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem2_0_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem2_0_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem2_0_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem2_0_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem2_0_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem2_0_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem2_0_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem2_0_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem2_0_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem2_0_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem2_0_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem2_0_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_RDATA sc_in sc_lv 256 signal 4 } 
	{ m_axi_gmem2_0_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem2_0_RFIFONUM sc_in sc_lv 9 signal 4 } 
	{ m_axi_gmem2_0_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem2_0_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem2_0_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem2_0_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem2_0_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem2_0_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem3_0_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem3_0_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_0_AWLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem3_0_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem3_0_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem3_0_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem3_0_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_0_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem3_0_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_0_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_0_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_0_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_WDATA sc_out sc_lv 256 signal 6 } 
	{ m_axi_gmem3_0_WSTRB sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem3_0_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_0_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_0_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem3_0_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_0_ARLEN sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem3_0_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem3_0_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem3_0_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem3_0_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_0_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem3_0_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_0_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem3_0_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem3_0_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_RDATA sc_in sc_lv 256 signal 6 } 
	{ m_axi_gmem3_0_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem3_0_RFIFONUM sc_in sc_lv 9 signal 6 } 
	{ m_axi_gmem3_0_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem3_0_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem3_0_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem3_0_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem3_0_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem3_0_BUSER sc_in sc_lv 1 signal 6 } 
	{ point_result_stream_dout sc_in sc_lv 1024 signal 8 } 
	{ point_result_stream_empty_n sc_in sc_logic 1 signal 8 } 
	{ point_result_stream_read sc_out sc_logic 1 signal 8 } 
	{ point_result_stream_num_data_valid sc_in sc_lv 7 signal 8 } 
	{ point_result_stream_fifo_cap sc_in sc_lv 7 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "result_t_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_t", "role": "dout" }} , 
 	{ "name": "result_t_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_t", "role": "empty_n" }} , 
 	{ "name": "result_t_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_t", "role": "read" }} , 
 	{ "name": "result_t_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_t", "role": "num_data_valid" }} , 
 	{ "name": "result_t_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_t", "role": "fifo_cap" }} , 
 	{ "name": "result_z_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_z", "role": "dout" }} , 
 	{ "name": "result_z_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_z", "role": "empty_n" }} , 
 	{ "name": "result_z_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_z", "role": "read" }} , 
 	{ "name": "result_z_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_z", "role": "num_data_valid" }} , 
 	{ "name": "result_z_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_z", "role": "fifo_cap" }} , 
 	{ "name": "result_y_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_y", "role": "dout" }} , 
 	{ "name": "result_y_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_y", "role": "empty_n" }} , 
 	{ "name": "result_y_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_y", "role": "read" }} , 
 	{ "name": "result_y_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_y", "role": "num_data_valid" }} , 
 	{ "name": "result_y_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_y", "role": "fifo_cap" }} , 
 	{ "name": "result_x_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "result_x", "role": "dout" }} , 
 	{ "name": "result_x_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_x", "role": "empty_n" }} , 
 	{ "name": "result_x_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "result_x", "role": "read" }} , 
 	{ "name": "result_x_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_x", "role": "num_data_valid" }} , 
 	{ "name": "result_x_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "result_x", "role": "fifo_cap" }} , 
 	{ "name": "m_axi_gmem0_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem0_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem0_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem0_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem0_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem0_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem0_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem0_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem0_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem0_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem0_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem0_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem0_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem0_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem0_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem0_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem0_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem0_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem0_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem0_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem0_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem0_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem0_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem0_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem0_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem0_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem0_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem0_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem0_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem0_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem0_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem0_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem0_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem0_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem0_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem0_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem0_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem0_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "0_BUSER" }} , 
 	{ "name": "m_axi_gmem1_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem1_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem1_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem1_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem1_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem1_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem1_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem1_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem1_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem1_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem1_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem1_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem1_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem1_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem1_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem1_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem1_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem1_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem1_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem1_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem1_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem1_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem1_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem1_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem1_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem1_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem1_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem1_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem1_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem1_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem1_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem1_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem1_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem1_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem1_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem1_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem1_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem1_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem1_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "0_BUSER" }} , 
 	{ "name": "m_axi_gmem2_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem2_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem2_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem2_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem2_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem2_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem2_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem2_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem2_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem2_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem2_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem2_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem2_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem2_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem2_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem2_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem2_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem2_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem2_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem2_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem2_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem2_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem2_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem2_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem2_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem2_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem2_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem2_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem2_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem2_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem2_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem2_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem2_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem2_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem2_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem2_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem2_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem2_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem2_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem2_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "0_BUSER" }} , 
 	{ "name": "m_axi_gmem3_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem3_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem3_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem3_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem3_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem3_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem3_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem3_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem3_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem3_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem3_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem3_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem3_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem3_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem3_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem3_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem3_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem3_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem3_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem3_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem3_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem3_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem3_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem3_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem3_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem3_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem3_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem3_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem3_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem3_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem3_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem3_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem3_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem3_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem3_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem3_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem3_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem3_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem3_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem3_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "0_BUSER" }} , 
 	{ "name": "point_result_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "point_result_stream", "role": "dout" }} , 
 	{ "name": "point_result_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_result_stream", "role": "empty_n" }} , 
 	{ "name": "point_result_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "point_result_stream", "role": "read" }} , 
 	{ "name": "point_result_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "point_result_stream", "role": "num_data_valid" }} , 
 	{ "name": "point_result_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "point_result_stream", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "WriteBack",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "26633", "EstimateLatencyMax" : "26633",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "result_x", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "result_x_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "result_y", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "result_y_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "result_z", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "result_z_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "result_t", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "result_t_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "point_result_stream", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "point_result_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_586_1_VITIS_LOOP_588_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	WriteBack {
		gmem0 {Type O LastRead 4 FirstWrite 3}
		result_x {Type I LastRead 1 FirstWrite -1}
		gmem1 {Type O LastRead 4 FirstWrite 3}
		result_y {Type I LastRead 1 FirstWrite -1}
		gmem2 {Type O LastRead 4 FirstWrite 3}
		result_z {Type I LastRead 1 FirstWrite -1}
		gmem3 {Type O LastRead 4 FirstWrite 3}
		result_t {Type I LastRead 1 FirstWrite -1}
		point_result_stream {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "26633", "Max" : "26633"}
	, {"Name" : "Interval", "Min" : "26633", "Max" : "26633"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_0_WSTRB STRB 1 32 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	result_x { ap_fifo {  { result_x_dout fifo_data_in 0 64 }  { result_x_empty_n fifo_status 0 1 }  { result_x_read fifo_port_we 1 1 }  { result_x_num_data_valid fifo_status_num_data_valid 0 3 }  { result_x_fifo_cap fifo_update 0 3 } } }
	 { m_axi {  { m_axi_gmem1_0_AWVALID VALID 1 1 }  { m_axi_gmem1_0_AWREADY READY 0 1 }  { m_axi_gmem1_0_AWADDR ADDR 1 64 }  { m_axi_gmem1_0_AWID ID 1 1 }  { m_axi_gmem1_0_AWLEN SIZE 1 32 }  { m_axi_gmem1_0_AWSIZE BURST 1 3 }  { m_axi_gmem1_0_AWBURST LOCK 1 2 }  { m_axi_gmem1_0_AWLOCK CACHE 1 2 }  { m_axi_gmem1_0_AWCACHE PROT 1 4 }  { m_axi_gmem1_0_AWPROT QOS 1 3 }  { m_axi_gmem1_0_AWQOS REGION 1 4 }  { m_axi_gmem1_0_AWREGION USER 1 4 }  { m_axi_gmem1_0_AWUSER DATA 1 1 }  { m_axi_gmem1_0_WVALID VALID 1 1 }  { m_axi_gmem1_0_WREADY READY 0 1 }  { m_axi_gmem1_0_WDATA FIFONUM 1 256 }  { m_axi_gmem1_0_WSTRB STRB 1 32 }  { m_axi_gmem1_0_WLAST LAST 1 1 }  { m_axi_gmem1_0_WID ID 1 1 }  { m_axi_gmem1_0_WUSER DATA 1 1 }  { m_axi_gmem1_0_ARVALID VALID 1 1 }  { m_axi_gmem1_0_ARREADY READY 0 1 }  { m_axi_gmem1_0_ARADDR ADDR 1 64 }  { m_axi_gmem1_0_ARID ID 1 1 }  { m_axi_gmem1_0_ARLEN SIZE 1 32 }  { m_axi_gmem1_0_ARSIZE BURST 1 3 }  { m_axi_gmem1_0_ARBURST LOCK 1 2 }  { m_axi_gmem1_0_ARLOCK CACHE 1 2 }  { m_axi_gmem1_0_ARCACHE PROT 1 4 }  { m_axi_gmem1_0_ARPROT QOS 1 3 }  { m_axi_gmem1_0_ARQOS REGION 1 4 }  { m_axi_gmem1_0_ARREGION USER 1 4 }  { m_axi_gmem1_0_ARUSER DATA 1 1 }  { m_axi_gmem1_0_RVALID VALID 0 1 }  { m_axi_gmem1_0_RREADY READY 1 1 }  { m_axi_gmem1_0_RDATA FIFONUM 0 256 }  { m_axi_gmem1_0_RLAST LAST 0 1 }  { m_axi_gmem1_0_RID ID 0 1 }  { m_axi_gmem1_0_RFIFONUM LEN 0 9 }  { m_axi_gmem1_0_RUSER DATA 0 1 }  { m_axi_gmem1_0_RRESP RESP 0 2 }  { m_axi_gmem1_0_BVALID VALID 0 1 }  { m_axi_gmem1_0_BREADY READY 1 1 }  { m_axi_gmem1_0_BRESP RESP 0 2 }  { m_axi_gmem1_0_BID ID 0 1 }  { m_axi_gmem1_0_BUSER DATA 0 1 } } }
	result_y { ap_fifo {  { result_y_dout fifo_data_in 0 64 }  { result_y_empty_n fifo_status 0 1 }  { result_y_read fifo_port_we 1 1 }  { result_y_num_data_valid fifo_status_num_data_valid 0 3 }  { result_y_fifo_cap fifo_update 0 3 } } }
	 { m_axi {  { m_axi_gmem2_0_AWVALID VALID 1 1 }  { m_axi_gmem2_0_AWREADY READY 0 1 }  { m_axi_gmem2_0_AWADDR ADDR 1 64 }  { m_axi_gmem2_0_AWID ID 1 1 }  { m_axi_gmem2_0_AWLEN SIZE 1 32 }  { m_axi_gmem2_0_AWSIZE BURST 1 3 }  { m_axi_gmem2_0_AWBURST LOCK 1 2 }  { m_axi_gmem2_0_AWLOCK CACHE 1 2 }  { m_axi_gmem2_0_AWCACHE PROT 1 4 }  { m_axi_gmem2_0_AWPROT QOS 1 3 }  { m_axi_gmem2_0_AWQOS REGION 1 4 }  { m_axi_gmem2_0_AWREGION USER 1 4 }  { m_axi_gmem2_0_AWUSER DATA 1 1 }  { m_axi_gmem2_0_WVALID VALID 1 1 }  { m_axi_gmem2_0_WREADY READY 0 1 }  { m_axi_gmem2_0_WDATA FIFONUM 1 256 }  { m_axi_gmem2_0_WSTRB STRB 1 32 }  { m_axi_gmem2_0_WLAST LAST 1 1 }  { m_axi_gmem2_0_WID ID 1 1 }  { m_axi_gmem2_0_WUSER DATA 1 1 }  { m_axi_gmem2_0_ARVALID VALID 1 1 }  { m_axi_gmem2_0_ARREADY READY 0 1 }  { m_axi_gmem2_0_ARADDR ADDR 1 64 }  { m_axi_gmem2_0_ARID ID 1 1 }  { m_axi_gmem2_0_ARLEN SIZE 1 32 }  { m_axi_gmem2_0_ARSIZE BURST 1 3 }  { m_axi_gmem2_0_ARBURST LOCK 1 2 }  { m_axi_gmem2_0_ARLOCK CACHE 1 2 }  { m_axi_gmem2_0_ARCACHE PROT 1 4 }  { m_axi_gmem2_0_ARPROT QOS 1 3 }  { m_axi_gmem2_0_ARQOS REGION 1 4 }  { m_axi_gmem2_0_ARREGION USER 1 4 }  { m_axi_gmem2_0_ARUSER DATA 1 1 }  { m_axi_gmem2_0_RVALID VALID 0 1 }  { m_axi_gmem2_0_RREADY READY 1 1 }  { m_axi_gmem2_0_RDATA FIFONUM 0 256 }  { m_axi_gmem2_0_RLAST LAST 0 1 }  { m_axi_gmem2_0_RID ID 0 1 }  { m_axi_gmem2_0_RFIFONUM LEN 0 9 }  { m_axi_gmem2_0_RUSER DATA 0 1 }  { m_axi_gmem2_0_RRESP RESP 0 2 }  { m_axi_gmem2_0_BVALID VALID 0 1 }  { m_axi_gmem2_0_BREADY READY 1 1 }  { m_axi_gmem2_0_BRESP RESP 0 2 }  { m_axi_gmem2_0_BID ID 0 1 }  { m_axi_gmem2_0_BUSER DATA 0 1 } } }
	result_z { ap_fifo {  { result_z_dout fifo_data_in 0 64 }  { result_z_empty_n fifo_status 0 1 }  { result_z_read fifo_port_we 1 1 }  { result_z_num_data_valid fifo_status_num_data_valid 0 3 }  { result_z_fifo_cap fifo_update 0 3 } } }
	 { m_axi {  { m_axi_gmem3_0_AWVALID VALID 1 1 }  { m_axi_gmem3_0_AWREADY READY 0 1 }  { m_axi_gmem3_0_AWADDR ADDR 1 64 }  { m_axi_gmem3_0_AWID ID 1 1 }  { m_axi_gmem3_0_AWLEN SIZE 1 32 }  { m_axi_gmem3_0_AWSIZE BURST 1 3 }  { m_axi_gmem3_0_AWBURST LOCK 1 2 }  { m_axi_gmem3_0_AWLOCK CACHE 1 2 }  { m_axi_gmem3_0_AWCACHE PROT 1 4 }  { m_axi_gmem3_0_AWPROT QOS 1 3 }  { m_axi_gmem3_0_AWQOS REGION 1 4 }  { m_axi_gmem3_0_AWREGION USER 1 4 }  { m_axi_gmem3_0_AWUSER DATA 1 1 }  { m_axi_gmem3_0_WVALID VALID 1 1 }  { m_axi_gmem3_0_WREADY READY 0 1 }  { m_axi_gmem3_0_WDATA FIFONUM 1 256 }  { m_axi_gmem3_0_WSTRB STRB 1 32 }  { m_axi_gmem3_0_WLAST LAST 1 1 }  { m_axi_gmem3_0_WID ID 1 1 }  { m_axi_gmem3_0_WUSER DATA 1 1 }  { m_axi_gmem3_0_ARVALID VALID 1 1 }  { m_axi_gmem3_0_ARREADY READY 0 1 }  { m_axi_gmem3_0_ARADDR ADDR 1 64 }  { m_axi_gmem3_0_ARID ID 1 1 }  { m_axi_gmem3_0_ARLEN SIZE 1 32 }  { m_axi_gmem3_0_ARSIZE BURST 1 3 }  { m_axi_gmem3_0_ARBURST LOCK 1 2 }  { m_axi_gmem3_0_ARLOCK CACHE 1 2 }  { m_axi_gmem3_0_ARCACHE PROT 1 4 }  { m_axi_gmem3_0_ARPROT QOS 1 3 }  { m_axi_gmem3_0_ARQOS REGION 1 4 }  { m_axi_gmem3_0_ARREGION USER 1 4 }  { m_axi_gmem3_0_ARUSER DATA 1 1 }  { m_axi_gmem3_0_RVALID VALID 0 1 }  { m_axi_gmem3_0_RREADY READY 1 1 }  { m_axi_gmem3_0_RDATA FIFONUM 0 256 }  { m_axi_gmem3_0_RLAST LAST 0 1 }  { m_axi_gmem3_0_RID ID 0 1 }  { m_axi_gmem3_0_RFIFONUM LEN 0 9 }  { m_axi_gmem3_0_RUSER DATA 0 1 }  { m_axi_gmem3_0_RRESP RESP 0 2 }  { m_axi_gmem3_0_BVALID VALID 0 1 }  { m_axi_gmem3_0_BREADY READY 1 1 }  { m_axi_gmem3_0_BRESP RESP 0 2 }  { m_axi_gmem3_0_BID ID 0 1 }  { m_axi_gmem3_0_BUSER DATA 0 1 } } }
	result_t { ap_fifo {  { result_t_dout fifo_data_in 0 64 }  { result_t_empty_n fifo_status 0 1 }  { result_t_read fifo_port_we 1 1 }  { result_t_num_data_valid fifo_status_num_data_valid 0 3 }  { result_t_fifo_cap fifo_update 0 3 } } }
	point_result_stream { ap_fifo {  { point_result_stream_dout fifo_data_in 0 1024 }  { point_result_stream_empty_n fifo_status 0 1 }  { point_result_stream_read fifo_port_we 1 1 }  { point_result_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { point_result_stream_fifo_cap fifo_update 0 7 } } }
}
