# This script segment is generated automatically by AutoPilot

set name accelerator_dcmp_64ns_64ns_1_1_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dcmp} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler accelerator_sparsemux_7_2_16_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
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
    id 56 \
    name w2_local_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_reload \
    op interface \
    ports { w2_local_1_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name w2_local_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_reload \
    op interface \
    ports { w2_local_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name w2_local_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_3_reload \
    op interface \
    ports { w2_local_3_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name w2_local_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_2_reload \
    op interface \
    ports { w2_local_2_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name w1_local_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_reload \
    op interface \
    ports { w1_local_1_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name w1_local_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_reload \
    op interface \
    ports { w1_local_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name w1_local_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_3_reload \
    op interface \
    ports { w1_local_3_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name w1_local_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_2_reload \
    op interface \
    ports { w1_local_2_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name bias_2_local_idx4_promoted151_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_idx4_promoted151_reload \
    op interface \
    ports { bias_2_local_idx4_promoted151_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name bias_2_local_idx_promoted149_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_idx_promoted149_reload \
    op interface \
    ports { bias_2_local_idx_promoted149_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name bias_1_local_idx1_promoted147_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_idx1_promoted147_reload \
    op interface \
    ports { bias_1_local_idx1_promoted147_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name bias_1_local_idx_promoted145_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_idx_promoted145_reload \
    op interface \
    ports { bias_1_local_idx_promoted145_reload { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
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
    id 69 \
    name cmp_i_i \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_i \
    op interface \
    ports { cmp_i_i { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name w2_local_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_3_0_out \
    op interface \
    ports { w2_local_3_0_out { O 16 vector } w2_local_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name w2_local_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_2_0_out \
    op interface \
    ports { w2_local_2_0_out { O 16 vector } w2_local_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name w2_local_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_0_out \
    op interface \
    ports { w2_local_1_0_out { O 16 vector } w2_local_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name w2_local_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_0_out \
    op interface \
    ports { w2_local_0_out { O 16 vector } w2_local_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name w1_local_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_3_0_out \
    op interface \
    ports { w1_local_3_0_out { O 16 vector } w1_local_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name w1_local_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_2_0_out \
    op interface \
    ports { w1_local_2_0_out { O 16 vector } w1_local_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name w1_local_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_0_out \
    op interface \
    ports { w1_local_1_0_out { O 16 vector } w1_local_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name w1_local_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_0_out \
    op interface \
    ports { w1_local_0_out { O 16 vector } w1_local_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name bias_2_local_idx4_val110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_idx4_val110_out \
    op interface \
    ports { bias_2_local_idx4_val110_out { O 16 vector } bias_2_local_idx4_val110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name bias_2_local_idx_val109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_idx_val109_out \
    op interface \
    ports { bias_2_local_idx_val109_out { O 16 vector } bias_2_local_idx_val109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name bias_1_local_idx1_val108_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_idx1_val108_out \
    op interface \
    ports { bias_1_local_idx1_val108_out { O 16 vector } bias_1_local_idx1_val108_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name bias_1_local_idx_val107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_idx_val107_out \
    op interface \
    ports { bias_1_local_idx_val107_out { O 16 vector } bias_1_local_idx_val107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name output_array_inference_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_3_out \
    op interface \
    ports { output_array_inference_3_out { O 16 vector } output_array_inference_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name output_array_inference_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_2_out \
    op interface \
    ports { output_array_inference_2_out { O 16 vector } output_array_inference_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name output_array_inference_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_1_out \
    op interface \
    ports { output_array_inference_1_out { O 16 vector } output_array_inference_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name output_array_inference_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_out \
    op interface \
    ports { output_array_inference_out { O 16 vector } output_array_inference_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name output_array_inference_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_4_out \
    op interface \
    ports { output_array_inference_4_out { O 16 vector } output_array_inference_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name output_array_inference_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_5_out \
    op interface \
    ports { output_array_inference_5_out { O 16 vector } output_array_inference_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name output_array_inference_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_6_out \
    op interface \
    ports { output_array_inference_6_out { O 16 vector } output_array_inference_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name output_array_inference_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_output_array_inference_7_out \
    op interface \
    ports { output_array_inference_7_out { O 16 vector } output_array_inference_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name array_back2_weight_changes_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_24_out \
    op interface \
    ports { array_back2_weight_changes_24_out { O 16 vector } array_back2_weight_changes_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name array_back2_weight_changes_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_25_out \
    op interface \
    ports { array_back2_weight_changes_25_out { O 16 vector } array_back2_weight_changes_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name array_back2_weight_changes_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_26_out \
    op interface \
    ports { array_back2_weight_changes_26_out { O 16 vector } array_back2_weight_changes_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name array_back2_weight_changes_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_27_out \
    op interface \
    ports { array_back2_weight_changes_27_out { O 16 vector } array_back2_weight_changes_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name array_back2_bias_change_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_bias_change_8_out \
    op interface \
    ports { array_back2_bias_change_8_out { O 16 vector } array_back2_bias_change_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name array_back2_bias_change_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_bias_change_9_out \
    op interface \
    ports { array_back2_bias_change_9_out { O 16 vector } array_back2_bias_change_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name array_back1_weight_changes_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_24_out \
    op interface \
    ports { array_back1_weight_changes_24_out { O 16 vector } array_back1_weight_changes_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name array_back1_weight_changes_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_25_out \
    op interface \
    ports { array_back1_weight_changes_25_out { O 16 vector } array_back1_weight_changes_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name array_back1_weight_changes_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_26_out \
    op interface \
    ports { array_back1_weight_changes_26_out { O 16 vector } array_back1_weight_changes_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name array_back1_weight_changes_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_27_out \
    op interface \
    ports { array_back1_weight_changes_27_out { O 16 vector } array_back1_weight_changes_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name array_back1_bias_change_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_bias_change_8_out \
    op interface \
    ports { array_back1_bias_change_8_out { O 16 vector } array_back1_bias_change_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name array_back1_bias_change_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_bias_change_9_out \
    op interface \
    ports { array_back1_bias_change_9_out { O 16 vector } array_back1_bias_change_9_out_ap_vld { O 1 bit } } \
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


