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
    id 1 \
    name result_x \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_x \
    op interface \
    ports { result_x { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name result_x_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_x_c \
    op interface \
    ports { result_x_c_din { O 64 vector } result_x_c_full_n { I 1 bit } result_x_c_write { O 1 bit } result_x_c_num_data_valid { I 3 vector } result_x_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name result_y \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_y \
    op interface \
    ports { result_y { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name result_y_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_y_c \
    op interface \
    ports { result_y_c_din { O 64 vector } result_y_c_full_n { I 1 bit } result_y_c_write { O 1 bit } result_y_c_num_data_valid { I 3 vector } result_y_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name result_z \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_z \
    op interface \
    ports { result_z { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name result_z_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_z_c \
    op interface \
    ports { result_z_c_din { O 64 vector } result_z_c_full_n { I 1 bit } result_z_c_write { O 1 bit } result_z_c_num_data_valid { I 3 vector } result_z_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name result_t \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_result_t \
    op interface \
    ports { result_t { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name result_t_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_result_t_c \
    op interface \
    ports { result_t_c_din { O 64 vector } result_t_c_full_n { I 1 bit } result_t_c_write { O 1 bit } result_t_c_num_data_valid { I 3 vector } result_t_c_fifo_cap { I 3 vector } } \
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


