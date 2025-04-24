set moduleName data_loader
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
set C_modelName {data_loader}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem0 int 256 regular {axi_master 0}  }
	{ x_array int 64 regular  }
	{ gmem1 int 256 regular {axi_master 0}  }
	{ y_array int 64 regular  }
	{ gmem2 int 256 regular {axi_master 0}  }
	{ z_array int 64 regular  }
	{ gmem3 int 256 regular {axi_master 0}  }
	{ t_array int 64 regular  }
	{ scalar_array int 256 regular {pointer 0}  }
	{ degree int 32 regular  }
	{ x_point_stream int 256 regular {fifo 1 volatile } {global 1}  }
	{ y_point_stream int 256 regular {fifo 1 volatile } {global 1}  }
	{ z_point_stream int 256 regular {fifo 1 volatile } {global 1}  }
	{ t_point_stream int 256 regular {fifo 1 volatile } {global 1}  }
	{ scalar_point_stream int 256 regular {fifo 1 volatile } {global 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "x_array","offset": { "type": "dynamic","port_name": "x_array","bundle": "control"},"direction": "READONLY"},{"cName": "result_x","offset": { "type": "dynamic","port_name": "result_x","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "x_array", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "y_array","offset": { "type": "dynamic","port_name": "y_array","bundle": "control"},"direction": "READONLY"},{"cName": "result_y","offset": { "type": "dynamic","port_name": "result_y","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "y_array", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "z_array","offset": { "type": "dynamic","port_name": "z_array","bundle": "control"},"direction": "READONLY"},{"cName": "result_z","offset": { "type": "dynamic","port_name": "result_z","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "z_array", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "t_array","offset": { "type": "dynamic","port_name": "t_array","bundle": "control"},"direction": "READONLY"},{"cName": "result_t","offset": { "type": "dynamic","port_name": "result_t","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "t_array", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "scalar_array", "interface" : "wire", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "degree", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "y_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "z_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "t_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "scalar_point_stream", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 225
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ x_point_stream_din sc_out sc_lv 256 signal 10 } 
	{ x_point_stream_full_n sc_in sc_logic 1 signal 10 } 
	{ x_point_stream_write sc_out sc_logic 1 signal 10 } 
	{ x_point_stream_num_data_valid sc_in sc_lv 7 signal 10 } 
	{ x_point_stream_fifo_cap sc_in sc_lv 7 signal 10 } 
	{ y_point_stream_din sc_out sc_lv 256 signal 11 } 
	{ y_point_stream_full_n sc_in sc_logic 1 signal 11 } 
	{ y_point_stream_write sc_out sc_logic 1 signal 11 } 
	{ y_point_stream_num_data_valid sc_in sc_lv 7 signal 11 } 
	{ y_point_stream_fifo_cap sc_in sc_lv 7 signal 11 } 
	{ z_point_stream_din sc_out sc_lv 256 signal 12 } 
	{ z_point_stream_full_n sc_in sc_logic 1 signal 12 } 
	{ z_point_stream_write sc_out sc_logic 1 signal 12 } 
	{ z_point_stream_num_data_valid sc_in sc_lv 7 signal 12 } 
	{ z_point_stream_fifo_cap sc_in sc_lv 7 signal 12 } 
	{ t_point_stream_din sc_out sc_lv 256 signal 13 } 
	{ t_point_stream_full_n sc_in sc_logic 1 signal 13 } 
	{ t_point_stream_write sc_out sc_logic 1 signal 13 } 
	{ t_point_stream_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ t_point_stream_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ scalar_point_stream_din sc_out sc_lv 256 signal 14 } 
	{ scalar_point_stream_full_n sc_in sc_logic 1 signal 14 } 
	{ scalar_point_stream_write sc_out sc_logic 1 signal 14 } 
	{ scalar_point_stream_num_data_valid sc_in sc_lv 7 signal 14 } 
	{ scalar_point_stream_fifo_cap sc_in sc_lv 7 signal 14 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ x_array sc_in sc_lv 64 signal 1 } 
	{ y_array sc_in sc_lv 64 signal 3 } 
	{ z_array sc_in sc_lv 64 signal 5 } 
	{ t_array sc_in sc_lv 64 signal 7 } 
	{ scalar_array sc_in sc_lv 256 signal 8 } 
	{ degree sc_in sc_lv 32 signal 9 } 
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
 	{ "name": "x_point_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "x_point_stream", "role": "din" }} , 
 	{ "name": "x_point_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_point_stream", "role": "full_n" }} , 
 	{ "name": "x_point_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_point_stream", "role": "write" }} , 
 	{ "name": "x_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "x_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "x_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "x_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "y_point_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "y_point_stream", "role": "din" }} , 
 	{ "name": "y_point_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_point_stream", "role": "full_n" }} , 
 	{ "name": "y_point_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "y_point_stream", "role": "write" }} , 
 	{ "name": "y_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "y_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "y_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "y_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "z_point_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "z_point_stream", "role": "din" }} , 
 	{ "name": "z_point_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_point_stream", "role": "full_n" }} , 
 	{ "name": "z_point_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_point_stream", "role": "write" }} , 
 	{ "name": "z_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "z_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "z_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "z_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "t_point_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "t_point_stream", "role": "din" }} , 
 	{ "name": "t_point_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_point_stream", "role": "full_n" }} , 
 	{ "name": "t_point_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t_point_stream", "role": "write" }} , 
 	{ "name": "t_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "t_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "t_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "t_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "scalar_point_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "din" }} , 
 	{ "name": "scalar_point_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "full_n" }} , 
 	{ "name": "scalar_point_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "write" }} , 
 	{ "name": "scalar_point_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "num_data_valid" }} , 
 	{ "name": "scalar_point_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scalar_point_stream", "role": "fifo_cap" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "x_array", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "x_array", "role": "default" }} , 
 	{ "name": "y_array", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "y_array", "role": "default" }} , 
 	{ "name": "z_array", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "z_array", "role": "default" }} , 
 	{ "name": "t_array", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "t_array", "role": "default" }} , 
 	{ "name": "scalar_array", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "scalar_array", "role": "default" }} , 
 	{ "name": "degree", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "degree", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "data_loader",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "x_array", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "y_array", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "z_array", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "t_array", "Type" : "None", "Direction" : "I"},
			{"Name" : "scalar_array", "Type" : "None", "Direction" : "I"},
			{"Name" : "degree", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_point_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "x_point_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "y_point_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "y_point_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "z_point_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "z_point_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "t_point_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "t_point_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "scalar_point_stream", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "64", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "scalar_point_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "DATA_LOAD_LOOP", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	data_loader {
		gmem0 {Type I LastRead 9 FirstWrite -1}
		x_array {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 9 FirstWrite -1}
		y_array {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type I LastRead 9 FirstWrite -1}
		z_array {Type I LastRead 0 FirstWrite -1}
		gmem3 {Type I LastRead 9 FirstWrite -1}
		t_array {Type I LastRead 0 FirstWrite -1}
		scalar_array {Type I LastRead 0 FirstWrite -1}
		degree {Type I LastRead 0 FirstWrite -1}
		x_point_stream {Type O LastRead -1 FirstWrite 10}
		y_point_stream {Type O LastRead -1 FirstWrite 10}
		z_point_stream {Type O LastRead -1 FirstWrite 10}
		t_point_stream {Type O LastRead -1 FirstWrite 10}
		scalar_point_stream {Type O LastRead -1 FirstWrite 10}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem0_0_AWVALID VALID 1 1 }  { m_axi_gmem0_0_AWREADY READY 0 1 }  { m_axi_gmem0_0_AWADDR ADDR 1 64 }  { m_axi_gmem0_0_AWID ID 1 1 }  { m_axi_gmem0_0_AWLEN SIZE 1 32 }  { m_axi_gmem0_0_AWSIZE BURST 1 3 }  { m_axi_gmem0_0_AWBURST LOCK 1 2 }  { m_axi_gmem0_0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_0_AWCACHE PROT 1 4 }  { m_axi_gmem0_0_AWPROT QOS 1 3 }  { m_axi_gmem0_0_AWQOS REGION 1 4 }  { m_axi_gmem0_0_AWREGION USER 1 4 }  { m_axi_gmem0_0_AWUSER DATA 1 1 }  { m_axi_gmem0_0_WVALID VALID 1 1 }  { m_axi_gmem0_0_WREADY READY 0 1 }  { m_axi_gmem0_0_WDATA FIFONUM 1 256 }  { m_axi_gmem0_0_WSTRB STRB 1 32 }  { m_axi_gmem0_0_WLAST LAST 1 1 }  { m_axi_gmem0_0_WID ID 1 1 }  { m_axi_gmem0_0_WUSER DATA 1 1 }  { m_axi_gmem0_0_ARVALID VALID 1 1 }  { m_axi_gmem0_0_ARREADY READY 0 1 }  { m_axi_gmem0_0_ARADDR ADDR 1 64 }  { m_axi_gmem0_0_ARID ID 1 1 }  { m_axi_gmem0_0_ARLEN SIZE 1 32 }  { m_axi_gmem0_0_ARSIZE BURST 1 3 }  { m_axi_gmem0_0_ARBURST LOCK 1 2 }  { m_axi_gmem0_0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_0_ARCACHE PROT 1 4 }  { m_axi_gmem0_0_ARPROT QOS 1 3 }  { m_axi_gmem0_0_ARQOS REGION 1 4 }  { m_axi_gmem0_0_ARREGION USER 1 4 }  { m_axi_gmem0_0_ARUSER DATA 1 1 }  { m_axi_gmem0_0_RVALID VALID 0 1 }  { m_axi_gmem0_0_RREADY READY 1 1 }  { m_axi_gmem0_0_RDATA FIFONUM 0 256 }  { m_axi_gmem0_0_RLAST LAST 0 1 }  { m_axi_gmem0_0_RID ID 0 1 }  { m_axi_gmem0_0_RFIFONUM LEN 0 9 }  { m_axi_gmem0_0_RUSER DATA 0 1 }  { m_axi_gmem0_0_RRESP RESP 0 2 }  { m_axi_gmem0_0_BVALID VALID 0 1 }  { m_axi_gmem0_0_BREADY READY 1 1 }  { m_axi_gmem0_0_BRESP RESP 0 2 }  { m_axi_gmem0_0_BID ID 0 1 }  { m_axi_gmem0_0_BUSER DATA 0 1 } } }
	x_array { ap_none {  { x_array in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem1_0_AWVALID VALID 1 1 }  { m_axi_gmem1_0_AWREADY READY 0 1 }  { m_axi_gmem1_0_AWADDR ADDR 1 64 }  { m_axi_gmem1_0_AWID ID 1 1 }  { m_axi_gmem1_0_AWLEN SIZE 1 32 }  { m_axi_gmem1_0_AWSIZE BURST 1 3 }  { m_axi_gmem1_0_AWBURST LOCK 1 2 }  { m_axi_gmem1_0_AWLOCK CACHE 1 2 }  { m_axi_gmem1_0_AWCACHE PROT 1 4 }  { m_axi_gmem1_0_AWPROT QOS 1 3 }  { m_axi_gmem1_0_AWQOS REGION 1 4 }  { m_axi_gmem1_0_AWREGION USER 1 4 }  { m_axi_gmem1_0_AWUSER DATA 1 1 }  { m_axi_gmem1_0_WVALID VALID 1 1 }  { m_axi_gmem1_0_WREADY READY 0 1 }  { m_axi_gmem1_0_WDATA FIFONUM 1 256 }  { m_axi_gmem1_0_WSTRB STRB 1 32 }  { m_axi_gmem1_0_WLAST LAST 1 1 }  { m_axi_gmem1_0_WID ID 1 1 }  { m_axi_gmem1_0_WUSER DATA 1 1 }  { m_axi_gmem1_0_ARVALID VALID 1 1 }  { m_axi_gmem1_0_ARREADY READY 0 1 }  { m_axi_gmem1_0_ARADDR ADDR 1 64 }  { m_axi_gmem1_0_ARID ID 1 1 }  { m_axi_gmem1_0_ARLEN SIZE 1 32 }  { m_axi_gmem1_0_ARSIZE BURST 1 3 }  { m_axi_gmem1_0_ARBURST LOCK 1 2 }  { m_axi_gmem1_0_ARLOCK CACHE 1 2 }  { m_axi_gmem1_0_ARCACHE PROT 1 4 }  { m_axi_gmem1_0_ARPROT QOS 1 3 }  { m_axi_gmem1_0_ARQOS REGION 1 4 }  { m_axi_gmem1_0_ARREGION USER 1 4 }  { m_axi_gmem1_0_ARUSER DATA 1 1 }  { m_axi_gmem1_0_RVALID VALID 0 1 }  { m_axi_gmem1_0_RREADY READY 1 1 }  { m_axi_gmem1_0_RDATA FIFONUM 0 256 }  { m_axi_gmem1_0_RLAST LAST 0 1 }  { m_axi_gmem1_0_RID ID 0 1 }  { m_axi_gmem1_0_RFIFONUM LEN 0 9 }  { m_axi_gmem1_0_RUSER DATA 0 1 }  { m_axi_gmem1_0_RRESP RESP 0 2 }  { m_axi_gmem1_0_BVALID VALID 0 1 }  { m_axi_gmem1_0_BREADY READY 1 1 }  { m_axi_gmem1_0_BRESP RESP 0 2 }  { m_axi_gmem1_0_BID ID 0 1 }  { m_axi_gmem1_0_BUSER DATA 0 1 } } }
	y_array { ap_none {  { y_array in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem2_0_AWVALID VALID 1 1 }  { m_axi_gmem2_0_AWREADY READY 0 1 }  { m_axi_gmem2_0_AWADDR ADDR 1 64 }  { m_axi_gmem2_0_AWID ID 1 1 }  { m_axi_gmem2_0_AWLEN SIZE 1 32 }  { m_axi_gmem2_0_AWSIZE BURST 1 3 }  { m_axi_gmem2_0_AWBURST LOCK 1 2 }  { m_axi_gmem2_0_AWLOCK CACHE 1 2 }  { m_axi_gmem2_0_AWCACHE PROT 1 4 }  { m_axi_gmem2_0_AWPROT QOS 1 3 }  { m_axi_gmem2_0_AWQOS REGION 1 4 }  { m_axi_gmem2_0_AWREGION USER 1 4 }  { m_axi_gmem2_0_AWUSER DATA 1 1 }  { m_axi_gmem2_0_WVALID VALID 1 1 }  { m_axi_gmem2_0_WREADY READY 0 1 }  { m_axi_gmem2_0_WDATA FIFONUM 1 256 }  { m_axi_gmem2_0_WSTRB STRB 1 32 }  { m_axi_gmem2_0_WLAST LAST 1 1 }  { m_axi_gmem2_0_WID ID 1 1 }  { m_axi_gmem2_0_WUSER DATA 1 1 }  { m_axi_gmem2_0_ARVALID VALID 1 1 }  { m_axi_gmem2_0_ARREADY READY 0 1 }  { m_axi_gmem2_0_ARADDR ADDR 1 64 }  { m_axi_gmem2_0_ARID ID 1 1 }  { m_axi_gmem2_0_ARLEN SIZE 1 32 }  { m_axi_gmem2_0_ARSIZE BURST 1 3 }  { m_axi_gmem2_0_ARBURST LOCK 1 2 }  { m_axi_gmem2_0_ARLOCK CACHE 1 2 }  { m_axi_gmem2_0_ARCACHE PROT 1 4 }  { m_axi_gmem2_0_ARPROT QOS 1 3 }  { m_axi_gmem2_0_ARQOS REGION 1 4 }  { m_axi_gmem2_0_ARREGION USER 1 4 }  { m_axi_gmem2_0_ARUSER DATA 1 1 }  { m_axi_gmem2_0_RVALID VALID 0 1 }  { m_axi_gmem2_0_RREADY READY 1 1 }  { m_axi_gmem2_0_RDATA FIFONUM 0 256 }  { m_axi_gmem2_0_RLAST LAST 0 1 }  { m_axi_gmem2_0_RID ID 0 1 }  { m_axi_gmem2_0_RFIFONUM LEN 0 9 }  { m_axi_gmem2_0_RUSER DATA 0 1 }  { m_axi_gmem2_0_RRESP RESP 0 2 }  { m_axi_gmem2_0_BVALID VALID 0 1 }  { m_axi_gmem2_0_BREADY READY 1 1 }  { m_axi_gmem2_0_BRESP RESP 0 2 }  { m_axi_gmem2_0_BID ID 0 1 }  { m_axi_gmem2_0_BUSER DATA 0 1 } } }
	z_array { ap_none {  { z_array in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem3_0_AWVALID VALID 1 1 }  { m_axi_gmem3_0_AWREADY READY 0 1 }  { m_axi_gmem3_0_AWADDR ADDR 1 64 }  { m_axi_gmem3_0_AWID ID 1 1 }  { m_axi_gmem3_0_AWLEN SIZE 1 32 }  { m_axi_gmem3_0_AWSIZE BURST 1 3 }  { m_axi_gmem3_0_AWBURST LOCK 1 2 }  { m_axi_gmem3_0_AWLOCK CACHE 1 2 }  { m_axi_gmem3_0_AWCACHE PROT 1 4 }  { m_axi_gmem3_0_AWPROT QOS 1 3 }  { m_axi_gmem3_0_AWQOS REGION 1 4 }  { m_axi_gmem3_0_AWREGION USER 1 4 }  { m_axi_gmem3_0_AWUSER DATA 1 1 }  { m_axi_gmem3_0_WVALID VALID 1 1 }  { m_axi_gmem3_0_WREADY READY 0 1 }  { m_axi_gmem3_0_WDATA FIFONUM 1 256 }  { m_axi_gmem3_0_WSTRB STRB 1 32 }  { m_axi_gmem3_0_WLAST LAST 1 1 }  { m_axi_gmem3_0_WID ID 1 1 }  { m_axi_gmem3_0_WUSER DATA 1 1 }  { m_axi_gmem3_0_ARVALID VALID 1 1 }  { m_axi_gmem3_0_ARREADY READY 0 1 }  { m_axi_gmem3_0_ARADDR ADDR 1 64 }  { m_axi_gmem3_0_ARID ID 1 1 }  { m_axi_gmem3_0_ARLEN SIZE 1 32 }  { m_axi_gmem3_0_ARSIZE BURST 1 3 }  { m_axi_gmem3_0_ARBURST LOCK 1 2 }  { m_axi_gmem3_0_ARLOCK CACHE 1 2 }  { m_axi_gmem3_0_ARCACHE PROT 1 4 }  { m_axi_gmem3_0_ARPROT QOS 1 3 }  { m_axi_gmem3_0_ARQOS REGION 1 4 }  { m_axi_gmem3_0_ARREGION USER 1 4 }  { m_axi_gmem3_0_ARUSER DATA 1 1 }  { m_axi_gmem3_0_RVALID VALID 0 1 }  { m_axi_gmem3_0_RREADY READY 1 1 }  { m_axi_gmem3_0_RDATA FIFONUM 0 256 }  { m_axi_gmem3_0_RLAST LAST 0 1 }  { m_axi_gmem3_0_RID ID 0 1 }  { m_axi_gmem3_0_RFIFONUM LEN 0 9 }  { m_axi_gmem3_0_RUSER DATA 0 1 }  { m_axi_gmem3_0_RRESP RESP 0 2 }  { m_axi_gmem3_0_BVALID VALID 0 1 }  { m_axi_gmem3_0_BREADY READY 1 1 }  { m_axi_gmem3_0_BRESP RESP 0 2 }  { m_axi_gmem3_0_BID ID 0 1 }  { m_axi_gmem3_0_BUSER DATA 0 1 } } }
	t_array { ap_none {  { t_array in_data 0 64 } } }
	scalar_array { ap_none {  { scalar_array in_data 0 256 } } }
	degree { ap_none {  { degree in_data 0 32 } } }
	x_point_stream { ap_fifo {  { x_point_stream_din fifo_data_in 1 256 }  { x_point_stream_full_n fifo_status 0 1 }  { x_point_stream_write fifo_port_we 1 1 }  { x_point_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { x_point_stream_fifo_cap fifo_update 0 7 } } }
	y_point_stream { ap_fifo {  { y_point_stream_din fifo_data_in 1 256 }  { y_point_stream_full_n fifo_status 0 1 }  { y_point_stream_write fifo_port_we 1 1 }  { y_point_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { y_point_stream_fifo_cap fifo_update 0 7 } } }
	z_point_stream { ap_fifo {  { z_point_stream_din fifo_data_in 1 256 }  { z_point_stream_full_n fifo_status 0 1 }  { z_point_stream_write fifo_port_we 1 1 }  { z_point_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { z_point_stream_fifo_cap fifo_update 0 7 } } }
	t_point_stream { ap_fifo {  { t_point_stream_din fifo_data_in 1 256 }  { t_point_stream_full_n fifo_status 0 1 }  { t_point_stream_write fifo_port_we 1 1 }  { t_point_stream_num_data_valid fifo_status_num_data_valid 0 3 }  { t_point_stream_fifo_cap fifo_update 0 3 } } }
	scalar_point_stream { ap_fifo {  { scalar_point_stream_din fifo_data_in 1 256 }  { scalar_point_stream_full_n fifo_status 0 1 }  { scalar_point_stream_write fifo_port_we 1 1 }  { scalar_point_stream_num_data_valid fifo_status_num_data_valid 0 7 }  { scalar_point_stream_fifo_cap fifo_update 0 7 } } }
}
