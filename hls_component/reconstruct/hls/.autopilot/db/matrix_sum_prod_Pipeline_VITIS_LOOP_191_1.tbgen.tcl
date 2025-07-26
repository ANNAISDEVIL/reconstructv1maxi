set moduleName matrix_sum_prod_Pipeline_VITIS_LOOP_191_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 11
set C_modelName {matrix_sum_prod_Pipeline_VITIS_LOOP_191_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ add76_i29_i float 32 regular  }
	{ add76_i28_i float 32 regular  }
	{ add76_i27_i float 32 regular  }
	{ add76_i26_i float 32 regular  }
	{ add76_i25_i float 32 regular  }
	{ add76_i24_i float 32 regular  }
	{ add76_i23_i float 32 regular  }
	{ add76_i22_i float 32 regular  }
	{ add76_i21_i float 32 regular  }
	{ add76_i20_i float 32 regular  }
	{ add76_i19_i float 32 regular  }
	{ add76_i18_i float 32 regular  }
	{ add76_i17_i float 32 regular  }
	{ add76_i16_i float 32 regular  }
	{ add76_i15_i float 32 regular  }
	{ add76_i14_i float 32 regular  }
	{ add76_i13_i float 32 regular  }
	{ add76_i12_i float 32 regular  }
	{ add76_i11_i float 32 regular  }
	{ add76_i10_i float 32 regular  }
	{ add76_i_i float 32 regular  }
	{ add76_i9_i float 32 regular  }
	{ add76_i8_i float 32 regular  }
	{ add76_i7_i float 32 regular  }
	{ add76_i6_i float 32 regular  }
	{ add76_i5_i float 32 regular  }
	{ add76_i4_i float 32 regular  }
	{ add76_i3_i float 32 regular  }
	{ add76_i2_i float 32 regular  }
	{ add76_i1_i float 32 regular  }
	{ prod_val_29_out float 32 regular {pointer 1}  }
	{ sum_val_29_out float 32 regular {pointer 1}  }
	{ prod_val_28_out float 32 regular {pointer 1}  }
	{ sum_val_28_out float 32 regular {pointer 1}  }
	{ prod_val_27_out float 32 regular {pointer 1}  }
	{ sum_val_27_out float 32 regular {pointer 1}  }
	{ prod_val_26_out float 32 regular {pointer 1}  }
	{ sum_val_26_out float 32 regular {pointer 1}  }
	{ prod_val_25_out float 32 regular {pointer 1}  }
	{ sum_val_25_out float 32 regular {pointer 1}  }
	{ prod_val_24_out float 32 regular {pointer 1}  }
	{ sum_val_24_out float 32 regular {pointer 1}  }
	{ prod_val_23_out float 32 regular {pointer 1}  }
	{ sum_val_23_out float 32 regular {pointer 1}  }
	{ prod_val_22_out float 32 regular {pointer 1}  }
	{ sum_val_22_out float 32 regular {pointer 1}  }
	{ prod_val_21_out float 32 regular {pointer 1}  }
	{ sum_val_21_out float 32 regular {pointer 1}  }
	{ prod_val_20_out float 32 regular {pointer 1}  }
	{ sum_val_20_out float 32 regular {pointer 1}  }
	{ prod_val_19_out float 32 regular {pointer 1}  }
	{ sum_val_19_out float 32 regular {pointer 1}  }
	{ prod_val_18_out float 32 regular {pointer 1}  }
	{ sum_val_18_out float 32 regular {pointer 1}  }
	{ prod_val_17_out float 32 regular {pointer 1}  }
	{ sum_val_17_out float 32 regular {pointer 1}  }
	{ prod_val_16_out float 32 regular {pointer 1}  }
	{ sum_val_16_out float 32 regular {pointer 1}  }
	{ prod_val_15_out float 32 regular {pointer 1}  }
	{ sum_val_15_out float 32 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "add76_i29_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i28_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i27_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i26_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i25_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i24_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i23_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i22_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i21_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i20_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i19_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i18_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i17_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i16_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i15_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i14_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i13_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i12_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i11_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i10_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i9_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i8_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i7_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i6_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i5_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i4_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i3_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i2_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "add76_i1_i", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "prod_val_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_29_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_28_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_27_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_26_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_25_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_24_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_23_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_22_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_21_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_20_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_19_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_18_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_17_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_16_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "prod_val_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sum_val_15_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 96
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ add76_i29_i sc_in sc_lv 32 signal 0 } 
	{ add76_i28_i sc_in sc_lv 32 signal 1 } 
	{ add76_i27_i sc_in sc_lv 32 signal 2 } 
	{ add76_i26_i sc_in sc_lv 32 signal 3 } 
	{ add76_i25_i sc_in sc_lv 32 signal 4 } 
	{ add76_i24_i sc_in sc_lv 32 signal 5 } 
	{ add76_i23_i sc_in sc_lv 32 signal 6 } 
	{ add76_i22_i sc_in sc_lv 32 signal 7 } 
	{ add76_i21_i sc_in sc_lv 32 signal 8 } 
	{ add76_i20_i sc_in sc_lv 32 signal 9 } 
	{ add76_i19_i sc_in sc_lv 32 signal 10 } 
	{ add76_i18_i sc_in sc_lv 32 signal 11 } 
	{ add76_i17_i sc_in sc_lv 32 signal 12 } 
	{ add76_i16_i sc_in sc_lv 32 signal 13 } 
	{ add76_i15_i sc_in sc_lv 32 signal 14 } 
	{ add76_i14_i sc_in sc_lv 32 signal 15 } 
	{ add76_i13_i sc_in sc_lv 32 signal 16 } 
	{ add76_i12_i sc_in sc_lv 32 signal 17 } 
	{ add76_i11_i sc_in sc_lv 32 signal 18 } 
	{ add76_i10_i sc_in sc_lv 32 signal 19 } 
	{ add76_i_i sc_in sc_lv 32 signal 20 } 
	{ add76_i9_i sc_in sc_lv 32 signal 21 } 
	{ add76_i8_i sc_in sc_lv 32 signal 22 } 
	{ add76_i7_i sc_in sc_lv 32 signal 23 } 
	{ add76_i6_i sc_in sc_lv 32 signal 24 } 
	{ add76_i5_i sc_in sc_lv 32 signal 25 } 
	{ add76_i4_i sc_in sc_lv 32 signal 26 } 
	{ add76_i3_i sc_in sc_lv 32 signal 27 } 
	{ add76_i2_i sc_in sc_lv 32 signal 28 } 
	{ add76_i1_i sc_in sc_lv 32 signal 29 } 
	{ prod_val_29_out sc_out sc_lv 32 signal 30 } 
	{ prod_val_29_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ sum_val_29_out sc_out sc_lv 32 signal 31 } 
	{ sum_val_29_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ prod_val_28_out sc_out sc_lv 32 signal 32 } 
	{ prod_val_28_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ sum_val_28_out sc_out sc_lv 32 signal 33 } 
	{ sum_val_28_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ prod_val_27_out sc_out sc_lv 32 signal 34 } 
	{ prod_val_27_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ sum_val_27_out sc_out sc_lv 32 signal 35 } 
	{ sum_val_27_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ prod_val_26_out sc_out sc_lv 32 signal 36 } 
	{ prod_val_26_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ sum_val_26_out sc_out sc_lv 32 signal 37 } 
	{ sum_val_26_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ prod_val_25_out sc_out sc_lv 32 signal 38 } 
	{ prod_val_25_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ sum_val_25_out sc_out sc_lv 32 signal 39 } 
	{ sum_val_25_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ prod_val_24_out sc_out sc_lv 32 signal 40 } 
	{ prod_val_24_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ sum_val_24_out sc_out sc_lv 32 signal 41 } 
	{ sum_val_24_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ prod_val_23_out sc_out sc_lv 32 signal 42 } 
	{ prod_val_23_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ sum_val_23_out sc_out sc_lv 32 signal 43 } 
	{ sum_val_23_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ prod_val_22_out sc_out sc_lv 32 signal 44 } 
	{ prod_val_22_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ sum_val_22_out sc_out sc_lv 32 signal 45 } 
	{ sum_val_22_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ prod_val_21_out sc_out sc_lv 32 signal 46 } 
	{ prod_val_21_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ sum_val_21_out sc_out sc_lv 32 signal 47 } 
	{ sum_val_21_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ prod_val_20_out sc_out sc_lv 32 signal 48 } 
	{ prod_val_20_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ sum_val_20_out sc_out sc_lv 32 signal 49 } 
	{ sum_val_20_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ prod_val_19_out sc_out sc_lv 32 signal 50 } 
	{ prod_val_19_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ sum_val_19_out sc_out sc_lv 32 signal 51 } 
	{ sum_val_19_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ prod_val_18_out sc_out sc_lv 32 signal 52 } 
	{ prod_val_18_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ sum_val_18_out sc_out sc_lv 32 signal 53 } 
	{ sum_val_18_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ prod_val_17_out sc_out sc_lv 32 signal 54 } 
	{ prod_val_17_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ sum_val_17_out sc_out sc_lv 32 signal 55 } 
	{ sum_val_17_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ prod_val_16_out sc_out sc_lv 32 signal 56 } 
	{ prod_val_16_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ sum_val_16_out sc_out sc_lv 32 signal 57 } 
	{ sum_val_16_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ prod_val_15_out sc_out sc_lv 32 signal 58 } 
	{ prod_val_15_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ sum_val_15_out sc_out sc_lv 32 signal 59 } 
	{ sum_val_15_out_ap_vld sc_out sc_logic 1 outvld 59 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "add76_i29_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i29_i", "role": "default" }} , 
 	{ "name": "add76_i28_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i28_i", "role": "default" }} , 
 	{ "name": "add76_i27_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i27_i", "role": "default" }} , 
 	{ "name": "add76_i26_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i26_i", "role": "default" }} , 
 	{ "name": "add76_i25_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i25_i", "role": "default" }} , 
 	{ "name": "add76_i24_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i24_i", "role": "default" }} , 
 	{ "name": "add76_i23_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i23_i", "role": "default" }} , 
 	{ "name": "add76_i22_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i22_i", "role": "default" }} , 
 	{ "name": "add76_i21_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i21_i", "role": "default" }} , 
 	{ "name": "add76_i20_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i20_i", "role": "default" }} , 
 	{ "name": "add76_i19_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i19_i", "role": "default" }} , 
 	{ "name": "add76_i18_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i18_i", "role": "default" }} , 
 	{ "name": "add76_i17_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i17_i", "role": "default" }} , 
 	{ "name": "add76_i16_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i16_i", "role": "default" }} , 
 	{ "name": "add76_i15_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i15_i", "role": "default" }} , 
 	{ "name": "add76_i14_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i14_i", "role": "default" }} , 
 	{ "name": "add76_i13_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i13_i", "role": "default" }} , 
 	{ "name": "add76_i12_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i12_i", "role": "default" }} , 
 	{ "name": "add76_i11_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i11_i", "role": "default" }} , 
 	{ "name": "add76_i10_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i10_i", "role": "default" }} , 
 	{ "name": "add76_i_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i_i", "role": "default" }} , 
 	{ "name": "add76_i9_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i9_i", "role": "default" }} , 
 	{ "name": "add76_i8_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i8_i", "role": "default" }} , 
 	{ "name": "add76_i7_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i7_i", "role": "default" }} , 
 	{ "name": "add76_i6_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i6_i", "role": "default" }} , 
 	{ "name": "add76_i5_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i5_i", "role": "default" }} , 
 	{ "name": "add76_i4_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i4_i", "role": "default" }} , 
 	{ "name": "add76_i3_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i3_i", "role": "default" }} , 
 	{ "name": "add76_i2_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i2_i", "role": "default" }} , 
 	{ "name": "add76_i1_i", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "add76_i1_i", "role": "default" }} , 
 	{ "name": "prod_val_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_29_out", "role": "default" }} , 
 	{ "name": "prod_val_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_29_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_29_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_29_out", "role": "default" }} , 
 	{ "name": "sum_val_29_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_29_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_28_out", "role": "default" }} , 
 	{ "name": "prod_val_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_28_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_28_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_28_out", "role": "default" }} , 
 	{ "name": "sum_val_28_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_28_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_27_out", "role": "default" }} , 
 	{ "name": "prod_val_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_27_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_27_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_27_out", "role": "default" }} , 
 	{ "name": "sum_val_27_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_27_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_26_out", "role": "default" }} , 
 	{ "name": "prod_val_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_26_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_26_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_26_out", "role": "default" }} , 
 	{ "name": "sum_val_26_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_26_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_25_out", "role": "default" }} , 
 	{ "name": "prod_val_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_25_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_25_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_25_out", "role": "default" }} , 
 	{ "name": "sum_val_25_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_25_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_24_out", "role": "default" }} , 
 	{ "name": "prod_val_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_24_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_24_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_24_out", "role": "default" }} , 
 	{ "name": "sum_val_24_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_24_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_23_out", "role": "default" }} , 
 	{ "name": "prod_val_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_23_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_23_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_23_out", "role": "default" }} , 
 	{ "name": "sum_val_23_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_23_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_22_out", "role": "default" }} , 
 	{ "name": "prod_val_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_22_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_22_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_22_out", "role": "default" }} , 
 	{ "name": "sum_val_22_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_22_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_21_out", "role": "default" }} , 
 	{ "name": "prod_val_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_21_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_21_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_21_out", "role": "default" }} , 
 	{ "name": "sum_val_21_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_21_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_20_out", "role": "default" }} , 
 	{ "name": "prod_val_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_20_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_20_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_20_out", "role": "default" }} , 
 	{ "name": "sum_val_20_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_20_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_19_out", "role": "default" }} , 
 	{ "name": "prod_val_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_19_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_19_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_19_out", "role": "default" }} , 
 	{ "name": "sum_val_19_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_19_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_18_out", "role": "default" }} , 
 	{ "name": "prod_val_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_18_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_18_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_18_out", "role": "default" }} , 
 	{ "name": "sum_val_18_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_18_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_17_out", "role": "default" }} , 
 	{ "name": "prod_val_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_17_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_17_out", "role": "default" }} , 
 	{ "name": "sum_val_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_17_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_16_out", "role": "default" }} , 
 	{ "name": "prod_val_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_16_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_16_out", "role": "default" }} , 
 	{ "name": "sum_val_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_16_out", "role": "ap_vld" }} , 
 	{ "name": "prod_val_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod_val_15_out", "role": "default" }} , 
 	{ "name": "prod_val_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "prod_val_15_out", "role": "ap_vld" }} , 
 	{ "name": "sum_val_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sum_val_15_out", "role": "default" }} , 
 	{ "name": "sum_val_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "sum_val_15_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "matrix_sum_prod_Pipeline_VITIS_LOOP_191_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4", "EstimateLatencyMax" : "4",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add76_i29_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i28_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i27_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i26_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i25_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i24_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i23_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i22_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i21_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i20_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i19_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i18_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i17_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i16_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i15_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i14_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i13_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i12_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i11_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i10_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i9_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i8_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i7_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i6_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i5_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i4_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i3_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i2_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "add76_i1_i", "Type" : "None", "Direction" : "I"},
			{"Name" : "prod_val_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "prod_val_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sum_val_15_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_191_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	matrix_sum_prod_Pipeline_VITIS_LOOP_191_1 {
		add76_i29_i {Type I LastRead 0 FirstWrite -1}
		add76_i28_i {Type I LastRead 0 FirstWrite -1}
		add76_i27_i {Type I LastRead 0 FirstWrite -1}
		add76_i26_i {Type I LastRead 0 FirstWrite -1}
		add76_i25_i {Type I LastRead 0 FirstWrite -1}
		add76_i24_i {Type I LastRead 0 FirstWrite -1}
		add76_i23_i {Type I LastRead 0 FirstWrite -1}
		add76_i22_i {Type I LastRead 0 FirstWrite -1}
		add76_i21_i {Type I LastRead 0 FirstWrite -1}
		add76_i20_i {Type I LastRead 0 FirstWrite -1}
		add76_i19_i {Type I LastRead 0 FirstWrite -1}
		add76_i18_i {Type I LastRead 0 FirstWrite -1}
		add76_i17_i {Type I LastRead 0 FirstWrite -1}
		add76_i16_i {Type I LastRead 0 FirstWrite -1}
		add76_i15_i {Type I LastRead 0 FirstWrite -1}
		add76_i14_i {Type I LastRead 0 FirstWrite -1}
		add76_i13_i {Type I LastRead 0 FirstWrite -1}
		add76_i12_i {Type I LastRead 0 FirstWrite -1}
		add76_i11_i {Type I LastRead 0 FirstWrite -1}
		add76_i10_i {Type I LastRead 0 FirstWrite -1}
		add76_i_i {Type I LastRead 0 FirstWrite -1}
		add76_i9_i {Type I LastRead 0 FirstWrite -1}
		add76_i8_i {Type I LastRead 0 FirstWrite -1}
		add76_i7_i {Type I LastRead 0 FirstWrite -1}
		add76_i6_i {Type I LastRead 0 FirstWrite -1}
		add76_i5_i {Type I LastRead 0 FirstWrite -1}
		add76_i4_i {Type I LastRead 0 FirstWrite -1}
		add76_i3_i {Type I LastRead 0 FirstWrite -1}
		add76_i2_i {Type I LastRead 0 FirstWrite -1}
		add76_i1_i {Type I LastRead 0 FirstWrite -1}
		prod_val_29_out {Type O LastRead -1 FirstWrite 0}
		sum_val_29_out {Type O LastRead -1 FirstWrite 0}
		prod_val_28_out {Type O LastRead -1 FirstWrite 0}
		sum_val_28_out {Type O LastRead -1 FirstWrite 0}
		prod_val_27_out {Type O LastRead -1 FirstWrite 0}
		sum_val_27_out {Type O LastRead -1 FirstWrite 0}
		prod_val_26_out {Type O LastRead -1 FirstWrite 0}
		sum_val_26_out {Type O LastRead -1 FirstWrite 0}
		prod_val_25_out {Type O LastRead -1 FirstWrite 0}
		sum_val_25_out {Type O LastRead -1 FirstWrite 0}
		prod_val_24_out {Type O LastRead -1 FirstWrite 0}
		sum_val_24_out {Type O LastRead -1 FirstWrite 0}
		prod_val_23_out {Type O LastRead -1 FirstWrite 0}
		sum_val_23_out {Type O LastRead -1 FirstWrite 0}
		prod_val_22_out {Type O LastRead -1 FirstWrite 0}
		sum_val_22_out {Type O LastRead -1 FirstWrite 0}
		prod_val_21_out {Type O LastRead -1 FirstWrite 0}
		sum_val_21_out {Type O LastRead -1 FirstWrite 0}
		prod_val_20_out {Type O LastRead -1 FirstWrite 0}
		sum_val_20_out {Type O LastRead -1 FirstWrite 0}
		prod_val_19_out {Type O LastRead -1 FirstWrite 0}
		sum_val_19_out {Type O LastRead -1 FirstWrite 0}
		prod_val_18_out {Type O LastRead -1 FirstWrite 0}
		sum_val_18_out {Type O LastRead -1 FirstWrite 0}
		prod_val_17_out {Type O LastRead -1 FirstWrite 0}
		sum_val_17_out {Type O LastRead -1 FirstWrite 0}
		prod_val_16_out {Type O LastRead -1 FirstWrite 0}
		sum_val_16_out {Type O LastRead -1 FirstWrite 0}
		prod_val_15_out {Type O LastRead -1 FirstWrite 0}
		sum_val_15_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "4"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "4"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	add76_i29_i { ap_none {  { add76_i29_i in_data 0 32 } } }
	add76_i28_i { ap_none {  { add76_i28_i in_data 0 32 } } }
	add76_i27_i { ap_none {  { add76_i27_i in_data 0 32 } } }
	add76_i26_i { ap_none {  { add76_i26_i in_data 0 32 } } }
	add76_i25_i { ap_none {  { add76_i25_i in_data 0 32 } } }
	add76_i24_i { ap_none {  { add76_i24_i in_data 0 32 } } }
	add76_i23_i { ap_none {  { add76_i23_i in_data 0 32 } } }
	add76_i22_i { ap_none {  { add76_i22_i in_data 0 32 } } }
	add76_i21_i { ap_none {  { add76_i21_i in_data 0 32 } } }
	add76_i20_i { ap_none {  { add76_i20_i in_data 0 32 } } }
	add76_i19_i { ap_none {  { add76_i19_i in_data 0 32 } } }
	add76_i18_i { ap_none {  { add76_i18_i in_data 0 32 } } }
	add76_i17_i { ap_none {  { add76_i17_i in_data 0 32 } } }
	add76_i16_i { ap_none {  { add76_i16_i in_data 0 32 } } }
	add76_i15_i { ap_none {  { add76_i15_i in_data 0 32 } } }
	add76_i14_i { ap_none {  { add76_i14_i in_data 0 32 } } }
	add76_i13_i { ap_none {  { add76_i13_i in_data 0 32 } } }
	add76_i12_i { ap_none {  { add76_i12_i in_data 0 32 } } }
	add76_i11_i { ap_none {  { add76_i11_i in_data 0 32 } } }
	add76_i10_i { ap_none {  { add76_i10_i in_data 0 32 } } }
	add76_i_i { ap_none {  { add76_i_i in_data 0 32 } } }
	add76_i9_i { ap_none {  { add76_i9_i in_data 0 32 } } }
	add76_i8_i { ap_none {  { add76_i8_i in_data 0 32 } } }
	add76_i7_i { ap_none {  { add76_i7_i in_data 0 32 } } }
	add76_i6_i { ap_none {  { add76_i6_i in_data 0 32 } } }
	add76_i5_i { ap_none {  { add76_i5_i in_data 0 32 } } }
	add76_i4_i { ap_none {  { add76_i4_i in_data 0 32 } } }
	add76_i3_i { ap_none {  { add76_i3_i in_data 0 32 } } }
	add76_i2_i { ap_none {  { add76_i2_i in_data 0 32 } } }
	add76_i1_i { ap_none {  { add76_i1_i in_data 0 32 } } }
	prod_val_29_out { ap_vld {  { prod_val_29_out out_data 1 32 }  { prod_val_29_out_ap_vld out_vld 1 1 } } }
	sum_val_29_out { ap_vld {  { sum_val_29_out out_data 1 32 }  { sum_val_29_out_ap_vld out_vld 1 1 } } }
	prod_val_28_out { ap_vld {  { prod_val_28_out out_data 1 32 }  { prod_val_28_out_ap_vld out_vld 1 1 } } }
	sum_val_28_out { ap_vld {  { sum_val_28_out out_data 1 32 }  { sum_val_28_out_ap_vld out_vld 1 1 } } }
	prod_val_27_out { ap_vld {  { prod_val_27_out out_data 1 32 }  { prod_val_27_out_ap_vld out_vld 1 1 } } }
	sum_val_27_out { ap_vld {  { sum_val_27_out out_data 1 32 }  { sum_val_27_out_ap_vld out_vld 1 1 } } }
	prod_val_26_out { ap_vld {  { prod_val_26_out out_data 1 32 }  { prod_val_26_out_ap_vld out_vld 1 1 } } }
	sum_val_26_out { ap_vld {  { sum_val_26_out out_data 1 32 }  { sum_val_26_out_ap_vld out_vld 1 1 } } }
	prod_val_25_out { ap_vld {  { prod_val_25_out out_data 1 32 }  { prod_val_25_out_ap_vld out_vld 1 1 } } }
	sum_val_25_out { ap_vld {  { sum_val_25_out out_data 1 32 }  { sum_val_25_out_ap_vld out_vld 1 1 } } }
	prod_val_24_out { ap_vld {  { prod_val_24_out out_data 1 32 }  { prod_val_24_out_ap_vld out_vld 1 1 } } }
	sum_val_24_out { ap_vld {  { sum_val_24_out out_data 1 32 }  { sum_val_24_out_ap_vld out_vld 1 1 } } }
	prod_val_23_out { ap_vld {  { prod_val_23_out out_data 1 32 }  { prod_val_23_out_ap_vld out_vld 1 1 } } }
	sum_val_23_out { ap_vld {  { sum_val_23_out out_data 1 32 }  { sum_val_23_out_ap_vld out_vld 1 1 } } }
	prod_val_22_out { ap_vld {  { prod_val_22_out out_data 1 32 }  { prod_val_22_out_ap_vld out_vld 1 1 } } }
	sum_val_22_out { ap_vld {  { sum_val_22_out out_data 1 32 }  { sum_val_22_out_ap_vld out_vld 1 1 } } }
	prod_val_21_out { ap_vld {  { prod_val_21_out out_data 1 32 }  { prod_val_21_out_ap_vld out_vld 1 1 } } }
	sum_val_21_out { ap_vld {  { sum_val_21_out out_data 1 32 }  { sum_val_21_out_ap_vld out_vld 1 1 } } }
	prod_val_20_out { ap_vld {  { prod_val_20_out out_data 1 32 }  { prod_val_20_out_ap_vld out_vld 1 1 } } }
	sum_val_20_out { ap_vld {  { sum_val_20_out out_data 1 32 }  { sum_val_20_out_ap_vld out_vld 1 1 } } }
	prod_val_19_out { ap_vld {  { prod_val_19_out out_data 1 32 }  { prod_val_19_out_ap_vld out_vld 1 1 } } }
	sum_val_19_out { ap_vld {  { sum_val_19_out out_data 1 32 }  { sum_val_19_out_ap_vld out_vld 1 1 } } }
	prod_val_18_out { ap_vld {  { prod_val_18_out out_data 1 32 }  { prod_val_18_out_ap_vld out_vld 1 1 } } }
	sum_val_18_out { ap_vld {  { sum_val_18_out out_data 1 32 }  { sum_val_18_out_ap_vld out_vld 1 1 } } }
	prod_val_17_out { ap_vld {  { prod_val_17_out out_data 1 32 }  { prod_val_17_out_ap_vld out_vld 1 1 } } }
	sum_val_17_out { ap_vld {  { sum_val_17_out out_data 1 32 }  { sum_val_17_out_ap_vld out_vld 1 1 } } }
	prod_val_16_out { ap_vld {  { prod_val_16_out out_data 1 32 }  { prod_val_16_out_ap_vld out_vld 1 1 } } }
	sum_val_16_out { ap_vld {  { sum_val_16_out out_data 1 32 }  { sum_val_16_out_ap_vld out_vld 1 1 } } }
	prod_val_15_out { ap_vld {  { prod_val_15_out out_data 1 32 }  { prod_val_15_out_ap_vld out_vld 1 1 } } }
	sum_val_15_out { ap_vld {  { sum_val_15_out out_data 1 32 }  { sum_val_15_out_ap_vld out_vld 1 1 } } }
}
