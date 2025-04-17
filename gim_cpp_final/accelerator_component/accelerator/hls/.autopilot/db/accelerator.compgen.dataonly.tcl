# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
<<<<<<< HEAD
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


>>>>>>> main
