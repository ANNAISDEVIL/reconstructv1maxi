# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_dataflow_in_loop_VITIS_LOOP_149_1_1_curr_localImage_RAM_AUTO_1R1W_memcore BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_dataflow_in_loop_VITIS_LOOP_149_1_1_curr_localImage_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_fifo_w64_d4_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {call_ret_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_fifo_w256_d4_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {localImages_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_fifo_w32_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {curr_imageProjs_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {projSumUsed_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler reconstruct_fifo_w32_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {sum_U}
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
    id 2229 \
    name conv \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_conv \
    op interface \
    ports { conv { I 16 vector } conv_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2230 \
    name psfSupersample \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_psfSupersample \
    op interface \
    ports { psfSupersample { I 32 vector } psfSupersample_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2231 \
    name projShape0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_projShape0 \
    op interface \
    ports { projShape0 { I 32 vector } projShape0_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2232 \
    name projShape1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_projShape1 \
    op interface \
    ports { projShape1 { I 32 vector } projShape1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2233 \
    name atomLocations \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_atomLocations \
    op interface \
    ports { m_axi_atomLocations_0_AWVALID { O 1 bit } m_axi_atomLocations_0_AWREADY { I 1 bit } m_axi_atomLocations_0_AWADDR { O 64 vector } m_axi_atomLocations_0_AWID { O 1 vector } m_axi_atomLocations_0_AWLEN { O 32 vector } m_axi_atomLocations_0_AWSIZE { O 3 vector } m_axi_atomLocations_0_AWBURST { O 2 vector } m_axi_atomLocations_0_AWLOCK { O 2 vector } m_axi_atomLocations_0_AWCACHE { O 4 vector } m_axi_atomLocations_0_AWPROT { O 3 vector } m_axi_atomLocations_0_AWQOS { O 4 vector } m_axi_atomLocations_0_AWREGION { O 4 vector } m_axi_atomLocations_0_AWUSER { O 1 vector } m_axi_atomLocations_0_WVALID { O 1 bit } m_axi_atomLocations_0_WREADY { I 1 bit } m_axi_atomLocations_0_WDATA { O 64 vector } m_axi_atomLocations_0_WSTRB { O 8 vector } m_axi_atomLocations_0_WLAST { O 1 bit } m_axi_atomLocations_0_WID { O 1 vector } m_axi_atomLocations_0_WUSER { O 1 vector } m_axi_atomLocations_0_ARVALID { O 1 bit } m_axi_atomLocations_0_ARREADY { I 1 bit } m_axi_atomLocations_0_ARADDR { O 64 vector } m_axi_atomLocations_0_ARID { O 1 vector } m_axi_atomLocations_0_ARLEN { O 32 vector } m_axi_atomLocations_0_ARSIZE { O 3 vector } m_axi_atomLocations_0_ARBURST { O 2 vector } m_axi_atomLocations_0_ARLOCK { O 2 vector } m_axi_atomLocations_0_ARCACHE { O 4 vector } m_axi_atomLocations_0_ARPROT { O 3 vector } m_axi_atomLocations_0_ARQOS { O 4 vector } m_axi_atomLocations_0_ARREGION { O 4 vector } m_axi_atomLocations_0_ARUSER { O 1 vector } m_axi_atomLocations_0_RVALID { I 1 bit } m_axi_atomLocations_0_RREADY { O 1 bit } m_axi_atomLocations_0_RDATA { I 64 vector } m_axi_atomLocations_0_RLAST { I 1 bit } m_axi_atomLocations_0_RID { I 1 vector } m_axi_atomLocations_0_RFIFONUM { I 9 vector } m_axi_atomLocations_0_RUSER { I 1 vector } m_axi_atomLocations_0_RRESP { I 2 vector } m_axi_atomLocations_0_BVALID { I 1 bit } m_axi_atomLocations_0_BREADY { O 1 bit } m_axi_atomLocations_0_BRESP { I 2 vector } m_axi_atomLocations_0_BID { I 1 vector } m_axi_atomLocations_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2234 \
    name atomLocations1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_atomLocations1 \
    op interface \
    ports { atomLocations1 { I 64 vector } atomLocations1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2235 \
    name imageProjs \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs \
    op interface \
    ports { m_axi_imageProjs_0_AWVALID { O 1 bit } m_axi_imageProjs_0_AWREADY { I 1 bit } m_axi_imageProjs_0_AWADDR { O 64 vector } m_axi_imageProjs_0_AWID { O 1 vector } m_axi_imageProjs_0_AWLEN { O 32 vector } m_axi_imageProjs_0_AWSIZE { O 3 vector } m_axi_imageProjs_0_AWBURST { O 2 vector } m_axi_imageProjs_0_AWLOCK { O 2 vector } m_axi_imageProjs_0_AWCACHE { O 4 vector } m_axi_imageProjs_0_AWPROT { O 3 vector } m_axi_imageProjs_0_AWQOS { O 4 vector } m_axi_imageProjs_0_AWREGION { O 4 vector } m_axi_imageProjs_0_AWUSER { O 1 vector } m_axi_imageProjs_0_WVALID { O 1 bit } m_axi_imageProjs_0_WREADY { I 1 bit } m_axi_imageProjs_0_WDATA { O 32 vector } m_axi_imageProjs_0_WSTRB { O 4 vector } m_axi_imageProjs_0_WLAST { O 1 bit } m_axi_imageProjs_0_WID { O 1 vector } m_axi_imageProjs_0_WUSER { O 1 vector } m_axi_imageProjs_0_ARVALID { O 1 bit } m_axi_imageProjs_0_ARREADY { I 1 bit } m_axi_imageProjs_0_ARADDR { O 64 vector } m_axi_imageProjs_0_ARID { O 1 vector } m_axi_imageProjs_0_ARLEN { O 32 vector } m_axi_imageProjs_0_ARSIZE { O 3 vector } m_axi_imageProjs_0_ARBURST { O 2 vector } m_axi_imageProjs_0_ARLOCK { O 2 vector } m_axi_imageProjs_0_ARCACHE { O 4 vector } m_axi_imageProjs_0_ARPROT { O 3 vector } m_axi_imageProjs_0_ARQOS { O 4 vector } m_axi_imageProjs_0_ARREGION { O 4 vector } m_axi_imageProjs_0_ARUSER { O 1 vector } m_axi_imageProjs_0_RVALID { I 1 bit } m_axi_imageProjs_0_RREADY { O 1 bit } m_axi_imageProjs_0_RDATA { I 32 vector } m_axi_imageProjs_0_RLAST { I 1 bit } m_axi_imageProjs_0_RID { I 1 vector } m_axi_imageProjs_0_RFIFONUM { I 9 vector } m_axi_imageProjs_0_RUSER { I 1 vector } m_axi_imageProjs_0_RRESP { I 2 vector } m_axi_imageProjs_0_BVALID { I 1 bit } m_axi_imageProjs_0_BREADY { O 1 bit } m_axi_imageProjs_0_BRESP { I 2 vector } m_axi_imageProjs_0_BID { I 1 vector } m_axi_imageProjs_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2236 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 64 vector } empty_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2237 \
    name fullImage \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fullImage \
    op interface \
    ports { m_axi_fullImage_0_AWVALID { O 1 bit } m_axi_fullImage_0_AWREADY { I 1 bit } m_axi_fullImage_0_AWADDR { O 64 vector } m_axi_fullImage_0_AWID { O 1 vector } m_axi_fullImage_0_AWLEN { O 32 vector } m_axi_fullImage_0_AWSIZE { O 3 vector } m_axi_fullImage_0_AWBURST { O 2 vector } m_axi_fullImage_0_AWLOCK { O 2 vector } m_axi_fullImage_0_AWCACHE { O 4 vector } m_axi_fullImage_0_AWPROT { O 3 vector } m_axi_fullImage_0_AWQOS { O 4 vector } m_axi_fullImage_0_AWREGION { O 4 vector } m_axi_fullImage_0_AWUSER { O 1 vector } m_axi_fullImage_0_WVALID { O 1 bit } m_axi_fullImage_0_WREADY { I 1 bit } m_axi_fullImage_0_WDATA { O 32 vector } m_axi_fullImage_0_WSTRB { O 4 vector } m_axi_fullImage_0_WLAST { O 1 bit } m_axi_fullImage_0_WID { O 1 vector } m_axi_fullImage_0_WUSER { O 1 vector } m_axi_fullImage_0_ARVALID { O 1 bit } m_axi_fullImage_0_ARREADY { I 1 bit } m_axi_fullImage_0_ARADDR { O 64 vector } m_axi_fullImage_0_ARID { O 1 vector } m_axi_fullImage_0_ARLEN { O 32 vector } m_axi_fullImage_0_ARSIZE { O 3 vector } m_axi_fullImage_0_ARBURST { O 2 vector } m_axi_fullImage_0_ARLOCK { O 2 vector } m_axi_fullImage_0_ARCACHE { O 4 vector } m_axi_fullImage_0_ARPROT { O 3 vector } m_axi_fullImage_0_ARQOS { O 4 vector } m_axi_fullImage_0_ARREGION { O 4 vector } m_axi_fullImage_0_ARUSER { O 1 vector } m_axi_fullImage_0_RVALID { I 1 bit } m_axi_fullImage_0_RREADY { O 1 bit } m_axi_fullImage_0_RDATA { I 32 vector } m_axi_fullImage_0_RLAST { I 1 bit } m_axi_fullImage_0_RID { I 1 vector } m_axi_fullImage_0_RFIFONUM { I 9 vector } m_axi_fullImage_0_RUSER { I 1 vector } m_axi_fullImage_0_RRESP { I 2 vector } m_axi_fullImage_0_BVALID { I 1 bit } m_axi_fullImage_0_BREADY { O 1 bit } m_axi_fullImage_0_BRESP { I 2 vector } m_axi_fullImage_0_BID { I 1 vector } m_axi_fullImage_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2238 \
    name fullImage2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fullImage2 \
    op interface \
    ports { fullImage2 { I 64 vector } fullImage2_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2239 \
    name imageProjs_local \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs_local \
    op interface \
    ports { m_axi_imageProjs_local_0_AWVALID { O 1 bit } m_axi_imageProjs_local_0_AWREADY { I 1 bit } m_axi_imageProjs_local_0_AWADDR { O 64 vector } m_axi_imageProjs_local_0_AWID { O 1 vector } m_axi_imageProjs_local_0_AWLEN { O 32 vector } m_axi_imageProjs_local_0_AWSIZE { O 3 vector } m_axi_imageProjs_local_0_AWBURST { O 2 vector } m_axi_imageProjs_local_0_AWLOCK { O 2 vector } m_axi_imageProjs_local_0_AWCACHE { O 4 vector } m_axi_imageProjs_local_0_AWPROT { O 3 vector } m_axi_imageProjs_local_0_AWQOS { O 4 vector } m_axi_imageProjs_local_0_AWREGION { O 4 vector } m_axi_imageProjs_local_0_AWUSER { O 1 vector } m_axi_imageProjs_local_0_WVALID { O 1 bit } m_axi_imageProjs_local_0_WREADY { I 1 bit } m_axi_imageProjs_local_0_WDATA { O 32 vector } m_axi_imageProjs_local_0_WSTRB { O 4 vector } m_axi_imageProjs_local_0_WLAST { O 1 bit } m_axi_imageProjs_local_0_WID { O 1 vector } m_axi_imageProjs_local_0_WUSER { O 1 vector } m_axi_imageProjs_local_0_ARVALID { O 1 bit } m_axi_imageProjs_local_0_ARREADY { I 1 bit } m_axi_imageProjs_local_0_ARADDR { O 64 vector } m_axi_imageProjs_local_0_ARID { O 1 vector } m_axi_imageProjs_local_0_ARLEN { O 32 vector } m_axi_imageProjs_local_0_ARSIZE { O 3 vector } m_axi_imageProjs_local_0_ARBURST { O 2 vector } m_axi_imageProjs_local_0_ARLOCK { O 2 vector } m_axi_imageProjs_local_0_ARCACHE { O 4 vector } m_axi_imageProjs_local_0_ARPROT { O 3 vector } m_axi_imageProjs_local_0_ARQOS { O 4 vector } m_axi_imageProjs_local_0_ARREGION { O 4 vector } m_axi_imageProjs_local_0_ARUSER { O 1 vector } m_axi_imageProjs_local_0_RVALID { I 1 bit } m_axi_imageProjs_local_0_RREADY { O 1 bit } m_axi_imageProjs_local_0_RDATA { I 32 vector } m_axi_imageProjs_local_0_RLAST { I 1 bit } m_axi_imageProjs_local_0_RID { I 1 vector } m_axi_imageProjs_local_0_RFIFONUM { I 9 vector } m_axi_imageProjs_local_0_RUSER { I 1 vector } m_axi_imageProjs_local_0_RRESP { I 2 vector } m_axi_imageProjs_local_0_BVALID { I 1 bit } m_axi_imageProjs_local_0_BREADY { O 1 bit } m_axi_imageProjs_local_0_BRESP { I 2 vector } m_axi_imageProjs_local_0_BID { I 1 vector } m_axi_imageProjs_local_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2240 \
    name imageProjs_local3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs_local3 \
    op interface \
    ports { imageProjs_local3 { I 64 vector } imageProjs_local3_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2241 \
    name idx_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_idx_0 \
    op interface \
    ports { idx_0 { I 16 vector } idx_0_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2242 \
    name emissions \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_emissions \
    op interface \
    ports { m_axi_emissions_0_AWVALID { O 1 bit } m_axi_emissions_0_AWREADY { I 1 bit } m_axi_emissions_0_AWADDR { O 64 vector } m_axi_emissions_0_AWID { O 1 vector } m_axi_emissions_0_AWLEN { O 32 vector } m_axi_emissions_0_AWSIZE { O 3 vector } m_axi_emissions_0_AWBURST { O 2 vector } m_axi_emissions_0_AWLOCK { O 2 vector } m_axi_emissions_0_AWCACHE { O 4 vector } m_axi_emissions_0_AWPROT { O 3 vector } m_axi_emissions_0_AWQOS { O 4 vector } m_axi_emissions_0_AWREGION { O 4 vector } m_axi_emissions_0_AWUSER { O 1 vector } m_axi_emissions_0_WVALID { O 1 bit } m_axi_emissions_0_WREADY { I 1 bit } m_axi_emissions_0_WDATA { O 32 vector } m_axi_emissions_0_WSTRB { O 4 vector } m_axi_emissions_0_WLAST { O 1 bit } m_axi_emissions_0_WID { O 1 vector } m_axi_emissions_0_WUSER { O 1 vector } m_axi_emissions_0_ARVALID { O 1 bit } m_axi_emissions_0_ARREADY { I 1 bit } m_axi_emissions_0_ARADDR { O 64 vector } m_axi_emissions_0_ARID { O 1 vector } m_axi_emissions_0_ARLEN { O 32 vector } m_axi_emissions_0_ARSIZE { O 3 vector } m_axi_emissions_0_ARBURST { O 2 vector } m_axi_emissions_0_ARLOCK { O 2 vector } m_axi_emissions_0_ARCACHE { O 4 vector } m_axi_emissions_0_ARPROT { O 3 vector } m_axi_emissions_0_ARQOS { O 4 vector } m_axi_emissions_0_ARREGION { O 4 vector } m_axi_emissions_0_ARUSER { O 1 vector } m_axi_emissions_0_RVALID { I 1 bit } m_axi_emissions_0_RREADY { O 1 bit } m_axi_emissions_0_RDATA { I 32 vector } m_axi_emissions_0_RLAST { I 1 bit } m_axi_emissions_0_RID { I 1 vector } m_axi_emissions_0_RFIFONUM { I 9 vector } m_axi_emissions_0_RUSER { I 1 vector } m_axi_emissions_0_RRESP { I 2 vector } m_axi_emissions_0_BVALID { I 1 bit } m_axi_emissions_0_BREADY { O 1 bit } m_axi_emissions_0_BRESP { I 2 vector } m_axi_emissions_0_BID { I 1 vector } m_axi_emissions_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2243 \
    name emissions4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_emissions4 \
    op interface \
    ports { emissions4 { I 64 vector } emissions4_ap_vld { I 1 bit } } \
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


