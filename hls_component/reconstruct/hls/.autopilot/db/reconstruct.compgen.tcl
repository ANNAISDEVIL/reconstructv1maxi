# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_ap_bound BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {ap_bound_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_atomLocations_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_imageProjs_local_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_imageProjs_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_fullImage_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_emissions_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
atomLocations_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
imageProjs_local_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
imageProjs_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
imageProjs_local_size_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
fullImage_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
emissions_offset { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 6691 \
			corename reconstruct_control_axilite \
			name reconstruct_control_s_axi \
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
	::AP::rtl_comp_handler reconstruct_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}

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
}
dict set axilite_register_dict scalar_data $port_scalar_data


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 6692 \
			corename reconstruct_scalar_data_axilite \
			name reconstruct_scalar_data_s_axi \
			ports {$port_scalar_data} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'scalar_data'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_scalar_data_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


