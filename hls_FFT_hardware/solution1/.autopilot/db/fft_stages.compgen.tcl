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
    id 93 \
    name X_R_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_R_0 \
    op interface \
    ports { X_R_0_address0 { O 8 vector } X_R_0_ce0 { O 1 bit } X_R_0_q0 { I 32 vector } X_R_0_address1 { O 8 vector } X_R_0_ce1 { O 1 bit } X_R_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_R_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 94 \
    name X_R_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_R_1 \
    op interface \
    ports { X_R_1_address0 { O 8 vector } X_R_1_ce0 { O 1 bit } X_R_1_q0 { I 32 vector } X_R_1_address1 { O 8 vector } X_R_1_ce1 { O 1 bit } X_R_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_R_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 95 \
    name X_R_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_R_2 \
    op interface \
    ports { X_R_2_address0 { O 8 vector } X_R_2_ce0 { O 1 bit } X_R_2_q0 { I 32 vector } X_R_2_address1 { O 8 vector } X_R_2_ce1 { O 1 bit } X_R_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_R_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 96 \
    name X_R_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_R_3 \
    op interface \
    ports { X_R_3_address0 { O 8 vector } X_R_3_ce0 { O 1 bit } X_R_3_q0 { I 32 vector } X_R_3_address1 { O 8 vector } X_R_3_ce1 { O 1 bit } X_R_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_R_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 97 \
    name X_I_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_I_0 \
    op interface \
    ports { X_I_0_address0 { O 8 vector } X_I_0_ce0 { O 1 bit } X_I_0_q0 { I 32 vector } X_I_0_address1 { O 8 vector } X_I_0_ce1 { O 1 bit } X_I_0_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_I_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 98 \
    name X_I_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_I_1 \
    op interface \
    ports { X_I_1_address0 { O 8 vector } X_I_1_ce0 { O 1 bit } X_I_1_q0 { I 32 vector } X_I_1_address1 { O 8 vector } X_I_1_ce1 { O 1 bit } X_I_1_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_I_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 99 \
    name X_I_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_I_2 \
    op interface \
    ports { X_I_2_address0 { O 8 vector } X_I_2_ce0 { O 1 bit } X_I_2_q0 { I 32 vector } X_I_2_address1 { O 8 vector } X_I_2_ce1 { O 1 bit } X_I_2_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_I_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 100 \
    name X_I_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename X_I_3 \
    op interface \
    ports { X_I_3_address0 { O 8 vector } X_I_3_ce0 { O 1 bit } X_I_3_q0 { I 32 vector } X_I_3_address1 { O 8 vector } X_I_3_ce1 { O 1 bit } X_I_3_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'X_I_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 102 \
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
    id 103 \
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
    id 104 \
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
    id 105 \
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
    id 106 \
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
    id 107 \
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
    id 108 \
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
    id 109 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name stage \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_stage \
    op interface \
    ports { stage { I 4 vector } } \
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


