# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1955 \
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
    id 1956 \
    name fullImage \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fullImage \
    op interface \
    ports { m_axi_fullImage_0_AWVALID { O 1 bit } m_axi_fullImage_0_AWREADY { I 1 bit } m_axi_fullImage_0_AWADDR { O 64 vector } m_axi_fullImage_0_AWID { O 1 vector } m_axi_fullImage_0_AWLEN { O 32 vector } m_axi_fullImage_0_AWSIZE { O 3 vector } m_axi_fullImage_0_AWBURST { O 2 vector } m_axi_fullImage_0_AWLOCK { O 2 vector } m_axi_fullImage_0_AWCACHE { O 4 vector } m_axi_fullImage_0_AWPROT { O 3 vector } m_axi_fullImage_0_AWQOS { O 4 vector } m_axi_fullImage_0_AWREGION { O 4 vector } m_axi_fullImage_0_AWUSER { O 1 vector } m_axi_fullImage_0_WVALID { O 1 bit } m_axi_fullImage_0_WREADY { I 1 bit } m_axi_fullImage_0_WDATA { O 32 vector } m_axi_fullImage_0_WSTRB { O 4 vector } m_axi_fullImage_0_WLAST { O 1 bit } m_axi_fullImage_0_WID { O 1 vector } m_axi_fullImage_0_WUSER { O 1 vector } m_axi_fullImage_0_ARVALID { O 1 bit } m_axi_fullImage_0_ARREADY { I 1 bit } m_axi_fullImage_0_ARADDR { O 64 vector } m_axi_fullImage_0_ARID { O 1 vector } m_axi_fullImage_0_ARLEN { O 32 vector } m_axi_fullImage_0_ARSIZE { O 3 vector } m_axi_fullImage_0_ARBURST { O 2 vector } m_axi_fullImage_0_ARLOCK { O 2 vector } m_axi_fullImage_0_ARCACHE { O 4 vector } m_axi_fullImage_0_ARPROT { O 3 vector } m_axi_fullImage_0_ARQOS { O 4 vector } m_axi_fullImage_0_ARREGION { O 4 vector } m_axi_fullImage_0_ARUSER { O 1 vector } m_axi_fullImage_0_RVALID { I 1 bit } m_axi_fullImage_0_RREADY { O 1 bit } m_axi_fullImage_0_RDATA { I 32 vector } m_axi_fullImage_0_RLAST { I 1 bit } m_axi_fullImage_0_RID { I 1 vector } m_axi_fullImage_0_RFIFONUM { I 13 vector } m_axi_fullImage_0_RUSER { I 1 vector } m_axi_fullImage_0_RRESP { I 2 vector } m_axi_fullImage_0_BVALID { I 1 bit } m_axi_fullImage_0_BREADY { O 1 bit } m_axi_fullImage_0_BRESP { I 2 vector } m_axi_fullImage_0_BID { I 1 vector } m_axi_fullImage_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1957 \
    name fullImage2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_fullImage2 \
    op interface \
    ports { fullImage2 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1958 \
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
    id 1959 \
    name imageProjs_local3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_imageProjs_local3 \
    op interface \
    ports { imageProjs_local3 { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1960 \
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
    id 1961 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 64 vector } } \
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


