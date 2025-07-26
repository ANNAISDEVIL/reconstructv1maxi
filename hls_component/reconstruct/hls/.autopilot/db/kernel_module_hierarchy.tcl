set ModuleHierarchy {[{
"Name" : "reconstruct","ID" : "0","Type" : "sequential",
"SubLoops" : [
	{"Name" : "VITIS_LOOP_241_1","ID" : "1","Type" : "no",
	"SubInsts" : [
	{"Name" : "dataflow_in_loop_VITIS_LOOP_241_1_1_U0","ID" : "2","Type" : "dataflow",
			"SubInsts" : [
			{"Name" : "getLocalImages_single_U0","ID" : "3","Type" : "sequential"},
			{"Name" : "Image_extract_U0","ID" : "4","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_Image_extract_Pipeline_VITIS_LOOP_81_1_fu_7811","ID" : "5","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_81_1","ID" : "6","Type" : "pipeline"},]},]},
			{"Name" : "matrix_sum_prod_U0","ID" : "7","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_matrix_sum_prod_Pipeline_VITIS_LOOP_191_1_fu_15504","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_191_1","ID" : "9","Type" : "pipeline"},]},]},
			{"Name" : "p_loc_channel_U","ID" : "10","Type" : "sequential"},
			{"Name" : "post_process_U0","ID" : "11","Type" : "pipeline"},]},]},]
}]}