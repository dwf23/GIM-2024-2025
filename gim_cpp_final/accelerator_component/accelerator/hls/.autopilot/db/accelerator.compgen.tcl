# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
<<<<<<< HEAD
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 126 \
    name w1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename w1 \
    op interface \
    ports { w1_address0 { O 2 vector } w1_ce0 { O 1 bit } w1_q0 { I 16 vector } w1_address1 { O 2 vector } w1_ce1 { O 1 bit } w1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'w1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 127 \
    name w2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename w2 \
    op interface \
    ports { w2_address0 { O 2 vector } w2_ce0 { O 1 bit } w2_q0 { I 16 vector } w2_address1 { O 2 vector } w2_ce1 { O 1 bit } w2_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'w2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 128 \
    name bias_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_1 \
    op interface \
    ports { bias_1_address0 { O 1 vector } bias_1_ce0 { O 1 bit } bias_1_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 129 \
    name bias_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename bias_2 \
    op interface \
    ports { bias_2_address0 { O 1 vector } bias_2_ce0 { O 1 bit } bias_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'bias_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name training \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_training \
    op interface \
    ports { training { I 16 vector } } \
} "
=======
set port_control {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
ap_return { 
	dir o
	width 256
	depth 1
	mode ap_ctrl_hs
	offset 16
	offset_end 0
}
w1_0 { 
	dir I
	width 16
	depth 2
	mode ap_memory
	offset 56
	offset_end 63
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
w1_1 { 
	dir I
	width 16
	depth 2
	mode ap_memory
	offset 64
	offset_end 71
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
w2_0 { 
	dir I
	width 16
	depth 2
	mode ap_memory
	offset 72
	offset_end 79
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
w2_1 { 
	dir I
	width 16
	depth 2
	mode ap_memory
	offset 80
	offset_end 87
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
bias_1 { 
	dir I
	width 16
	depth 2
	mode ap_memory
	offset 88
	offset_end 95
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
bias_2 { 
	dir I
	width 16
	depth 2
	mode ap_memory
	offset 96
	offset_end 103
	core_op ram_1p
	core_impl auto
	core_latency 1
	byte_write 0
}
training { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 132 \
			corename accelerator_control_axilite \
			name accelerator_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler accelerator_control_s_axi BINDTYPE interface TYPE interface_s_axilite
>>>>>>> main
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
<<<<<<< HEAD
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
=======
    name ap_return \
    type ap_return \
    reset_level 0 \
>>>>>>> main
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 256 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
<<<<<<< HEAD
    id -3 \
    name ${PortName} \
    reset_level 1 \
=======
    id -2 \
    name ${PortName} \
    reset_level 0 \
>>>>>>> main
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
<<<<<<< HEAD
set PortName ap_rst
=======
set PortName ap_rst_n
>>>>>>> main
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
<<<<<<< HEAD
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
=======
    id -3 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
>>>>>>> main
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


