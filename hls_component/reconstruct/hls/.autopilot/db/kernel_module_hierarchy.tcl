set ModuleHierarchy {[{
"Name" : "reconstruct","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "VITIS_LOOP_149_1","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "dataflow_in_loop_VITIS_LOOP_149_1_1_U0","ID" : "2","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "getLocalImages_single_U0","ID" : "3","Type" : "sequential"},
			{"Name" : "curr_imageProjs_U","ID" : "4","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_Image_extract_Pipeline_VITIS_LOOP_77_1_VITIS_LOOP_78_2_fu_239","ID" : "5","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_77_1_VITIS_LOOP_78_2","ID" : "6","Type" : "pipeline"},]},]},
			{"Name" : "conv_kernel_U0","ID" : "7","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_conv_kernel_Pipeline_VITIS_LOOP_101_1_fu_18054","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_101_1","ID" : "9","Type" : "pipeline"},]},]},
			{"Name" : "call_ret_U","ID" : "10","Type" : "sequential"},
			{"Name" : "post_process_U0","ID" : "11","Type" : "sequential"},]},]},]
}]}