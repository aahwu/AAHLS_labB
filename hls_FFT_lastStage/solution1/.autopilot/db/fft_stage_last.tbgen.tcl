set moduleName fft_stage_last
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
set C_modelName {fft_stage_last}
set C_modelType { void 0 }
set C_modelArgList {
	{ X_R_0 int 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_R_1 int 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_R_2 int 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_R_3 int 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_I_0 int 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_I_1 int 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_I_2 int 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_I_3 int 32 regular {array 256 { 1 1 } 1 1 }  }
	{ OUT_R_0 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_R_1 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_R_2 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_R_3 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_0 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_1 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_2 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_3 int 32 regular {array 256 { 0 0 } 0 1 }  }
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
set portNum 118
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
	{ X_R_0_address1 sc_out sc_lv 8 signal 0 } 
	{ X_R_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ X_R_0_q1 sc_in sc_lv 32 signal 0 } 
	{ X_R_1_address0 sc_out sc_lv 8 signal 1 } 
	{ X_R_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ X_R_1_q0 sc_in sc_lv 32 signal 1 } 
	{ X_R_1_address1 sc_out sc_lv 8 signal 1 } 
	{ X_R_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ X_R_1_q1 sc_in sc_lv 32 signal 1 } 
	{ X_R_2_address0 sc_out sc_lv 8 signal 2 } 
	{ X_R_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ X_R_2_q0 sc_in sc_lv 32 signal 2 } 
	{ X_R_2_address1 sc_out sc_lv 8 signal 2 } 
	{ X_R_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ X_R_2_q1 sc_in sc_lv 32 signal 2 } 
	{ X_R_3_address0 sc_out sc_lv 8 signal 3 } 
	{ X_R_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ X_R_3_q0 sc_in sc_lv 32 signal 3 } 
	{ X_R_3_address1 sc_out sc_lv 8 signal 3 } 
	{ X_R_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ X_R_3_q1 sc_in sc_lv 32 signal 3 } 
	{ X_I_0_address0 sc_out sc_lv 8 signal 4 } 
	{ X_I_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ X_I_0_q0 sc_in sc_lv 32 signal 4 } 
	{ X_I_0_address1 sc_out sc_lv 8 signal 4 } 
	{ X_I_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ X_I_0_q1 sc_in sc_lv 32 signal 4 } 
	{ X_I_1_address0 sc_out sc_lv 8 signal 5 } 
	{ X_I_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ X_I_1_q0 sc_in sc_lv 32 signal 5 } 
	{ X_I_1_address1 sc_out sc_lv 8 signal 5 } 
	{ X_I_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ X_I_1_q1 sc_in sc_lv 32 signal 5 } 
	{ X_I_2_address0 sc_out sc_lv 8 signal 6 } 
	{ X_I_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ X_I_2_q0 sc_in sc_lv 32 signal 6 } 
	{ X_I_2_address1 sc_out sc_lv 8 signal 6 } 
	{ X_I_2_ce1 sc_out sc_logic 1 signal 6 } 
	{ X_I_2_q1 sc_in sc_lv 32 signal 6 } 
	{ X_I_3_address0 sc_out sc_lv 8 signal 7 } 
	{ X_I_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ X_I_3_q0 sc_in sc_lv 32 signal 7 } 
	{ X_I_3_address1 sc_out sc_lv 8 signal 7 } 
	{ X_I_3_ce1 sc_out sc_logic 1 signal 7 } 
	{ X_I_3_q1 sc_in sc_lv 32 signal 7 } 
	{ OUT_R_0_address0 sc_out sc_lv 8 signal 8 } 
	{ OUT_R_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ OUT_R_0_we0 sc_out sc_logic 1 signal 8 } 
	{ OUT_R_0_d0 sc_out sc_lv 32 signal 8 } 
	{ OUT_R_0_address1 sc_out sc_lv 8 signal 8 } 
	{ OUT_R_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ OUT_R_0_we1 sc_out sc_logic 1 signal 8 } 
	{ OUT_R_0_d1 sc_out sc_lv 32 signal 8 } 
	{ OUT_R_1_address0 sc_out sc_lv 8 signal 9 } 
	{ OUT_R_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ OUT_R_1_we0 sc_out sc_logic 1 signal 9 } 
	{ OUT_R_1_d0 sc_out sc_lv 32 signal 9 } 
	{ OUT_R_1_address1 sc_out sc_lv 8 signal 9 } 
	{ OUT_R_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ OUT_R_1_we1 sc_out sc_logic 1 signal 9 } 
	{ OUT_R_1_d1 sc_out sc_lv 32 signal 9 } 
	{ OUT_R_2_address0 sc_out sc_lv 8 signal 10 } 
	{ OUT_R_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ OUT_R_2_we0 sc_out sc_logic 1 signal 10 } 
	{ OUT_R_2_d0 sc_out sc_lv 32 signal 10 } 
	{ OUT_R_2_address1 sc_out sc_lv 8 signal 10 } 
	{ OUT_R_2_ce1 sc_out sc_logic 1 signal 10 } 
	{ OUT_R_2_we1 sc_out sc_logic 1 signal 10 } 
	{ OUT_R_2_d1 sc_out sc_lv 32 signal 10 } 
	{ OUT_R_3_address0 sc_out sc_lv 8 signal 11 } 
	{ OUT_R_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ OUT_R_3_we0 sc_out sc_logic 1 signal 11 } 
	{ OUT_R_3_d0 sc_out sc_lv 32 signal 11 } 
	{ OUT_R_3_address1 sc_out sc_lv 8 signal 11 } 
	{ OUT_R_3_ce1 sc_out sc_logic 1 signal 11 } 
	{ OUT_R_3_we1 sc_out sc_logic 1 signal 11 } 
	{ OUT_R_3_d1 sc_out sc_lv 32 signal 11 } 
	{ OUT_I_0_address0 sc_out sc_lv 8 signal 12 } 
	{ OUT_I_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ OUT_I_0_we0 sc_out sc_logic 1 signal 12 } 
	{ OUT_I_0_d0 sc_out sc_lv 32 signal 12 } 
	{ OUT_I_0_address1 sc_out sc_lv 8 signal 12 } 
	{ OUT_I_0_ce1 sc_out sc_logic 1 signal 12 } 
	{ OUT_I_0_we1 sc_out sc_logic 1 signal 12 } 
	{ OUT_I_0_d1 sc_out sc_lv 32 signal 12 } 
	{ OUT_I_1_address0 sc_out sc_lv 8 signal 13 } 
	{ OUT_I_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_1_we0 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_1_d0 sc_out sc_lv 32 signal 13 } 
	{ OUT_I_1_address1 sc_out sc_lv 8 signal 13 } 
	{ OUT_I_1_ce1 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_1_we1 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_1_d1 sc_out sc_lv 32 signal 13 } 
	{ OUT_I_2_address0 sc_out sc_lv 8 signal 14 } 
	{ OUT_I_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ OUT_I_2_we0 sc_out sc_logic 1 signal 14 } 
	{ OUT_I_2_d0 sc_out sc_lv 32 signal 14 } 
	{ OUT_I_2_address1 sc_out sc_lv 8 signal 14 } 
	{ OUT_I_2_ce1 sc_out sc_logic 1 signal 14 } 
	{ OUT_I_2_we1 sc_out sc_logic 1 signal 14 } 
	{ OUT_I_2_d1 sc_out sc_lv 32 signal 14 } 
	{ OUT_I_3_address0 sc_out sc_lv 8 signal 15 } 
	{ OUT_I_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_we0 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_d0 sc_out sc_lv 32 signal 15 } 
	{ OUT_I_3_address1 sc_out sc_lv 8 signal 15 } 
	{ OUT_I_3_ce1 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_we1 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_d1 sc_out sc_lv 32 signal 15 } 
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
 	{ "name": "X_R_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_0", "role": "address1" }} , 
 	{ "name": "X_R_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_0", "role": "ce1" }} , 
 	{ "name": "X_R_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_0", "role": "q1" }} , 
 	{ "name": "X_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_1", "role": "address0" }} , 
 	{ "name": "X_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_1", "role": "ce0" }} , 
 	{ "name": "X_R_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_1", "role": "q0" }} , 
 	{ "name": "X_R_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_1", "role": "address1" }} , 
 	{ "name": "X_R_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_1", "role": "ce1" }} , 
 	{ "name": "X_R_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_1", "role": "q1" }} , 
 	{ "name": "X_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_2", "role": "address0" }} , 
 	{ "name": "X_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_2", "role": "ce0" }} , 
 	{ "name": "X_R_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_2", "role": "q0" }} , 
 	{ "name": "X_R_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_2", "role": "address1" }} , 
 	{ "name": "X_R_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_2", "role": "ce1" }} , 
 	{ "name": "X_R_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_2", "role": "q1" }} , 
 	{ "name": "X_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_3", "role": "address0" }} , 
 	{ "name": "X_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_3", "role": "ce0" }} , 
 	{ "name": "X_R_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_3", "role": "q0" }} , 
 	{ "name": "X_R_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_R_3", "role": "address1" }} , 
 	{ "name": "X_R_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_R_3", "role": "ce1" }} , 
 	{ "name": "X_R_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_R_3", "role": "q1" }} , 
 	{ "name": "X_I_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_0", "role": "address0" }} , 
 	{ "name": "X_I_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_0", "role": "ce0" }} , 
 	{ "name": "X_I_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_0", "role": "q0" }} , 
 	{ "name": "X_I_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_0", "role": "address1" }} , 
 	{ "name": "X_I_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_0", "role": "ce1" }} , 
 	{ "name": "X_I_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_0", "role": "q1" }} , 
 	{ "name": "X_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_1", "role": "address0" }} , 
 	{ "name": "X_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_1", "role": "ce0" }} , 
 	{ "name": "X_I_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_1", "role": "q0" }} , 
 	{ "name": "X_I_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_1", "role": "address1" }} , 
 	{ "name": "X_I_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_1", "role": "ce1" }} , 
 	{ "name": "X_I_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_1", "role": "q1" }} , 
 	{ "name": "X_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_2", "role": "address0" }} , 
 	{ "name": "X_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_2", "role": "ce0" }} , 
 	{ "name": "X_I_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_2", "role": "q0" }} , 
 	{ "name": "X_I_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_2", "role": "address1" }} , 
 	{ "name": "X_I_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_2", "role": "ce1" }} , 
 	{ "name": "X_I_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_2", "role": "q1" }} , 
 	{ "name": "X_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_3", "role": "address0" }} , 
 	{ "name": "X_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_3", "role": "ce0" }} , 
 	{ "name": "X_I_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_3", "role": "q0" }} , 
 	{ "name": "X_I_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "X_I_3", "role": "address1" }} , 
 	{ "name": "X_I_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "X_I_3", "role": "ce1" }} , 
 	{ "name": "X_I_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "X_I_3", "role": "q1" }} , 
 	{ "name": "OUT_R_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "address0" }} , 
 	{ "name": "OUT_R_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "ce0" }} , 
 	{ "name": "OUT_R_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "we0" }} , 
 	{ "name": "OUT_R_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "d0" }} , 
 	{ "name": "OUT_R_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "address1" }} , 
 	{ "name": "OUT_R_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "ce1" }} , 
 	{ "name": "OUT_R_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "we1" }} , 
 	{ "name": "OUT_R_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "d1" }} , 
 	{ "name": "OUT_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "address0" }} , 
 	{ "name": "OUT_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "ce0" }} , 
 	{ "name": "OUT_R_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "we0" }} , 
 	{ "name": "OUT_R_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "d0" }} , 
 	{ "name": "OUT_R_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "address1" }} , 
 	{ "name": "OUT_R_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "ce1" }} , 
 	{ "name": "OUT_R_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "we1" }} , 
 	{ "name": "OUT_R_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "d1" }} , 
 	{ "name": "OUT_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "address0" }} , 
 	{ "name": "OUT_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "ce0" }} , 
 	{ "name": "OUT_R_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "we0" }} , 
 	{ "name": "OUT_R_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "d0" }} , 
 	{ "name": "OUT_R_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "address1" }} , 
 	{ "name": "OUT_R_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "ce1" }} , 
 	{ "name": "OUT_R_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "we1" }} , 
 	{ "name": "OUT_R_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "d1" }} , 
 	{ "name": "OUT_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "address0" }} , 
 	{ "name": "OUT_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "ce0" }} , 
 	{ "name": "OUT_R_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "we0" }} , 
 	{ "name": "OUT_R_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "d0" }} , 
 	{ "name": "OUT_R_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "address1" }} , 
 	{ "name": "OUT_R_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "ce1" }} , 
 	{ "name": "OUT_R_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "we1" }} , 
 	{ "name": "OUT_R_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "d1" }} , 
 	{ "name": "OUT_I_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "address0" }} , 
 	{ "name": "OUT_I_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "ce0" }} , 
 	{ "name": "OUT_I_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "we0" }} , 
 	{ "name": "OUT_I_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "d0" }} , 
 	{ "name": "OUT_I_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "address1" }} , 
 	{ "name": "OUT_I_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "ce1" }} , 
 	{ "name": "OUT_I_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "we1" }} , 
 	{ "name": "OUT_I_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "d1" }} , 
 	{ "name": "OUT_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "address0" }} , 
 	{ "name": "OUT_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "ce0" }} , 
 	{ "name": "OUT_I_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "we0" }} , 
 	{ "name": "OUT_I_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "d0" }} , 
 	{ "name": "OUT_I_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "address1" }} , 
 	{ "name": "OUT_I_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "ce1" }} , 
 	{ "name": "OUT_I_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "we1" }} , 
 	{ "name": "OUT_I_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "d1" }} , 
 	{ "name": "OUT_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "address0" }} , 
 	{ "name": "OUT_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "ce0" }} , 
 	{ "name": "OUT_I_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "we0" }} , 
 	{ "name": "OUT_I_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "d0" }} , 
 	{ "name": "OUT_I_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "address1" }} , 
 	{ "name": "OUT_I_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "ce1" }} , 
 	{ "name": "OUT_I_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "we1" }} , 
 	{ "name": "OUT_I_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "d1" }} , 
 	{ "name": "OUT_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "address0" }} , 
 	{ "name": "OUT_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "ce0" }} , 
 	{ "name": "OUT_I_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "we0" }} , 
 	{ "name": "OUT_I_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "d0" }} , 
 	{ "name": "OUT_I_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "address1" }} , 
 	{ "name": "OUT_I_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "ce1" }} , 
 	{ "name": "OUT_I_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "we1" }} , 
 	{ "name": "OUT_I_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"],
		"CDFG" : "fft_stage_last",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_279", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_279", "FromFinalSV" : "16", "FromAddress" : "OUT_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_292", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_292", "ToFinalSV" : "16", "ToAddress" : "OUT_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:31:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_281", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_281", "FromFinalSV" : "16", "FromAddress" : "OUT_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_294", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_294", "ToFinalSV" : "16", "ToAddress" : "OUT_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:30:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_284", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_284", "FromFinalSV" : "16", "FromAddress" : "OUT_R_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_297", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_297", "ToFinalSV" : "16", "ToAddress" : "OUT_R_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:31:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_286", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_286", "FromFinalSV" : "16", "FromAddress" : "OUT_I_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_299", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_299", "ToFinalSV" : "16", "ToAddress" : "OUT_I_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:30:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_292", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_292", "FromFinalSV" : "16", "FromAddress" : "OUT_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_279", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_279", "ToFinalSV" : "16", "ToAddress" : "OUT_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:31:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_294", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_294", "FromFinalSV" : "16", "FromAddress" : "OUT_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_281", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_281", "ToFinalSV" : "16", "ToAddress" : "OUT_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:30:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_297", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_297", "FromFinalSV" : "16", "FromAddress" : "OUT_R_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_284", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_284", "ToFinalSV" : "16", "ToAddress" : "OUT_R_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:31:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_299", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_299", "FromFinalSV" : "16", "FromAddress" : "OUT_I_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_286", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_286", "ToFinalSV" : "16", "ToAddress" : "OUT_I_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:30:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_302", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_302", "FromFinalSV" : "16", "FromAddress" : "OUT_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_312", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_312", "ToFinalSV" : "16", "ToAddress" : "OUT_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:31:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_304", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_304", "FromFinalSV" : "16", "FromAddress" : "OUT_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_314", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_314", "ToFinalSV" : "16", "ToAddress" : "OUT_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:30:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_307", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_307", "FromFinalSV" : "16", "FromAddress" : "OUT_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_317", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_317", "ToFinalSV" : "16", "ToAddress" : "OUT_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:31:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_309", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_309", "FromFinalSV" : "16", "FromAddress" : "OUT_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_319", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_319", "ToFinalSV" : "16", "ToAddress" : "OUT_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:30:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_312", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_312", "FromFinalSV" : "16", "FromAddress" : "OUT_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_302", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_302", "ToFinalSV" : "16", "ToAddress" : "OUT_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:31:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_314", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_314", "FromFinalSV" : "16", "FromAddress" : "OUT_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_304", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_304", "ToFinalSV" : "16", "ToAddress" : "OUT_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:30:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_317", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_317", "FromFinalSV" : "16", "FromAddress" : "OUT_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_307", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_307", "ToFinalSV" : "16", "ToAddress" : "OUT_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:31:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_319", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_319", "FromFinalSV" : "16", "FromAddress" : "OUT_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_309", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_309", "ToFinalSV" : "16", "ToAddress" : "OUT_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/1_Subcomponents/fft_stage_last/fft_stage_last.cpp:30:9)", "Type" : "WAW"}],
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
			{"Name" : "OUT_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_real_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_imag_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U5", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U6", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U7", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U8", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U9", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U10", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U11", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U12", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U13", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U14", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U15", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U16", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U17", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U18", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U19", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U20", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U21", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U22", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U23", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U24", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U25", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U26", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U27", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U28", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft_stage_last {
		X_R_0 {Type I LastRead 10 FirstWrite -1}
		X_R_1 {Type I LastRead 10 FirstWrite -1}
		X_R_2 {Type I LastRead 1 FirstWrite -1}
		X_R_3 {Type I LastRead 1 FirstWrite -1}
		X_I_0 {Type I LastRead 10 FirstWrite -1}
		X_I_1 {Type I LastRead 10 FirstWrite -1}
		X_I_2 {Type I LastRead 1 FirstWrite -1}
		X_I_3 {Type I LastRead 1 FirstWrite -1}
		OUT_R_0 {Type O LastRead -1 FirstWrite 16}
		OUT_R_1 {Type O LastRead -1 FirstWrite 16}
		OUT_R_2 {Type O LastRead -1 FirstWrite 16}
		OUT_R_3 {Type O LastRead -1 FirstWrite 16}
		OUT_I_0 {Type O LastRead -1 FirstWrite 16}
		OUT_I_1 {Type O LastRead -1 FirstWrite 16}
		OUT_I_2 {Type O LastRead -1 FirstWrite 16}
		OUT_I_3 {Type O LastRead -1 FirstWrite 16}
		W_real {Type I LastRead -1 FirstWrite -1}
		W_imag {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "273", "Max" : "273"}
	, {"Name" : "Interval", "Min" : "274", "Max" : "274"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	X_R_0 { ap_memory {  { X_R_0_address0 mem_address 1 8 }  { X_R_0_ce0 mem_ce 1 1 }  { X_R_0_q0 in_data 0 32 }  { X_R_0_address1 MemPortADDR2 1 8 }  { X_R_0_ce1 MemPortCE2 1 1 }  { X_R_0_q1 in_data 0 32 } } }
	X_R_1 { ap_memory {  { X_R_1_address0 mem_address 1 8 }  { X_R_1_ce0 mem_ce 1 1 }  { X_R_1_q0 in_data 0 32 }  { X_R_1_address1 MemPortADDR2 1 8 }  { X_R_1_ce1 MemPortCE2 1 1 }  { X_R_1_q1 in_data 0 32 } } }
	X_R_2 { ap_memory {  { X_R_2_address0 mem_address 1 8 }  { X_R_2_ce0 mem_ce 1 1 }  { X_R_2_q0 in_data 0 32 }  { X_R_2_address1 MemPortADDR2 1 8 }  { X_R_2_ce1 MemPortCE2 1 1 }  { X_R_2_q1 in_data 0 32 } } }
	X_R_3 { ap_memory {  { X_R_3_address0 mem_address 1 8 }  { X_R_3_ce0 mem_ce 1 1 }  { X_R_3_q0 in_data 0 32 }  { X_R_3_address1 MemPortADDR2 1 8 }  { X_R_3_ce1 MemPortCE2 1 1 }  { X_R_3_q1 in_data 0 32 } } }
	X_I_0 { ap_memory {  { X_I_0_address0 mem_address 1 8 }  { X_I_0_ce0 mem_ce 1 1 }  { X_I_0_q0 in_data 0 32 }  { X_I_0_address1 MemPortADDR2 1 8 }  { X_I_0_ce1 MemPortCE2 1 1 }  { X_I_0_q1 in_data 0 32 } } }
	X_I_1 { ap_memory {  { X_I_1_address0 mem_address 1 8 }  { X_I_1_ce0 mem_ce 1 1 }  { X_I_1_q0 in_data 0 32 }  { X_I_1_address1 MemPortADDR2 1 8 }  { X_I_1_ce1 MemPortCE2 1 1 }  { X_I_1_q1 in_data 0 32 } } }
	X_I_2 { ap_memory {  { X_I_2_address0 mem_address 1 8 }  { X_I_2_ce0 mem_ce 1 1 }  { X_I_2_q0 in_data 0 32 }  { X_I_2_address1 MemPortADDR2 1 8 }  { X_I_2_ce1 MemPortCE2 1 1 }  { X_I_2_q1 in_data 0 32 } } }
	X_I_3 { ap_memory {  { X_I_3_address0 mem_address 1 8 }  { X_I_3_ce0 mem_ce 1 1 }  { X_I_3_q0 in_data 0 32 }  { X_I_3_address1 MemPortADDR2 1 8 }  { X_I_3_ce1 MemPortCE2 1 1 }  { X_I_3_q1 in_data 0 32 } } }
	OUT_R_0 { ap_memory {  { OUT_R_0_address0 mem_address 1 8 }  { OUT_R_0_ce0 mem_ce 1 1 }  { OUT_R_0_we0 mem_we 1 1 }  { OUT_R_0_d0 mem_din 1 32 }  { OUT_R_0_address1 MemPortADDR2 1 8 }  { OUT_R_0_ce1 MemPortCE2 1 1 }  { OUT_R_0_we1 MemPortWE2 1 1 }  { OUT_R_0_d1 MemPortDIN2 1 32 } } }
	OUT_R_1 { ap_memory {  { OUT_R_1_address0 mem_address 1 8 }  { OUT_R_1_ce0 mem_ce 1 1 }  { OUT_R_1_we0 mem_we 1 1 }  { OUT_R_1_d0 mem_din 1 32 }  { OUT_R_1_address1 MemPortADDR2 1 8 }  { OUT_R_1_ce1 MemPortCE2 1 1 }  { OUT_R_1_we1 MemPortWE2 1 1 }  { OUT_R_1_d1 MemPortDIN2 1 32 } } }
	OUT_R_2 { ap_memory {  { OUT_R_2_address0 mem_address 1 8 }  { OUT_R_2_ce0 mem_ce 1 1 }  { OUT_R_2_we0 mem_we 1 1 }  { OUT_R_2_d0 mem_din 1 32 }  { OUT_R_2_address1 MemPortADDR2 1 8 }  { OUT_R_2_ce1 MemPortCE2 1 1 }  { OUT_R_2_we1 MemPortWE2 1 1 }  { OUT_R_2_d1 MemPortDIN2 1 32 } } }
	OUT_R_3 { ap_memory {  { OUT_R_3_address0 mem_address 1 8 }  { OUT_R_3_ce0 mem_ce 1 1 }  { OUT_R_3_we0 mem_we 1 1 }  { OUT_R_3_d0 mem_din 1 32 }  { OUT_R_3_address1 MemPortADDR2 1 8 }  { OUT_R_3_ce1 MemPortCE2 1 1 }  { OUT_R_3_we1 MemPortWE2 1 1 }  { OUT_R_3_d1 MemPortDIN2 1 32 } } }
	OUT_I_0 { ap_memory {  { OUT_I_0_address0 mem_address 1 8 }  { OUT_I_0_ce0 mem_ce 1 1 }  { OUT_I_0_we0 mem_we 1 1 }  { OUT_I_0_d0 mem_din 1 32 }  { OUT_I_0_address1 MemPortADDR2 1 8 }  { OUT_I_0_ce1 MemPortCE2 1 1 }  { OUT_I_0_we1 MemPortWE2 1 1 }  { OUT_I_0_d1 MemPortDIN2 1 32 } } }
	OUT_I_1 { ap_memory {  { OUT_I_1_address0 mem_address 1 8 }  { OUT_I_1_ce0 mem_ce 1 1 }  { OUT_I_1_we0 mem_we 1 1 }  { OUT_I_1_d0 mem_din 1 32 }  { OUT_I_1_address1 MemPortADDR2 1 8 }  { OUT_I_1_ce1 MemPortCE2 1 1 }  { OUT_I_1_we1 MemPortWE2 1 1 }  { OUT_I_1_d1 MemPortDIN2 1 32 } } }
	OUT_I_2 { ap_memory {  { OUT_I_2_address0 mem_address 1 8 }  { OUT_I_2_ce0 mem_ce 1 1 }  { OUT_I_2_we0 mem_we 1 1 }  { OUT_I_2_d0 mem_din 1 32 }  { OUT_I_2_address1 MemPortADDR2 1 8 }  { OUT_I_2_ce1 MemPortCE2 1 1 }  { OUT_I_2_we1 MemPortWE2 1 1 }  { OUT_I_2_d1 MemPortDIN2 1 32 } } }
	OUT_I_3 { ap_memory {  { OUT_I_3_address0 mem_address 1 8 }  { OUT_I_3_ce0 mem_ce 1 1 }  { OUT_I_3_we0 mem_we 1 1 }  { OUT_I_3_d0 mem_din 1 32 }  { OUT_I_3_address1 MemPortADDR2 1 8 }  { OUT_I_3_ce1 MemPortCE2 1 1 }  { OUT_I_3_we1 MemPortWE2 1 1 }  { OUT_I_3_d1 MemPortDIN2 1 32 } } }
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
