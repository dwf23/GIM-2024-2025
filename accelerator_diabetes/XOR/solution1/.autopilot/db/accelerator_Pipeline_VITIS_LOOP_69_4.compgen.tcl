# This script segment is generated automatically by AutoPilot

set name accelerator_dcmp_64ns_64ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set id 57
set name accelerator_mux_4_2_13_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 13
set din0_signed 0
set din1_width 13
set din1_signed 0
set din2_width 13
set din2_signed 1
set din3_width 13
set din3_signed 1
set din4_width 2
set din4_signed 0
set dout_width 13
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
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 58
set name accelerator_mux_4_2_13_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 13
set din0_signed 0
set din1_width 13
set din1_signed 0
set din2_width 13
set din2_signed 1
set din3_width 13
set din3_signed 1
set din4_width 2
set din4_signed 0
set dout_width 13
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
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 59
set name accelerator_mux_4_2_13_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 13
set din0_signed 0
set din1_width 13
set din1_signed 0
set din2_width 13
set din2_signed 1
set din3_width 13
set din3_signed 1
set din4_width 2
set din4_signed 0
set dout_width 13
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
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set name accelerator_mul_17s_10ns_27_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 66 \
    name bias_2_local_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_1_2 \
    op interface \
    ports { bias_2_local_1_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name bias_2_local_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_0_2 \
    op interface \
    ports { bias_2_local_0_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name bias_1_local_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_1_2 \
    op interface \
    ports { bias_1_local_1_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name bias_1_local_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_0_2 \
    op interface \
    ports { bias_1_local_0_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name w2_local_1_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_1_2 \
    op interface \
    ports { w2_local_1_1_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name w2_local_1_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_0_2 \
    op interface \
    ports { w2_local_1_0_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name w2_local_0_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_0_1_2 \
    op interface \
    ports { w2_local_0_1_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name w2_local_0_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_0_0_2 \
    op interface \
    ports { w2_local_0_0_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name w1_local_1_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_1_2 \
    op interface \
    ports { w1_local_1_1_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name w1_local_1_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_0_2 \
    op interface \
    ports { w1_local_1_0_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name w1_local_0_1_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_0_1_2 \
    op interface \
    ports { w1_local_0_1_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name w1_local_0_0_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_0_0_2 \
    op interface \
    ports { w1_local_0_0_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name output_array_inference_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_3_0 \
    op interface \
    ports { output_array_inference_3_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name output_array_inference_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_2_0 \
    op interface \
    ports { output_array_inference_2_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name output_array_inference_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_1_0 \
    op interface \
    ports { output_array_inference_1_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name output_array_inference_0_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_0_0 \
    op interface \
    ports { output_array_inference_0_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name training \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_training \
    op interface \
    ports { training { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name cmp_i_i116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_i116 \
    op interface \
    ports { cmp_i_i116 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name bias_2_local_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_1_3_out \
    op interface \
    ports { bias_2_local_1_3_out { O 16 vector } bias_2_local_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name bias_2_local_0_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_0_3_out \
    op interface \
    ports { bias_2_local_0_3_out { O 16 vector } bias_2_local_0_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name bias_1_local_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_1_3_out \
    op interface \
    ports { bias_1_local_1_3_out { O 16 vector } bias_1_local_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name bias_1_local_0_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_0_3_out \
    op interface \
    ports { bias_1_local_0_3_out { O 16 vector } bias_1_local_0_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name w2_local_1_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_1_3_out \
    op interface \
    ports { w2_local_1_1_3_out { O 16 vector } w2_local_1_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name w2_local_1_0_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_0_3_out \
    op interface \
    ports { w2_local_1_0_3_out { O 16 vector } w2_local_1_0_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name w2_local_0_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_0_1_3_out \
    op interface \
    ports { w2_local_0_1_3_out { O 16 vector } w2_local_0_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name w2_local_0_0_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_0_0_3_out \
    op interface \
    ports { w2_local_0_0_3_out { O 16 vector } w2_local_0_0_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name w1_local_1_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_1_3_out \
    op interface \
    ports { w1_local_1_1_3_out { O 16 vector } w1_local_1_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name w1_local_1_0_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_0_3_out \
    op interface \
    ports { w1_local_1_0_3_out { O 16 vector } w1_local_1_0_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name w1_local_0_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_0_1_3_out \
    op interface \
    ports { w1_local_0_1_3_out { O 16 vector } w1_local_0_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name w1_local_0_0_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_0_0_3_out \
    op interface \
    ports { w1_local_0_0_3_out { O 16 vector } w1_local_0_0_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name output_array_inference_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_3_1_out \
    op interface \
    ports { output_array_inference_3_1_out { O 16 vector } output_array_inference_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name output_array_inference_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_2_1_out \
    op interface \
    ports { output_array_inference_2_1_out { O 16 vector } output_array_inference_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name output_array_inference_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_1_1_out \
    op interface \
    ports { output_array_inference_1_1_out { O 16 vector } output_array_inference_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name output_array_inference_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_0_1_out \
    op interface \
    ports { output_array_inference_0_1_out { O 16 vector } output_array_inference_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name select_ln96_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln96_1_out \
    op interface \
    ports { select_ln96_1_out { O 16 vector } select_ln96_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name select_ln96_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln96_3_out \
    op interface \
    ports { select_ln96_3_out { O 16 vector } select_ln96_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name select_ln96_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln96_5_out \
    op interface \
    ports { select_ln96_5_out { O 16 vector } select_ln96_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name select_ln96_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_select_ln96_7_out \
    op interface \
    ports { select_ln96_7_out { O 16 vector } select_ln96_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name array_back2_weight_changes_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_0_0_out \
    op interface \
    ports { array_back2_weight_changes_0_0_out { O 16 vector } array_back2_weight_changes_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name array_back2_weight_changes_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_0_1_out \
    op interface \
    ports { array_back2_weight_changes_0_1_out { O 16 vector } array_back2_weight_changes_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name array_back2_weight_changes_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_1_0_out \
    op interface \
    ports { array_back2_weight_changes_1_0_out { O 16 vector } array_back2_weight_changes_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name array_back2_weight_changes_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_1_1_out \
    op interface \
    ports { array_back2_weight_changes_1_1_out { O 16 vector } array_back2_weight_changes_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name array_back2_bias_change_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_bias_change_0_out \
    op interface \
    ports { array_back2_bias_change_0_out { O 16 vector } array_back2_bias_change_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name array_back2_bias_change_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_bias_change_1_out \
    op interface \
    ports { array_back2_bias_change_1_out { O 16 vector } array_back2_bias_change_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name array_back1_weight_changes_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_0_0_out \
    op interface \
    ports { array_back1_weight_changes_0_0_out { O 16 vector } array_back1_weight_changes_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name array_back1_weight_changes_0_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_0_1_out \
    op interface \
    ports { array_back1_weight_changes_0_1_out { O 16 vector } array_back1_weight_changes_0_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name array_back1_weight_changes_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_1_0_out \
    op interface \
    ports { array_back1_weight_changes_1_0_out { O 16 vector } array_back1_weight_changes_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name array_back1_weight_changes_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_1_1_out \
    op interface \
    ports { array_back1_weight_changes_1_1_out { O 16 vector } array_back1_weight_changes_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name array_back1_bias_change_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_bias_change_0_out \
    op interface \
    ports { array_back1_bias_change_0_out { O 16 vector } array_back1_bias_change_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name array_back1_bias_change_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_bias_change_1_out \
    op interface \
    ports { array_back1_bias_change_1_out { O 16 vector } array_back1_bias_change_1_out_ap_vld { O 1 bit } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


