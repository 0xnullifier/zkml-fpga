# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name gmem0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem0 \
    op interface \
    ports { m_axi_gmem0_0_AWVALID { O 1 bit } m_axi_gmem0_0_AWREADY { I 1 bit } m_axi_gmem0_0_AWADDR { O 64 vector } m_axi_gmem0_0_AWID { O 1 vector } m_axi_gmem0_0_AWLEN { O 32 vector } m_axi_gmem0_0_AWSIZE { O 3 vector } m_axi_gmem0_0_AWBURST { O 2 vector } m_axi_gmem0_0_AWLOCK { O 2 vector } m_axi_gmem0_0_AWCACHE { O 4 vector } m_axi_gmem0_0_AWPROT { O 3 vector } m_axi_gmem0_0_AWQOS { O 4 vector } m_axi_gmem0_0_AWREGION { O 4 vector } m_axi_gmem0_0_AWUSER { O 1 vector } m_axi_gmem0_0_WVALID { O 1 bit } m_axi_gmem0_0_WREADY { I 1 bit } m_axi_gmem0_0_WDATA { O 256 vector } m_axi_gmem0_0_WSTRB { O 32 vector } m_axi_gmem0_0_WLAST { O 1 bit } m_axi_gmem0_0_WID { O 1 vector } m_axi_gmem0_0_WUSER { O 1 vector } m_axi_gmem0_0_ARVALID { O 1 bit } m_axi_gmem0_0_ARREADY { I 1 bit } m_axi_gmem0_0_ARADDR { O 64 vector } m_axi_gmem0_0_ARID { O 1 vector } m_axi_gmem0_0_ARLEN { O 32 vector } m_axi_gmem0_0_ARSIZE { O 3 vector } m_axi_gmem0_0_ARBURST { O 2 vector } m_axi_gmem0_0_ARLOCK { O 2 vector } m_axi_gmem0_0_ARCACHE { O 4 vector } m_axi_gmem0_0_ARPROT { O 3 vector } m_axi_gmem0_0_ARQOS { O 4 vector } m_axi_gmem0_0_ARREGION { O 4 vector } m_axi_gmem0_0_ARUSER { O 1 vector } m_axi_gmem0_0_RVALID { I 1 bit } m_axi_gmem0_0_RREADY { O 1 bit } m_axi_gmem0_0_RDATA { I 256 vector } m_axi_gmem0_0_RLAST { I 1 bit } m_axi_gmem0_0_RID { I 1 vector } m_axi_gmem0_0_RFIFONUM { I 9 vector } m_axi_gmem0_0_RUSER { I 1 vector } m_axi_gmem0_0_RRESP { I 2 vector } m_axi_gmem0_0_BVALID { I 1 bit } m_axi_gmem0_0_BREADY { O 1 bit } m_axi_gmem0_0_BRESP { I 2 vector } m_axi_gmem0_0_BID { I 1 vector } m_axi_gmem0_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name result_x \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_x \
    op interface \
    ports { result_x_dout { I 64 vector } result_x_empty_n { I 1 bit } result_x_read { O 1 bit } result_x_num_data_valid { I 3 vector } result_x_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name gmem1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem1 \
    op interface \
    ports { m_axi_gmem1_0_AWVALID { O 1 bit } m_axi_gmem1_0_AWREADY { I 1 bit } m_axi_gmem1_0_AWADDR { O 64 vector } m_axi_gmem1_0_AWID { O 1 vector } m_axi_gmem1_0_AWLEN { O 32 vector } m_axi_gmem1_0_AWSIZE { O 3 vector } m_axi_gmem1_0_AWBURST { O 2 vector } m_axi_gmem1_0_AWLOCK { O 2 vector } m_axi_gmem1_0_AWCACHE { O 4 vector } m_axi_gmem1_0_AWPROT { O 3 vector } m_axi_gmem1_0_AWQOS { O 4 vector } m_axi_gmem1_0_AWREGION { O 4 vector } m_axi_gmem1_0_AWUSER { O 1 vector } m_axi_gmem1_0_WVALID { O 1 bit } m_axi_gmem1_0_WREADY { I 1 bit } m_axi_gmem1_0_WDATA { O 256 vector } m_axi_gmem1_0_WSTRB { O 32 vector } m_axi_gmem1_0_WLAST { O 1 bit } m_axi_gmem1_0_WID { O 1 vector } m_axi_gmem1_0_WUSER { O 1 vector } m_axi_gmem1_0_ARVALID { O 1 bit } m_axi_gmem1_0_ARREADY { I 1 bit } m_axi_gmem1_0_ARADDR { O 64 vector } m_axi_gmem1_0_ARID { O 1 vector } m_axi_gmem1_0_ARLEN { O 32 vector } m_axi_gmem1_0_ARSIZE { O 3 vector } m_axi_gmem1_0_ARBURST { O 2 vector } m_axi_gmem1_0_ARLOCK { O 2 vector } m_axi_gmem1_0_ARCACHE { O 4 vector } m_axi_gmem1_0_ARPROT { O 3 vector } m_axi_gmem1_0_ARQOS { O 4 vector } m_axi_gmem1_0_ARREGION { O 4 vector } m_axi_gmem1_0_ARUSER { O 1 vector } m_axi_gmem1_0_RVALID { I 1 bit } m_axi_gmem1_0_RREADY { O 1 bit } m_axi_gmem1_0_RDATA { I 256 vector } m_axi_gmem1_0_RLAST { I 1 bit } m_axi_gmem1_0_RID { I 1 vector } m_axi_gmem1_0_RFIFONUM { I 9 vector } m_axi_gmem1_0_RUSER { I 1 vector } m_axi_gmem1_0_RRESP { I 2 vector } m_axi_gmem1_0_BVALID { I 1 bit } m_axi_gmem1_0_BREADY { O 1 bit } m_axi_gmem1_0_BRESP { I 2 vector } m_axi_gmem1_0_BID { I 1 vector } m_axi_gmem1_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name result_y \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_y \
    op interface \
    ports { result_y_dout { I 64 vector } result_y_empty_n { I 1 bit } result_y_read { O 1 bit } result_y_num_data_valid { I 3 vector } result_y_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name gmem2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem2 \
    op interface \
    ports { m_axi_gmem2_0_AWVALID { O 1 bit } m_axi_gmem2_0_AWREADY { I 1 bit } m_axi_gmem2_0_AWADDR { O 64 vector } m_axi_gmem2_0_AWID { O 1 vector } m_axi_gmem2_0_AWLEN { O 32 vector } m_axi_gmem2_0_AWSIZE { O 3 vector } m_axi_gmem2_0_AWBURST { O 2 vector } m_axi_gmem2_0_AWLOCK { O 2 vector } m_axi_gmem2_0_AWCACHE { O 4 vector } m_axi_gmem2_0_AWPROT { O 3 vector } m_axi_gmem2_0_AWQOS { O 4 vector } m_axi_gmem2_0_AWREGION { O 4 vector } m_axi_gmem2_0_AWUSER { O 1 vector } m_axi_gmem2_0_WVALID { O 1 bit } m_axi_gmem2_0_WREADY { I 1 bit } m_axi_gmem2_0_WDATA { O 256 vector } m_axi_gmem2_0_WSTRB { O 32 vector } m_axi_gmem2_0_WLAST { O 1 bit } m_axi_gmem2_0_WID { O 1 vector } m_axi_gmem2_0_WUSER { O 1 vector } m_axi_gmem2_0_ARVALID { O 1 bit } m_axi_gmem2_0_ARREADY { I 1 bit } m_axi_gmem2_0_ARADDR { O 64 vector } m_axi_gmem2_0_ARID { O 1 vector } m_axi_gmem2_0_ARLEN { O 32 vector } m_axi_gmem2_0_ARSIZE { O 3 vector } m_axi_gmem2_0_ARBURST { O 2 vector } m_axi_gmem2_0_ARLOCK { O 2 vector } m_axi_gmem2_0_ARCACHE { O 4 vector } m_axi_gmem2_0_ARPROT { O 3 vector } m_axi_gmem2_0_ARQOS { O 4 vector } m_axi_gmem2_0_ARREGION { O 4 vector } m_axi_gmem2_0_ARUSER { O 1 vector } m_axi_gmem2_0_RVALID { I 1 bit } m_axi_gmem2_0_RREADY { O 1 bit } m_axi_gmem2_0_RDATA { I 256 vector } m_axi_gmem2_0_RLAST { I 1 bit } m_axi_gmem2_0_RID { I 1 vector } m_axi_gmem2_0_RFIFONUM { I 9 vector } m_axi_gmem2_0_RUSER { I 1 vector } m_axi_gmem2_0_RRESP { I 2 vector } m_axi_gmem2_0_BVALID { I 1 bit } m_axi_gmem2_0_BREADY { O 1 bit } m_axi_gmem2_0_BRESP { I 2 vector } m_axi_gmem2_0_BID { I 1 vector } m_axi_gmem2_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name result_z \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_z \
    op interface \
    ports { result_z_dout { I 64 vector } result_z_empty_n { I 1 bit } result_z_read { O 1 bit } result_z_num_data_valid { I 3 vector } result_z_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name gmem3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem3 \
    op interface \
    ports { m_axi_gmem3_0_AWVALID { O 1 bit } m_axi_gmem3_0_AWREADY { I 1 bit } m_axi_gmem3_0_AWADDR { O 64 vector } m_axi_gmem3_0_AWID { O 1 vector } m_axi_gmem3_0_AWLEN { O 32 vector } m_axi_gmem3_0_AWSIZE { O 3 vector } m_axi_gmem3_0_AWBURST { O 2 vector } m_axi_gmem3_0_AWLOCK { O 2 vector } m_axi_gmem3_0_AWCACHE { O 4 vector } m_axi_gmem3_0_AWPROT { O 3 vector } m_axi_gmem3_0_AWQOS { O 4 vector } m_axi_gmem3_0_AWREGION { O 4 vector } m_axi_gmem3_0_AWUSER { O 1 vector } m_axi_gmem3_0_WVALID { O 1 bit } m_axi_gmem3_0_WREADY { I 1 bit } m_axi_gmem3_0_WDATA { O 256 vector } m_axi_gmem3_0_WSTRB { O 32 vector } m_axi_gmem3_0_WLAST { O 1 bit } m_axi_gmem3_0_WID { O 1 vector } m_axi_gmem3_0_WUSER { O 1 vector } m_axi_gmem3_0_ARVALID { O 1 bit } m_axi_gmem3_0_ARREADY { I 1 bit } m_axi_gmem3_0_ARADDR { O 64 vector } m_axi_gmem3_0_ARID { O 1 vector } m_axi_gmem3_0_ARLEN { O 32 vector } m_axi_gmem3_0_ARSIZE { O 3 vector } m_axi_gmem3_0_ARBURST { O 2 vector } m_axi_gmem3_0_ARLOCK { O 2 vector } m_axi_gmem3_0_ARCACHE { O 4 vector } m_axi_gmem3_0_ARPROT { O 3 vector } m_axi_gmem3_0_ARQOS { O 4 vector } m_axi_gmem3_0_ARREGION { O 4 vector } m_axi_gmem3_0_ARUSER { O 1 vector } m_axi_gmem3_0_RVALID { I 1 bit } m_axi_gmem3_0_RREADY { O 1 bit } m_axi_gmem3_0_RDATA { I 256 vector } m_axi_gmem3_0_RLAST { I 1 bit } m_axi_gmem3_0_RID { I 1 vector } m_axi_gmem3_0_RFIFONUM { I 9 vector } m_axi_gmem3_0_RUSER { I 1 vector } m_axi_gmem3_0_RRESP { I 2 vector } m_axi_gmem3_0_BVALID { I 1 bit } m_axi_gmem3_0_BREADY { O 1 bit } m_axi_gmem3_0_BRESP { I 2 vector } m_axi_gmem3_0_BID { I 1 vector } m_axi_gmem3_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name result_t \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_t \
    op interface \
    ports { result_t_dout { I 64 vector } result_t_empty_n { I 1 bit } result_t_read { O 1 bit } result_t_num_data_valid { I 3 vector } result_t_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name point_result_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_point_result_stream \
    op interface \
    ports { point_result_stream_dout { I 1024 vector } point_result_stream_empty_n { I 1 bit } point_result_stream_read { O 1 bit } point_result_stream_num_data_valid { I 7 vector } point_result_stream_fifo_cap { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName msm_flow_control_loop_pipe_U
set CompName msm_flow_control_loop_pipe
set name flow_control_loop_pipe
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix msm_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


