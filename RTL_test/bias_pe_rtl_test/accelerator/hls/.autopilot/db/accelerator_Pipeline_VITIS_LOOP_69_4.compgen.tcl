# This script segment is generated automatically by AutoPilot

set name accelerator_dcmp_64ns_64ns_1_1_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dcmp} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler accelerator_sparsemux_9_2_10_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler accelerator_sparsemux_9_2_10_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler accelerator_sparsemux_9_2_10_1_1 BINDTYPE {op} TYPE {sparsemux} IMPL {auto}
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
    id 64 \
    name bias_2_local_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_1_0 \
    op interface \
    ports { bias_2_local_1_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name bias_2_local_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_0 \
    op interface \
    ports { bias_2_local_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name bias_1_local_1_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_1_0 \
    op interface \
    ports { bias_1_local_1_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name bias_1_local_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_0 \
    op interface \
    ports { bias_1_local_0 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
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
    id 69 \
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
    id 70 \
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
    id 71 \
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
    id 72 \
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
    id 73 \
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
    id 74 \
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
    id 75 \
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
    id 76 \
    name mux_case_15664 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_15664 \
    op interface \
    ports { mux_case_15664 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name mux_case_05560 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_05560 \
    op interface \
    ports { mux_case_05560 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name mux_case_15456 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_15456 \
    op interface \
    ports { mux_case_15456 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name mux_case_05352 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_05352 \
    op interface \
    ports { mux_case_05352 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name mux_case_15248 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_15248 \
    op interface \
    ports { mux_case_15248 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name mux_case_05144 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_05144 \
    op interface \
    ports { mux_case_05144 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name mux_case_15040 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_15040 \
    op interface \
    ports { mux_case_15040 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name mux_case_04936 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_04936 \
    op interface \
    ports { mux_case_04936 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name mux_case_14832 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_14832 \
    op interface \
    ports { mux_case_14832 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name mux_case_04728 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_04728 \
    op interface \
    ports { mux_case_04728 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name mux_case_14624 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_14624 \
    op interface \
    ports { mux_case_14624 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name mux_case_04520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_04520 \
    op interface \
    ports { mux_case_04520 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name retval_0_3_0_0_0_load82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_3_0_0_0_load82 \
    op interface \
    ports { retval_0_3_0_0_0_load82 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name retval_0_2_0_0_0_load76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_2_0_0_0_load76 \
    op interface \
    ports { retval_0_2_0_0_0_load76 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name retval_0_1_0_0_0_load70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_1_0_0_0_load70 \
    op interface \
    ports { retval_0_1_0_0_0_load70 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name retval_0_0_0_0_0_load64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_0_0_0_0_load64 \
    op interface \
    ports { retval_0_0_0_0_0_load64 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
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
    id 93 \
    name cmp_i_i100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_i100 \
    op interface \
    ports { cmp_i_i100 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name bias_2_local_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_1_1_out \
    op interface \
    ports { bias_2_local_1_1_out { O 16 vector } bias_2_local_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name bias_2_local_193_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_2_local_193_out \
    op interface \
    ports { bias_2_local_193_out { O 16 vector } bias_2_local_193_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name bias_1_local_1_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_1_1_out \
    op interface \
    ports { bias_1_local_1_1_out { O 16 vector } bias_1_local_1_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name bias_1_local_191_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bias_1_local_191_out \
    op interface \
    ports { bias_1_local_191_out { O 16 vector } bias_1_local_191_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
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
    id 99 \
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
    id 100 \
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
    id 101 \
    name w2_local_189_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w2_local_189_out \
    op interface \
    ports { w2_local_189_out { O 16 vector } w2_local_189_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
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
    id 103 \
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
    id 104 \
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
    id 105 \
    name w1_local_187_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_w1_local_187_out \
    op interface \
    ports { w1_local_187_out { O 16 vector } w1_local_187_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name mux_case_15663_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_15663_out \
    op interface \
    ports { mux_case_15663_out { O 16 vector } mux_case_15663_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name mux_case_05559_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_05559_out \
    op interface \
    ports { mux_case_05559_out { O 16 vector } mux_case_05559_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name mux_case_15455_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_15455_out \
    op interface \
    ports { mux_case_15455_out { O 16 vector } mux_case_15455_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name mux_case_05351_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_05351_out \
    op interface \
    ports { mux_case_05351_out { O 16 vector } mux_case_05351_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name mux_case_15247_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_15247_out \
    op interface \
    ports { mux_case_15247_out { O 16 vector } mux_case_15247_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name mux_case_05143_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_05143_out \
    op interface \
    ports { mux_case_05143_out { O 16 vector } mux_case_05143_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name mux_case_15039_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_15039_out \
    op interface \
    ports { mux_case_15039_out { O 16 vector } mux_case_15039_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name mux_case_04935_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_04935_out \
    op interface \
    ports { mux_case_04935_out { O 16 vector } mux_case_04935_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name mux_case_14831_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_14831_out \
    op interface \
    ports { mux_case_14831_out { O 16 vector } mux_case_14831_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name mux_case_04727_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_04727_out \
    op interface \
    ports { mux_case_04727_out { O 16 vector } mux_case_04727_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name mux_case_14623_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_14623_out \
    op interface \
    ports { mux_case_14623_out { O 16 vector } mux_case_14623_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name mux_case_04519_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_mux_case_04519_out \
    op interface \
    ports { mux_case_04519_out { O 16 vector } mux_case_04519_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name retval_0_3_0_0_0_load81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_3_0_0_0_load81_out \
    op interface \
    ports { retval_0_3_0_0_0_load81_out { O 16 vector } retval_0_3_0_0_0_load81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name retval_0_2_0_0_0_load75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_2_0_0_0_load75_out \
    op interface \
    ports { retval_0_2_0_0_0_load75_out { O 16 vector } retval_0_2_0_0_0_load75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name retval_0_1_0_0_0_load69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_1_0_0_0_load69_out \
    op interface \
    ports { retval_0_1_0_0_0_load69_out { O 16 vector } retval_0_1_0_0_0_load69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name retval_0_0_0_0_0_load63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_retval_0_0_0_0_0_load63_out \
    op interface \
    ports { retval_0_0_0_0_0_load63_out { O 16 vector } retval_0_0_0_0_0_load63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
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
    id 123 \
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
    id 124 \
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
    id 125 \
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
    id 126 \
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
    id 127 \
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
    id 128 \
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
    id 129 \
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
    id 130 \
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
    id 131 \
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
    id 132 \
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
    id 133 \
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
    id 134 \
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
    id 135 \
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
    id 136 \
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
    id 137 \
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


