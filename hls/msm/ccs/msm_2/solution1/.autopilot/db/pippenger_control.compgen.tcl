# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler msm_pippenger_control_scalar_partition_buffer_RAM_T2P_BRAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {bram} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler msm_pippenger_control_buckets_x_RAM_T2P_URAM_1R1W BINDTYPE {storage} TYPE {ram_t2p} IMPL {uram} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name x_point_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_x_point_stream \
    op interface \
    ports { x_point_stream_dout { I 256 vector } x_point_stream_empty_n { I 1 bit } x_point_stream_read { O 1 bit } x_point_stream_num_data_valid { I 7 vector } x_point_stream_fifo_cap { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name y_point_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_y_point_stream \
    op interface \
    ports { y_point_stream_dout { I 256 vector } y_point_stream_empty_n { I 1 bit } y_point_stream_read { O 1 bit } y_point_stream_num_data_valid { I 7 vector } y_point_stream_fifo_cap { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name z_point_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_z_point_stream \
    op interface \
    ports { z_point_stream_dout { I 256 vector } z_point_stream_empty_n { I 1 bit } z_point_stream_read { O 1 bit } z_point_stream_num_data_valid { I 7 vector } z_point_stream_fifo_cap { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name t_point_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_t_point_stream \
    op interface \
    ports { t_point_stream_dout { I 256 vector } t_point_stream_empty_n { I 1 bit } t_point_stream_read { O 1 bit } t_point_stream_num_data_valid { I 3 vector } t_point_stream_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name scalar_point_stream \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_scalar_point_stream \
    op interface \
    ports { scalar_point_stream_dout { I 256 vector } scalar_point_stream_empty_n { I 1 bit } scalar_point_stream_read { O 1 bit } scalar_point_stream_num_data_valid { I 7 vector } scalar_point_stream_fifo_cap { I 7 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name point_result_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_point_result_stream \
    op interface \
    ports { point_result_stream_din { O 1024 vector } point_result_stream_full_n { I 1 bit } point_result_stream_write { O 1 bit } point_result_stream_num_data_valid { I 7 vector } point_result_stream_fifo_cap { I 7 vector } } \
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


