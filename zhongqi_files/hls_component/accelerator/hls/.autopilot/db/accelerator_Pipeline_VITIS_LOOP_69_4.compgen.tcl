# This script segment is generated automatically by AutoPilot

set name accelerator_dcmp_64ns_64ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler accelerator_sparsemux_9_2_13_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler accelerator_sparsemux_9_2_13_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler accelerator_sparsemux_9_2_13_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


set name accelerator_mul_18s_10ns_28_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 71 \
    name w2_local_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_3_0 \
    op interface \
    ports { w2_local_3_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name w2_local_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_2_0 \
    op interface \
    ports { w2_local_2_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name w2_local_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_0 \
    op interface \
    ports { w2_local_1_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name w2_local_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_0 \
    op interface \
    ports { w2_local_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name w1_local_3_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_3_0 \
    op interface \
    ports { w1_local_3_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name w1_local_2_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_2_0 \
    op interface \
    ports { w1_local_2_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name w1_local_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_0 \
    op interface \
    ports { w1_local_1_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name w1_local_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_0 \
    op interface \
    ports { w1_local_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name mux_case_17944 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_17944 \
    op interface \
    ports { mux_case_17944 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name mux_case_07840 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_07840 \
    op interface \
    ports { mux_case_07840 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name mux_case_17736 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_17736 \
    op interface \
    ports { mux_case_17736 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name mux_case_07632 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_07632 \
    op interface \
    ports { mux_case_07632 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name mux_case_17528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_17528 \
    op interface \
    ports { mux_case_17528 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name mux_case_07424 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_07424 \
    op interface \
    ports { mux_case_07424 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name mux_case_17320 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_17320 \
    op interface \
    ports { mux_case_17320 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name mux_case_07216 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_07216 \
    op interface \
    ports { mux_case_07216 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name retval_0_3_0_0_0_load109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_3_0_0_0_load109 \
    op interface \
    ports { retval_0_3_0_0_0_load109 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name retval_0_2_0_0_0_load103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_2_0_0_0_load103 \
    op interface \
    ports { retval_0_2_0_0_0_load103 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name retval_0_1_0_0_0_load97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_1_0_0_0_load97 \
    op interface \
    ports { retval_0_1_0_0_0_load97 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name retval_0_0_0_0_0_load91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_0_0_0_0_load91 \
    op interface \
    ports { retval_0_0_0_0_0_load91 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name p_0_0_01385_1_lcssa31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01385_1_lcssa31 \
    op interface \
    ports { p_0_0_01385_1_lcssa31 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name p_0_0_01385_lcssa29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01385_lcssa29 \
    op interface \
    ports { p_0_0_01385_lcssa29 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name p_0_0_01382_1_lcssa27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01382_1_lcssa27 \
    op interface \
    ports { p_0_0_01382_1_lcssa27 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name p_0_0_01382_lcssa25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_0_0_01382_lcssa25 \
    op interface \
    ports { p_0_0_01382_lcssa25 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
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
    id 96 \
    name cmp_i_i113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_i113 \
    op interface \
    ports { cmp_i_i113 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name w2_local_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_3_1_out \
    op interface \
    ports { w2_local_3_1_out { O 16 vector } w2_local_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name w2_local_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_2_1_out \
    op interface \
    ports { w2_local_2_1_out { O 16 vector } w2_local_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name w2_local_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_1_1_out \
    op interface \
    ports { w2_local_1_1_out { O 16 vector } w2_local_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name w2_local_165_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_165_out \
    op interface \
    ports { w2_local_165_out { O 16 vector } w2_local_165_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name w1_local_3_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_3_1_out \
    op interface \
    ports { w1_local_3_1_out { O 16 vector } w1_local_3_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name w1_local_2_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_2_1_out \
    op interface \
    ports { w1_local_2_1_out { O 16 vector } w1_local_2_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name w1_local_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_1_1_out \
    op interface \
    ports { w1_local_1_1_out { O 16 vector } w1_local_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name w1_local_163_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_163_out \
    op interface \
    ports { w1_local_163_out { O 16 vector } w1_local_163_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name mux_case_17943_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_17943_out \
    op interface \
    ports { mux_case_17943_out { O 16 vector } mux_case_17943_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name mux_case_07839_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_07839_out \
    op interface \
    ports { mux_case_07839_out { O 16 vector } mux_case_07839_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name mux_case_17735_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_17735_out \
    op interface \
    ports { mux_case_17735_out { O 16 vector } mux_case_17735_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name mux_case_07631_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_07631_out \
    op interface \
    ports { mux_case_07631_out { O 16 vector } mux_case_07631_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name mux_case_17527_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_17527_out \
    op interface \
    ports { mux_case_17527_out { O 16 vector } mux_case_17527_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name mux_case_07423_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_07423_out \
    op interface \
    ports { mux_case_07423_out { O 16 vector } mux_case_07423_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name mux_case_17319_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_17319_out \
    op interface \
    ports { mux_case_17319_out { O 16 vector } mux_case_17319_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name mux_case_07215_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_07215_out \
    op interface \
    ports { mux_case_07215_out { O 16 vector } mux_case_07215_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name retval_0_3_0_0_0_load108_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_3_0_0_0_load108_out \
    op interface \
    ports { retval_0_3_0_0_0_load108_out { O 16 vector } retval_0_3_0_0_0_load108_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name retval_0_2_0_0_0_load102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_2_0_0_0_load102_out \
    op interface \
    ports { retval_0_2_0_0_0_load102_out { O 16 vector } retval_0_2_0_0_0_load102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name retval_0_1_0_0_0_load96_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_1_0_0_0_load96_out \
    op interface \
    ports { retval_0_1_0_0_0_load96_out { O 16 vector } retval_0_1_0_0_0_load96_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name retval_0_0_0_0_0_load90_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_0_0_0_0_load90_out \
    op interface \
    ports { retval_0_0_0_0_0_load90_out { O 16 vector } retval_0_0_0_0_0_load90_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name bias_2_local_idx4_val23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_idx4_val23_out \
    op interface \
    ports { bias_2_local_idx4_val23_out { O 16 vector } bias_2_local_idx4_val23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name bias_2_local_idx_val22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_idx_val22_out \
    op interface \
    ports { bias_2_local_idx_val22_out { O 16 vector } bias_2_local_idx_val22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name bias_1_local_idx1_val21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_idx1_val21_out \
    op interface \
    ports { bias_1_local_idx1_val21_out { O 16 vector } bias_1_local_idx1_val21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name bias_1_local_idx_val20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_idx_val20_out \
    op interface \
    ports { bias_1_local_idx_val20_out { O 16 vector } bias_1_local_idx_val20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name retval_0_3_0_0_0_load_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_3_0_0_0_load_out \
    op interface \
    ports { retval_0_3_0_0_0_load_out { O 16 vector } retval_0_3_0_0_0_load_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name retval_0_2_0_0_0_load_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_2_0_0_0_load_out \
    op interface \
    ports { retval_0_2_0_0_0_load_out { O 16 vector } retval_0_2_0_0_0_load_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name retval_0_1_0_0_0_load_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_1_0_0_0_load_out \
    op interface \
    ports { retval_0_1_0_0_0_load_out { O 16 vector } retval_0_1_0_0_0_load_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name retval_0_0_0_0_0_load_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_0_0_0_0_load_out \
    op interface \
    ports { retval_0_0_0_0_0_load_out { O 16 vector } retval_0_0_0_0_0_load_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name array_back2_weight_changes_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_out \
    op interface \
    ports { array_back2_weight_changes_out { O 16 vector } array_back2_weight_changes_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name array_back2_weight_changes_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_4_out \
    op interface \
    ports { array_back2_weight_changes_4_out { O 16 vector } array_back2_weight_changes_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name array_back2_weight_changes_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_5_out \
    op interface \
    ports { array_back2_weight_changes_5_out { O 16 vector } array_back2_weight_changes_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name array_back2_weight_changes_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_weight_changes_6_out \
    op interface \
    ports { array_back2_weight_changes_6_out { O 16 vector } array_back2_weight_changes_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name array_back2_bias_change_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_bias_change_out \
    op interface \
    ports { array_back2_bias_change_out { O 16 vector } array_back2_bias_change_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name array_back2_bias_change_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back2_bias_change_2_out \
    op interface \
    ports { array_back2_bias_change_2_out { O 16 vector } array_back2_bias_change_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 131 \
    name array_back1_weight_changes_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_out \
    op interface \
    ports { array_back1_weight_changes_out { O 16 vector } array_back1_weight_changes_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 132 \
    name array_back1_weight_changes_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_4_out \
    op interface \
    ports { array_back1_weight_changes_4_out { O 16 vector } array_back1_weight_changes_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 133 \
    name array_back1_weight_changes_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_5_out \
    op interface \
    ports { array_back1_weight_changes_5_out { O 16 vector } array_back1_weight_changes_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 134 \
    name array_back1_weight_changes_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_weight_changes_6_out \
    op interface \
    ports { array_back1_weight_changes_6_out { O 16 vector } array_back1_weight_changes_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 135 \
    name array_back1_bias_change_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_bias_change_out \
    op interface \
    ports { array_back1_bias_change_out { O 16 vector } array_back1_bias_change_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 136 \
    name array_back1_bias_change_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_array_back1_bias_change_2_out \
    op interface \
    ports { array_back1_bias_change_2_out { O 16 vector } array_back1_bias_change_2_out_ap_vld { O 1 bit } } \
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


