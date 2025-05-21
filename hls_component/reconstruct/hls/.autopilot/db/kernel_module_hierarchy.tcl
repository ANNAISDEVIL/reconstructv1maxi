set ModuleHierarchy {[{
"Name" : "reconstruct","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "getLocalImages_U0","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_getLocalImages_Pipeline_copy_loop_fu_872","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "copy_loop","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_getLocalImages_Pipeline_process_loop_fu_1080","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "process_loop","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "applyProjectors_U0","ID" : "6","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_72_1","ID" : "7","Type" : "no",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_91_2","ID" : "8","Type" : "no",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_98_3","ID" : "9","Type" : "no"},]},]},]},]
}]}