# This script segment is generated automatically by AutoPilot

set name reconstruct_dadd_64ns_64ns_64_7_full_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dadd} IMPL {fulldsp} LATENCY 6 ALLOW_PRAGMA 1
}


set name reconstruct_ddiv_64ns_64ns_64_59_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {ddiv} IMPL {fabric} LATENCY 58 ALLOW_PRAGMA 1
}


set name reconstruct_dcmp_64ns_64ns_1_2_no_dsp_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {dcmp} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name reconstruct_mul_32s_32s_32_2_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 1 ALLOW_PRAGMA 1
}


set name reconstruct_mul_61s_32s_61_5_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 4 ALLOW_PRAGMA 1
}


set name reconstruct_srem_32ns_32s_32_36_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {srem} IMPL {auto} LATENCY 35 ALLOW_PRAGMA 1
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
    id 452 \
    name atomLocationsSize \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_atomLocationsSize \
    op interface \
    ports { atomLocationsSize { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name psfSupersample \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_psfSupersample \
    op interface \
    ports { psfSupersample { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name imageProjectionSize \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjectionSize \
    op interface \
    ports { imageProjectionSize { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name imageProjs_local \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs_local \
    op interface \
    ports { m_axi_imageProjs_local_0_AWVALID { O 1 bit } m_axi_imageProjs_local_0_AWREADY { I 1 bit } m_axi_imageProjs_local_0_AWADDR { O 64 vector } m_axi_imageProjs_local_0_AWID { O 1 vector } m_axi_imageProjs_local_0_AWLEN { O 32 vector } m_axi_imageProjs_local_0_AWSIZE { O 3 vector } m_axi_imageProjs_local_0_AWBURST { O 2 vector } m_axi_imageProjs_local_0_AWLOCK { O 2 vector } m_axi_imageProjs_local_0_AWCACHE { O 4 vector } m_axi_imageProjs_local_0_AWPROT { O 3 vector } m_axi_imageProjs_local_0_AWQOS { O 4 vector } m_axi_imageProjs_local_0_AWREGION { O 4 vector } m_axi_imageProjs_local_0_AWUSER { O 1 vector } m_axi_imageProjs_local_0_WVALID { O 1 bit } m_axi_imageProjs_local_0_WREADY { I 1 bit } m_axi_imageProjs_local_0_WDATA { O 64 vector } m_axi_imageProjs_local_0_WSTRB { O 8 vector } m_axi_imageProjs_local_0_WLAST { O 1 bit } m_axi_imageProjs_local_0_WID { O 1 vector } m_axi_imageProjs_local_0_WUSER { O 1 vector } m_axi_imageProjs_local_0_ARVALID { O 1 bit } m_axi_imageProjs_local_0_ARREADY { I 1 bit } m_axi_imageProjs_local_0_ARADDR { O 64 vector } m_axi_imageProjs_local_0_ARID { O 1 vector } m_axi_imageProjs_local_0_ARLEN { O 32 vector } m_axi_imageProjs_local_0_ARSIZE { O 3 vector } m_axi_imageProjs_local_0_ARBURST { O 2 vector } m_axi_imageProjs_local_0_ARLOCK { O 2 vector } m_axi_imageProjs_local_0_ARCACHE { O 4 vector } m_axi_imageProjs_local_0_ARPROT { O 3 vector } m_axi_imageProjs_local_0_ARQOS { O 4 vector } m_axi_imageProjs_local_0_ARREGION { O 4 vector } m_axi_imageProjs_local_0_ARUSER { O 1 vector } m_axi_imageProjs_local_0_RVALID { I 1 bit } m_axi_imageProjs_local_0_RREADY { O 1 bit } m_axi_imageProjs_local_0_RDATA { I 64 vector } m_axi_imageProjs_local_0_RLAST { I 1 bit } m_axi_imageProjs_local_0_RID { I 1 vector } m_axi_imageProjs_local_0_RFIFONUM { I 9 vector } m_axi_imageProjs_local_0_RUSER { I 1 vector } m_axi_imageProjs_local_0_RRESP { I 2 vector } m_axi_imageProjs_local_0_BVALID { I 1 bit } m_axi_imageProjs_local_0_BREADY { O 1 bit } m_axi_imageProjs_local_0_BRESP { I 2 vector } m_axi_imageProjs_local_0_BID { I 1 vector } m_axi_imageProjs_local_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name imageProjs_local1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs_local1 \
    op interface \
    ports { imageProjs_local1 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name imageProjs \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs \
    op interface \
    ports { m_axi_imageProjs_0_AWVALID { O 1 bit } m_axi_imageProjs_0_AWREADY { I 1 bit } m_axi_imageProjs_0_AWADDR { O 64 vector } m_axi_imageProjs_0_AWID { O 1 vector } m_axi_imageProjs_0_AWLEN { O 32 vector } m_axi_imageProjs_0_AWSIZE { O 3 vector } m_axi_imageProjs_0_AWBURST { O 2 vector } m_axi_imageProjs_0_AWLOCK { O 2 vector } m_axi_imageProjs_0_AWCACHE { O 4 vector } m_axi_imageProjs_0_AWPROT { O 3 vector } m_axi_imageProjs_0_AWQOS { O 4 vector } m_axi_imageProjs_0_AWREGION { O 4 vector } m_axi_imageProjs_0_AWUSER { O 1 vector } m_axi_imageProjs_0_WVALID { O 1 bit } m_axi_imageProjs_0_WREADY { I 1 bit } m_axi_imageProjs_0_WDATA { O 64 vector } m_axi_imageProjs_0_WSTRB { O 8 vector } m_axi_imageProjs_0_WLAST { O 1 bit } m_axi_imageProjs_0_WID { O 1 vector } m_axi_imageProjs_0_WUSER { O 1 vector } m_axi_imageProjs_0_ARVALID { O 1 bit } m_axi_imageProjs_0_ARREADY { I 1 bit } m_axi_imageProjs_0_ARADDR { O 64 vector } m_axi_imageProjs_0_ARID { O 1 vector } m_axi_imageProjs_0_ARLEN { O 32 vector } m_axi_imageProjs_0_ARSIZE { O 3 vector } m_axi_imageProjs_0_ARBURST { O 2 vector } m_axi_imageProjs_0_ARLOCK { O 2 vector } m_axi_imageProjs_0_ARCACHE { O 4 vector } m_axi_imageProjs_0_ARPROT { O 3 vector } m_axi_imageProjs_0_ARQOS { O 4 vector } m_axi_imageProjs_0_ARREGION { O 4 vector } m_axi_imageProjs_0_ARUSER { O 1 vector } m_axi_imageProjs_0_RVALID { I 1 bit } m_axi_imageProjs_0_RREADY { O 1 bit } m_axi_imageProjs_0_RDATA { I 64 vector } m_axi_imageProjs_0_RLAST { I 1 bit } m_axi_imageProjs_0_RID { I 1 vector } m_axi_imageProjs_0_RFIFONUM { I 9 vector } m_axi_imageProjs_0_RUSER { I 1 vector } m_axi_imageProjs_0_RRESP { I 2 vector } m_axi_imageProjs_0_BVALID { I 1 bit } m_axi_imageProjs_0_BREADY { O 1 bit } m_axi_imageProjs_0_BRESP { I 2 vector } m_axi_imageProjs_0_BID { I 1 vector } m_axi_imageProjs_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name imageProjs2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs2 \
    op interface \
    ports { imageProjs2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name imageProjs_local_size_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs_local_size_r \
    op interface \
    ports { m_axi_imageProjs_local_size_r_0_AWVALID { O 1 bit } m_axi_imageProjs_local_size_r_0_AWREADY { I 1 bit } m_axi_imageProjs_local_size_r_0_AWADDR { O 64 vector } m_axi_imageProjs_local_size_r_0_AWID { O 1 vector } m_axi_imageProjs_local_size_r_0_AWLEN { O 32 vector } m_axi_imageProjs_local_size_r_0_AWSIZE { O 3 vector } m_axi_imageProjs_local_size_r_0_AWBURST { O 2 vector } m_axi_imageProjs_local_size_r_0_AWLOCK { O 2 vector } m_axi_imageProjs_local_size_r_0_AWCACHE { O 4 vector } m_axi_imageProjs_local_size_r_0_AWPROT { O 3 vector } m_axi_imageProjs_local_size_r_0_AWQOS { O 4 vector } m_axi_imageProjs_local_size_r_0_AWREGION { O 4 vector } m_axi_imageProjs_local_size_r_0_AWUSER { O 1 vector } m_axi_imageProjs_local_size_r_0_WVALID { O 1 bit } m_axi_imageProjs_local_size_r_0_WREADY { I 1 bit } m_axi_imageProjs_local_size_r_0_WDATA { O 32 vector } m_axi_imageProjs_local_size_r_0_WSTRB { O 4 vector } m_axi_imageProjs_local_size_r_0_WLAST { O 1 bit } m_axi_imageProjs_local_size_r_0_WID { O 1 vector } m_axi_imageProjs_local_size_r_0_WUSER { O 1 vector } m_axi_imageProjs_local_size_r_0_ARVALID { O 1 bit } m_axi_imageProjs_local_size_r_0_ARREADY { I 1 bit } m_axi_imageProjs_local_size_r_0_ARADDR { O 64 vector } m_axi_imageProjs_local_size_r_0_ARID { O 1 vector } m_axi_imageProjs_local_size_r_0_ARLEN { O 32 vector } m_axi_imageProjs_local_size_r_0_ARSIZE { O 3 vector } m_axi_imageProjs_local_size_r_0_ARBURST { O 2 vector } m_axi_imageProjs_local_size_r_0_ARLOCK { O 2 vector } m_axi_imageProjs_local_size_r_0_ARCACHE { O 4 vector } m_axi_imageProjs_local_size_r_0_ARPROT { O 3 vector } m_axi_imageProjs_local_size_r_0_ARQOS { O 4 vector } m_axi_imageProjs_local_size_r_0_ARREGION { O 4 vector } m_axi_imageProjs_local_size_r_0_ARUSER { O 1 vector } m_axi_imageProjs_local_size_r_0_RVALID { I 1 bit } m_axi_imageProjs_local_size_r_0_RREADY { O 1 bit } m_axi_imageProjs_local_size_r_0_RDATA { I 32 vector } m_axi_imageProjs_local_size_r_0_RLAST { I 1 bit } m_axi_imageProjs_local_size_r_0_RID { I 1 vector } m_axi_imageProjs_local_size_r_0_RFIFONUM { I 9 vector } m_axi_imageProjs_local_size_r_0_RUSER { I 1 vector } m_axi_imageProjs_local_size_r_0_RRESP { I 2 vector } m_axi_imageProjs_local_size_r_0_BVALID { I 1 bit } m_axi_imageProjs_local_size_r_0_BREADY { O 1 bit } m_axi_imageProjs_local_size_r_0_BRESP { I 2 vector } m_axi_imageProjs_local_size_r_0_BID { I 1 vector } m_axi_imageProjs_local_size_r_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name imageProjs_local_size3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs_local_size3 \
    op interface \
    ports { imageProjs_local_size3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name fullImage \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fullImage \
    op interface \
    ports { m_axi_fullImage_0_AWVALID { O 1 bit } m_axi_fullImage_0_AWREADY { I 1 bit } m_axi_fullImage_0_AWADDR { O 64 vector } m_axi_fullImage_0_AWID { O 1 vector } m_axi_fullImage_0_AWLEN { O 32 vector } m_axi_fullImage_0_AWSIZE { O 3 vector } m_axi_fullImage_0_AWBURST { O 2 vector } m_axi_fullImage_0_AWLOCK { O 2 vector } m_axi_fullImage_0_AWCACHE { O 4 vector } m_axi_fullImage_0_AWPROT { O 3 vector } m_axi_fullImage_0_AWQOS { O 4 vector } m_axi_fullImage_0_AWREGION { O 4 vector } m_axi_fullImage_0_AWUSER { O 1 vector } m_axi_fullImage_0_WVALID { O 1 bit } m_axi_fullImage_0_WREADY { I 1 bit } m_axi_fullImage_0_WDATA { O 64 vector } m_axi_fullImage_0_WSTRB { O 8 vector } m_axi_fullImage_0_WLAST { O 1 bit } m_axi_fullImage_0_WID { O 1 vector } m_axi_fullImage_0_WUSER { O 1 vector } m_axi_fullImage_0_ARVALID { O 1 bit } m_axi_fullImage_0_ARREADY { I 1 bit } m_axi_fullImage_0_ARADDR { O 64 vector } m_axi_fullImage_0_ARID { O 1 vector } m_axi_fullImage_0_ARLEN { O 32 vector } m_axi_fullImage_0_ARSIZE { O 3 vector } m_axi_fullImage_0_ARBURST { O 2 vector } m_axi_fullImage_0_ARLOCK { O 2 vector } m_axi_fullImage_0_ARCACHE { O 4 vector } m_axi_fullImage_0_ARPROT { O 3 vector } m_axi_fullImage_0_ARQOS { O 4 vector } m_axi_fullImage_0_ARREGION { O 4 vector } m_axi_fullImage_0_ARUSER { O 1 vector } m_axi_fullImage_0_RVALID { I 1 bit } m_axi_fullImage_0_RREADY { O 1 bit } m_axi_fullImage_0_RDATA { I 64 vector } m_axi_fullImage_0_RLAST { I 1 bit } m_axi_fullImage_0_RID { I 1 vector } m_axi_fullImage_0_RFIFONUM { I 9 vector } m_axi_fullImage_0_RUSER { I 1 vector } m_axi_fullImage_0_RRESP { I 2 vector } m_axi_fullImage_0_BVALID { I 1 bit } m_axi_fullImage_0_BREADY { O 1 bit } m_axi_fullImage_0_BRESP { I 2 vector } m_axi_fullImage_0_BID { I 1 vector } m_axi_fullImage_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name fullImage4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fullImage4 \
    op interface \
    ports { fullImage4 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name fullImage_rows \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fullImage_rows \
    op interface \
    ports { fullImage_rows { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name fullImage_cols \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fullImage_cols \
    op interface \
    ports { fullImage_cols { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name localImages \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_localImages \
    op interface \
    ports { localImages_dout { I 256 vector } localImages_empty_n { I 1 bit } localImages_read { O 1 bit } localImages_num_data_valid { I 3 vector } localImages_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name emissions \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_emissions \
    op interface \
    ports { m_axi_emissions_0_AWVALID { O 1 bit } m_axi_emissions_0_AWREADY { I 1 bit } m_axi_emissions_0_AWADDR { O 64 vector } m_axi_emissions_0_AWID { O 1 vector } m_axi_emissions_0_AWLEN { O 32 vector } m_axi_emissions_0_AWSIZE { O 3 vector } m_axi_emissions_0_AWBURST { O 2 vector } m_axi_emissions_0_AWLOCK { O 2 vector } m_axi_emissions_0_AWCACHE { O 4 vector } m_axi_emissions_0_AWPROT { O 3 vector } m_axi_emissions_0_AWQOS { O 4 vector } m_axi_emissions_0_AWREGION { O 4 vector } m_axi_emissions_0_AWUSER { O 1 vector } m_axi_emissions_0_WVALID { O 1 bit } m_axi_emissions_0_WREADY { I 1 bit } m_axi_emissions_0_WDATA { O 64 vector } m_axi_emissions_0_WSTRB { O 8 vector } m_axi_emissions_0_WLAST { O 1 bit } m_axi_emissions_0_WID { O 1 vector } m_axi_emissions_0_WUSER { O 1 vector } m_axi_emissions_0_ARVALID { O 1 bit } m_axi_emissions_0_ARREADY { I 1 bit } m_axi_emissions_0_ARADDR { O 64 vector } m_axi_emissions_0_ARID { O 1 vector } m_axi_emissions_0_ARLEN { O 32 vector } m_axi_emissions_0_ARSIZE { O 3 vector } m_axi_emissions_0_ARBURST { O 2 vector } m_axi_emissions_0_ARLOCK { O 2 vector } m_axi_emissions_0_ARCACHE { O 4 vector } m_axi_emissions_0_ARPROT { O 3 vector } m_axi_emissions_0_ARQOS { O 4 vector } m_axi_emissions_0_ARREGION { O 4 vector } m_axi_emissions_0_ARUSER { O 1 vector } m_axi_emissions_0_RVALID { I 1 bit } m_axi_emissions_0_RREADY { O 1 bit } m_axi_emissions_0_RDATA { I 64 vector } m_axi_emissions_0_RLAST { I 1 bit } m_axi_emissions_0_RID { I 1 vector } m_axi_emissions_0_RFIFONUM { I 9 vector } m_axi_emissions_0_RUSER { I 1 vector } m_axi_emissions_0_RRESP { I 2 vector } m_axi_emissions_0_BVALID { I 1 bit } m_axi_emissions_0_BREADY { O 1 bit } m_axi_emissions_0_BRESP { I 2 vector } m_axi_emissions_0_BID { I 1 vector } m_axi_emissions_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name emissions5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_emissions5 \
    op interface \
    ports { emissions5 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name emission_cnt \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_emission_cnt \
    op interface \
    ports { emission_cnt { O 32 vector } emission_cnt_ap_vld { O 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


