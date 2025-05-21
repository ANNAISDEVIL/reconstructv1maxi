set moduleName reconstruct
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
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
set C_modelName {reconstruct}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict atomLocations { MEM_WIDTH 128 MEM_SIZE 1600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ imageProjs_local int 64 regular {axi_master 0}  }
	{ imageProjs int 64 regular {axi_master 0}  }
	{ imageProjs_local_size int 32 regular {axi_master 0}  }
	{ fullImage int 64 regular {axi_master 0}  }
	{ emissions int 64 regular {axi_master 1}  }
	{ atomLocationsSize int 32 regular {axi_slave 0}  }
	{ projShape0 int 32 regular {axi_slave 0}  }
	{ projShape1 int 32 regular {axi_slave 0}  }
	{ atomLocations int 128 regular {array 100 { 1 3 } 1 1 }  }
	{ psfSupersample int 32 regular {axi_slave 0}  }
	{ imageProjectionSize int 32 regular {axi_slave 0}  }
	{ imageProjs_local_offset int 64 regular {axi_slave 0}  }
	{ imageProjs_offset int 64 regular {axi_slave 0}  }
	{ imageProjs_local_size_offset int 64 regular {axi_slave 0}  }
	{ fullImage_offset int 64 regular {axi_slave 0}  }
	{ fullImage_rows int 32 regular {axi_slave 0}  }
	{ fullImage_cols int 32 regular {axi_slave 0}  }
	{ emissions_offset int 64 regular {axi_slave 0}  }
	{ emission_cnt int 32 regular {axi_slave 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "imageProjs_local", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs_local_offset","offset": { "type": "dynamic","port_name": "imageProjs_local_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "imageProjs", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs_offset","offset": { "type": "dynamic","port_name": "imageProjs_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "imageProjs_local_size", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "imageProjs_local_size_offset","offset": { "type": "dynamic","port_name": "imageProjs_local_size_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "fullImage", "interface" : "axi_master", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "fullImage_offset","offset": { "type": "dynamic","port_name": "fullImage_offset"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "emissions", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "emissions_offset","offset": { "type": "dynamic","port_name": "emissions_offset"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "atomLocationsSize", "interface" : "axi_slave", "bundle":"scalar_data","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "projShape0", "interface" : "axi_slave", "bundle":"scalar_data","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "projShape1", "interface" : "axi_slave", "bundle":"scalar_data","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "atomLocations", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "psfSupersample", "interface" : "axi_slave", "bundle":"scalar_data","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":47}} , 
 	{ "Name" : "imageProjectionSize", "interface" : "axi_slave", "bundle":"scalar_data","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "imageProjs_local_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "imageProjs_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "imageProjs_local_size_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "fullImage_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "fullImage_rows", "interface" : "axi_slave", "bundle":"scalar_data","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":56}, "offset_end" : {"in":63}} , 
 	{ "Name" : "fullImage_cols", "interface" : "axi_slave", "bundle":"scalar_data","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":71}} , 
 	{ "Name" : "emissions_offset", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "emission_cnt", "interface" : "axi_slave", "bundle":"scalar_data","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":72}, "offset_end" : {"out":79}} ]}
