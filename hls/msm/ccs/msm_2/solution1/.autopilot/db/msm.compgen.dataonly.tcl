# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
x_array { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
y_array { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
z_array { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
t_array { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
result_x { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
result_y { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
result_z { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
result_t { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
}
dict set axilite_register_dict control $port_control


