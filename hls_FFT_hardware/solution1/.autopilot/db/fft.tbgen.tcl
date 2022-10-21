set moduleName fft
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
set C_modelName {fft}
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "89", "91", "111", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140"],
		"CDFG" : "fft",
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
			{"Name" : "X_R_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_Pipeline_Reverse_fu_398", "Port" : "X_R_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "X_R_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_Pipeline_Reverse_fu_398", "Port" : "X_R_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "X_R_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_Pipeline_Reverse_fu_398", "Port" : "X_R_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "X_R_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_Pipeline_Reverse_fu_398", "Port" : "X_R_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "X_I_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_Pipeline_Reverse_fu_398", "Port" : "X_I_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "X_I_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_Pipeline_Reverse_fu_398", "Port" : "X_I_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "X_I_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_Pipeline_Reverse_fu_398", "Port" : "X_I_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "X_I_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_fft_Pipeline_Reverse_fu_398", "Port" : "X_I_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "OUT_R_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "OUT_R_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_R_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "OUT_R_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_R_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "OUT_R_2", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_R_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "OUT_R_3", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_I_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "OUT_I_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_I_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "OUT_I_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_I_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "OUT_I_2", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "OUT_I_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "OUT_I_3", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "W_real", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "91", "SubInstance" : "grp_fft_stages_fu_454", "Port" : "W_real", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "111", "SubInstance" : "grp_fft_Pipeline_butterfly_fu_487", "Port" : "W_imag", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "91", "SubInstance" : "grp_fft_stages_fu_454", "Port" : "W_imag", "Inst_start_state" : "19", "Inst_end_state" : "20"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_real_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_imag_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_R_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_R_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_R_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_R_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_I_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_I_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_I_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage0_I_3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_R_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_R_1_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_R_2_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_R_3_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_I_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_I_1_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_I_2_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage1_I_3_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_R_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_R_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_R_2_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_R_3_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_I_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_I_1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_I_2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage2_I_3_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_R_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_R_1_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_R_2_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_R_3_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_I_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_I_1_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_I_2_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage3_I_3_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_R_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_R_1_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_R_2_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_R_3_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_I_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_I_1_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_I_2_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage4_I_3_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_R_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_R_1_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_R_2_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_R_3_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_I_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_I_1_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_I_2_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage5_I_3_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_R_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_R_1_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_R_2_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_R_3_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_I_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_I_1_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_I_2_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage6_I_3_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_R_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_R_1_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_R_2_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_R_3_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_I_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_I_1_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_I_2_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage7_I_3_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_R_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_R_1_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_R_2_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_R_3_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_I_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_I_1_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_I_2_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage8_I_3_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_R_0_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_R_1_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_R_2_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_R_3_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_I_0_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_I_1_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_I_2_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stage9_I_3_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_Reverse_fu_398", "Parent" : "0", "Child" : ["84", "85", "86", "87", "88"],
		"CDFG" : "fft_Pipeline_Reverse",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "515", "EstimateLatencyMax" : "515",
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
			{"Name" : "Stage0_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "X_I_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_I_3", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Reverse", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_Reverse_fu_398.mux_42_32_1_1_U1", "Parent" : "83"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_Reverse_fu_398.mux_42_32_1_1_U2", "Parent" : "83"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_Reverse_fu_398.mux_42_32_1_1_U3", "Parent" : "83"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_Reverse_fu_398.mux_42_32_1_1_U4", "Parent" : "83"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_Reverse_fu_398.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_DFTpts_fu_434", "Parent" : "0", "Child" : ["90"],
		"CDFG" : "fft_Pipeline_DFTpts",
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
			{"Name" : "Stage0_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage0_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage0_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage1_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage1_I_2", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "DFTpts", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_DFTpts_fu_434.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454", "Parent" : "0", "Child" : ["92"],
		"CDFG" : "fft_stages",
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
			{"Name" : "X_R_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "X_R_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X_R_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "X_R_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X_R_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "X_R_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X_R_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "X_R_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X_I_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "X_I_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X_I_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "X_I_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X_I_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "X_I_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "X_I_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "X_I_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "stage", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_R_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "OUT_R_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_R_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "OUT_R_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_R_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "OUT_R_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_R_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "OUT_R_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_I_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "OUT_I_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_I_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "OUT_I_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_I_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "OUT_I_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "OUT_I_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "OUT_I_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "W_real", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "92", "SubInstance" : "grp_fft_stages_Pipeline_DFTpts_fu_64", "Port" : "W_imag", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64", "Parent" : "91", "Child" : ["93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110"],
		"CDFG" : "fft_stages_Pipeline_DFTpts",
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
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_170", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_170", "FromFinalSV" : "18", "FromAddress" : "OUT_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_190", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_190", "ToFinalSV" : "18", "ToAddress" : "OUT_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:168:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_172", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_172", "FromFinalSV" : "18", "FromAddress" : "OUT_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_192", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_192", "ToFinalSV" : "18", "ToAddress" : "OUT_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:167:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_174", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_174", "FromFinalSV" : "18", "FromAddress" : "OUT_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_194", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_194", "ToFinalSV" : "18", "ToAddress" : "OUT_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:168:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_176", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_176", "FromFinalSV" : "18", "FromAddress" : "OUT_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_196", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_196", "ToFinalSV" : "18", "ToAddress" : "OUT_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:167:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_178", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_178", "FromFinalSV" : "18", "FromAddress" : "OUT_R_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_198", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_198", "ToFinalSV" : "18", "ToAddress" : "OUT_R_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:168:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_180", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_180", "FromFinalSV" : "18", "FromAddress" : "OUT_I_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_200", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_200", "ToFinalSV" : "18", "ToAddress" : "OUT_I_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:167:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_182", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_182", "FromFinalSV" : "18", "FromAddress" : "OUT_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_202", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_202", "ToFinalSV" : "18", "ToAddress" : "OUT_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:168:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_184", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_184", "FromFinalSV" : "18", "FromAddress" : "OUT_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_204", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_204", "ToFinalSV" : "18", "ToAddress" : "OUT_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:167:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_190", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_190", "FromFinalSV" : "18", "FromAddress" : "OUT_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_170", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_170", "ToFinalSV" : "18", "ToAddress" : "OUT_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:168:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_192", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_192", "FromFinalSV" : "18", "FromAddress" : "OUT_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_172", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_172", "ToFinalSV" : "18", "ToAddress" : "OUT_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:167:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_194", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_194", "FromFinalSV" : "18", "FromAddress" : "OUT_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_174", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_174", "ToFinalSV" : "18", "ToAddress" : "OUT_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:168:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_196", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_196", "FromFinalSV" : "18", "FromAddress" : "OUT_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_176", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_176", "ToFinalSV" : "18", "ToAddress" : "OUT_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:167:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_198", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_198", "FromFinalSV" : "18", "FromAddress" : "OUT_R_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_178", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_178", "ToFinalSV" : "18", "ToAddress" : "OUT_R_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:168:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_200", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_200", "FromFinalSV" : "18", "FromAddress" : "OUT_I_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_180", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_180", "ToFinalSV" : "18", "ToAddress" : "OUT_I_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:167:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_202", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_202", "FromFinalSV" : "18", "FromAddress" : "OUT_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_182", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_182", "ToFinalSV" : "18", "ToAddress" : "OUT_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:168:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state19_pp0_iter18_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter18", "FromInitialOperation" : "ap_enable_operation_204", "FromInitialSV" : "18", "FromFinalState" : "ap_enable_state19_pp0_iter18_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter18", "FromFinalOperation" : "ap_enable_operation_204", "FromFinalSV" : "18", "FromAddress" : "OUT_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state19_pp0_iter18_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter18", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_184", "ToInitialSV" : "18", "ToFinalState" : "ap_enable_state19_pp0_iter18_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter18", "ToFinalOperation" : "ap_enable_operation_184", "ToFinalSV" : "18", "ToAddress" : "OUT_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:167:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "zext_ln160", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln157", "Type" : "None", "Direction" : "I"},
			{"Name" : "OUT_I_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sub3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub5_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "X_R_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "X_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFTpts", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.W_real_U", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.W_imag_U", "Parent" : "92"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fsub_32ns_32ns_32_5_full_dsp_1_U54", "Parent" : "92"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fadd_32ns_32ns_32_5_full_dsp_1_U55", "Parent" : "92"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fsub_32ns_32ns_32_5_full_dsp_1_U56", "Parent" : "92"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fsub_32ns_32ns_32_5_full_dsp_1_U57", "Parent" : "92"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fadd_32ns_32ns_32_5_full_dsp_1_U58", "Parent" : "92"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fadd_32ns_32ns_32_5_full_dsp_1_U59", "Parent" : "92"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fmul_32ns_32ns_32_4_max_dsp_1_U60", "Parent" : "92"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fmul_32ns_32ns_32_4_max_dsp_1_U61", "Parent" : "92"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fmul_32ns_32ns_32_4_max_dsp_1_U62", "Parent" : "92"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.fmul_32ns_32ns_32_4_max_dsp_1_U63", "Parent" : "92"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.mul_9s_9s_9_1_1_U64", "Parent" : "92"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.mux_42_32_1_1_U65", "Parent" : "92"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.mux_42_32_1_1_U66", "Parent" : "92"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.mux_42_32_1_1_U67", "Parent" : "92"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.mux_42_32_1_1_U68", "Parent" : "92"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_fft_stages_fu_454.grp_fft_stages_Pipeline_DFTpts_fu_64.flow_control_loop_pipe_sequential_init_U", "Parent" : "92"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487", "Parent" : "0", "Child" : ["112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124"],
		"CDFG" : "fft_Pipeline_butterfly",
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
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_255", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_255", "FromFinalSV" : "16", "FromAddress" : "OUT_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_265", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_265", "ToFinalSV" : "16", "ToAddress" : "OUT_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:204:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_258", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_258", "FromFinalSV" : "16", "FromAddress" : "OUT_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_267", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_267", "ToFinalSV" : "16", "ToAddress" : "OUT_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:203:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_260", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_260", "FromFinalSV" : "16", "FromAddress" : "OUT_R_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_270", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_270", "ToFinalSV" : "16", "ToAddress" : "OUT_R_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:204:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_263", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_263", "FromFinalSV" : "16", "FromAddress" : "OUT_I_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_272", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_272", "ToFinalSV" : "16", "ToAddress" : "OUT_I_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:203:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_265", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_265", "FromFinalSV" : "16", "FromAddress" : "OUT_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_255", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_255", "ToFinalSV" : "16", "ToAddress" : "OUT_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:204:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_267", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_267", "FromFinalSV" : "16", "FromAddress" : "OUT_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_258", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_258", "ToFinalSV" : "16", "ToAddress" : "OUT_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:203:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_270", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_270", "FromFinalSV" : "16", "FromAddress" : "OUT_R_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_260", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_260", "ToFinalSV" : "16", "ToAddress" : "OUT_R_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:204:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_272", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_272", "FromFinalSV" : "16", "FromAddress" : "OUT_I_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_263", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_263", "ToFinalSV" : "16", "ToAddress" : "OUT_I_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:203:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_275", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_275", "FromFinalSV" : "16", "FromAddress" : "OUT_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_285", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_285", "ToFinalSV" : "16", "ToAddress" : "OUT_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:204:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_278", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_278", "FromFinalSV" : "16", "FromAddress" : "OUT_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_287", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_287", "ToFinalSV" : "16", "ToAddress" : "OUT_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:203:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_280", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_280", "FromFinalSV" : "16", "FromAddress" : "OUT_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_290", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_290", "ToFinalSV" : "16", "ToAddress" : "OUT_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:204:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_283", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_283", "FromFinalSV" : "16", "FromAddress" : "OUT_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_292", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_292", "ToFinalSV" : "16", "ToAddress" : "OUT_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:203:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_285", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_285", "FromFinalSV" : "16", "FromAddress" : "OUT_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_275", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_275", "ToFinalSV" : "16", "ToAddress" : "OUT_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:204:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_287", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_287", "FromFinalSV" : "16", "FromAddress" : "OUT_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_278", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_278", "ToFinalSV" : "16", "ToAddress" : "OUT_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:203:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_290", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_290", "FromFinalSV" : "16", "FromAddress" : "OUT_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_280", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_280", "ToFinalSV" : "16", "ToAddress" : "OUT_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:204:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state17_pp0_iter16_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter16", "FromInitialOperation" : "ap_enable_operation_292", "FromInitialSV" : "16", "FromFinalState" : "ap_enable_state17_pp0_iter16_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter16", "FromFinalOperation" : "ap_enable_operation_292", "FromFinalSV" : "16", "FromAddress" : "OUT_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state17_pp0_iter16_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter16", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_283", "ToInitialSV" : "16", "ToFinalState" : "ap_enable_state17_pp0_iter16_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter16", "ToFinalOperation" : "ap_enable_operation_283", "ToFinalSV" : "16", "ToAddress" : "OUT_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(../FFT/FFT/HLS/2_Skeleton_Restructured/fft.cpp:203:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "OUT_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_R_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Stage9_R_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_I_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Stage9_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OUT_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "OUT_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "butterfly", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter16", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter16", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.fmul_32ns_32ns_32_4_max_dsp_1_U126", "Parent" : "111"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.fmul_32ns_32ns_32_4_max_dsp_1_U127", "Parent" : "111"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.fmul_32ns_32ns_32_4_max_dsp_1_U128", "Parent" : "111"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.fmul_32ns_32ns_32_4_max_dsp_1_U129", "Parent" : "111"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.mux_32_32_1_1_U130", "Parent" : "111"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.mux_32_32_1_1_U131", "Parent" : "111"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.mux_32_32_1_1_U132", "Parent" : "111"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.mux_32_32_1_1_U133", "Parent" : "111"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.mux_32_32_1_1_U134", "Parent" : "111"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.mux_32_32_1_1_U135", "Parent" : "111"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.mux_32_32_1_1_U136", "Parent" : "111"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.mux_32_32_1_1_U137", "Parent" : "111"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_fft_Pipeline_butterfly_fu_487.flow_control_loop_pipe_sequential_init_U", "Parent" : "111"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U157", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U158", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U159", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U160", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U161", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U162", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U163", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U164", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U165", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U166", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U167", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U168", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U169", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U170", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U171", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U172", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	fft {
		X_R_0 {Type I LastRead 1 FirstWrite -1}
		X_R_1 {Type I LastRead 1 FirstWrite -1}
		X_R_2 {Type I LastRead 1 FirstWrite -1}
		X_R_3 {Type I LastRead 1 FirstWrite -1}
		X_I_0 {Type I LastRead 1 FirstWrite -1}
		X_I_1 {Type I LastRead 1 FirstWrite -1}
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
		W_imag {Type I LastRead -1 FirstWrite -1}}
	fft_Pipeline_Reverse {
		X_R_0 {Type I LastRead 1 FirstWrite -1}
		X_R_1 {Type I LastRead 1 FirstWrite -1}
		X_R_2 {Type I LastRead 1 FirstWrite -1}
		X_R_3 {Type I LastRead 1 FirstWrite -1}
		Stage0_R_1 {Type O LastRead -1 FirstWrite 2}
		Stage0_R_3 {Type O LastRead -1 FirstWrite 2}
		Stage0_I_1 {Type O LastRead -1 FirstWrite 2}
		X_I_0 {Type I LastRead 1 FirstWrite -1}
		X_I_1 {Type I LastRead 1 FirstWrite -1}
		X_I_2 {Type I LastRead 1 FirstWrite -1}
		X_I_3 {Type I LastRead 1 FirstWrite -1}
		Stage0_R {Type O LastRead -1 FirstWrite 2}
		Stage0_R_2 {Type O LastRead -1 FirstWrite 2}
		Stage0_I {Type O LastRead -1 FirstWrite 2}
		Stage0_I_2 {Type O LastRead -1 FirstWrite 2}
		Stage0_I_3 {Type O LastRead -1 FirstWrite 2}}
	fft_Pipeline_DFTpts {
		Stage0_R_1 {Type I LastRead 0 FirstWrite -1}
		Stage0_I_1 {Type I LastRead 0 FirstWrite -1}
		Stage0_R {Type I LastRead 9 FirstWrite -1}
		Stage1_R_1 {Type O LastRead -1 FirstWrite 16}
		Stage0_I {Type I LastRead 9 FirstWrite -1}
		Stage1_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage1_R {Type O LastRead -1 FirstWrite 16}
		Stage1_I {Type O LastRead -1 FirstWrite 16}
		Stage0_R_3 {Type I LastRead 0 FirstWrite -1}
		Stage0_I_3 {Type I LastRead 0 FirstWrite -1}
		Stage0_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage1_R_3 {Type O LastRead -1 FirstWrite 16}
		Stage0_I_2 {Type I LastRead 9 FirstWrite -1}
		Stage1_I_3 {Type O LastRead -1 FirstWrite 16}
		Stage1_R_2 {Type O LastRead -1 FirstWrite 16}
		Stage1_I_2 {Type O LastRead -1 FirstWrite 16}}
	fft_stages {
		X_R_0 {Type I LastRead 11 FirstWrite -1}
		X_R_1 {Type I LastRead 11 FirstWrite -1}
		X_R_2 {Type I LastRead 11 FirstWrite -1}
		X_R_3 {Type I LastRead 11 FirstWrite -1}
		X_I_0 {Type I LastRead 11 FirstWrite -1}
		X_I_1 {Type I LastRead 11 FirstWrite -1}
		X_I_2 {Type I LastRead 11 FirstWrite -1}
		X_I_3 {Type I LastRead 11 FirstWrite -1}
		stage {Type I LastRead 0 FirstWrite -1}
		OUT_R_0 {Type O LastRead -1 FirstWrite 18}
		OUT_R_1 {Type O LastRead -1 FirstWrite 18}
		OUT_R_2 {Type O LastRead -1 FirstWrite 18}
		OUT_R_3 {Type O LastRead -1 FirstWrite 18}
		OUT_I_0 {Type O LastRead -1 FirstWrite 18}
		OUT_I_1 {Type O LastRead -1 FirstWrite 18}
		OUT_I_2 {Type O LastRead -1 FirstWrite 18}
		OUT_I_3 {Type O LastRead -1 FirstWrite 18}
		W_real {Type I LastRead -1 FirstWrite -1}
		W_imag {Type I LastRead -1 FirstWrite -1}}
	fft_stages_Pipeline_DFTpts {
		zext_ln160 {Type I LastRead 0 FirstWrite -1}
		zext_ln157 {Type I LastRead 0 FirstWrite -1}
		OUT_I_0 {Type O LastRead -1 FirstWrite 18}
		OUT_R_0 {Type O LastRead -1 FirstWrite 18}
		OUT_R_1 {Type O LastRead -1 FirstWrite 18}
		OUT_R_2 {Type O LastRead -1 FirstWrite 18}
		OUT_R_3 {Type O LastRead -1 FirstWrite 18}
		sub3_cast {Type I LastRead 0 FirstWrite -1}
		sub5_cast {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		X_R_0 {Type I LastRead 11 FirstWrite -1}
		X_R_1 {Type I LastRead 11 FirstWrite -1}
		X_R_2 {Type I LastRead 11 FirstWrite -1}
		X_R_3 {Type I LastRead 11 FirstWrite -1}
		X_I_0 {Type I LastRead 11 FirstWrite -1}
		X_I_1 {Type I LastRead 11 FirstWrite -1}
		X_I_2 {Type I LastRead 11 FirstWrite -1}
		X_I_3 {Type I LastRead 11 FirstWrite -1}
		OUT_I_1 {Type O LastRead -1 FirstWrite 18}
		OUT_I_2 {Type O LastRead -1 FirstWrite 18}
		OUT_I_3 {Type O LastRead -1 FirstWrite 18}
		W_real {Type I LastRead -1 FirstWrite -1}
		W_imag {Type I LastRead -1 FirstWrite -1}}
	fft_Pipeline_butterfly {
		OUT_R_1 {Type O LastRead -1 FirstWrite 16}
		OUT_I_1 {Type O LastRead -1 FirstWrite 16}
		Stage9_R_1 {Type I LastRead 9 FirstWrite -1}
		Stage9_R_3 {Type I LastRead 9 FirstWrite -1}
		Stage9_I_1 {Type I LastRead 10 FirstWrite -1}
		Stage9_I_3 {Type I LastRead 10 FirstWrite -1}
		OUT_R_0 {Type O LastRead -1 FirstWrite 16}
		OUT_I_0 {Type O LastRead -1 FirstWrite 16}
		Stage9_R_0 {Type I LastRead 9 FirstWrite -1}
		Stage9_R_2 {Type I LastRead 9 FirstWrite -1}
		Stage9_I_0 {Type I LastRead 10 FirstWrite -1}
		Stage9_I_2 {Type I LastRead 10 FirstWrite -1}
		OUT_R_2 {Type O LastRead -1 FirstWrite 16}
		OUT_I_2 {Type O LastRead -1 FirstWrite 16}
		OUT_R_3 {Type O LastRead -1 FirstWrite 16}
		OUT_I_3 {Type O LastRead -1 FirstWrite 16}
		W_real {Type I LastRead 1 FirstWrite -1}
		W_imag {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	X_R_0 { ap_memory {  { X_R_0_address0 mem_address 1 8 }  { X_R_0_ce0 mem_ce 1 1 }  { X_R_0_q0 mem_dout 0 32 }  { X_R_0_address1 MemPortADDR2 1 8 }  { X_R_0_ce1 MemPortCE2 1 1 }  { X_R_0_q1 MemPortDOUT2 0 32 } } }
	X_R_1 { ap_memory {  { X_R_1_address0 mem_address 1 8 }  { X_R_1_ce0 mem_ce 1 1 }  { X_R_1_q0 mem_dout 0 32 }  { X_R_1_address1 MemPortADDR2 1 8 }  { X_R_1_ce1 MemPortCE2 1 1 }  { X_R_1_q1 MemPortDOUT2 0 32 } } }
	X_R_2 { ap_memory {  { X_R_2_address0 mem_address 1 8 }  { X_R_2_ce0 mem_ce 1 1 }  { X_R_2_q0 mem_dout 0 32 }  { X_R_2_address1 MemPortADDR2 1 8 }  { X_R_2_ce1 MemPortCE2 1 1 }  { X_R_2_q1 MemPortDOUT2 0 32 } } }
	X_R_3 { ap_memory {  { X_R_3_address0 mem_address 1 8 }  { X_R_3_ce0 mem_ce 1 1 }  { X_R_3_q0 mem_dout 0 32 }  { X_R_3_address1 MemPortADDR2 1 8 }  { X_R_3_ce1 MemPortCE2 1 1 }  { X_R_3_q1 MemPortDOUT2 0 32 } } }
	X_I_0 { ap_memory {  { X_I_0_address0 mem_address 1 8 }  { X_I_0_ce0 mem_ce 1 1 }  { X_I_0_q0 mem_dout 0 32 }  { X_I_0_address1 MemPortADDR2 1 8 }  { X_I_0_ce1 MemPortCE2 1 1 }  { X_I_0_q1 MemPortDOUT2 0 32 } } }
	X_I_1 { ap_memory {  { X_I_1_address0 mem_address 1 8 }  { X_I_1_ce0 mem_ce 1 1 }  { X_I_1_q0 mem_dout 0 32 }  { X_I_1_address1 MemPortADDR2 1 8 }  { X_I_1_ce1 MemPortCE2 1 1 }  { X_I_1_q1 MemPortDOUT2 0 32 } } }
	X_I_2 { ap_memory {  { X_I_2_address0 mem_address 1 8 }  { X_I_2_ce0 mem_ce 1 1 }  { X_I_2_q0 mem_dout 0 32 }  { X_I_2_address1 MemPortADDR2 1 8 }  { X_I_2_ce1 MemPortCE2 1 1 }  { X_I_2_q1 MemPortDOUT2 0 32 } } }
	X_I_3 { ap_memory {  { X_I_3_address0 mem_address 1 8 }  { X_I_3_ce0 mem_ce 1 1 }  { X_I_3_q0 mem_dout 0 32 }  { X_I_3_address1 MemPortADDR2 1 8 }  { X_I_3_ce1 MemPortCE2 1 1 }  { X_I_3_q1 MemPortDOUT2 0 32 } } }
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
