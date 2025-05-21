set moduleName getLocalImages
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
set C_modelName {getLocalImages}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict atomLocations { MEM_WIDTH 128 MEM_SIZE 1600 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ atomLocationsSize int 32 regular  }
	{ psfSupersample int 32 regular  }
	{ projShape0 int 32 regular  }
	{ projShape1 int 32 regular  }
	{ atomLocations int 128 regular {array 100 { 1 3 } 1 1 }  }
	{ localImages int 256 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "atomLocationsSize", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "psfSupersample", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "projShape0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "projShape1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "atomLocations", "interface" : "memory", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "localImages", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
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
	{ projShape0 sc_in sc_lv 32 signal 2 } 
	{ projShape1 sc_in sc_lv 32 signal 3 } 
	{ atomLocations_address0 sc_out sc_lv 7 signal 4 } 
	{ atomLocations_ce0 sc_out sc_logic 1 signal 4 } 
	{ atomLocations_q0 sc_in sc_lv 128 signal 4 } 
	{ localImages_din sc_out sc_lv 256 signal 5 } 
	{ localImages_full_n sc_in sc_logic 1 signal 5 } 
	{ localImages_write sc_out sc_logic 1 signal 5 } 
	{ localImages_num_data_valid sc_in sc_lv 32 signal 5 } 
	{ localImages_fifo_cap sc_in sc_lv 32 signal 5 } 
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
 	{ "name": "projShape0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "projShape0", "role": "default" }} , 
 	{ "name": "projShape1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "projShape1", "role": "default" }} , 
 	{ "name": "atomLocations_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "atomLocations", "role": "address0" }} , 
 	{ "name": "atomLocations_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "atomLocations", "role": "ce0" }} , 
 	{ "name": "atomLocations_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "atomLocations", "role": "q0" }} , 
 	{ "name": "localImages_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "localImages", "role": "din" }} , 
 	{ "name": "localImages_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localImages", "role": "full_n" }} , 
 	{ "name": "localImages_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localImages", "role": "write" }} , 
 	{ "name": "localImages_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localImages", "role": "num_data_valid" }} , 
 	{ "name": "localImages_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "localImages", "role": "fifo_cap" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "18"],
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
					{"ID" : "1", "SubInstance" : "grp_getLocalImages_Pipeline_copy_loop_fu_872", "Port" : "atomLocations", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "localImages", "Type" : "Fifo", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_getLocalImages_Pipeline_process_loop_fu_1080", "Port" : "localImages", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "mask_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_getLocalImages_Pipeline_process_loop_fu_1080", "Port" : "mask_table", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "one_half_table", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_getLocalImages_Pipeline_process_loop_fu_1080", "Port" : "one_half_table", "Inst_start_state" : "7", "Inst_end_state" : "8"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_copy_loop_fu_872", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_copy_loop_fu_872.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.mask_table_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.one_half_table_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.dsub_64ns_64ns_64_7_full_dsp_1_U203", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.dsub_64ns_64ns_64_7_full_dsp_1_U204", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.dmul_64ns_64ns_64_7_max_dsp_1_U205", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.dmul_64ns_64ns_64_7_max_dsp_1_U206", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.sitodp_32ns_64_6_no_dsp_1_U208", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_201_7_64_1_1_U209", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_201_7_64_1_1_U210", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_7_2_64_1_1_U211", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_7_2_64_1_1_U212", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_7_2_64_1_1_U213", "Parent" : "3"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.sparsemux_7_2_64_1_1_U214", "Parent" : "3"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_getLocalImages_Pipeline_process_loop_fu_1080.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sitodp_32ns_64_6_no_dsp_1_U429", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		one_half_table {Type I LastRead -1 FirstWrite -1}}}

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
	projShape0 { ap_none {  { projShape0 in_data 0 32 } } }
	projShape1 { ap_none {  { projShape1 in_data 0 32 } } }
	atomLocations { ap_memory {  { atomLocations_address0 mem_address 1 7 }  { atomLocations_ce0 mem_ce 1 1 }  { atomLocations_q0 mem_dout 0 128 } } }
	localImages { ap_fifo {  { localImages_din fifo_data_in 1 256 }  { localImages_full_n fifo_status 0 1 }  { localImages_write fifo_port_we 1 1 }  { localImages_num_data_valid fifo_status_num_data_valid 0 32 }  { localImages_fifo_cap fifo_update 0 32 } } }
}
