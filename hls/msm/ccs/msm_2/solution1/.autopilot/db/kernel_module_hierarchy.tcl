set ModuleHierarchy {[{
"Name" : "msm","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "entry_proc_U0","ID" : "1","Type" : "sequential"},
	{"Name" : "data_loader_U0","ID" : "2","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "DATA_LOAD_LOOP","ID" : "3","Type" : "pipeline"},]},
	{"Name" : "pippenger_control_U0","ID" : "4","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_aggregate_and_output_results_fu_163","ID" : "5","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "AGGREGATE_AND_OUT","ID" : "6","Type" : "no"},]},],
		"SubLoops" : [
		{"Name" : "MAIN_LOOP","ID" : "7","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_pippenger_control_Pipeline_PARTITION_SCALAR_fu_155","ID" : "8","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "PARTITION_SCALAR","ID" : "9","Type" : "pipeline"},]},
		{"Name" : "grp_pippenger_control_Pipeline_PUT_INTO_BUCKETS_LOOP_fu_177","ID" : "10","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "PUT_INTO_BUCKETS_LOOP","ID" : "11","Type" : "pipeline",
				"SubInsts" : [
				{"Name" : "grp_edwards_point_add_fu_300","ID" : "12","Type" : "pipeline"},]},]},]},]},
	{"Name" : "WriteBack_U0","ID" : "13","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_586_1_VITIS_LOOP_588_2","ID" : "14","Type" : "pipeline"},]},]
}]}