set moduleName applyProjectors
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 7
set C_modelName {applyProjectors}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ atomLocationsSize int 32 regular  }
	{ psfSupersample int 32 regular  }
	{ imageProjectionSize int 32 regular  }
	{ imageProjs_local int 64 regular {axi_master 0}  }
	{ imageProjs_local1 int 64 regular  }
	{ imageProjs int 64 regular {axi_master 0}  }
	{ imageProjs2 int 64 regular  }
	{ imageProjs_local_size_r int 32 regular {axi_master 0}  }
	{ imageProjs_local_size3 int 64 regular  }
	{ fullImage int 64 regular {axi_master 0}  }
	{ fullImage4 int 64 regular  }
	{ fullImage_rows int 32 regular  }
	{ fullImage_cols int 32 regular  }
	{ localImages int 256 regular {fifo 0 volatile }  }
	{ emissions int 64 regular {axi_master 1}  }
	{ emissions5 int 64 regular  }
	{ emission_cnt int 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "atomLocationsSize", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "psfSupersample", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imageProjectionSize", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imageProjs_local", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs_local_offset","offset": { "type": "dynamic","port_name": "imageProjs_local_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "imageProjs_local1", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "imageProjs", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs_offset","offset": { "type": "dynamic","port_name": "imageProjs_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "imageProjs2", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "imageProjs_local_size_r", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs_local_size_offset","offset": { "type": "dynamic","port_name": "imageProjs_local_size_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "imageProjs_local_size3", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fullImage", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fullImage_offset","offset": { "type": "dynamic","port_name": "fullImage_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "fullImage4", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "fullImage_rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fullImage_cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "localImages", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY"} , 
 	{ "Name" : "emissions", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "emissions_offset","offset": { "type": "dynamic","port_name": "emissions_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "emissions5", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "emission_cnt", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 254
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ atomLocationsSize sc_in sc_lv 32 signal 0 } 
	{ psfSupersample sc_in sc_lv 32 signal 1 } 
	{ imageProjectionSize sc_in sc_lv 32 signal 2 } 
	{ m_axi_imageProjs_local_0_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_imageProjs_local_0_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_local_0_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_imageProjs_local_0_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_imageProjs_local_0_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_imageProjs_local_0_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_imageProjs_local_0_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_imageProjs_local_0_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_imageProjs_local_0_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_imageProjs_local_0_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_imageProjs_local_0_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_local_0_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_WDATA sc_out sc_lv 64 signal 3 } 
	{ m_axi_imageProjs_local_0_WSTRB sc_out sc_lv 8 signal 3 } 
	{ m_axi_imageProjs_local_0_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_local_0_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_local_0_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_imageProjs_local_0_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_local_0_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_imageProjs_local_0_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_imageProjs_local_0_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_imageProjs_local_0_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_imageProjs_local_0_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_imageProjs_local_0_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_imageProjs_local_0_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_imageProjs_local_0_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_imageProjs_local_0_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_local_0_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_RDATA sc_in sc_lv 64 signal 3 } 
	{ m_axi_imageProjs_local_0_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_local_0_RFIFONUM sc_in sc_lv 9 signal 3 } 
	{ m_axi_imageProjs_local_0_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_local_0_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_imageProjs_local_0_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_imageProjs_local_0_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_imageProjs_local_0_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_local_0_BUSER sc_in sc_lv 1 signal 3 } 
	{ imageProjs_local1 sc_in sc_lv 64 signal 4 } 
	{ m_axi_imageProjs_0_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_imageProjs_0_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_imageProjs_0_AWLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_imageProjs_0_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_imageProjs_0_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_imageProjs_0_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_imageProjs_0_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_imageProjs_0_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_imageProjs_0_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_imageProjs_0_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_imageProjs_0_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_imageProjs_0_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_WDATA sc_out sc_lv 64 signal 5 } 
	{ m_axi_imageProjs_0_WSTRB sc_out sc_lv 8 signal 5 } 
	{ m_axi_imageProjs_0_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_imageProjs_0_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_imageProjs_0_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_imageProjs_0_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_imageProjs_0_ARLEN sc_out sc_lv 32 signal 5 } 
	{ m_axi_imageProjs_0_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_imageProjs_0_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_imageProjs_0_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_imageProjs_0_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_imageProjs_0_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_imageProjs_0_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_imageProjs_0_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_imageProjs_0_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_imageProjs_0_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_RDATA sc_in sc_lv 64 signal 5 } 
	{ m_axi_imageProjs_0_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_imageProjs_0_RFIFONUM sc_in sc_lv 9 signal 5 } 
	{ m_axi_imageProjs_0_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_imageProjs_0_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_imageProjs_0_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_imageProjs_0_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_imageProjs_0_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_imageProjs_0_BUSER sc_in sc_lv 1 signal 5 } 
	{ imageProjs2 sc_in sc_lv 64 signal 6 } 
	{ m_axi_imageProjs_local_size_r_0_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWLEN sc_out sc_lv 32 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARLEN sc_out sc_lv 32 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_RFIFONUM sc_in sc_lv 9 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_imageProjs_local_size_r_0_BUSER sc_in sc_lv 1 signal 7 } 
	{ imageProjs_local_size3 sc_in sc_lv 64 signal 8 } 
	{ m_axi_fullImage_0_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_fullImage_0_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_fullImage_0_AWLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_fullImage_0_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_fullImage_0_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_fullImage_0_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_fullImage_0_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_fullImage_0_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_fullImage_0_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_fullImage_0_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_fullImage_0_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_fullImage_0_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_WDATA sc_out sc_lv 64 signal 9 } 
	{ m_axi_fullImage_0_WSTRB sc_out sc_lv 8 signal 9 } 
	{ m_axi_fullImage_0_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_fullImage_0_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_fullImage_0_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_fullImage_0_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_fullImage_0_ARLEN sc_out sc_lv 32 signal 9 } 
	{ m_axi_fullImage_0_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_fullImage_0_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_fullImage_0_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_fullImage_0_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_fullImage_0_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_fullImage_0_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_fullImage_0_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_fullImage_0_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_fullImage_0_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_RDATA sc_in sc_lv 64 signal 9 } 
	{ m_axi_fullImage_0_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_fullImage_0_RFIFONUM sc_in sc_lv 9 signal 9 } 
	{ m_axi_fullImage_0_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_fullImage_0_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_fullImage_0_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_fullImage_0_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_fullImage_0_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_fullImage_0_BUSER sc_in sc_lv 1 signal 9 } 
	{ fullImage4 sc_in sc_lv 64 signal 10 } 
	{ fullImage_rows sc_in sc_lv 32 signal 11 } 
	{ fullImage_cols sc_in sc_lv 32 signal 12 } 
	{ localImages_dout sc_in sc_lv 256 signal 13 } 
	{ localImages_empty_n sc_in sc_logic 1 signal 13 } 
	{ localImages_read sc_out sc_logic 1 signal 13 } 
	{ localImages_num_data_valid sc_in sc_lv 3 signal 13 } 
	{ localImages_fifo_cap sc_in sc_lv 3 signal 13 } 
	{ m_axi_emissions_0_AWVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_AWREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_AWADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_emissions_0_AWID sc_out sc_lv 1 signal 14 } 
	{ m_axi_emissions_0_AWLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_emissions_0_AWSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_emissions_0_AWBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_emissions_0_AWLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_emissions_0_AWCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_emissions_0_AWPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_emissions_0_AWQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_emissions_0_AWREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_emissions_0_AWUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_emissions_0_WVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_WREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_WDATA sc_out sc_lv 64 signal 14 } 
	{ m_axi_emissions_0_WSTRB sc_out sc_lv 8 signal 14 } 
	{ m_axi_emissions_0_WLAST sc_out sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_WID sc_out sc_lv 1 signal 14 } 
	{ m_axi_emissions_0_WUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_emissions_0_ARVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_ARREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_ARADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_emissions_0_ARID sc_out sc_lv 1 signal 14 } 
	{ m_axi_emissions_0_ARLEN sc_out sc_lv 32 signal 14 } 
	{ m_axi_emissions_0_ARSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_emissions_0_ARBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_emissions_0_ARLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_emissions_0_ARCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_emissions_0_ARPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_emissions_0_ARQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_emissions_0_ARREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_emissions_0_ARUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_emissions_0_RVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_RREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_RDATA sc_in sc_lv 64 signal 14 } 
	{ m_axi_emissions_0_RLAST sc_in sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_RID sc_in sc_lv 1 signal 14 } 
	{ m_axi_emissions_0_RFIFONUM sc_in sc_lv 9 signal 14 } 
	{ m_axi_emissions_0_RUSER sc_in sc_lv 1 signal 14 } 
	{ m_axi_emissions_0_RRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_emissions_0_BVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_BREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_emissions_0_BRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_emissions_0_BID sc_in sc_lv 1 signal 14 } 
	{ m_axi_emissions_0_BUSER sc_in sc_lv 1 signal 14 } 
	{ emissions5 sc_in sc_lv 64 signal 15 } 
	{ emission_cnt sc_out sc_lv 32 signal 16 } 
	{ emission_cnt_ap_vld sc_out sc_logic 1 outvld 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "atomLocationsSize", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "atomLocationsSize", "role": "default" }} , 
 	{ "name": "psfSupersample", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "psfSupersample", "role": "default" }} , 
 	{ "name": "imageProjectionSize", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjectionSize", "role": "default" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_imageProjs_local_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_imageProjs_local_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_imageProjs_local_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_imageProjs_local_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_WID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_imageProjs_local_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_imageProjs_local_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_imageProjs_local_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_RID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_imageProjs_local_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_imageProjs_local_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_imageProjs_local_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_BID" }} , 
 	{ "name": "m_axi_imageProjs_local_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "0_BUSER" }} , 
 	{ "name": "imageProjs_local1", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local1", "role": "default" }} , 
 	{ "name": "m_axi_imageProjs_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_imageProjs_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_imageProjs_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_imageProjs_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWID" }} , 
 	{ "name": "m_axi_imageProjs_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_imageProjs_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_imageProjs_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_imageProjs_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_imageProjs_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_imageProjs_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_imageProjs_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_imageProjs_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_imageProjs_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_imageProjs_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_imageProjs_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_imageProjs_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_imageProjs_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_imageProjs_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_imageProjs_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_WID" }} , 
 	{ "name": "m_axi_imageProjs_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_imageProjs_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_imageProjs_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_imageProjs_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_imageProjs_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARID" }} , 
 	{ "name": "m_axi_imageProjs_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_imageProjs_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_imageProjs_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_imageProjs_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_imageProjs_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_imageProjs_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_imageProjs_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_imageProjs_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_imageProjs_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_imageProjs_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_imageProjs_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_imageProjs_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_imageProjs_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_imageProjs_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_RID" }} , 
 	{ "name": "m_axi_imageProjs_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_imageProjs_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_imageProjs_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_imageProjs_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_imageProjs_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_imageProjs_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_imageProjs_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_BID" }} , 
 	{ "name": "m_axi_imageProjs_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "0_BUSER" }} , 
 	{ "name": "imageProjs2", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs2", "role": "default" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_WID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_RID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_BID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_r_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size_r", "role": "0_BUSER" }} , 
 	{ "name": "imageProjs_local_size3", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local_size3", "role": "default" }} , 
 	{ "name": "m_axi_fullImage_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_fullImage_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_fullImage_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_fullImage_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWID" }} , 
 	{ "name": "m_axi_fullImage_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_fullImage_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_fullImage_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_fullImage_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_fullImage_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_fullImage_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_fullImage_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_fullImage_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_fullImage_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_fullImage_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_fullImage_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_fullImage_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_fullImage_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fullImage", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_fullImage_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_fullImage_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_WID" }} , 
 	{ "name": "m_axi_fullImage_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_fullImage_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_fullImage_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_fullImage_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_fullImage_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARID" }} , 
 	{ "name": "m_axi_fullImage_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_fullImage_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_fullImage_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_fullImage_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_fullImage_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_fullImage_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_fullImage_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_fullImage_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_fullImage_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_fullImage_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_fullImage_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_fullImage_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_fullImage_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_fullImage_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_RID" }} , 
 	{ "name": "m_axi_fullImage_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "fullImage", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_fullImage_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_fullImage_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_fullImage_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_fullImage_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_fullImage_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_fullImage_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_BID" }} , 
 	{ "name": "m_axi_fullImage_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "0_BUSER" }} , 
 	{ "name": "fullImage4", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage4", "role": "default" }} , 
 	{ "name": "fullImage_rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fullImage_rows", "role": "default" }} , 
 	{ "name": "fullImage_cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fullImage_cols", "role": "default" }} , 
 	{ "name": "localImages_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "localImages", "role": "dout" }} , 
 	{ "name": "localImages_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localImages", "role": "empty_n" }} , 
 	{ "name": "localImages_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localImages", "role": "read" }} , 
 	{ "name": "localImages_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "localImages", "role": "num_data_valid" }} , 
 	{ "name": "localImages_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "localImages", "role": "fifo_cap" }} , 
 	{ "name": "m_axi_emissions_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_emissions_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_emissions_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_emissions_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWID" }} , 
 	{ "name": "m_axi_emissions_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_emissions_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_emissions_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_emissions_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_emissions_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_emissions_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_emissions_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_emissions_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_emissions_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_emissions_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_emissions_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_emissions_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emissions", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_emissions_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_emissions_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_emissions_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_WID" }} , 
 	{ "name": "m_axi_emissions_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_emissions_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_emissions_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_emissions_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_emissions_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARID" }} , 
 	{ "name": "m_axi_emissions_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_emissions_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_emissions_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_emissions_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_emissions_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_emissions_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_emissions_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_emissions_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_emissions_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_emissions_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_emissions_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_emissions_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emissions", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_emissions_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_emissions_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_RID" }} , 
 	{ "name": "m_axi_emissions_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "emissions", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_emissions_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_emissions_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_emissions_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_emissions_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_emissions_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_emissions_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_BID" }} , 
 	{ "name": "m_axi_emissions_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "0_BUSER" }} , 
 	{ "name": "emissions5", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emissions5", "role": "default" }} , 
 	{ "name": "emission_cnt", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "emission_cnt", "role": "default" }} , 
 	{ "name": "emission_cnt_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "emission_cnt", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "applyProjectors",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "psfSupersample", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjectionSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_local", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imageProjs_local_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "imageProjs_local_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "imageProjs_local1", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imageProjs_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "imageProjs_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "imageProjs2", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_local_size_r", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imageProjs_local_size_r_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "imageProjs_local_size_r_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "imageProjs_local_size3", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "fullImage_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "fullImage_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "fullImage4", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "localImages", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "localImages_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "emissions", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "emissions_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "emissions_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "emissions_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "emissions5", "Type" : "None", "Direction" : "I"},
			{"Name" : "emission_cnt", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_98_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "173", "FirstState" : "ap_ST_fsm_state59", "LastState" : ["ap_ST_fsm_state82"], "QuitState" : ["ap_ST_fsm_state82"], "PreState" : ["ap_ST_fsm_state58"], "PostState" : ["ap_ST_fsm_state83"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_91_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "173", "FirstState" : "ap_ST_fsm_state54", "LastState" : ["ap_ST_fsm_state84"], "QuitState" : ["ap_ST_fsm_state84"], "PreState" : ["ap_ST_fsm_state53"], "PostState" : ["ap_ST_fsm_state85"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_72_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "173", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state173"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U437", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_7_full_dsp_1_U438", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dmul_64ns_64ns_64_7_max_dsp_1_U439", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ddiv_64ns_64ns_64_59_no_dsp_1_U440", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dcmp_64ns_64ns_1_2_no_dsp_1_U441", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U442", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_61s_32s_61_5_1_U443", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_32ns_32s_32_36_1_U444", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.srem_32ns_32s_32_36_1_U445", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	applyProjectors {
		atomLocationsSize {Type I LastRead 0 FirstWrite -1}
		psfSupersample {Type I LastRead 0 FirstWrite -1}
		imageProjectionSize {Type I LastRead 0 FirstWrite -1}
		imageProjs_local {Type I LastRead 67 FirstWrite -1}
		imageProjs_local1 {Type I LastRead 0 FirstWrite -1}
		imageProjs {Type I LastRead 93 FirstWrite -1}
		imageProjs2 {Type I LastRead 0 FirstWrite -1}
		imageProjs_local_size_r {Type I LastRead 49 FirstWrite -1}
		imageProjs_local_size3 {Type I LastRead 0 FirstWrite -1}
		fullImage {Type I LastRead 67 FirstWrite -1}
		fullImage4 {Type I LastRead 0 FirstWrite -1}
		fullImage_rows {Type I LastRead 0 FirstWrite -1}
		fullImage_cols {Type I LastRead 0 FirstWrite -1}
		localImages {Type I LastRead 1 FirstWrite -1}
		emissions {Type O LastRead 161 FirstWrite 86}
		emissions5 {Type I LastRead 0 FirstWrite -1}
		emission_cnt {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	atomLocationsSize { ap_none {  { atomLocationsSize in_data 0 32 } } }
	psfSupersample { ap_none {  { psfSupersample in_data 0 32 } } }
	imageProjectionSize { ap_none {  { imageProjectionSize in_data 0 32 } } }
	 { m_axi {  { m_axi_imageProjs_local_0_AWVALID VALID 1 1 }  { m_axi_imageProjs_local_0_AWREADY READY 0 1 }  { m_axi_imageProjs_local_0_AWADDR ADDR 1 64 }  { m_axi_imageProjs_local_0_AWID ID 1 1 }  { m_axi_imageProjs_local_0_AWLEN SIZE 1 32 }  { m_axi_imageProjs_local_0_AWSIZE BURST 1 3 }  { m_axi_imageProjs_local_0_AWBURST LOCK 1 2 }  { m_axi_imageProjs_local_0_AWLOCK CACHE 1 2 }  { m_axi_imageProjs_local_0_AWCACHE PROT 1 4 }  { m_axi_imageProjs_local_0_AWPROT QOS 1 3 }  { m_axi_imageProjs_local_0_AWQOS REGION 1 4 }  { m_axi_imageProjs_local_0_AWREGION USER 1 4 }  { m_axi_imageProjs_local_0_AWUSER DATA 1 1 }  { m_axi_imageProjs_local_0_WVALID VALID 1 1 }  { m_axi_imageProjs_local_0_WREADY READY 0 1 }  { m_axi_imageProjs_local_0_WDATA FIFONUM 1 64 }  { m_axi_imageProjs_local_0_WSTRB STRB 1 8 }  { m_axi_imageProjs_local_0_WLAST LAST 1 1 }  { m_axi_imageProjs_local_0_WID ID 1 1 }  { m_axi_imageProjs_local_0_WUSER DATA 1 1 }  { m_axi_imageProjs_local_0_ARVALID VALID 1 1 }  { m_axi_imageProjs_local_0_ARREADY READY 0 1 }  { m_axi_imageProjs_local_0_ARADDR ADDR 1 64 }  { m_axi_imageProjs_local_0_ARID ID 1 1 }  { m_axi_imageProjs_local_0_ARLEN SIZE 1 32 }  { m_axi_imageProjs_local_0_ARSIZE BURST 1 3 }  { m_axi_imageProjs_local_0_ARBURST LOCK 1 2 }  { m_axi_imageProjs_local_0_ARLOCK CACHE 1 2 }  { m_axi_imageProjs_local_0_ARCACHE PROT 1 4 }  { m_axi_imageProjs_local_0_ARPROT QOS 1 3 }  { m_axi_imageProjs_local_0_ARQOS REGION 1 4 }  { m_axi_imageProjs_local_0_ARREGION USER 1 4 }  { m_axi_imageProjs_local_0_ARUSER DATA 1 1 }  { m_axi_imageProjs_local_0_RVALID VALID 0 1 }  { m_axi_imageProjs_local_0_RREADY READY 1 1 }  { m_axi_imageProjs_local_0_RDATA FIFONUM 0 64 }  { m_axi_imageProjs_local_0_RLAST LAST 0 1 }  { m_axi_imageProjs_local_0_RID ID 0 1 }  { m_axi_imageProjs_local_0_RFIFONUM LEN 0 9 }  { m_axi_imageProjs_local_0_RUSER DATA 0 1 }  { m_axi_imageProjs_local_0_RRESP RESP 0 2 }  { m_axi_imageProjs_local_0_BVALID VALID 0 1 }  { m_axi_imageProjs_local_0_BREADY READY 1 1 }  { m_axi_imageProjs_local_0_BRESP RESP 0 2 }  { m_axi_imageProjs_local_0_BID ID 0 1 }  { m_axi_imageProjs_local_0_BUSER DATA 0 1 } } }
	imageProjs_local1 { ap_none {  { imageProjs_local1 in_data 0 64 } } }
	 { m_axi {  { m_axi_imageProjs_0_AWVALID VALID 1 1 }  { m_axi_imageProjs_0_AWREADY READY 0 1 }  { m_axi_imageProjs_0_AWADDR ADDR 1 64 }  { m_axi_imageProjs_0_AWID ID 1 1 }  { m_axi_imageProjs_0_AWLEN SIZE 1 32 }  { m_axi_imageProjs_0_AWSIZE BURST 1 3 }  { m_axi_imageProjs_0_AWBURST LOCK 1 2 }  { m_axi_imageProjs_0_AWLOCK CACHE 1 2 }  { m_axi_imageProjs_0_AWCACHE PROT 1 4 }  { m_axi_imageProjs_0_AWPROT QOS 1 3 }  { m_axi_imageProjs_0_AWQOS REGION 1 4 }  { m_axi_imageProjs_0_AWREGION USER 1 4 }  { m_axi_imageProjs_0_AWUSER DATA 1 1 }  { m_axi_imageProjs_0_WVALID VALID 1 1 }  { m_axi_imageProjs_0_WREADY READY 0 1 }  { m_axi_imageProjs_0_WDATA FIFONUM 1 64 }  { m_axi_imageProjs_0_WSTRB STRB 1 8 }  { m_axi_imageProjs_0_WLAST LAST 1 1 }  { m_axi_imageProjs_0_WID ID 1 1 }  { m_axi_imageProjs_0_WUSER DATA 1 1 }  { m_axi_imageProjs_0_ARVALID VALID 1 1 }  { m_axi_imageProjs_0_ARREADY READY 0 1 }  { m_axi_imageProjs_0_ARADDR ADDR 1 64 }  { m_axi_imageProjs_0_ARID ID 1 1 }  { m_axi_imageProjs_0_ARLEN SIZE 1 32 }  { m_axi_imageProjs_0_ARSIZE BURST 1 3 }  { m_axi_imageProjs_0_ARBURST LOCK 1 2 }  { m_axi_imageProjs_0_ARLOCK CACHE 1 2 }  { m_axi_imageProjs_0_ARCACHE PROT 1 4 }  { m_axi_imageProjs_0_ARPROT QOS 1 3 }  { m_axi_imageProjs_0_ARQOS REGION 1 4 }  { m_axi_imageProjs_0_ARREGION USER 1 4 }  { m_axi_imageProjs_0_ARUSER DATA 1 1 }  { m_axi_imageProjs_0_RVALID VALID 0 1 }  { m_axi_imageProjs_0_RREADY READY 1 1 }  { m_axi_imageProjs_0_RDATA FIFONUM 0 64 }  { m_axi_imageProjs_0_RLAST LAST 0 1 }  { m_axi_imageProjs_0_RID ID 0 1 }  { m_axi_imageProjs_0_RFIFONUM LEN 0 9 }  { m_axi_imageProjs_0_RUSER DATA 0 1 }  { m_axi_imageProjs_0_RRESP RESP 0 2 }  { m_axi_imageProjs_0_BVALID VALID 0 1 }  { m_axi_imageProjs_0_BREADY READY 1 1 }  { m_axi_imageProjs_0_BRESP RESP 0 2 }  { m_axi_imageProjs_0_BID ID 0 1 }  { m_axi_imageProjs_0_BUSER DATA 0 1 } } }
	imageProjs2 { ap_none {  { imageProjs2 in_data 0 64 } } }
	 { m_axi {  { m_axi_imageProjs_local_size_r_0_AWVALID VALID 1 1 }  { m_axi_imageProjs_local_size_r_0_AWREADY READY 0 1 }  { m_axi_imageProjs_local_size_r_0_AWADDR ADDR 1 64 }  { m_axi_imageProjs_local_size_r_0_AWID ID 1 1 }  { m_axi_imageProjs_local_size_r_0_AWLEN SIZE 1 32 }  { m_axi_imageProjs_local_size_r_0_AWSIZE BURST 1 3 }  { m_axi_imageProjs_local_size_r_0_AWBURST LOCK 1 2 }  { m_axi_imageProjs_local_size_r_0_AWLOCK CACHE 1 2 }  { m_axi_imageProjs_local_size_r_0_AWCACHE PROT 1 4 }  { m_axi_imageProjs_local_size_r_0_AWPROT QOS 1 3 }  { m_axi_imageProjs_local_size_r_0_AWQOS REGION 1 4 }  { m_axi_imageProjs_local_size_r_0_AWREGION USER 1 4 }  { m_axi_imageProjs_local_size_r_0_AWUSER DATA 1 1 }  { m_axi_imageProjs_local_size_r_0_WVALID VALID 1 1 }  { m_axi_imageProjs_local_size_r_0_WREADY READY 0 1 }  { m_axi_imageProjs_local_size_r_0_WDATA FIFONUM 1 32 }  { m_axi_imageProjs_local_size_r_0_WSTRB STRB 1 4 }  { m_axi_imageProjs_local_size_r_0_WLAST LAST 1 1 }  { m_axi_imageProjs_local_size_r_0_WID ID 1 1 }  { m_axi_imageProjs_local_size_r_0_WUSER DATA 1 1 }  { m_axi_imageProjs_local_size_r_0_ARVALID VALID 1 1 }  { m_axi_imageProjs_local_size_r_0_ARREADY READY 0 1 }  { m_axi_imageProjs_local_size_r_0_ARADDR ADDR 1 64 }  { m_axi_imageProjs_local_size_r_0_ARID ID 1 1 }  { m_axi_imageProjs_local_size_r_0_ARLEN SIZE 1 32 }  { m_axi_imageProjs_local_size_r_0_ARSIZE BURST 1 3 }  { m_axi_imageProjs_local_size_r_0_ARBURST LOCK 1 2 }  { m_axi_imageProjs_local_size_r_0_ARLOCK CACHE 1 2 }  { m_axi_imageProjs_local_size_r_0_ARCACHE PROT 1 4 }  { m_axi_imageProjs_local_size_r_0_ARPROT QOS 1 3 }  { m_axi_imageProjs_local_size_r_0_ARQOS REGION 1 4 }  { m_axi_imageProjs_local_size_r_0_ARREGION USER 1 4 }  { m_axi_imageProjs_local_size_r_0_ARUSER DATA 1 1 }  { m_axi_imageProjs_local_size_r_0_RVALID VALID 0 1 }  { m_axi_imageProjs_local_size_r_0_RREADY READY 1 1 }  { m_axi_imageProjs_local_size_r_0_RDATA FIFONUM 0 32 }  { m_axi_imageProjs_local_size_r_0_RLAST LAST 0 1 }  { m_axi_imageProjs_local_size_r_0_RID ID 0 1 }  { m_axi_imageProjs_local_size_r_0_RFIFONUM LEN 0 9 }  { m_axi_imageProjs_local_size_r_0_RUSER DATA 0 1 }  { m_axi_imageProjs_local_size_r_0_RRESP RESP 0 2 }  { m_axi_imageProjs_local_size_r_0_BVALID VALID 0 1 }  { m_axi_imageProjs_local_size_r_0_BREADY READY 1 1 }  { m_axi_imageProjs_local_size_r_0_BRESP RESP 0 2 }  { m_axi_imageProjs_local_size_r_0_BID ID 0 1 }  { m_axi_imageProjs_local_size_r_0_BUSER DATA 0 1 } } }
	imageProjs_local_size3 { ap_none {  { imageProjs_local_size3 in_data 0 64 } } }
	 { m_axi {  { m_axi_fullImage_0_AWVALID VALID 1 1 }  { m_axi_fullImage_0_AWREADY READY 0 1 }  { m_axi_fullImage_0_AWADDR ADDR 1 64 }  { m_axi_fullImage_0_AWID ID 1 1 }  { m_axi_fullImage_0_AWLEN SIZE 1 32 }  { m_axi_fullImage_0_AWSIZE BURST 1 3 }  { m_axi_fullImage_0_AWBURST LOCK 1 2 }  { m_axi_fullImage_0_AWLOCK CACHE 1 2 }  { m_axi_fullImage_0_AWCACHE PROT 1 4 }  { m_axi_fullImage_0_AWPROT QOS 1 3 }  { m_axi_fullImage_0_AWQOS REGION 1 4 }  { m_axi_fullImage_0_AWREGION USER 1 4 }  { m_axi_fullImage_0_AWUSER DATA 1 1 }  { m_axi_fullImage_0_WVALID VALID 1 1 }  { m_axi_fullImage_0_WREADY READY 0 1 }  { m_axi_fullImage_0_WDATA FIFONUM 1 64 }  { m_axi_fullImage_0_WSTRB STRB 1 8 }  { m_axi_fullImage_0_WLAST LAST 1 1 }  { m_axi_fullImage_0_WID ID 1 1 }  { m_axi_fullImage_0_WUSER DATA 1 1 }  { m_axi_fullImage_0_ARVALID VALID 1 1 }  { m_axi_fullImage_0_ARREADY READY 0 1 }  { m_axi_fullImage_0_ARADDR ADDR 1 64 }  { m_axi_fullImage_0_ARID ID 1 1 }  { m_axi_fullImage_0_ARLEN SIZE 1 32 }  { m_axi_fullImage_0_ARSIZE BURST 1 3 }  { m_axi_fullImage_0_ARBURST LOCK 1 2 }  { m_axi_fullImage_0_ARLOCK CACHE 1 2 }  { m_axi_fullImage_0_ARCACHE PROT 1 4 }  { m_axi_fullImage_0_ARPROT QOS 1 3 }  { m_axi_fullImage_0_ARQOS REGION 1 4 }  { m_axi_fullImage_0_ARREGION USER 1 4 }  { m_axi_fullImage_0_ARUSER DATA 1 1 }  { m_axi_fullImage_0_RVALID VALID 0 1 }  { m_axi_fullImage_0_RREADY READY 1 1 }  { m_axi_fullImage_0_RDATA FIFONUM 0 64 }  { m_axi_fullImage_0_RLAST LAST 0 1 }  { m_axi_fullImage_0_RID ID 0 1 }  { m_axi_fullImage_0_RFIFONUM LEN 0 9 }  { m_axi_fullImage_0_RUSER DATA 0 1 }  { m_axi_fullImage_0_RRESP RESP 0 2 }  { m_axi_fullImage_0_BVALID VALID 0 1 }  { m_axi_fullImage_0_BREADY READY 1 1 }  { m_axi_fullImage_0_BRESP RESP 0 2 }  { m_axi_fullImage_0_BID ID 0 1 }  { m_axi_fullImage_0_BUSER DATA 0 1 } } }
	fullImage4 { ap_none {  { fullImage4 in_data 0 64 } } }
	fullImage_rows { ap_none {  { fullImage_rows in_data 0 32 } } }
	fullImage_cols { ap_none {  { fullImage_cols in_data 0 32 } } }
	localImages { ap_fifo {  { localImages_dout fifo_data_in 0 256 }  { localImages_empty_n fifo_status 0 1 }  { localImages_read fifo_port_we 1 1 }  { localImages_num_data_valid fifo_status_num_data_valid 0 3 }  { localImages_fifo_cap fifo_update 0 3 } } }
	 { m_axi {  { m_axi_emissions_0_AWVALID VALID 1 1 }  { m_axi_emissions_0_AWREADY READY 0 1 }  { m_axi_emissions_0_AWADDR ADDR 1 64 }  { m_axi_emissions_0_AWID ID 1 1 }  { m_axi_emissions_0_AWLEN SIZE 1 32 }  { m_axi_emissions_0_AWSIZE BURST 1 3 }  { m_axi_emissions_0_AWBURST LOCK 1 2 }  { m_axi_emissions_0_AWLOCK CACHE 1 2 }  { m_axi_emissions_0_AWCACHE PROT 1 4 }  { m_axi_emissions_0_AWPROT QOS 1 3 }  { m_axi_emissions_0_AWQOS REGION 1 4 }  { m_axi_emissions_0_AWREGION USER 1 4 }  { m_axi_emissions_0_AWUSER DATA 1 1 }  { m_axi_emissions_0_WVALID VALID 1 1 }  { m_axi_emissions_0_WREADY READY 0 1 }  { m_axi_emissions_0_WDATA FIFONUM 1 64 }  { m_axi_emissions_0_WSTRB STRB 1 8 }  { m_axi_emissions_0_WLAST LAST 1 1 }  { m_axi_emissions_0_WID ID 1 1 }  { m_axi_emissions_0_WUSER DATA 1 1 }  { m_axi_emissions_0_ARVALID VALID 1 1 }  { m_axi_emissions_0_ARREADY READY 0 1 }  { m_axi_emissions_0_ARADDR ADDR 1 64 }  { m_axi_emissions_0_ARID ID 1 1 }  { m_axi_emissions_0_ARLEN SIZE 1 32 }  { m_axi_emissions_0_ARSIZE BURST 1 3 }  { m_axi_emissions_0_ARBURST LOCK 1 2 }  { m_axi_emissions_0_ARLOCK CACHE 1 2 }  { m_axi_emissions_0_ARCACHE PROT 1 4 }  { m_axi_emissions_0_ARPROT QOS 1 3 }  { m_axi_emissions_0_ARQOS REGION 1 4 }  { m_axi_emissions_0_ARREGION USER 1 4 }  { m_axi_emissions_0_ARUSER DATA 1 1 }  { m_axi_emissions_0_RVALID VALID 0 1 }  { m_axi_emissions_0_RREADY READY 1 1 }  { m_axi_emissions_0_RDATA FIFONUM 0 64 }  { m_axi_emissions_0_RLAST LAST 0 1 }  { m_axi_emissions_0_RID ID 0 1 }  { m_axi_emissions_0_RFIFONUM LEN 0 9 }  { m_axi_emissions_0_RUSER DATA 0 1 }  { m_axi_emissions_0_RRESP RESP 0 2 }  { m_axi_emissions_0_BVALID VALID 0 1 }  { m_axi_emissions_0_BREADY READY 1 1 }  { m_axi_emissions_0_BRESP RESP 0 2 }  { m_axi_emissions_0_BID ID 0 1 }  { m_axi_emissions_0_BUSER DATA 0 1 } } }
	emissions5 { ap_none {  { emissions5 in_data 0 64 } } }
	emission_cnt { ap_vld {  { emission_cnt out_data 1 32 }  { emission_cnt_ap_vld out_vld 1 1 } } }
}
