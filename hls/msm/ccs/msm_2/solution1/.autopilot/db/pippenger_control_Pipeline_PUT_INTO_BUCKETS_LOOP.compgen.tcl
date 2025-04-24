# This script segment is generated automatically by AutoPilot

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
    id 63 \
    name scalar_partition_buffer \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scalar_partition_buffer \
    op interface \
    ports { scalar_partition_buffer_address0 { O 4 vector } scalar_partition_buffer_ce0 { O 1 bit } scalar_partition_buffer_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scalar_partition_buffer'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 64 \
    name scalar_partition_buffer_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename scalar_partition_buffer_2 \
    op interface \
    ports { scalar_partition_buffer_2_address0 { O 4 vector } scalar_partition_buffer_2_ce0 { O 1 bit } scalar_partition_buffer_2_q0 { I 15 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'scalar_partition_buffer_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 65 \
    name buckets_x \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_x \
    op interface \
    ports { buckets_x_address0 { O 14 vector } buckets_x_ce0 { O 1 bit } buckets_x_we0 { O 1 bit } buckets_x_d0 { O 256 vector } buckets_x_q0 { I 256 vector } buckets_x_address1 { O 14 vector } buckets_x_ce1 { O 1 bit } buckets_x_we1 { O 1 bit } buckets_x_d1 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_x'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 66 \
    name buckets_x_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_x_1 \
    op interface \
    ports { buckets_x_1_address0 { O 14 vector } buckets_x_1_ce0 { O 1 bit } buckets_x_1_we0 { O 1 bit } buckets_x_1_d0 { O 256 vector } buckets_x_1_q0 { I 256 vector } buckets_x_1_address1 { O 14 vector } buckets_x_1_ce1 { O 1 bit } buckets_x_1_we1 { O 1 bit } buckets_x_1_d1 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_x_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name buckets_y \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_y \
    op interface \
    ports { buckets_y_address0 { O 14 vector } buckets_y_ce0 { O 1 bit } buckets_y_we0 { O 1 bit } buckets_y_d0 { O 256 vector } buckets_y_q0 { I 256 vector } buckets_y_address1 { O 14 vector } buckets_y_ce1 { O 1 bit } buckets_y_we1 { O 1 bit } buckets_y_d1 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_y'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 68 \
    name buckets_y_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_y_1 \
    op interface \
    ports { buckets_y_1_address0 { O 14 vector } buckets_y_1_ce0 { O 1 bit } buckets_y_1_we0 { O 1 bit } buckets_y_1_d0 { O 256 vector } buckets_y_1_q0 { I 256 vector } buckets_y_1_address1 { O 14 vector } buckets_y_1_ce1 { O 1 bit } buckets_y_1_we1 { O 1 bit } buckets_y_1_d1 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_y_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 69 \
    name buckets_z \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_z \
    op interface \
    ports { buckets_z_address0 { O 14 vector } buckets_z_ce0 { O 1 bit } buckets_z_we0 { O 1 bit } buckets_z_d0 { O 256 vector } buckets_z_q0 { I 256 vector } buckets_z_address1 { O 14 vector } buckets_z_ce1 { O 1 bit } buckets_z_we1 { O 1 bit } buckets_z_d1 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_z'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 70 \
    name buckets_z_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_z_1 \
    op interface \
    ports { buckets_z_1_address0 { O 14 vector } buckets_z_1_ce0 { O 1 bit } buckets_z_1_we0 { O 1 bit } buckets_z_1_d0 { O 256 vector } buckets_z_1_q0 { I 256 vector } buckets_z_1_address1 { O 14 vector } buckets_z_1_ce1 { O 1 bit } buckets_z_1_we1 { O 1 bit } buckets_z_1_d1 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_z_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 71 \
    name buckets_t \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_t \
    op interface \
    ports { buckets_t_address0 { O 14 vector } buckets_t_ce0 { O 1 bit } buckets_t_we0 { O 1 bit } buckets_t_d0 { O 256 vector } buckets_t_q0 { I 256 vector } buckets_t_address1 { O 14 vector } buckets_t_ce1 { O 1 bit } buckets_t_we1 { O 1 bit } buckets_t_d1 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_t'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 72 \
    name buckets_t_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename buckets_t_1 \
    op interface \
    ports { buckets_t_1_address0 { O 14 vector } buckets_t_1_ce0 { O 1 bit } buckets_t_1_we0 { O 1 bit } buckets_t_1_d0 { O 256 vector } buckets_t_1_q0 { I 256 vector } buckets_t_1_address1 { O 14 vector } buckets_t_1_ce1 { O 1 bit } buckets_t_1_we1 { O 1 bit } buckets_t_1_d1 { O 256 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'buckets_t_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name x \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x \
    op interface \
    ports { x { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y \
    op interface \
    ports { y { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name z \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_z \
    op interface \
    ports { z { I 256 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name t \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t \
    op interface \
    ports { t { I 256 vector } } \
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
set InstName msm_flow_control_loop_pipe_sequential_init_U
set CompName msm_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
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


