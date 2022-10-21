set moduleName fft_Pipeline_DFTpts
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {fft_Pipeline_DFTpts}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln98_1 int 10 regular  }
	{ trunc_ln int 10 regular  }
	{ X_R int 32 regular {array 1024 { 2 2 } 1 1 }  }
	{ c2 float 32 regular  }
	{ X_I int 32 regular {array 1024 { 2 2 } 1 1 }  }
	{ s2 float 32 regular  }
	{ zext_ln98 int 11 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln98_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "X_R", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "c2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "s2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln98", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln98_1 sc_in sc_lv 10 signal 0 } 
	{ trunc_ln sc_in sc_lv 10 signal 1 } 
	{ X_R_address0 sc_out sc_lv 10 signal 2 } 
	{ X_R_ce0 sc_out sc_logic 1 signal 2 } 
	{ X_R_we0 sc_out sc_logic 1 signal 2 } 
	{ X_R_d0 sc_out sc_lv 32 signal 2 } 
	{ X_R_q0 sc_in sc_lv 32 signal 2 } 
	{ X_R_address1 sc_out sc_lv 10 signal 2 } 
	{ X_R_ce1 sc_out sc_logic 1 signal 2 } 
	{ X_R_we1 sc_out sc_logic 1 signal 2 } 
	{ X_R_d1 sc_out sc_lv 32 signal 2 } 
	{ X_R_q1 sc_in sc_lv 32 signal 2 } 
	{ c2 sc_in sc_lv 32 signal 3 } 
	{ X_I_address0 sc_out sc_lv 10 signal 4 } 
	{ X_I_ce0 sc_out sc_logic 1 signal 4 } 
	{ X_I_we0 sc_out sc_logic 1 signal 4 } 
	{ X_I_d0 sc_out sc_lv 32 signal 4 } 
	{ X_I_q0 sc_in sc_lv 32 signal 4 } 
	{ X_I_address1 sc_out sc_lv 10 signal 4 } 
	{ X_I_ce1 sc_out sc_logic 1 signal 4 } 
	{ X_I_we1 sc_out sc_logic 1 signal 4 } 
	{ X_I_d1 sc_out sc_lv 32 signal 4 } 
	{ X_I_q1 sc_in sc_lv 32 signal 4 } 
	{ s2 sc_in sc_lv 32 signal 5 } 
	{ zext_ln98 sc_in sc_lv 11 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln98_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "zext_ln98_1", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "X_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R", "role": "address0" }} , 
 	{ "name": "X_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "ce0" }} , 
 	{ "name": "X_R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "we0" }} , 
 	{ "name": "X_R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "d0" }} , 
 	{ "name": "X_R_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "q0" }} , 
 	{ "name": "X_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_R", "role": "address1" }} , 
 	{ "name": "X_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "ce1" }} , 
 	{ "name": "X_R_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R", "role": "we1" }} , 
 	{ "name": "X_R_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "d1" }} , 
 	{ "name": "X_R_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R", "role": "q1" }} , 
 	{ "name": "c2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c2", "role": "default" }} , 
 	{ "name": "X_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I", "role": "address0" }} , 
 	{ "name": "X_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "ce0" }} , 
 	{ "name": "X_I_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "we0" }} , 
 	{ "name": "X_I_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "d0" }} , 
 	{ "name": "X_I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "q0" }} , 
 	{ "name": "X_I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "X_I", "role": "address1" }} , 
 	{ "name": "X_I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "ce1" }} , 
 	{ "name": "X_I_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I", "role": "we1" }} , 
 	{ "name": "X_I_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "d1" }} , 
 	{ "name": "X_I_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I", "role": "q1" }} , 
 	{ "name": "s2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s2", "role": "default" }} , 
 	{ "name": "zext_ln98", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "zext_ln98", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "fft_Pipeline_DFTpts",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state18_pp0_iter1_stage8", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_104", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter1_stage8", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_104", "FromFinalSV" : "17", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter0_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "2", "ToAddress" : "X_R_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:66:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter0_stage1", "ap_enable_state11_pp0_iter1_stage1"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter1_stage8", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_104", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter1_stage8", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_104", "FromFinalSV" : "17", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state11_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_84", "ToInitialSV" : "10", "ToFinalState" : "ap_enable_state12_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_89", "ToFinalSV" : "11", "ToAddress" : "X_R_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:66:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state11_pp0_iter1_stage1"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter1_stage8", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_104", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter1_stage8", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_104", "FromFinalSV" : "17", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_107", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state20_pp0_iter2_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_109", "ToFinalSV" : "19", "ToAddress" : "X_R_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:66:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter1_stage8", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_104", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter1_stage8", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_104", "FromFinalSV" : "17", "FromAddress" : "X_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state26_pp0_iter2_stage7", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_125", "ToInitialSV" : "25", "ToFinalState" : "ap_enable_state26_pp0_iter2_stage7", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_125", "ToFinalSV" : "25", "ToAddress" : "X_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:66:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter1_stage8", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_106", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter1_stage8", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "17", "FromAddress" : "X_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter0_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "2", "ToAddress" : "X_I_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:68:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter0_stage1", "ap_enable_state11_pp0_iter1_stage1"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter1_stage8", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_106", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter1_stage8", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "17", "FromAddress" : "X_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state11_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_86", "ToInitialSV" : "10", "ToFinalState" : "ap_enable_state12_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "11", "ToAddress" : "X_I_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:68:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state11_pp0_iter1_stage1"]},
			{"FromInitialState" : "ap_enable_state18_pp0_iter1_stage8", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_106", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter1_stage8", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "17", "FromAddress" : "X_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_108", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state20_pp0_iter2_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "19", "ToAddress" : "X_I_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:68:9)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state18_pp0_iter1_stage8", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_106", "FromInitialSV" : "17", "FromFinalState" : "ap_enable_state18_pp0_iter1_stage8", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_106", "FromFinalSV" : "17", "FromAddress" : "X_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state26_pp0_iter2_stage7", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_127", "ToInitialSV" : "25", "ToFinalState" : "ap_enable_state26_pp0_iter2_stage7", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_127", "ToFinalSV" : "25", "ToAddress" : "X_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:68:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state26_pp0_iter2_stage7", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_125", "FromInitialSV" : "25", "FromFinalState" : "ap_enable_state26_pp0_iter2_stage7", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_125", "FromFinalSV" : "25", "FromAddress" : "X_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter0_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "2", "ToAddress" : "X_R_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:66:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter0_stage1", "ap_enable_state11_pp0_iter1_stage1", "ap_enable_state20_pp0_iter2_stage1"]},
			{"FromInitialState" : "ap_enable_state26_pp0_iter2_stage7", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_125", "FromInitialSV" : "25", "FromFinalState" : "ap_enable_state26_pp0_iter2_stage7", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_125", "FromFinalSV" : "25", "FromAddress" : "X_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state11_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_84", "ToInitialSV" : "10", "ToFinalState" : "ap_enable_state12_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_89", "ToFinalSV" : "11", "ToAddress" : "X_R_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:66:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state11_pp0_iter1_stage1", "ap_enable_state20_pp0_iter2_stage1"]},
			{"FromInitialState" : "ap_enable_state26_pp0_iter2_stage7", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_125", "FromInitialSV" : "25", "FromFinalState" : "ap_enable_state26_pp0_iter2_stage7", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_125", "FromFinalSV" : "25", "FromAddress" : "X_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter1_stage8", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_104", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter1_stage8", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_104", "ToFinalSV" : "17", "ToAddress" : "X_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:66:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state18_pp0_iter1_stage8"]},
			{"FromInitialState" : "ap_enable_state26_pp0_iter2_stage7", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_125", "FromInitialSV" : "25", "FromFinalState" : "ap_enable_state26_pp0_iter2_stage7", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_125", "FromFinalSV" : "25", "FromAddress" : "X_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_107", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state20_pp0_iter2_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_109", "ToFinalSV" : "19", "ToAddress" : "X_R_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:66:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state19_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state26_pp0_iter2_stage7", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_127", "FromInitialSV" : "25", "FromFinalState" : "ap_enable_state26_pp0_iter2_stage7", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_127", "FromFinalSV" : "25", "FromAddress" : "X_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter0_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter0_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "2", "ToAddress" : "X_I_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:68:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter0_stage1", "ap_enable_state11_pp0_iter1_stage1", "ap_enable_state20_pp0_iter2_stage1"]},
			{"FromInitialState" : "ap_enable_state26_pp0_iter2_stage7", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_127", "FromInitialSV" : "25", "FromFinalState" : "ap_enable_state26_pp0_iter2_stage7", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_127", "FromFinalSV" : "25", "FromAddress" : "X_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state11_pp0_iter1_stage1", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_86", "ToInitialSV" : "10", "ToFinalState" : "ap_enable_state12_pp0_iter1_stage2", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_90", "ToFinalSV" : "11", "ToAddress" : "X_I_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:68:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state11_pp0_iter1_stage1", "ap_enable_state20_pp0_iter2_stage1"]},
			{"FromInitialState" : "ap_enable_state26_pp0_iter2_stage7", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_127", "FromInitialSV" : "25", "FromFinalState" : "ap_enable_state26_pp0_iter2_stage7", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_127", "FromFinalSV" : "25", "FromAddress" : "X_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state18_pp0_iter1_stage8", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_106", "ToInitialSV" : "17", "ToFinalState" : "ap_enable_state18_pp0_iter1_stage8", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_106", "ToFinalSV" : "17", "ToAddress" : "X_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:68:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state18_pp0_iter1_stage8"]},
			{"FromInitialState" : "ap_enable_state26_pp0_iter2_stage7", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_127", "FromInitialSV" : "25", "FromFinalState" : "ap_enable_state26_pp0_iter2_stage7", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_127", "FromFinalSV" : "25", "FromAddress" : "X_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_108", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state20_pp0_iter2_stage1", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "19", "ToAddress" : "X_I_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "10", "II" : "9", "Pragma" : "(../FFT/FFT/HLS/0_Initial/fft.cpp:68:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state19_pp0_iter2_stage0"]}],
		"Port" : [
			{"Name" : "zext_ln98_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "X_R", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "c2", "Type" : "None", "Direction" : "I"},
			{"Name" : "X_I", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln98", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFTpts", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage7", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage7_subdone", "QuitState" : "ap_ST_fsm_pp0_stage7", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage7_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_5_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U5", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U6", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U7", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U8", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_Pipeline_DFTpts {
		zext_ln98_1 {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		X_R {Type IO LastRead 18 FirstWrite 17}
		c2 {Type I LastRead 0 FirstWrite -1}
		X_I {Type IO LastRead 18 FirstWrite 17}
		s2 {Type I LastRead 0 FirstWrite -1}
		zext_ln98 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln98_1 { ap_none {  { zext_ln98_1 in_data 0 10 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 10 } } }
	X_R { ap_memory {  { X_R_address0 mem_address 1 10 }  { X_R_ce0 mem_ce 1 1 }  { X_R_we0 mem_we 1 1 }  { X_R_d0 mem_din 1 32 }  { X_R_q0 mem_dout 0 32 }  { X_R_address1 MemPortADDR2 1 10 }  { X_R_ce1 MemPortCE2 1 1 }  { X_R_we1 MemPortWE2 1 1 }  { X_R_d1 MemPortDIN2 1 32 }  { X_R_q1 MemPortDOUT2 0 32 } } }
	c2 { ap_none {  { c2 in_data 0 32 } } }
	X_I { ap_memory {  { X_I_address0 mem_address 1 10 }  { X_I_ce0 mem_ce 1 1 }  { X_I_we0 mem_we 1 1 }  { X_I_d0 mem_din 1 32 }  { X_I_q0 mem_dout 0 32 }  { X_I_address1 MemPortADDR2 1 10 }  { X_I_ce1 MemPortCE2 1 1 }  { X_I_we1 MemPortWE2 1 1 }  { X_I_d1 MemPortDIN2 1 32 }  { X_I_q1 MemPortDOUT2 0 32 } } }
	s2 { ap_none {  { s2 in_data 0 32 } } }
	zext_ln98 { ap_none {  { zext_ln98 in_data 0 11 } } }
}
