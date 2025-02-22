# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
ap_return { 
	dir o
	width 1
	depth 1
	mode ap_ctrl_none
	offset 16
	offset_end 0
}
interrupt {
}
}
dict set axilite_register_dict control $port_control


