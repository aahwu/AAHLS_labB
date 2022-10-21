# This script segment is generated automatically by AutoPilot

set id 130
set name fft_mux_32_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 2
set din3_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
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
    id 139 \
    name OUT_R_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename OUT_R_1 \
    op interface \
    ports { OUT_R_1_address0 { O 8 vector } OUT_R_1_ce0 { O 1 bit } OUT_R_1_we0 { O 1 bit } OUT_R_1_d0 { O 32 vector } OUT_R_1_address1 { O 8 vector } OUT_R_1_ce1 { O 1 bit } OUT_R_1_we1 { O 1 bit } OUT_R_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_R_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name OUT_I_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename OUT_I_1 \
    op interface \
    ports { OUT_I_1_address0 { O 8 vector } OUT_I_1_ce0 { O 1 bit } OUT_I_1_we0 { O 1 bit } OUT_I_1_d0 { O 32 vector } OUT_I_1_address1 { O 8 vector } OUT_I_1_ce1 { O 1 bit } OUT_I_1_we1 { O 1 bit } OUT_I_1_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_I_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name Stage9_R_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage9_R_1 \
    op interface \
    ports { Stage9_R_1_address0 { O 8 vector } Stage9_R_1_ce0 { O 1 bit } Stage9_R_1_q0 { I 32 vector } Stage9_R_1_address1 { O 8 vector } Stage9_R_1_ce1 { O 1 bit } Stage9_R_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage9_R_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name Stage9_R_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage9_R_3 \
    op interface \
    ports { Stage9_R_3_address0 { O 8 vector } Stage9_R_3_ce0 { O 1 bit } Stage9_R_3_q0 { I 32 vector } Stage9_R_3_address1 { O 8 vector } Stage9_R_3_ce1 { O 1 bit } Stage9_R_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage9_R_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name Stage9_I_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage9_I_1 \
    op interface \
    ports { Stage9_I_1_address0 { O 8 vector } Stage9_I_1_ce0 { O 1 bit } Stage9_I_1_q0 { I 32 vector } Stage9_I_1_address1 { O 8 vector } Stage9_I_1_ce1 { O 1 bit } Stage9_I_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage9_I_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name Stage9_I_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage9_I_3 \
    op interface \
    ports { Stage9_I_3_address0 { O 8 vector } Stage9_I_3_ce0 { O 1 bit } Stage9_I_3_q0 { I 32 vector } Stage9_I_3_address1 { O 8 vector } Stage9_I_3_ce1 { O 1 bit } Stage9_I_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage9_I_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name OUT_R_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename OUT_R_0 \
    op interface \
    ports { OUT_R_0_address0 { O 8 vector } OUT_R_0_ce0 { O 1 bit } OUT_R_0_we0 { O 1 bit } OUT_R_0_d0 { O 32 vector } OUT_R_0_address1 { O 8 vector } OUT_R_0_ce1 { O 1 bit } OUT_R_0_we1 { O 1 bit } OUT_R_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_R_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name OUT_I_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename OUT_I_0 \
    op interface \
    ports { OUT_I_0_address0 { O 8 vector } OUT_I_0_ce0 { O 1 bit } OUT_I_0_we0 { O 1 bit } OUT_I_0_d0 { O 32 vector } OUT_I_0_address1 { O 8 vector } OUT_I_0_ce1 { O 1 bit } OUT_I_0_we1 { O 1 bit } OUT_I_0_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_I_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name Stage9_R_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage9_R_0 \
    op interface \
    ports { Stage9_R_0_address0 { O 8 vector } Stage9_R_0_ce0 { O 1 bit } Stage9_R_0_q0 { I 32 vector } Stage9_R_0_address1 { O 8 vector } Stage9_R_0_ce1 { O 1 bit } Stage9_R_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage9_R_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name Stage9_R_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage9_R_2 \
    op interface \
    ports { Stage9_R_2_address0 { O 8 vector } Stage9_R_2_ce0 { O 1 bit } Stage9_R_2_q0 { I 32 vector } Stage9_R_2_address1 { O 8 vector } Stage9_R_2_ce1 { O 1 bit } Stage9_R_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage9_R_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name Stage9_I_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage9_I_0 \
    op interface \
    ports { Stage9_I_0_address0 { O 8 vector } Stage9_I_0_ce0 { O 1 bit } Stage9_I_0_q0 { I 32 vector } Stage9_I_0_address1 { O 8 vector } Stage9_I_0_ce1 { O 1 bit } Stage9_I_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage9_I_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name Stage9_I_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename Stage9_I_2 \
    op interface \
    ports { Stage9_I_2_address0 { O 8 vector } Stage9_I_2_ce0 { O 1 bit } Stage9_I_2_q0 { I 32 vector } Stage9_I_2_address1 { O 8 vector } Stage9_I_2_ce1 { O 1 bit } Stage9_I_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Stage9_I_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name OUT_R_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename OUT_R_2 \
    op interface \
    ports { OUT_R_2_address0 { O 8 vector } OUT_R_2_ce0 { O 1 bit } OUT_R_2_we0 { O 1 bit } OUT_R_2_d0 { O 32 vector } OUT_R_2_address1 { O 8 vector } OUT_R_2_ce1 { O 1 bit } OUT_R_2_we1 { O 1 bit } OUT_R_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_R_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name OUT_I_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename OUT_I_2 \
    op interface \
    ports { OUT_I_2_address0 { O 8 vector } OUT_I_2_ce0 { O 1 bit } OUT_I_2_we0 { O 1 bit } OUT_I_2_d0 { O 32 vector } OUT_I_2_address1 { O 8 vector } OUT_I_2_ce1 { O 1 bit } OUT_I_2_we1 { O 1 bit } OUT_I_2_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_I_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name OUT_R_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename OUT_R_3 \
    op interface \
    ports { OUT_R_3_address0 { O 8 vector } OUT_R_3_ce0 { O 1 bit } OUT_R_3_we0 { O 1 bit } OUT_R_3_d0 { O 32 vector } OUT_R_3_address1 { O 8 vector } OUT_R_3_ce1 { O 1 bit } OUT_R_3_we1 { O 1 bit } OUT_R_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_R_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name OUT_I_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename OUT_I_3 \
    op interface \
    ports { OUT_I_3_address0 { O 8 vector } OUT_I_3_ce0 { O 1 bit } OUT_I_3_we0 { O 1 bit } OUT_I_3_d0 { O 32 vector } OUT_I_3_address1 { O 8 vector } OUT_I_3_ce1 { O 1 bit } OUT_I_3_we1 { O 1 bit } OUT_I_3_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'OUT_I_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name W_real \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename W_real \
    op interface \
    ports { W_real_address0 { O 9 vector } W_real_ce0 { O 1 bit } W_real_q0 { I 32 vector } W_real_address1 { O 9 vector } W_real_ce1 { O 1 bit } W_real_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'W_real'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name W_imag \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename W_imag \
    op interface \
    ports { W_imag_address0 { O 9 vector } W_imag_ce0 { O 1 bit } W_imag_q0 { I 32 vector } W_imag_address1 { O 9 vector } W_imag_ce1 { O 1 bit } W_imag_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'W_imag'"
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
set InstName fft_flow_control_loop_pipe_sequential_init_U
set CompName fft_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix fft_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


