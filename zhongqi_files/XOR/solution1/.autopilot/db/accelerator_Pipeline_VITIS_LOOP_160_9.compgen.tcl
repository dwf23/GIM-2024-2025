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
    id 116 \
    name bias_1_local_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_1_5 \
    op interface \
    ports { bias_1_local_1_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name bias_1_local_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_0_5 \
    op interface \
    ports { bias_1_local_0_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name bias_2_local_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_1_5 \
    op interface \
    ports { bias_2_local_1_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name bias_2_local_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_0_5 \
    op interface \
    ports { bias_2_local_0_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name w1_local_0_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_0_1_5 \
    op interface \
    ports { w1_local_0_1_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name w1_local_0_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_0_0_5 \
    op interface \
    ports { w1_local_0_0_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name w2_local_0_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_0_1_5 \
    op interface \
    ports { w2_local_0_1_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name w2_local_0_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_0_0_5 \
    op interface \
    ports { w2_local_0_0_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name w1_local_1_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_1_5 \
    op interface \
    ports { w1_local_1_1_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name w1_local_1_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_0_5 \
    op interface \
    ports { w1_local_1_0_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name w2_local_1_1_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_1_5 \
    op interface \
    ports { w2_local_1_1_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name w2_local_1_0_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_0_5 \
    op interface \
    ports { w2_local_1_0_5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name output_array_new_b2_1_0459_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_b2_1_0459_out \
    op interface \
    ports { output_array_new_b2_1_0459_out { O 16 vector } output_array_new_b2_1_0459_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name output_array_new_b2_0_0458_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_b2_0_0458_out \
    op interface \
    ports { output_array_new_b2_0_0458_out { O 16 vector } output_array_new_b2_0_0458_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name output_array_new_b1_1_0457_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_b1_1_0457_out \
    op interface \
    ports { output_array_new_b1_1_0457_out { O 16 vector } output_array_new_b1_1_0457_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name output_array_new_b1_0_0456_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_b1_0_0456_out \
    op interface \
    ports { output_array_new_b1_0_0456_out { O 16 vector } output_array_new_b1_0_0456_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name output_array_new_w2_1_1_0455_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_w2_1_1_0455_out \
    op interface \
    ports { output_array_new_w2_1_1_0455_out { O 16 vector } output_array_new_w2_1_1_0455_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name output_array_new_w2_1_0_0454_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_w2_1_0_0454_out \
    op interface \
    ports { output_array_new_w2_1_0_0454_out { O 16 vector } output_array_new_w2_1_0_0454_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name output_array_new_w2_0_1_0453_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_w2_0_1_0453_out \
    op interface \
    ports { output_array_new_w2_0_1_0453_out { O 16 vector } output_array_new_w2_0_1_0453_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name output_array_new_w2_0_0_0452_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_w2_0_0_0452_out \
    op interface \
    ports { output_array_new_w2_0_0_0452_out { O 16 vector } output_array_new_w2_0_0_0452_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name output_array_new_w1_1_1_0451_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_w1_1_1_0451_out \
    op interface \
    ports { output_array_new_w1_1_1_0451_out { O 16 vector } output_array_new_w1_1_1_0451_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 137 \
    name output_array_new_w1_1_0_0450_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_w1_1_0_0450_out \
    op interface \
    ports { output_array_new_w1_1_0_0450_out { O 16 vector } output_array_new_w1_1_0_0450_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 138 \
    name output_array_new_w1_0_1_0449_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_w1_0_1_0449_out \
    op interface \
    ports { output_array_new_w1_0_1_0449_out { O 16 vector } output_array_new_w1_0_1_0449_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name output_array_new_w1_0_0_0448_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_new_w1_0_0_0448_out \
    op interface \
    ports { output_array_new_w1_0_0_0448_out { O 16 vector } output_array_new_w1_0_0_0448_out_ap_vld { O 1 bit } } \
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
set InstName accelerator_flow_control_loop_pipe_sequential_init_U
set CompName accelerator_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix accelerator_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