# RTL Port declarations: 
set portNum 272
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_scalar_data_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_scalar_data_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_scalar_data_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_scalar_data_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_scalar_data_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_scalar_data_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_scalar_data_BRESP sc_out sc_lv 2 signal -1 } 
	{ m_axi_emissions_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_emissions_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_emissions_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_emissions_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_emissions_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_emissions_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_emissions_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_emissions_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_emissions_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_emissions_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_emissions_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_emissions_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_emissions_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_emissions_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_emissions_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_emissions_WDATA sc_out sc_lv 64 signal 4 } 
	{ m_axi_emissions_WSTRB sc_out sc_lv 8 signal 4 } 
	{ m_axi_emissions_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_emissions_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_emissions_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_emissions_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_emissions_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_emissions_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_emissions_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_emissions_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_emissions_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_emissions_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_emissions_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_emissions_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_emissions_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_emissions_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_emissions_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_emissions_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_emissions_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_emissions_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_emissions_RDATA sc_in sc_lv 64 signal 4 } 
	{ m_axi_emissions_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_emissions_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_emissions_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_emissions_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_emissions_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_emissions_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_emissions_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_emissions_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_emissions_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_fullImage_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_fullImage_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_fullImage_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_fullImage_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_fullImage_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_fullImage_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_fullImage_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_fullImage_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_fullImage_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_fullImage_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_fullImage_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_fullImage_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_fullImage_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_fullImage_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_fullImage_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_fullImage_WDATA sc_out sc_lv 64 signal 3 } 
	{ m_axi_fullImage_WSTRB sc_out sc_lv 8 signal 3 } 
	{ m_axi_fullImage_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_fullImage_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_fullImage_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_fullImage_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_fullImage_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_fullImage_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_fullImage_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_fullImage_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_fullImage_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_fullImage_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_fullImage_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_fullImage_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_fullImage_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_fullImage_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_fullImage_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_fullImage_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_fullImage_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_fullImage_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_fullImage_RDATA sc_in sc_lv 64 signal 3 } 
	{ m_axi_fullImage_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_fullImage_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_fullImage_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_fullImage_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_fullImage_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_fullImage_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_fullImage_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_fullImage_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_fullImage_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_imageProjs_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_imageProjs_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_imageProjs_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_imageProjs_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_imageProjs_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_imageProjs_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_imageProjs_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_imageProjs_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_imageProjs_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_imageProjs_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_WDATA sc_out sc_lv 64 signal 1 } 
	{ m_axi_imageProjs_WSTRB sc_out sc_lv 8 signal 1 } 
	{ m_axi_imageProjs_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_imageProjs_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_imageProjs_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_imageProjs_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_imageProjs_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_imageProjs_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_imageProjs_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_imageProjs_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_imageProjs_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_imageProjs_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_RDATA sc_in sc_lv 64 signal 1 } 
	{ m_axi_imageProjs_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_imageProjs_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_imageProjs_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_imageProjs_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_imageProjs_local_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_imageProjs_local_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_imageProjs_local_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_imageProjs_local_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_imageProjs_local_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_imageProjs_local_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_imageProjs_local_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_imageProjs_local_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_imageProjs_local_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_imageProjs_local_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_imageProjs_local_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_imageProjs_local_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_imageProjs_local_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_imageProjs_local_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_imageProjs_local_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_imageProjs_local_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_imageProjs_local_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_imageProjs_local_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_imageProjs_local_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_imageProjs_local_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_imageProjs_local_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_imageProjs_local_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_imageProjs_local_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_imageProjs_local_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_imageProjs_local_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_imageProjs_local_size_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_imageProjs_local_size_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_imageProjs_local_size_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_imageProjs_local_size_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_imageProjs_local_size_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_imageProjs_local_size_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_imageProjs_local_size_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_imageProjs_local_size_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_imageProjs_local_size_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_imageProjs_local_size_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_imageProjs_local_size_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_imageProjs_local_size_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_imageProjs_local_size_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_imageProjs_local_size_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_imageProjs_local_size_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_imageProjs_local_size_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_imageProjs_local_size_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_imageProjs_local_size_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_imageProjs_local_size_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_imageProjs_local_size_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_imageProjs_local_size_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_imageProjs_local_size_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_imageProjs_local_size_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_imageProjs_local_size_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_imageProjs_local_size_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_imageProjs_local_size_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_imageProjs_local_size_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_imageProjs_local_size_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_imageProjs_local_size_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_imageProjs_local_size_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_imageProjs_local_size_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_imageProjs_local_size_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_imageProjs_local_size_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_imageProjs_local_size_BUSER sc_in sc_lv 1 signal 2 } 
	{ atomLocations_address0 sc_out sc_lv 7 signal 8 } 
	{ atomLocations_ce0 sc_out sc_logic 1 signal 8 } 
	{ atomLocations_d0 sc_out sc_lv 128 signal 8 } 
	{ atomLocations_q0 sc_in sc_lv 128 signal 8 } 
	{ atomLocations_we0 sc_out sc_logic 1 signal 8 } 
	{ atomLocations_address1 sc_out sc_lv 7 signal 8 } 
	{ atomLocations_ce1 sc_out sc_logic 1 signal 8 } 
	{ atomLocations_d1 sc_out sc_lv 128 signal 8 } 
	{ atomLocations_q1 sc_in sc_lv 128 signal 8 } 
	{ atomLocations_we1 sc_out sc_logic 1 signal 8 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"reconstruct","role":"start","value":"0","valid_bit":"0"},{"name":"reconstruct","role":"continue","value":"0","valid_bit":"4"},{"name":"reconstruct","role":"auto_start","value":"0","valid_bit":"7"},{"name":"imageProjs_local_offset","role":"data","value":"16"},{"name":"imageProjs_offset","role":"data","value":"28"},{"name":"imageProjs_local_size_offset","role":"data","value":"40"},{"name":"fullImage_offset","role":"data","value":"52"},{"name":"emissions_offset","role":"data","value":"64"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"reconstruct","role":"start","value":"0","valid_bit":"0"},{"name":"reconstruct","role":"done","value":"0","valid_bit":"1"},{"name":"reconstruct","role":"idle","value":"0","valid_bit":"2"},{"name":"reconstruct","role":"ready","value":"0","valid_bit":"3"},{"name":"reconstruct","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } },
	{ "name": "s_axi_scalar_data_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scalar_data", "role": "AWADDR" },"address":[{"name":"atomLocationsSize","role":"data","value":"16"},{"name":"projShape0","role":"data","value":"24"},{"name":"projShape1","role":"data","value":"32"},{"name":"psfSupersample","role":"data","value":"40"},{"name":"imageProjectionSize","role":"data","value":"48"},{"name":"fullImage_rows","role":"data","value":"56"},{"name":"fullImage_cols","role":"data","value":"64"}] },
	{ "name": "s_axi_scalar_data_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "AWVALID" } },
	{ "name": "s_axi_scalar_data_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "AWREADY" } },
	{ "name": "s_axi_scalar_data_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "WVALID" } },
	{ "name": "s_axi_scalar_data_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "WREADY" } },
	{ "name": "s_axi_scalar_data_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scalar_data", "role": "WDATA" } },
	{ "name": "s_axi_scalar_data_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "scalar_data", "role": "WSTRB" } },
	{ "name": "s_axi_scalar_data_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "scalar_data", "role": "ARADDR" },"address":[{"name":"emission_cnt","role":"data","value":"72"}, {"name":"emission_cnt","role":"valid","value":"76","valid_bit":"0"}] },
	{ "name": "s_axi_scalar_data_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "ARVALID" } },
	{ "name": "s_axi_scalar_data_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "ARREADY" } },
	{ "name": "s_axi_scalar_data_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "RVALID" } },
	{ "name": "s_axi_scalar_data_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "RREADY" } },
	{ "name": "s_axi_scalar_data_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "scalar_data", "role": "RDATA" } },
	{ "name": "s_axi_scalar_data_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scalar_data", "role": "RRESP" } },
	{ "name": "s_axi_scalar_data_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "BVALID" } },
	{ "name": "s_axi_scalar_data_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "scalar_data", "role": "BREADY" } },
	{ "name": "s_axi_scalar_data_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "scalar_data", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_emissions_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "AWVALID" }} , 
 	{ "name": "m_axi_emissions_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "AWREADY" }} , 
 	{ "name": "m_axi_emissions_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emissions", "role": "AWADDR" }} , 
 	{ "name": "m_axi_emissions_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "AWID" }} , 
 	{ "name": "m_axi_emissions_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions", "role": "AWLEN" }} , 
 	{ "name": "m_axi_emissions_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "emissions", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_emissions_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "AWBURST" }} , 
 	{ "name": "m_axi_emissions_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_emissions_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_emissions_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "emissions", "role": "AWPROT" }} , 
 	{ "name": "m_axi_emissions_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "AWQOS" }} , 
 	{ "name": "m_axi_emissions_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "AWREGION" }} , 
 	{ "name": "m_axi_emissions_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "AWUSER" }} , 
 	{ "name": "m_axi_emissions_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "WVALID" }} , 
 	{ "name": "m_axi_emissions_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "WREADY" }} , 
 	{ "name": "m_axi_emissions_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emissions", "role": "WDATA" }} , 
 	{ "name": "m_axi_emissions_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions", "role": "WSTRB" }} , 
 	{ "name": "m_axi_emissions_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "WLAST" }} , 
 	{ "name": "m_axi_emissions_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "WID" }} , 
 	{ "name": "m_axi_emissions_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "WUSER" }} , 
 	{ "name": "m_axi_emissions_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "ARVALID" }} , 
 	{ "name": "m_axi_emissions_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "ARREADY" }} , 
 	{ "name": "m_axi_emissions_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emissions", "role": "ARADDR" }} , 
 	{ "name": "m_axi_emissions_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "ARID" }} , 
 	{ "name": "m_axi_emissions_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "emissions", "role": "ARLEN" }} , 
 	{ "name": "m_axi_emissions_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "emissions", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_emissions_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "ARBURST" }} , 
 	{ "name": "m_axi_emissions_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_emissions_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_emissions_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "emissions", "role": "ARPROT" }} , 
 	{ "name": "m_axi_emissions_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "ARQOS" }} , 
 	{ "name": "m_axi_emissions_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "emissions", "role": "ARREGION" }} , 
 	{ "name": "m_axi_emissions_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "ARUSER" }} , 
 	{ "name": "m_axi_emissions_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "RVALID" }} , 
 	{ "name": "m_axi_emissions_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "RREADY" }} , 
 	{ "name": "m_axi_emissions_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "emissions", "role": "RDATA" }} , 
 	{ "name": "m_axi_emissions_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "RLAST" }} , 
 	{ "name": "m_axi_emissions_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "RID" }} , 
 	{ "name": "m_axi_emissions_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "RUSER" }} , 
 	{ "name": "m_axi_emissions_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "RRESP" }} , 
 	{ "name": "m_axi_emissions_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "BVALID" }} , 
 	{ "name": "m_axi_emissions_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "BREADY" }} , 
 	{ "name": "m_axi_emissions_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "emissions", "role": "BRESP" }} , 
 	{ "name": "m_axi_emissions_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "BID" }} , 
 	{ "name": "m_axi_emissions_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "emissions", "role": "BUSER" }} , 
 	{ "name": "m_axi_fullImage_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "AWVALID" }} , 
 	{ "name": "m_axi_fullImage_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "AWREADY" }} , 
 	{ "name": "m_axi_fullImage_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage", "role": "AWADDR" }} , 
 	{ "name": "m_axi_fullImage_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "AWID" }} , 
 	{ "name": "m_axi_fullImage_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fullImage", "role": "AWLEN" }} , 
 	{ "name": "m_axi_fullImage_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fullImage", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_fullImage_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "AWBURST" }} , 
 	{ "name": "m_axi_fullImage_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_fullImage_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_fullImage_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fullImage", "role": "AWPROT" }} , 
 	{ "name": "m_axi_fullImage_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "AWQOS" }} , 
 	{ "name": "m_axi_fullImage_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "AWREGION" }} , 
 	{ "name": "m_axi_fullImage_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "AWUSER" }} , 
 	{ "name": "m_axi_fullImage_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "WVALID" }} , 
 	{ "name": "m_axi_fullImage_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "WREADY" }} , 
 	{ "name": "m_axi_fullImage_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage", "role": "WDATA" }} , 
 	{ "name": "m_axi_fullImage_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fullImage", "role": "WSTRB" }} , 
 	{ "name": "m_axi_fullImage_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "WLAST" }} , 
 	{ "name": "m_axi_fullImage_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "WID" }} , 
 	{ "name": "m_axi_fullImage_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "WUSER" }} , 
 	{ "name": "m_axi_fullImage_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "ARVALID" }} , 
 	{ "name": "m_axi_fullImage_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "ARREADY" }} , 
 	{ "name": "m_axi_fullImage_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage", "role": "ARADDR" }} , 
 	{ "name": "m_axi_fullImage_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "ARID" }} , 
 	{ "name": "m_axi_fullImage_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "fullImage", "role": "ARLEN" }} , 
 	{ "name": "m_axi_fullImage_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fullImage", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_fullImage_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "ARBURST" }} , 
 	{ "name": "m_axi_fullImage_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_fullImage_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_fullImage_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "fullImage", "role": "ARPROT" }} , 
 	{ "name": "m_axi_fullImage_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "ARQOS" }} , 
 	{ "name": "m_axi_fullImage_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fullImage", "role": "ARREGION" }} , 
 	{ "name": "m_axi_fullImage_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "ARUSER" }} , 
 	{ "name": "m_axi_fullImage_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "RVALID" }} , 
 	{ "name": "m_axi_fullImage_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "RREADY" }} , 
 	{ "name": "m_axi_fullImage_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "fullImage", "role": "RDATA" }} , 
 	{ "name": "m_axi_fullImage_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "RLAST" }} , 
 	{ "name": "m_axi_fullImage_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "RID" }} , 
 	{ "name": "m_axi_fullImage_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "RUSER" }} , 
 	{ "name": "m_axi_fullImage_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "RRESP" }} , 
 	{ "name": "m_axi_fullImage_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "BVALID" }} , 
 	{ "name": "m_axi_fullImage_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "BREADY" }} , 
 	{ "name": "m_axi_fullImage_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "fullImage", "role": "BRESP" }} , 
 	{ "name": "m_axi_fullImage_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "BID" }} , 
 	{ "name": "m_axi_fullImage_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "fullImage", "role": "BUSER" }} , 
 	{ "name": "m_axi_imageProjs_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWVALID" }} , 
 	{ "name": "m_axi_imageProjs_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWREADY" }} , 
 	{ "name": "m_axi_imageProjs_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWADDR" }} , 
 	{ "name": "m_axi_imageProjs_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWID" }} , 
 	{ "name": "m_axi_imageProjs_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWLEN" }} , 
 	{ "name": "m_axi_imageProjs_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_imageProjs_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWBURST" }} , 
 	{ "name": "m_axi_imageProjs_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_imageProjs_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_imageProjs_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWPROT" }} , 
 	{ "name": "m_axi_imageProjs_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWQOS" }} , 
 	{ "name": "m_axi_imageProjs_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWREGION" }} , 
 	{ "name": "m_axi_imageProjs_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "AWUSER" }} , 
 	{ "name": "m_axi_imageProjs_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "WVALID" }} , 
 	{ "name": "m_axi_imageProjs_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "WREADY" }} , 
 	{ "name": "m_axi_imageProjs_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs", "role": "WDATA" }} , 
 	{ "name": "m_axi_imageProjs_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs", "role": "WSTRB" }} , 
 	{ "name": "m_axi_imageProjs_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "WLAST" }} , 
 	{ "name": "m_axi_imageProjs_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "WID" }} , 
 	{ "name": "m_axi_imageProjs_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "WUSER" }} , 
 	{ "name": "m_axi_imageProjs_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARVALID" }} , 
 	{ "name": "m_axi_imageProjs_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARREADY" }} , 
 	{ "name": "m_axi_imageProjs_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARADDR" }} , 
 	{ "name": "m_axi_imageProjs_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARID" }} , 
 	{ "name": "m_axi_imageProjs_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARLEN" }} , 
 	{ "name": "m_axi_imageProjs_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_imageProjs_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARBURST" }} , 
 	{ "name": "m_axi_imageProjs_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_imageProjs_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_imageProjs_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARPROT" }} , 
 	{ "name": "m_axi_imageProjs_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARQOS" }} , 
 	{ "name": "m_axi_imageProjs_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARREGION" }} , 
 	{ "name": "m_axi_imageProjs_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "ARUSER" }} , 
 	{ "name": "m_axi_imageProjs_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "RVALID" }} , 
 	{ "name": "m_axi_imageProjs_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "RREADY" }} , 
 	{ "name": "m_axi_imageProjs_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs", "role": "RDATA" }} , 
 	{ "name": "m_axi_imageProjs_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "RLAST" }} , 
 	{ "name": "m_axi_imageProjs_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "RID" }} , 
 	{ "name": "m_axi_imageProjs_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "RUSER" }} , 
 	{ "name": "m_axi_imageProjs_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "RRESP" }} , 
 	{ "name": "m_axi_imageProjs_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "BVALID" }} , 
 	{ "name": "m_axi_imageProjs_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "BREADY" }} , 
 	{ "name": "m_axi_imageProjs_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs", "role": "BRESP" }} , 
 	{ "name": "m_axi_imageProjs_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "BID" }} , 
 	{ "name": "m_axi_imageProjs_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs", "role": "BUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWADDR" }} , 
 	{ "name": "m_axi_imageProjs_local_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWID" }} , 
 	{ "name": "m_axi_imageProjs_local_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWLEN" }} , 
 	{ "name": "m_axi_imageProjs_local_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_imageProjs_local_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWBURST" }} , 
 	{ "name": "m_axi_imageProjs_local_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_imageProjs_local_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_imageProjs_local_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWPROT" }} , 
 	{ "name": "m_axi_imageProjs_local_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWQOS" }} , 
 	{ "name": "m_axi_imageProjs_local_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWREGION" }} , 
 	{ "name": "m_axi_imageProjs_local_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "AWUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "WVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "WREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "WDATA" }} , 
 	{ "name": "m_axi_imageProjs_local_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "WSTRB" }} , 
 	{ "name": "m_axi_imageProjs_local_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "WLAST" }} , 
 	{ "name": "m_axi_imageProjs_local_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "WID" }} , 
 	{ "name": "m_axi_imageProjs_local_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "WUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARADDR" }} , 
 	{ "name": "m_axi_imageProjs_local_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARID" }} , 
 	{ "name": "m_axi_imageProjs_local_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARLEN" }} , 
 	{ "name": "m_axi_imageProjs_local_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_imageProjs_local_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARBURST" }} , 
 	{ "name": "m_axi_imageProjs_local_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_imageProjs_local_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_imageProjs_local_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARPROT" }} , 
 	{ "name": "m_axi_imageProjs_local_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARQOS" }} , 
 	{ "name": "m_axi_imageProjs_local_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARREGION" }} , 
 	{ "name": "m_axi_imageProjs_local_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "ARUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "RVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "RREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "RDATA" }} , 
 	{ "name": "m_axi_imageProjs_local_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "RLAST" }} , 
 	{ "name": "m_axi_imageProjs_local_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "RID" }} , 
 	{ "name": "m_axi_imageProjs_local_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "RUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "RRESP" }} , 
 	{ "name": "m_axi_imageProjs_local_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "BVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "BREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "BRESP" }} , 
 	{ "name": "m_axi_imageProjs_local_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "BID" }} , 
 	{ "name": "m_axi_imageProjs_local_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local", "role": "BUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWADDR" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWLEN" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWBURST" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWPROT" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWQOS" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWREGION" }} , 
 	{ "name": "m_axi_imageProjs_local_size_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "AWUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_size_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "WVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "WREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "WDATA" }} , 
 	{ "name": "m_axi_imageProjs_local_size_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "WSTRB" }} , 
 	{ "name": "m_axi_imageProjs_local_size_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "WLAST" }} , 
 	{ "name": "m_axi_imageProjs_local_size_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "WID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "WUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARADDR" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARLEN" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARBURST" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARPROT" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARQOS" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARREGION" }} , 
 	{ "name": "m_axi_imageProjs_local_size_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "ARUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_size_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "RVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "RREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "RDATA" }} , 
 	{ "name": "m_axi_imageProjs_local_size_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "RLAST" }} , 
 	{ "name": "m_axi_imageProjs_local_size_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "RID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "RUSER" }} , 
 	{ "name": "m_axi_imageProjs_local_size_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "RRESP" }} , 
 	{ "name": "m_axi_imageProjs_local_size_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "BVALID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "BREADY" }} , 
 	{ "name": "m_axi_imageProjs_local_size_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "BRESP" }} , 
 	{ "name": "m_axi_imageProjs_local_size_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "BID" }} , 
 	{ "name": "m_axi_imageProjs_local_size_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "imageProjs_local_size", "role": "BUSER" }} , 
 	{ "name": "atomLocations_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "atomLocations", "role": "address0" }} , 
 	{ "name": "atomLocations_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "atomLocations", "role": "ce0" }} , 
 	{ "name": "atomLocations_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "atomLocations", "role": "d0" }} , 
 	{ "name": "atomLocations_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "atomLocations", "role": "q0" }} , 
 	{ "name": "atomLocations_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "atomLocations", "role": "we0" }} , 
 	{ "name": "atomLocations_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "atomLocations", "role": "address1" }} , 
 	{ "name": "atomLocations_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "atomLocations", "role": "ce1" }} , 
 	{ "name": "atomLocations_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "atomLocations", "role": "d1" }} , 
 	{ "name": "atomLocations_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "atomLocations", "role": "q1" }} , 
 	{ "name": "atomLocations_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "atomLocations", "role": "we1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "27", "37"],
		"CDFG" : "reconstruct",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "8", "Name" : "getLocalImages_U0"},
			{"ID" : "27", "Name" : "applyProjectors_U0"}],
		"OutputProcess" : [
			{"ID" : "27", "Name" : "applyProjectors_U0"}],
		"Port" : [
			{"Name" : "imageProjs_local", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "applyProjectors_U0", "Port" : "imageProjs_local"}]},
			{"Name" : "imageProjs", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "applyProjectors_U0", "Port" : "imageProjs"}]},
			{"Name" : "imageProjs_local_size", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "applyProjectors_U0", "Port" : "imageProjs_local_size_r"}]},
			{"Name" : "fullImage", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "applyProjectors_U0", "Port" : "fullImage"}]},
			{"Name" : "emissions", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "applyProjectors_U0", "Port" : "emissions"}]},
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape0", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape1", "Type" : "None", "Direction" : "I"},
			{"Name" : "atomLocations", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "getLocalImages_U0", "Port" : "atomLocations"}]},
			{"Name" : "psfSupersample", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjectionSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_local_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "imageProjs_local_size_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage_rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "fullImage_cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "emissions_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "emission_cnt", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "applyProjectors_U0", "Port" : "emission_cnt"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "getLocalImages_U0", "Port" : "mask_table"}]},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "getLocalImages_U0", "Port" : "one_half_table"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.scalar_data_s_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.emissions_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fullImage_m_axi_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProjs_m_axi_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProjs_local_m_axi_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imageProjs_local_size_m_axi_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0", "Parent" : "0", "Child" : ["9", "11", "26"],
		"CDFG" : "getLocalImages",
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
			{"Name" : "projShape0", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape1", "Type" : "None", "Direction" : "I"},
			{"Name" : "atomLocations", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_getLocalImages_Pipeline_copy_loop_fu_872", "Port" : "atomLocations", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "localImages", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["27"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_getLocalImages_Pipeline_process_loop_fu_1080", "Port" : "localImages", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_getLocalImages_Pipeline_process_loop_fu_1080", "Port" : "mask_table", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_getLocalImages_Pipeline_process_loop_fu_1080", "Port" : "one_half_table", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_copy_loop_fu_872", "Parent" : "8", "Child" : ["10"],
		"CDFG" : "getLocalImages_Pipeline_copy_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "atomLocations", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mux_case_99108907_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_98107903_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_97106899_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_96105895_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_95104891_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_94103887_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_93102883_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_92101879_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_91100875_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_9099871_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8998867_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8897863_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8796859_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8695855_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8594851_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8493847_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8392843_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8291839_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8190835_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8089831_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7988827_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7887823_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7786819_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7685815_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7584811_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7483807_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7382803_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7281799_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7180795_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7079791_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6978787_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6877783_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6776779_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6675775_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6574771_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6473767_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6372763_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6271759_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6170755_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6069751_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5968747_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5867743_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5766739_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5665735_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5564731_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5463727_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5362723_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5261719_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5160715_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5059711_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4958707_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4857703_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4756699_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4655695_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4554691_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4453687_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4352683_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4251679_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4150675_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4049671_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3948667_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3847663_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3746659_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3645655_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3544651_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3443647_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3342643_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3241639_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3140635_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3039631_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2938627_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2837623_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2736619_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2635615_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2534611_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2433607_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2332603_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2231599_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2130595_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2029591_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1928587_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1827583_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1726579_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1625575_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1524571_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1423567_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1322563_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1221559_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1120555_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1019551_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_918547_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_817543_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_716539_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_615535_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_514531_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_413527_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_312523_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_211519_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_110515_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_03511_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_99507_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_98503_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_97499_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_96495_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_95491_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_94487_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_93483_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_92479_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_91475_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_90471_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_89467_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_88463_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_87459_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_86455_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_85451_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_84447_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_83443_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_82439_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_81435_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_80431_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_79427_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_78423_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_77419_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_76415_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_75411_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_74407_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_73403_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_72399_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_71395_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_70391_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_69387_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_68383_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_67379_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_66375_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_65371_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_64367_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_63363_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_62359_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_61355_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_60351_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_59347_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_58343_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_57339_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_56335_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_55331_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_54327_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_53323_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_52319_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_51315_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_50311_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_49307_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_48303_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_47299_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_46295_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_45291_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_44287_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_43283_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_42279_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_41275_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_40271_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_39267_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_38263_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_37259_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_36255_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_35251_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_34247_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_33243_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_32239_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_31235_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_30231_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_29227_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_28223_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_27219_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_26215_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_25211_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_24207_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_23203_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_22199_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_21195_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_20191_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_19187_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_18183_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_17179_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_16175_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_15171_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_14167_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_13163_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_12159_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_11155_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_10151_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_9147_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_8143_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_7139_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_6135_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_5131_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_4127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_3123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_2119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_1115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "mux_case_0111_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "copy_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_copy_loop_fu_872.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080", "Parent" : "8", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"],
		"CDFG" : "getLocalImages_Pipeline_process_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "atomLocationsSize", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_0111_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1115_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2119_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3123_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4127_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5131_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6135_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7139_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8143_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_9147_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_10151_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_11155_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_12159_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_13163_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_14167_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_15171_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_16175_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_17179_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_18183_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_19187_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_20191_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_21195_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_22199_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_23203_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_24207_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_25211_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_26215_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_27219_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_28223_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_29227_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_30231_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_31235_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_32239_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_33243_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_34247_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_35251_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_36255_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_37259_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_38263_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_39267_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_40271_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_41275_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_42279_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_43283_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_44287_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_45291_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_46295_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_47299_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_48303_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_49307_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_50311_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_51315_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_52319_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_53323_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_54327_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_55331_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_56335_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_57339_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_58343_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_59347_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_60351_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_61355_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_62359_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_63363_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_64367_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_65371_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_66375_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_67379_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_68383_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_69387_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_70391_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_71395_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_72399_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_73403_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_74407_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_75411_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_76415_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_77419_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_78423_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_79427_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_80431_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_81435_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_82439_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_83443_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_84447_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_85451_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_86455_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_87459_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_88463_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_89467_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_90471_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_91475_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_92479_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_93483_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_94487_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_95491_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_96495_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_97499_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_98503_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_99507_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_03511_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_110515_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_211519_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_312523_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_413527_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_514531_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_615535_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_716539_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_817543_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_918547_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1019551_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1120555_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1221559_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1322563_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1423567_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1524571_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1625575_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1726579_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1827583_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_1928587_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2029591_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2130595_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2231599_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2332603_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2433607_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2534611_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2635615_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2736619_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2837623_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_2938627_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3039631_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3140635_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3241639_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3342643_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3443647_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3544651_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3645655_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3746659_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3847663_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_3948667_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4049671_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4150675_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4251679_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4352683_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4453687_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4554691_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4655695_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4756699_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4857703_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_4958707_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5059711_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5160715_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5261719_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5362723_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5463727_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5564731_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5665735_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5766739_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5867743_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_5968747_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6069751_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6170755_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6271759_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6372763_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6473767_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6574771_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6675775_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6776779_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6877783_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_6978787_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7079791_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7180795_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7281799_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7382803_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7483807_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7584811_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7685815_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7786819_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7887823_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_7988827_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8089831_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8190835_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8291839_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8392843_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8493847_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8594851_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8695855_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8796859_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8897863_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_8998867_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_9099871_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_91100875_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_92101879_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_93102883_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_94103887_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_95104891_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_96105895_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_97106899_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_98107903_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "mux_case_99108907_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "div", "Type" : "None", "Direction" : "I"},
			{"Name" : "div11", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape0", "Type" : "None", "Direction" : "I"},
			{"Name" : "projShape1", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv", "Type" : "None", "Direction" : "I"},
			{"Name" : "localImages", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "localImages_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "process_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter30", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter30", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.mask_table_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.one_half_table_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.dsub_64ns_64ns_64_7_full_dsp_1_U203", "Parent" : "11"},
	{"ID" : "15", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.dsub_64ns_64ns_64_7_full_dsp_1_U204", "Parent" : "11"},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.dmul_64ns_64ns_64_7_max_dsp_1_U205", "Parent" : "11"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.dmul_64ns_64ns_64_7_max_dsp_1_U206", "Parent" : "11"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.sitodp_32ns_64_6_no_dsp_1_U208", "Parent" : "11"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_201_7_64_1_1_U209", "Parent" : "11"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_201_7_64_1_1_U210", "Parent" : "11"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_7_2_64_1_1_U211", "Parent" : "11"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_7_2_64_1_1_U212", "Parent" : "11"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_7_2_64_1_1_U213", "Parent" : "11"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_7_2_64_1_1_U214", "Parent" : "11"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.grp_getLocalImages_Pipeline_process_loop_fu_1080.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.getLocalImages_U0.sitodp_32ns_64_6_no_dsp_1_U429", "Parent" : "8"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0", "Parent" : "0", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36"],
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
			{"Name" : "localImages", "Type" : "Fifo", "Direction" : "I", "DependentProc" : ["8"], "DependentChan" : "37", "DependentChanDepth" : "2", "DependentChanType" : "0",
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
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0.dadd_64ns_64ns_64_7_full_dsp_1_U437", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0.dadd_64ns_64ns_64_7_full_dsp_1_U438", "Parent" : "27"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0.dmul_64ns_64ns_64_7_max_dsp_1_U439", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0.ddiv_64ns_64ns_64_59_no_dsp_1_U440", "Parent" : "27"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0.dcmp_64ns_64ns_1_2_no_dsp_1_U441", "Parent" : "27"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0.mul_32s_32s_32_2_1_U442", "Parent" : "27"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0.mul_61s_32s_61_5_1_U443", "Parent" : "27"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0.srem_32ns_32s_32_36_1_U444", "Parent" : "27"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.applyProjectors_U0.srem_32ns_32s_32_36_1_U445", "Parent" : "27"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localImages_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	reconstruct {
		imageProjs_local {Type I LastRead 67 FirstWrite -1}
		imageProjs {Type I LastRead 93 FirstWrite -1}
		imageProjs_local_size {Type I LastRead 49 FirstWrite -1}
		fullImage {Type I LastRead 67 FirstWrite -1}
		emissions {Type O LastRead 161 FirstWrite 86}
		atomLocationsSize {Type I LastRead 0 FirstWrite -1}
		projShape0 {Type I LastRead 0 FirstWrite -1}
		projShape1 {Type I LastRead 0 FirstWrite -1}
		atomLocations {Type I LastRead 0 FirstWrite -1}
		psfSupersample {Type I LastRead 0 FirstWrite -1}
		imageProjectionSize {Type I LastRead 0 FirstWrite -1}
		imageProjs_local_offset {Type I LastRead 0 FirstWrite -1}
		imageProjs_offset {Type I LastRead 0 FirstWrite -1}
		imageProjs_local_size_offset {Type I LastRead 0 FirstWrite -1}
		fullImage_offset {Type I LastRead 0 FirstWrite -1}
		fullImage_rows {Type I LastRead 0 FirstWrite -1}
		fullImage_cols {Type I LastRead 0 FirstWrite -1}
		emissions_offset {Type I LastRead 0 FirstWrite -1}
		emission_cnt {Type O LastRead -1 FirstWrite 1}
		mask_table {Type I LastRead -1 FirstWrite -1}
		one_half_table {Type I LastRead -1 FirstWrite -1}}
	getLocalImages {
		atomLocationsSize {Type I LastRead 4 FirstWrite -1}
		psfSupersample {Type I LastRead 0 FirstWrite -1}
		projShape0 {Type I LastRead 5 FirstWrite -1}
		projShape1 {Type I LastRead 5 FirstWrite -1}
		atomLocations {Type I LastRead 0 FirstWrite -1}
		localImages {Type O LastRead -1 FirstWrite 30}
		mask_table {Type I LastRead -1 FirstWrite -1}
		one_half_table {Type I LastRead -1 FirstWrite -1}}
	getLocalImages_Pipeline_copy_loop {
		atomLocationsSize {Type I LastRead 0 FirstWrite -1}
		atomLocations {Type I LastRead 0 FirstWrite -1}
		mux_case_99108907_out {Type O LastRead -1 FirstWrite 0}
		mux_case_98107903_out {Type O LastRead -1 FirstWrite 0}
		mux_case_97106899_out {Type O LastRead -1 FirstWrite 0}
		mux_case_96105895_out {Type O LastRead -1 FirstWrite 0}
		mux_case_95104891_out {Type O LastRead -1 FirstWrite 0}
		mux_case_94103887_out {Type O LastRead -1 FirstWrite 0}
		mux_case_93102883_out {Type O LastRead -1 FirstWrite 0}
		mux_case_92101879_out {Type O LastRead -1 FirstWrite 0}
		mux_case_91100875_out {Type O LastRead -1 FirstWrite 0}
		mux_case_9099871_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8998867_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8897863_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8796859_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8695855_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8594851_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8493847_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8392843_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8291839_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8190835_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8089831_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7988827_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7887823_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7786819_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7685815_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7584811_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7483807_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7382803_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7281799_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7180795_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7079791_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6978787_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6877783_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6776779_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6675775_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6574771_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6473767_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6372763_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6271759_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6170755_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6069751_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5968747_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5867743_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5766739_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5665735_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5564731_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5463727_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5362723_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5261719_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5160715_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5059711_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4958707_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4857703_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4756699_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4655695_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4554691_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4453687_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4352683_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4251679_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4150675_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4049671_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3948667_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3847663_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3746659_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3645655_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3544651_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3443647_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3342643_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3241639_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3140635_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3039631_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2938627_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2837623_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2736619_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2635615_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2534611_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2433607_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2332603_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2231599_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2130595_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2029591_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1928587_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1827583_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1726579_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1625575_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1524571_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1423567_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1322563_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1221559_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1120555_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1019551_out {Type O LastRead -1 FirstWrite 0}
		mux_case_918547_out {Type O LastRead -1 FirstWrite 0}
		mux_case_817543_out {Type O LastRead -1 FirstWrite 0}
		mux_case_716539_out {Type O LastRead -1 FirstWrite 0}
		mux_case_615535_out {Type O LastRead -1 FirstWrite 0}
		mux_case_514531_out {Type O LastRead -1 FirstWrite 0}
		mux_case_413527_out {Type O LastRead -1 FirstWrite 0}
		mux_case_312523_out {Type O LastRead -1 FirstWrite 0}
		mux_case_211519_out {Type O LastRead -1 FirstWrite 0}
		mux_case_110515_out {Type O LastRead -1 FirstWrite 0}
		mux_case_03511_out {Type O LastRead -1 FirstWrite 0}
		mux_case_99507_out {Type O LastRead -1 FirstWrite 0}
		mux_case_98503_out {Type O LastRead -1 FirstWrite 0}
		mux_case_97499_out {Type O LastRead -1 FirstWrite 0}
		mux_case_96495_out {Type O LastRead -1 FirstWrite 0}
		mux_case_95491_out {Type O LastRead -1 FirstWrite 0}
		mux_case_94487_out {Type O LastRead -1 FirstWrite 0}
		mux_case_93483_out {Type O LastRead -1 FirstWrite 0}
		mux_case_92479_out {Type O LastRead -1 FirstWrite 0}
		mux_case_91475_out {Type O LastRead -1 FirstWrite 0}
		mux_case_90471_out {Type O LastRead -1 FirstWrite 0}
		mux_case_89467_out {Type O LastRead -1 FirstWrite 0}
		mux_case_88463_out {Type O LastRead -1 FirstWrite 0}
		mux_case_87459_out {Type O LastRead -1 FirstWrite 0}
		mux_case_86455_out {Type O LastRead -1 FirstWrite 0}
		mux_case_85451_out {Type O LastRead -1 FirstWrite 0}
		mux_case_84447_out {Type O LastRead -1 FirstWrite 0}
		mux_case_83443_out {Type O LastRead -1 FirstWrite 0}
		mux_case_82439_out {Type O LastRead -1 FirstWrite 0}
		mux_case_81435_out {Type O LastRead -1 FirstWrite 0}
		mux_case_80431_out {Type O LastRead -1 FirstWrite 0}
		mux_case_79427_out {Type O LastRead -1 FirstWrite 0}
		mux_case_78423_out {Type O LastRead -1 FirstWrite 0}
		mux_case_77419_out {Type O LastRead -1 FirstWrite 0}
		mux_case_76415_out {Type O LastRead -1 FirstWrite 0}
		mux_case_75411_out {Type O LastRead -1 FirstWrite 0}
		mux_case_74407_out {Type O LastRead -1 FirstWrite 0}
		mux_case_73403_out {Type O LastRead -1 FirstWrite 0}
		mux_case_72399_out {Type O LastRead -1 FirstWrite 0}
		mux_case_71395_out {Type O LastRead -1 FirstWrite 0}
		mux_case_70391_out {Type O LastRead -1 FirstWrite 0}
		mux_case_69387_out {Type O LastRead -1 FirstWrite 0}
		mux_case_68383_out {Type O LastRead -1 FirstWrite 0}
		mux_case_67379_out {Type O LastRead -1 FirstWrite 0}
		mux_case_66375_out {Type O LastRead -1 FirstWrite 0}
		mux_case_65371_out {Type O LastRead -1 FirstWrite 0}
		mux_case_64367_out {Type O LastRead -1 FirstWrite 0}
		mux_case_63363_out {Type O LastRead -1 FirstWrite 0}
		mux_case_62359_out {Type O LastRead -1 FirstWrite 0}
		mux_case_61355_out {Type O LastRead -1 FirstWrite 0}
		mux_case_60351_out {Type O LastRead -1 FirstWrite 0}
		mux_case_59347_out {Type O LastRead -1 FirstWrite 0}
		mux_case_58343_out {Type O LastRead -1 FirstWrite 0}
		mux_case_57339_out {Type O LastRead -1 FirstWrite 0}
		mux_case_56335_out {Type O LastRead -1 FirstWrite 0}
		mux_case_55331_out {Type O LastRead -1 FirstWrite 0}
		mux_case_54327_out {Type O LastRead -1 FirstWrite 0}
		mux_case_53323_out {Type O LastRead -1 FirstWrite 0}
		mux_case_52319_out {Type O LastRead -1 FirstWrite 0}
		mux_case_51315_out {Type O LastRead -1 FirstWrite 0}
		mux_case_50311_out {Type O LastRead -1 FirstWrite 0}
		mux_case_49307_out {Type O LastRead -1 FirstWrite 0}
		mux_case_48303_out {Type O LastRead -1 FirstWrite 0}
		mux_case_47299_out {Type O LastRead -1 FirstWrite 0}
		mux_case_46295_out {Type O LastRead -1 FirstWrite 0}
		mux_case_45291_out {Type O LastRead -1 FirstWrite 0}
		mux_case_44287_out {Type O LastRead -1 FirstWrite 0}
		mux_case_43283_out {Type O LastRead -1 FirstWrite 0}
		mux_case_42279_out {Type O LastRead -1 FirstWrite 0}
		mux_case_41275_out {Type O LastRead -1 FirstWrite 0}
		mux_case_40271_out {Type O LastRead -1 FirstWrite 0}
		mux_case_39267_out {Type O LastRead -1 FirstWrite 0}
		mux_case_38263_out {Type O LastRead -1 FirstWrite 0}
		mux_case_37259_out {Type O LastRead -1 FirstWrite 0}
		mux_case_36255_out {Type O LastRead -1 FirstWrite 0}
		mux_case_35251_out {Type O LastRead -1 FirstWrite 0}
		mux_case_34247_out {Type O LastRead -1 FirstWrite 0}
		mux_case_33243_out {Type O LastRead -1 FirstWrite 0}
		mux_case_32239_out {Type O LastRead -1 FirstWrite 0}
		mux_case_31235_out {Type O LastRead -1 FirstWrite 0}
		mux_case_30231_out {Type O LastRead -1 FirstWrite 0}
		mux_case_29227_out {Type O LastRead -1 FirstWrite 0}
		mux_case_28223_out {Type O LastRead -1 FirstWrite 0}
		mux_case_27219_out {Type O LastRead -1 FirstWrite 0}
		mux_case_26215_out {Type O LastRead -1 FirstWrite 0}
		mux_case_25211_out {Type O LastRead -1 FirstWrite 0}
		mux_case_24207_out {Type O LastRead -1 FirstWrite 0}
		mux_case_23203_out {Type O LastRead -1 FirstWrite 0}
		mux_case_22199_out {Type O LastRead -1 FirstWrite 0}
		mux_case_21195_out {Type O LastRead -1 FirstWrite 0}
		mux_case_20191_out {Type O LastRead -1 FirstWrite 0}
		mux_case_19187_out {Type O LastRead -1 FirstWrite 0}
		mux_case_18183_out {Type O LastRead -1 FirstWrite 0}
		mux_case_17179_out {Type O LastRead -1 FirstWrite 0}
		mux_case_16175_out {Type O LastRead -1 FirstWrite 0}
		mux_case_15171_out {Type O LastRead -1 FirstWrite 0}
		mux_case_14167_out {Type O LastRead -1 FirstWrite 0}
		mux_case_13163_out {Type O LastRead -1 FirstWrite 0}
		mux_case_12159_out {Type O LastRead -1 FirstWrite 0}
		mux_case_11155_out {Type O LastRead -1 FirstWrite 0}
		mux_case_10151_out {Type O LastRead -1 FirstWrite 0}
		mux_case_9147_out {Type O LastRead -1 FirstWrite 0}
		mux_case_8143_out {Type O LastRead -1 FirstWrite 0}
		mux_case_7139_out {Type O LastRead -1 FirstWrite 0}
		mux_case_6135_out {Type O LastRead -1 FirstWrite 0}
		mux_case_5131_out {Type O LastRead -1 FirstWrite 0}
		mux_case_4127_out {Type O LastRead -1 FirstWrite 0}
		mux_case_3123_out {Type O LastRead -1 FirstWrite 0}
		mux_case_2119_out {Type O LastRead -1 FirstWrite 0}
		mux_case_1115_out {Type O LastRead -1 FirstWrite 0}
		mux_case_0111_out {Type O LastRead -1 FirstWrite 0}}
	getLocalImages_Pipeline_process_loop {
		atomLocationsSize {Type I LastRead 0 FirstWrite -1}
		mux_case_0111_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1115_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2119_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3123_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4127_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5131_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6135_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7139_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8143_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_9147_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_10151_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_11155_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_12159_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_13163_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_14167_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_15171_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_16175_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_17179_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_18183_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_19187_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_20191_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_21195_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_22199_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_23203_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_24207_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_25211_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_26215_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_27219_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_28223_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_29227_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_30231_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_31235_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_32239_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_33243_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_34247_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_35251_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_36255_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_37259_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_38263_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_39267_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_40271_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_41275_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_42279_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_43283_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_44287_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_45291_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_46295_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_47299_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_48303_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_49307_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_50311_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_51315_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_52319_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_53323_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_54327_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_55331_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_56335_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_57339_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_58343_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_59347_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_60351_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_61355_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_62359_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_63363_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_64367_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_65371_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_66375_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_67379_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_68383_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_69387_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_70391_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_71395_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_72399_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_73403_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_74407_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_75411_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_76415_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_77419_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_78423_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_79427_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_80431_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_81435_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_82439_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_83443_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_84447_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_85451_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_86455_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_87459_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_88463_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_89467_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_90471_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_91475_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_92479_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_93483_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_94487_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_95491_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_96495_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_97499_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_98503_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_99507_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_03511_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_110515_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_211519_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_312523_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_413527_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_514531_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_615535_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_716539_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_817543_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_918547_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1019551_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1120555_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1221559_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1322563_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1423567_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1524571_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1625575_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1726579_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1827583_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_1928587_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2029591_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2130595_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2231599_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2332603_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2433607_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2534611_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2635615_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2736619_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2837623_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_2938627_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3039631_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3140635_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3241639_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3342643_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3443647_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3544651_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3645655_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3746659_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3847663_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_3948667_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4049671_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4150675_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4251679_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4352683_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4453687_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4554691_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4655695_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4756699_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4857703_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_4958707_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5059711_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5160715_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5261719_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5362723_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5463727_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5564731_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5665735_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5766739_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5867743_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_5968747_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6069751_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6170755_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6271759_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6372763_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6473767_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6574771_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6675775_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6776779_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6877783_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_6978787_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7079791_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7180795_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7281799_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7382803_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7483807_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7584811_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7685815_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7786819_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7887823_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_7988827_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8089831_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8190835_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8291839_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8392843_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8493847_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8594851_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8695855_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8796859_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8897863_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_8998867_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_9099871_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_91100875_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_92101879_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_93102883_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_94103887_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_95104891_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_96105895_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_97106899_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_98107903_reload {Type I LastRead 0 FirstWrite -1}
		mux_case_99108907_reload {Type I LastRead 0 FirstWrite -1}
		div {Type I LastRead 0 FirstWrite -1}
		div11 {Type I LastRead 0 FirstWrite -1}
		projShape0 {Type I LastRead 0 FirstWrite -1}
		projShape1 {Type I LastRead 0 FirstWrite -1}
		conv {Type I LastRead 0 FirstWrite -1}
		localImages {Type O LastRead -1 FirstWrite 30}
		mask_table {Type I LastRead -1 FirstWrite -1}
		one_half_table {Type I LastRead -1 FirstWrite -1}}
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
	imageProjs_local { m_axi {  { m_axi_imageProjs_local_AWVALID VALID 1 1 }  { m_axi_imageProjs_local_AWREADY READY 0 1 }  { m_axi_imageProjs_local_AWADDR ADDR 1 64 }  { m_axi_imageProjs_local_AWID ID 1 1 }  { m_axi_imageProjs_local_AWLEN SIZE 1 8 }  { m_axi_imageProjs_local_AWSIZE BURST 1 3 }  { m_axi_imageProjs_local_AWBURST LOCK 1 2 }  { m_axi_imageProjs_local_AWLOCK CACHE 1 2 }  { m_axi_imageProjs_local_AWCACHE PROT 1 4 }  { m_axi_imageProjs_local_AWPROT QOS 1 3 }  { m_axi_imageProjs_local_AWQOS REGION 1 4 }  { m_axi_imageProjs_local_AWREGION USER 1 4 }  { m_axi_imageProjs_local_AWUSER DATA 1 1 }  { m_axi_imageProjs_local_WVALID VALID 1 1 }  { m_axi_imageProjs_local_WREADY READY 0 1 }  { m_axi_imageProjs_local_WDATA FIFONUM 1 64 }  { m_axi_imageProjs_local_WSTRB STRB 1 8 }  { m_axi_imageProjs_local_WLAST LAST 1 1 }  { m_axi_imageProjs_local_WID ID 1 1 }  { m_axi_imageProjs_local_WUSER DATA 1 1 }  { m_axi_imageProjs_local_ARVALID VALID 1 1 }  { m_axi_imageProjs_local_ARREADY READY 0 1 }  { m_axi_imageProjs_local_ARADDR ADDR 1 64 }  { m_axi_imageProjs_local_ARID ID 1 1 }  { m_axi_imageProjs_local_ARLEN SIZE 1 8 }  { m_axi_imageProjs_local_ARSIZE BURST 1 3 }  { m_axi_imageProjs_local_ARBURST LOCK 1 2 }  { m_axi_imageProjs_local_ARLOCK CACHE 1 2 }  { m_axi_imageProjs_local_ARCACHE PROT 1 4 }  { m_axi_imageProjs_local_ARPROT QOS 1 3 }  { m_axi_imageProjs_local_ARQOS REGION 1 4 }  { m_axi_imageProjs_local_ARREGION USER 1 4 }  { m_axi_imageProjs_local_ARUSER DATA 1 1 }  { m_axi_imageProjs_local_RVALID VALID 0 1 }  { m_axi_imageProjs_local_RREADY READY 1 1 }  { m_axi_imageProjs_local_RDATA FIFONUM 0 64 }  { m_axi_imageProjs_local_RLAST LAST 0 1 }  { m_axi_imageProjs_local_RID ID 0 1 }  { m_axi_imageProjs_local_RUSER DATA 0 1 }  { m_axi_imageProjs_local_RRESP RESP 0 2 }  { m_axi_imageProjs_local_BVALID VALID 0 1 }  { m_axi_imageProjs_local_BREADY READY 1 1 }  { m_axi_imageProjs_local_BRESP RESP 0 2 }  { m_axi_imageProjs_local_BID ID 0 1 }  { m_axi_imageProjs_local_BUSER DATA 0 1 } } }
	imageProjs { m_axi {  { m_axi_imageProjs_AWVALID VALID 1 1 }  { m_axi_imageProjs_AWREADY READY 0 1 }  { m_axi_imageProjs_AWADDR ADDR 1 64 }  { m_axi_imageProjs_AWID ID 1 1 }  { m_axi_imageProjs_AWLEN SIZE 1 8 }  { m_axi_imageProjs_AWSIZE BURST 1 3 }  { m_axi_imageProjs_AWBURST LOCK 1 2 }  { m_axi_imageProjs_AWLOCK CACHE 1 2 }  { m_axi_imageProjs_AWCACHE PROT 1 4 }  { m_axi_imageProjs_AWPROT QOS 1 3 }  { m_axi_imageProjs_AWQOS REGION 1 4 }  { m_axi_imageProjs_AWREGION USER 1 4 }  { m_axi_imageProjs_AWUSER DATA 1 1 }  { m_axi_imageProjs_WVALID VALID 1 1 }  { m_axi_imageProjs_WREADY READY 0 1 }  { m_axi_imageProjs_WDATA FIFONUM 1 64 }  { m_axi_imageProjs_WSTRB STRB 1 8 }  { m_axi_imageProjs_WLAST LAST 1 1 }  { m_axi_imageProjs_WID ID 1 1 }  { m_axi_imageProjs_WUSER DATA 1 1 }  { m_axi_imageProjs_ARVALID VALID 1 1 }  { m_axi_imageProjs_ARREADY READY 0 1 }  { m_axi_imageProjs_ARADDR ADDR 1 64 }  { m_axi_imageProjs_ARID ID 1 1 }  { m_axi_imageProjs_ARLEN SIZE 1 8 }  { m_axi_imageProjs_ARSIZE BURST 1 3 }  { m_axi_imageProjs_ARBURST LOCK 1 2 }  { m_axi_imageProjs_ARLOCK CACHE 1 2 }  { m_axi_imageProjs_ARCACHE PROT 1 4 }  { m_axi_imageProjs_ARPROT QOS 1 3 }  { m_axi_imageProjs_ARQOS REGION 1 4 }  { m_axi_imageProjs_ARREGION USER 1 4 }  { m_axi_imageProjs_ARUSER DATA 1 1 }  { m_axi_imageProjs_RVALID VALID 0 1 }  { m_axi_imageProjs_RREADY READY 1 1 }  { m_axi_imageProjs_RDATA FIFONUM 0 64 }  { m_axi_imageProjs_RLAST LAST 0 1 }  { m_axi_imageProjs_RID ID 0 1 }  { m_axi_imageProjs_RUSER DATA 0 1 }  { m_axi_imageProjs_RRESP RESP 0 2 }  { m_axi_imageProjs_BVALID VALID 0 1 }  { m_axi_imageProjs_BREADY READY 1 1 }  { m_axi_imageProjs_BRESP RESP 0 2 }  { m_axi_imageProjs_BID ID 0 1 }  { m_axi_imageProjs_BUSER DATA 0 1 } } }
	imageProjs_local_size { m_axi {  { m_axi_imageProjs_local_size_AWVALID VALID 1 1 }  { m_axi_imageProjs_local_size_AWREADY READY 0 1 }  { m_axi_imageProjs_local_size_AWADDR ADDR 1 64 }  { m_axi_imageProjs_local_size_AWID ID 1 1 }  { m_axi_imageProjs_local_size_AWLEN SIZE 1 8 }  { m_axi_imageProjs_local_size_AWSIZE BURST 1 3 }  { m_axi_imageProjs_local_size_AWBURST LOCK 1 2 }  { m_axi_imageProjs_local_size_AWLOCK CACHE 1 2 }  { m_axi_imageProjs_local_size_AWCACHE PROT 1 4 }  { m_axi_imageProjs_local_size_AWPROT QOS 1 3 }  { m_axi_imageProjs_local_size_AWQOS REGION 1 4 }  { m_axi_imageProjs_local_size_AWREGION USER 1 4 }  { m_axi_imageProjs_local_size_AWUSER DATA 1 1 }  { m_axi_imageProjs_local_size_WVALID VALID 1 1 }  { m_axi_imageProjs_local_size_WREADY READY 0 1 }  { m_axi_imageProjs_local_size_WDATA FIFONUM 1 32 }  { m_axi_imageProjs_local_size_WSTRB STRB 1 4 }  { m_axi_imageProjs_local_size_WLAST LAST 1 1 }  { m_axi_imageProjs_local_size_WID ID 1 1 }  { m_axi_imageProjs_local_size_WUSER DATA 1 1 }  { m_axi_imageProjs_local_size_ARVALID VALID 1 1 }  { m_axi_imageProjs_local_size_ARREADY READY 0 1 }  { m_axi_imageProjs_local_size_ARADDR ADDR 1 64 }  { m_axi_imageProjs_local_size_ARID ID 1 1 }  { m_axi_imageProjs_local_size_ARLEN SIZE 1 8 }  { m_axi_imageProjs_local_size_ARSIZE BURST 1 3 }  { m_axi_imageProjs_local_size_ARBURST LOCK 1 2 }  { m_axi_imageProjs_local_size_ARLOCK CACHE 1 2 }  { m_axi_imageProjs_local_size_ARCACHE PROT 1 4 }  { m_axi_imageProjs_local_size_ARPROT QOS 1 3 }  { m_axi_imageProjs_local_size_ARQOS REGION 1 4 }  { m_axi_imageProjs_local_size_ARREGION USER 1 4 }  { m_axi_imageProjs_local_size_ARUSER DATA 1 1 }  { m_axi_imageProjs_local_size_RVALID VALID 0 1 }  { m_axi_imageProjs_local_size_RREADY READY 1 1 }  { m_axi_imageProjs_local_size_RDATA FIFONUM 0 32 }  { m_axi_imageProjs_local_size_RLAST LAST 0 1 }  { m_axi_imageProjs_local_size_RID ID 0 1 }  { m_axi_imageProjs_local_size_RUSER DATA 0 1 }  { m_axi_imageProjs_local_size_RRESP RESP 0 2 }  { m_axi_imageProjs_local_size_BVALID VALID 0 1 }  { m_axi_imageProjs_local_size_BREADY READY 1 1 }  { m_axi_imageProjs_local_size_BRESP RESP 0 2 }  { m_axi_imageProjs_local_size_BID ID 0 1 }  { m_axi_imageProjs_local_size_BUSER DATA 0 1 } } }
	fullImage { m_axi {  { m_axi_fullImage_AWVALID VALID 1 1 }  { m_axi_fullImage_AWREADY READY 0 1 }  { m_axi_fullImage_AWADDR ADDR 1 64 }  { m_axi_fullImage_AWID ID 1 1 }  { m_axi_fullImage_AWLEN SIZE 1 8 }  { m_axi_fullImage_AWSIZE BURST 1 3 }  { m_axi_fullImage_AWBURST LOCK 1 2 }  { m_axi_fullImage_AWLOCK CACHE 1 2 }  { m_axi_fullImage_AWCACHE PROT 1 4 }  { m_axi_fullImage_AWPROT QOS 1 3 }  { m_axi_fullImage_AWQOS REGION 1 4 }  { m_axi_fullImage_AWREGION USER 1 4 }  { m_axi_fullImage_AWUSER DATA 1 1 }  { m_axi_fullImage_WVALID VALID 1 1 }  { m_axi_fullImage_WREADY READY 0 1 }  { m_axi_fullImage_WDATA FIFONUM 1 64 }  { m_axi_fullImage_WSTRB STRB 1 8 }  { m_axi_fullImage_WLAST LAST 1 1 }  { m_axi_fullImage_WID ID 1 1 }  { m_axi_fullImage_WUSER DATA 1 1 }  { m_axi_fullImage_ARVALID VALID 1 1 }  { m_axi_fullImage_ARREADY READY 0 1 }  { m_axi_fullImage_ARADDR ADDR 1 64 }  { m_axi_fullImage_ARID ID 1 1 }  { m_axi_fullImage_ARLEN SIZE 1 8 }  { m_axi_fullImage_ARSIZE BURST 1 3 }  { m_axi_fullImage_ARBURST LOCK 1 2 }  { m_axi_fullImage_ARLOCK CACHE 1 2 }  { m_axi_fullImage_ARCACHE PROT 1 4 }  { m_axi_fullImage_ARPROT QOS 1 3 }  { m_axi_fullImage_ARQOS REGION 1 4 }  { m_axi_fullImage_ARREGION USER 1 4 }  { m_axi_fullImage_ARUSER DATA 1 1 }  { m_axi_fullImage_RVALID VALID 0 1 }  { m_axi_fullImage_RREADY READY 1 1 }  { m_axi_fullImage_RDATA FIFONUM 0 64 }  { m_axi_fullImage_RLAST LAST 0 1 }  { m_axi_fullImage_RID ID 0 1 }  { m_axi_fullImage_RUSER DATA 0 1 }  { m_axi_fullImage_RRESP RESP 0 2 }  { m_axi_fullImage_BVALID VALID 0 1 }  { m_axi_fullImage_BREADY READY 1 1 }  { m_axi_fullImage_BRESP RESP 0 2 }  { m_axi_fullImage_BID ID 0 1 }  { m_axi_fullImage_BUSER DATA 0 1 } } }
	emissions { m_axi {  { m_axi_emissions_AWVALID VALID 1 1 }  { m_axi_emissions_AWREADY READY 0 1 }  { m_axi_emissions_AWADDR ADDR 1 64 }  { m_axi_emissions_AWID ID 1 1 }  { m_axi_emissions_AWLEN SIZE 1 8 }  { m_axi_emissions_AWSIZE BURST 1 3 }  { m_axi_emissions_AWBURST LOCK 1 2 }  { m_axi_emissions_AWLOCK CACHE 1 2 }  { m_axi_emissions_AWCACHE PROT 1 4 }  { m_axi_emissions_AWPROT QOS 1 3 }  { m_axi_emissions_AWQOS REGION 1 4 }  { m_axi_emissions_AWREGION USER 1 4 }  { m_axi_emissions_AWUSER DATA 1 1 }  { m_axi_emissions_WVALID VALID 1 1 }  { m_axi_emissions_WREADY READY 0 1 }  { m_axi_emissions_WDATA FIFONUM 1 64 }  { m_axi_emissions_WSTRB STRB 1 8 }  { m_axi_emissions_WLAST LAST 1 1 }  { m_axi_emissions_WID ID 1 1 }  { m_axi_emissions_WUSER DATA 1 1 }  { m_axi_emissions_ARVALID VALID 1 1 }  { m_axi_emissions_ARREADY READY 0 1 }  { m_axi_emissions_ARADDR ADDR 1 64 }  { m_axi_emissions_ARID ID 1 1 }  { m_axi_emissions_ARLEN SIZE 1 8 }  { m_axi_emissions_ARSIZE BURST 1 3 }  { m_axi_emissions_ARBURST LOCK 1 2 }  { m_axi_emissions_ARLOCK CACHE 1 2 }  { m_axi_emissions_ARCACHE PROT 1 4 }  { m_axi_emissions_ARPROT QOS 1 3 }  { m_axi_emissions_ARQOS REGION 1 4 }  { m_axi_emissions_ARREGION USER 1 4 }  { m_axi_emissions_ARUSER DATA 1 1 }  { m_axi_emissions_RVALID VALID 0 1 }  { m_axi_emissions_RREADY READY 1 1 }  { m_axi_emissions_RDATA FIFONUM 0 64 }  { m_axi_emissions_RLAST LAST 0 1 }  { m_axi_emissions_RID ID 0 1 }  { m_axi_emissions_RUSER DATA 0 1 }  { m_axi_emissions_RRESP RESP 0 2 }  { m_axi_emissions_BVALID VALID 0 1 }  { m_axi_emissions_BREADY READY 1 1 }  { m_axi_emissions_BRESP RESP 0 2 }  { m_axi_emissions_BID ID 0 1 }  { m_axi_emissions_BUSER DATA 0 1 } } }
	atomLocations { ap_memory {  { atomLocations_address0 mem_address 1 7 }  { atomLocations_ce0 mem_ce 1 1 }  { atomLocations_d0 mem_din 1 128 }  { atomLocations_q0 mem_dout 0 128 }  { atomLocations_we0 mem_we 1 1 }  { atomLocations_address1 mem_address 1 7 }  { atomLocations_ce1 mem_ce 1 1 }  { atomLocations_d1 mem_din 1 128 }  { atomLocations_q1 mem_dout 0 128 }  { atomLocations_we1 mem_we 1 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict emissions { CHANNEL_NUM 0 BUNDLE emissions NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict fullImage { CHANNEL_NUM 0 BUNDLE fullImage NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict imageProjs { CHANNEL_NUM 0 BUNDLE imageProjs NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict imageProjs_local { CHANNEL_NUM 0 BUNDLE imageProjs_local NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict imageProjs_local_size_r { CHANNEL_NUM 0 BUNDLE imageProjs_local_size NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ imageProjs_local 1 }
	{ imageProjs 1 }
	{ imageProjs_local_size 1 }
	{ fullImage 1 }
	{ emissions 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ imageProjs_local 1 }
	{ imageProjs 1 }
	{ imageProjs_local_size 1 }
	{ fullImage 1 }
	{ emissions 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
