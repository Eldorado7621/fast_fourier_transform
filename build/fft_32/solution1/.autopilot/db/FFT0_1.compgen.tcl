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
    id 31 \
    name data_IN_M_real_0_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_IN_M_real_0_0_0 \
    op interface \
    ports { data_IN_M_real_0_0_0_address0 { O 5 vector } data_IN_M_real_0_0_0_ce0 { O 1 bit } data_IN_M_real_0_0_0_q0 { I 16 vector } data_IN_M_real_0_0_0_address1 { O 5 vector } data_IN_M_real_0_0_0_ce1 { O 1 bit } data_IN_M_real_0_0_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_IN_M_real_0_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 32 \
    name data_IN_M_imag_0_0_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_IN_M_imag_0_0_0 \
    op interface \
    ports { data_IN_M_imag_0_0_0_address0 { O 5 vector } data_IN_M_imag_0_0_0_ce0 { O 1 bit } data_IN_M_imag_0_0_0_q0 { I 16 vector } data_IN_M_imag_0_0_0_address1 { O 5 vector } data_IN_M_imag_0_0_0_ce1 { O 1 bit } data_IN_M_imag_0_0_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_IN_M_imag_0_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 33 \
    name data_OUT_M_real_0_0_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename data_OUT_M_real_0_0_0 \
    op interface \
    ports { data_OUT_M_real_0_0_0_address0 { O 5 vector } data_OUT_M_real_0_0_0_ce0 { O 1 bit } data_OUT_M_real_0_0_0_we0 { O 1 bit } data_OUT_M_real_0_0_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_OUT_M_real_0_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 34 \
    name data_OUT_M_imag_0_0_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename data_OUT_M_imag_0_0_0 \
    op interface \
    ports { data_OUT_M_imag_0_0_0_address0 { O 5 vector } data_OUT_M_imag_0_0_0_ce0 { O 1 bit } data_OUT_M_imag_0_0_0_we0 { O 1 bit } data_OUT_M_imag_0_0_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_OUT_M_imag_0_0_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name FFT_stage_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_FFT_stage_offset \
    op interface \
    ports { FFT_stage_offset { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name pass_check_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pass_check_offset \
    op interface \
    ports { pass_check_offset { I 4 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name index_shift_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_index_shift_offset \
    op interface \
    ports { index_shift_offset { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name pass_shift_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pass_shift_offset \
    op interface \
    ports { pass_shift_offset { I 3 vector } } \
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


