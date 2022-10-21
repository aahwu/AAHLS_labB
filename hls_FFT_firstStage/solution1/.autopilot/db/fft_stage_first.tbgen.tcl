set moduleName fft_stage_first
set isTopModule 1
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
set C_modelName {fft_stage_first}
set C_modelType { void 0 }
set C_modelArgList {
	{ X_R_0 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ X_R_1 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ X_R_2 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ X_R_3 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ X_I_0 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ X_I_1 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ X_I_2 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ X_I_3 int 32 regular {array 256 { 1 3 } 1 1 }  }
	{ OUT_R_0 int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ OUT_R_1 int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ OUT_R_2 int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ OUT_R_3 int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ OUT_I_0 int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ OUT_I_1 int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ OUT_I_2 int 32 regular {array 256 { 0 3 } 0 1 }  }
	{ OUT_I_3 int 32 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "X_R_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_R_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 62
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ X_R_0_address0 sc_out sc_lv 8 signal 0 } 
	{ X_R_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ X_R_0_q0 sc_in sc_lv 32 signal 0 } 
	{ X_R_1_address0 sc_out sc_lv 8 signal 1 } 
	{ X_R_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ X_R_1_q0 sc_in sc_lv 32 signal 1 } 
	{ X_R_2_address0 sc_out sc_lv 8 signal 2 } 
	{ X_R_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ X_R_2_q0 sc_in sc_lv 32 signal 2 } 
	{ X_R_3_address0 sc_out sc_lv 8 signal 3 } 
	{ X_R_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ X_R_3_q0 sc_in sc_lv 32 signal 3 } 
	{ X_I_0_address0 sc_out sc_lv 8 signal 4 } 
	{ X_I_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ X_I_0_q0 sc_in sc_lv 32 signal 4 } 
	{ X_I_1_address0 sc_out sc_lv 8 signal 5 } 
	{ X_I_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ X_I_1_q0 sc_in sc_lv 32 signal 5 } 
	{ X_I_2_address0 sc_out sc_lv 8 signal 6 } 
	{ X_I_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ X_I_2_q0 sc_in sc_lv 32 signal 6 } 
	{ X_I_3_address0 sc_out sc_lv 8 signal 7 } 
	{ X_I_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ X_I_3_q0 sc_in sc_lv 32 signal 7 } 
	{ OUT_R_0_address0 sc_out sc_lv 8 signal 8 } 
	{ OUT_R_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ OUT_R_0_we0 sc_out sc_logic 1 signal 8 } 
	{ OUT_R_0_d0 sc_out sc_lv 32 signal 8 } 
	{ OUT_R_1_address0 sc_out sc_lv 8 signal 9 } 
	{ OUT_R_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ OUT_R_1_we0 sc_out sc_logic 1 signal 9 } 
	{ OUT_R_1_d0 sc_out sc_lv 32 signal 9 } 
	{ OUT_R_2_address0 sc_out sc_lv 8 signal 10 } 
	{ OUT_R_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ OUT_R_2_we0 sc_out sc_logic 1 signal 10 } 
	{ OUT_R_2_d0 sc_out sc_lv 32 signal 10 } 
	{ OUT_R_3_address0 sc_out sc_lv 8 signal 11 } 
	{ OUT_R_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ OUT_R_3_we0 sc_out sc_logic 1 signal 11 } 
	{ OUT_R_3_d0 sc_out sc_lv 32 signal 11 } 
	{ OUT_I_0_address0 sc_out sc_lv 8 signal 12 } 
	{ OUT_I_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ OUT_I_0_we0 sc_out sc_logic 1 signal 12 } 
	{ OUT_I_0_d0 sc_out sc_lv 32 signal 12 } 
	{ OUT_I_1_address0 sc_out sc_lv 8 signal 13 } 
	{ OUT_I_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_1_we0 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_1_d0 sc_out sc_lv 32 signal 13 } 
	{ OUT_I_2_address0 sc_out sc_lv 8 signal 14 } 
	{ OUT_I_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ OUT_I_2_we0 sc_out sc_logic 1 signal 14 } 
	{ OUT_I_2_d0 sc_out sc_lv 32 signal 14 } 
	{ OUT_I_3_address0 sc_out sc_lv 8 signal 15 } 
	{ OUT_I_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_we0 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_d0 sc_out sc_lv 32 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "X_R_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_0", "role": "address0" }} , 
 	{ "name": "X_R_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_0", "role": "ce0" }} , 
 	{ "name": "X_R_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_0", "role": "q0" }} , 
 	{ "name": "X_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_1", "role": "address0" }} , 
 	{ "name": "X_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_1", "role": "ce0" }} , 
 	{ "name": "X_R_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_1", "role": "q0" }} , 
 	{ "name": "X_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_2", "role": "address0" }} , 
 	{ "name": "X_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_2", "role": "ce0" }} , 
 	{ "name": "X_R_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_2", "role": "q0" }} , 
 	{ "name": "X_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_3", "role": "address0" }} , 
 	{ "name": "X_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_3", "role": "ce0" }} , 
 	{ "name": "X_R_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_3", "role": "q0" }} , 
 	{ "name": "X_I_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_0", "role": "address0" }} , 
 	{ "name": "X_I_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_0", "role": "ce0" }} , 
 	{ "name": "X_I_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_0", "role": "q0" }} , 
 	{ "name": "X_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_1", "role": "address0" }} , 
 	{ "name": "X_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_1", "role": "ce0" }} , 
 	{ "name": "X_I_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_1", "role": "q0" }} , 
 	{ "name": "X_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_2", "role": "address0" }} , 
 	{ "name": "X_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_2", "role": "ce0" }} , 
 	{ "name": "X_I_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_2", "role": "q0" }} , 
 	{ "name": "X_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_3", "role": "address0" }} , 
 	{ "name": "X_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_3", "role": "ce0" }} , 
 	{ "name": "X_I_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_3", "role": "q0" }} , 
 	{ "name": "OUT_R_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "address0" }} , 
 	{ "name": "OUT_R_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "ce0" }} , 
 	{ "name": "OUT_R_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "we0" }} , 
 	{ "name": "OUT_R_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "d0" }} , 
 	{ "name": "OUT_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "address0" }} , 
 	{ "name": "OUT_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "ce0" }} , 
 	{ "name": "OUT_R_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "we0" }} , 
 	{ "name": "OUT_R_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "d0" }} , 
 	{ "name": "OUT_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "address0" }} , 
 	{ "name": "OUT_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "ce0" }} , 
 	{ "name": "OUT_R_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "we0" }} , 
 	{ "name": "OUT_R_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "d0" }} , 
 	{ "name": "OUT_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "address0" }} , 
 	{ "name": "OUT_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "ce0" }} , 
 	{ "name": "OUT_R_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "we0" }} , 
 	{ "name": "OUT_R_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "d0" }} , 
 	{ "name": "OUT_I_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "address0" }} , 
 	{ "name": "OUT_I_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "ce0" }} , 
 	{ "name": "OUT_I_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "we0" }} , 
 	{ "name": "OUT_I_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "d0" }} , 
 	{ "name": "OUT_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "address0" }} , 
 	{ "name": "OUT_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "ce0" }} , 
 	{ "name": "OUT_I_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "we0" }} , 
 	{ "name": "OUT_I_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "d0" }} , 
 	{ "name": "OUT_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "address0" }} , 
 	{ "name": "OUT_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "ce0" }} , 
 	{ "name": "OUT_I_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "we0" }} , 
 	{ "name": "OUT_I_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "d0" }} , 
 	{ "name": "OUT_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "address0" }} , 
 	{ "name": "OUT_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "ce0" }} , 
 	{ "name": "OUT_I_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "we0" }} , 
 	{ "name": "OUT_I_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
		"CDFG" : "fft_stage_first",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "273", "EstimateLatencyMax" : "273",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "X_R_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_R_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "DFTpts", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U13", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U14", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U15", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U16", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_stage_first {
		X_R_0 {Type I LastRead 9 FirstWrite -1}
		X_R_1 {Type I LastRead 0 FirstWrite -1}
		X_R_2 {Type I LastRead 9 FirstWrite -1}
		X_R_3 {Type I LastRead 0 FirstWrite -1}
		X_I_0 {Type I LastRead 9 FirstWrite -1}
		X_I_1 {Type I LastRead 0 FirstWrite -1}
		X_I_2 {Type I LastRead 9 FirstWrite -1}
		X_I_3 {Type I LastRead 0 FirstWrite -1}
		OUT_R_0 {Type O LastRead -1 FirstWrite 16}
		OUT_R_1 {Type O LastRead -1 FirstWrite 16}
		OUT_R_2 {Type O LastRead -1 FirstWrite 16}
		OUT_R_3 {Type O LastRead -1 FirstWrite 16}
		OUT_I_0 {Type O LastRead -1 FirstWrite 16}
		OUT_I_1 {Type O LastRead -1 FirstWrite 16}
		OUT_I_2 {Type O LastRead -1 FirstWrite 16}
		OUT_I_3 {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "273", "Max" : "273"}
	, {"Name" : "Interval", "Min" : "274", "Max" : "274"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	X_R_0 { ap_memory {  { X_R_0_address0 mem_address 1 8 }  { X_R_0_ce0 mem_ce 1 1 }  { X_R_0_q0 in_data 0 32 } } }
	X_R_1 { ap_memory {  { X_R_1_address0 mem_address 1 8 }  { X_R_1_ce0 mem_ce 1 1 }  { X_R_1_q0 in_data 0 32 } } }
	X_R_2 { ap_memory {  { X_R_2_address0 mem_address 1 8 }  { X_R_2_ce0 mem_ce 1 1 }  { X_R_2_q0 in_data 0 32 } } }
	X_R_3 { ap_memory {  { X_R_3_address0 mem_address 1 8 }  { X_R_3_ce0 mem_ce 1 1 }  { X_R_3_q0 in_data 0 32 } } }
	X_I_0 { ap_memory {  { X_I_0_address0 mem_address 1 8 }  { X_I_0_ce0 mem_ce 1 1 }  { X_I_0_q0 in_data 0 32 } } }
	X_I_1 { ap_memory {  { X_I_1_address0 mem_address 1 8 }  { X_I_1_ce0 mem_ce 1 1 }  { X_I_1_q0 in_data 0 32 } } }
	X_I_2 { ap_memory {  { X_I_2_address0 mem_address 1 8 }  { X_I_2_ce0 mem_ce 1 1 }  { X_I_2_q0 in_data 0 32 } } }
	X_I_3 { ap_memory {  { X_I_3_address0 mem_address 1 8 }  { X_I_3_ce0 mem_ce 1 1 }  { X_I_3_q0 in_data 0 32 } } }
	OUT_R_0 { ap_memory {  { OUT_R_0_address0 mem_address 1 8 }  { OUT_R_0_ce0 mem_ce 1 1 }  { OUT_R_0_we0 mem_we 1 1 }  { OUT_R_0_d0 mem_din 1 32 } } }
	OUT_R_1 { ap_memory {  { OUT_R_1_address0 mem_address 1 8 }  { OUT_R_1_ce0 mem_ce 1 1 }  { OUT_R_1_we0 mem_we 1 1 }  { OUT_R_1_d0 mem_din 1 32 } } }
	OUT_R_2 { ap_memory {  { OUT_R_2_address0 mem_address 1 8 }  { OUT_R_2_ce0 mem_ce 1 1 }  { OUT_R_2_we0 mem_we 1 1 }  { OUT_R_2_d0 mem_din 1 32 } } }
	OUT_R_3 { ap_memory {  { OUT_R_3_address0 mem_address 1 8 }  { OUT_R_3_ce0 mem_ce 1 1 }  { OUT_R_3_we0 mem_we 1 1 }  { OUT_R_3_d0 mem_din 1 32 } } }
	OUT_I_0 { ap_memory {  { OUT_I_0_address0 mem_address 1 8 }  { OUT_I_0_ce0 mem_ce 1 1 }  { OUT_I_0_we0 mem_we 1 1 }  { OUT_I_0_d0 mem_din 1 32 } } }
	OUT_I_1 { ap_memory {  { OUT_I_1_address0 mem_address 1 8 }  { OUT_I_1_ce0 mem_ce 1 1 }  { OUT_I_1_we0 mem_we 1 1 }  { OUT_I_1_d0 mem_din 1 32 } } }
	OUT_I_2 { ap_memory {  { OUT_I_2_address0 mem_address 1 8 }  { OUT_I_2_ce0 mem_ce 1 1 }  { OUT_I_2_we0 mem_we 1 1 }  { OUT_I_2_d0 mem_din 1 32 } } }
	OUT_I_3 { ap_memory {  { OUT_I_3_address0 mem_address 1 8 }  { OUT_I_3_ce0 mem_ce 1 1 }  { OUT_I_3_we0 mem_we 1 1 }  { OUT_I_3_d0 mem_din 1 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
