# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
imageProjs_local_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
imageProjs_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
imageProjs_local_size_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
fullImage_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
emissions_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


set port_scalar_data {
atomLocationsSize { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
projShape0 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
projShape1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
psfSupersample { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
imageProjectionSize { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
fullImage_rows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
fullImage_cols { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
emission_cnt { 
	dir O
	width 32
	depth 1
	mode ap_vld
	offset 72
	offset_end 79
}
}
dict set axilite_register_dict scalar_data $port_scalar_data


