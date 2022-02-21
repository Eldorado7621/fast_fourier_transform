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
    id 39 \
    name W_M_real_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename W_M_real_V \
    op interface \
    ports { W_M_real_V_address0 { O 4 vector } W_M_real_V_ce0 { O 1 bit } W_M_real_V_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'W_M_real_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 40 \
    name W_M_imag_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename W_M_imag_V \
    op interface \
    ports { W_M_imag_V_address0 { O 4 vector } W_M_imag_V_ce0 { O 1 bit } W_M_imag_V_q0 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'W_M_imag_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 41 \
    name data_OUT4_M_real_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_OUT4_M_real_V \
    op interface \
    ports { data_OUT4_M_real_V_address0 { O 5 vector } data_OUT4_M_real_V_ce0 { O 1 bit } data_OUT4_M_real_V_q0 { I 16 vector } data_OUT4_M_real_V_address1 { O 5 vector } data_OUT4_M_real_V_ce1 { O 1 bit } data_OUT4_M_real_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_OUT4_M_real_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 42 \
    name data_OUT4_M_imag_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_OUT4_M_imag_V \
    op interface \
    ports { data_OUT4_M_imag_V_address0 { O 5 vector } data_OUT4_M_imag_V_ce0 { O 1 bit } data_OUT4_M_imag_V_q0 { I 16 vector } data_OUT4_M_imag_V_address1 { O 5 vector } data_OUT4_M_imag_V_ce1 { O 1 bit } data_OUT4_M_imag_V_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_OUT4_M_imag_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 43 \
    name xout_M_real_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename xout_M_real_V \
    op interface \
    ports { xout_M_real_V_address0 { O 5 vector } xout_M_real_V_ce0 { O 1 bit } xout_M_real_V_we0 { O 1 bit } xout_M_real_V_d0 { O 16 vector } xout_M_real_V_address1 { O 5 vector } xout_M_real_V_ce1 { O 1 bit } xout_M_real_V_we1 { O 1 bit } xout_M_real_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'xout_M_real_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 44 \
    name xout_M_imag_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename xout_M_imag_V \
    op interface \
    ports { xout_M_imag_V_address0 { O 5 vector } xout_M_imag_V_ce0 { O 1 bit } xout_M_imag_V_we0 { O 1 bit } xout_M_imag_V_d0 { O 16 vector } xout_M_imag_V_address1 { O 5 vector } xout_M_imag_V_ce1 { O 1 bit } xout_M_imag_V_we1 { O 1 bit } xout_M_imag_V_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'xout_M_imag_V'"
}
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
set InstName FFT_flow_control_loop_pipe_sequential_init_U
set CompName FFT_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix FFT_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


