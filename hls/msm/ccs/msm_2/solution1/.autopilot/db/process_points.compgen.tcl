# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler pippenger_control_process_points_buckets_t_49_RAM_T2P_URAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {uram} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 39 \
    name buckets_x_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_x_0_0 \
    op interface \
    ports { buckets_x_0_0_address0 { O 9 vector } buckets_x_0_0_ce0 { O 1 bit } buckets_x_0_0_we0 { O 1 bit } buckets_x_0_0_d0 { O 256 vector } buckets_x_0_0_q0 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_x_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name buckets_x_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_x_1_0 \
    op interface \
    ports { buckets_x_1_0_address0 { O 9 vector } buckets_x_1_0_ce0 { O 1 bit } buckets_x_1_0_we0 { O 1 bit } buckets_x_1_0_d0 { O 256 vector } buckets_x_1_0_q0 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_x_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name buckets_y_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_y_0_0 \
    op interface \
    ports { buckets_y_0_0_address0 { O 9 vector } buckets_y_0_0_ce0 { O 1 bit } buckets_y_0_0_we0 { O 1 bit } buckets_y_0_0_d0 { O 256 vector } buckets_y_0_0_q0 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_y_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name buckets_y_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_y_1_0 \
    op interface \
    ports { buckets_y_1_0_address0 { O 9 vector } buckets_y_1_0_ce0 { O 1 bit } buckets_y_1_0_we0 { O 1 bit } buckets_y_1_0_d0 { O 256 vector } buckets_y_1_0_q0 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_y_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name buckets_z_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_z_0_0 \
    op interface \
    ports { buckets_z_0_0_address0 { O 9 vector } buckets_z_0_0_ce0 { O 1 bit } buckets_z_0_0_we0 { O 1 bit } buckets_z_0_0_d0 { O 256 vector } buckets_z_0_0_q0 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_z_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name buckets_z_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_z_1_0 \
    op interface \
    ports { buckets_z_1_0_address0 { O 9 vector } buckets_z_1_0_ce0 { O 1 bit } buckets_z_1_0_we0 { O 1 bit } buckets_z_1_0_d0 { O 256 vector } buckets_z_1_0_q0 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_z_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 45 \
    name buckets_t_0_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_t_0_0 \
    op interface \
    ports { buckets_t_0_0_address0 { O 9 vector } buckets_t_0_0_ce0 { O 1 bit } buckets_t_0_0_we0 { O 1 bit } buckets_t_0_0_d0 { O 256 vector } buckets_t_0_0_q0 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_t_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 46 \
    name buckets_t_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_t_1_0 \
    op interface \
    ports { buckets_t_1_0_address0 { O 9 vector } buckets_t_1_0_ce0 { O 1 bit } buckets_t_1_0_we0 { O 1 bit } buckets_t_1_0_d0 { O 256 vector } buckets_t_1_0_q0 { I 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_t_1_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name x_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_stream \
    op interface \
    ports { x_stream_dout { I 256 vector } x_stream_empty_n { I 1 bit } x_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name y_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_stream \
    op interface \
    ports { y_stream_dout { I 256 vector } y_stream_empty_n { I 1 bit } y_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name z_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_z_stream \
    op interface \
    ports { z_stream_dout { I 256 vector } z_stream_empty_n { I 1 bit } z_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name t_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_stream \
    op interface \
    ports { t_stream_dout { I 256 vector } t_stream_empty_n { I 1 bit } t_stream_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name scalar_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_scalar_stream \
    op interface \
    ports { scalar_stream_dout { I 256 vector } scalar_stream_empty_n { I 1 bit } scalar_stream_read { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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
set InstName pippenger_control_flow_control_loop_pipe_sequential_init_U
set CompName pippenger_control_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix pippenger_control_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


