set moduleName fft_stages_Pipeline_DFTpts
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
set C_modelName {fft_stages_Pipeline_DFTpts}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln160 int 9 regular  }
	{ zext_ln157 int 9 regular  }
	{ OUT_I_0 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_R_0 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_R_1 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_R_2 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_R_3 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ sub3_cast int 4 regular  }
	{ sub5_cast int 4 regular  }
	{ trunc_ln int 9 regular  }
	{ X_R_0 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_R_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_R_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_R_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_I_0 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_I_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_I_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ X_I_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ OUT_I_1 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_2 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_3 float 32 regular {array 256 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln160", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln157", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_I_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_R_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sub3_cast", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "sub5_cast", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "X_R_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "X_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 123
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln160 sc_in sc_lv 9 signal 0 } 
	{ zext_ln157 sc_in sc_lv 9 signal 1 } 
	{ OUT_I_0_address0 sc_out sc_lv 8 signal 2 } 
	{ OUT_I_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ OUT_I_0_we0 sc_out sc_logic 1 signal 2 } 
	{ OUT_I_0_d0 sc_out sc_lv 32 signal 2 } 
	{ OUT_I_0_address1 sc_out sc_lv 8 signal 2 } 
	{ OUT_I_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ OUT_I_0_we1 sc_out sc_logic 1 signal 2 } 
	{ OUT_I_0_d1 sc_out sc_lv 32 signal 2 } 
	{ OUT_R_0_address0 sc_out sc_lv 8 signal 3 } 
	{ OUT_R_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ OUT_R_0_we0 sc_out sc_logic 1 signal 3 } 
	{ OUT_R_0_d0 sc_out sc_lv 32 signal 3 } 
	{ OUT_R_0_address1 sc_out sc_lv 8 signal 3 } 
	{ OUT_R_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ OUT_R_0_we1 sc_out sc_logic 1 signal 3 } 
	{ OUT_R_0_d1 sc_out sc_lv 32 signal 3 } 
	{ OUT_R_1_address0 sc_out sc_lv 8 signal 4 } 
	{ OUT_R_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ OUT_R_1_we0 sc_out sc_logic 1 signal 4 } 
	{ OUT_R_1_d0 sc_out sc_lv 32 signal 4 } 
	{ OUT_R_1_address1 sc_out sc_lv 8 signal 4 } 
	{ OUT_R_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ OUT_R_1_we1 sc_out sc_logic 1 signal 4 } 
	{ OUT_R_1_d1 sc_out sc_lv 32 signal 4 } 
	{ OUT_R_2_address0 sc_out sc_lv 8 signal 5 } 
	{ OUT_R_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ OUT_R_2_we0 sc_out sc_logic 1 signal 5 } 
	{ OUT_R_2_d0 sc_out sc_lv 32 signal 5 } 
	{ OUT_R_2_address1 sc_out sc_lv 8 signal 5 } 
	{ OUT_R_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ OUT_R_2_we1 sc_out sc_logic 1 signal 5 } 
	{ OUT_R_2_d1 sc_out sc_lv 32 signal 5 } 
	{ OUT_R_3_address0 sc_out sc_lv 8 signal 6 } 
	{ OUT_R_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ OUT_R_3_we0 sc_out sc_logic 1 signal 6 } 
	{ OUT_R_3_d0 sc_out sc_lv 32 signal 6 } 
	{ OUT_R_3_address1 sc_out sc_lv 8 signal 6 } 
	{ OUT_R_3_ce1 sc_out sc_logic 1 signal 6 } 
	{ OUT_R_3_we1 sc_out sc_logic 1 signal 6 } 
	{ OUT_R_3_d1 sc_out sc_lv 32 signal 6 } 
	{ sub3_cast sc_in sc_lv 4 signal 7 } 
	{ sub5_cast sc_in sc_lv 4 signal 8 } 
	{ trunc_ln sc_in sc_lv 9 signal 9 } 
	{ X_R_0_address0 sc_out sc_lv 8 signal 10 } 
	{ X_R_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ X_R_0_q0 sc_in sc_lv 32 signal 10 } 
	{ X_R_0_address1 sc_out sc_lv 8 signal 10 } 
	{ X_R_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ X_R_0_q1 sc_in sc_lv 32 signal 10 } 
	{ X_R_1_address0 sc_out sc_lv 8 signal 11 } 
	{ X_R_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ X_R_1_q0 sc_in sc_lv 32 signal 11 } 
	{ X_R_1_address1 sc_out sc_lv 8 signal 11 } 
	{ X_R_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ X_R_1_q1 sc_in sc_lv 32 signal 11 } 
	{ X_R_2_address0 sc_out sc_lv 8 signal 12 } 
	{ X_R_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ X_R_2_q0 sc_in sc_lv 32 signal 12 } 
	{ X_R_2_address1 sc_out sc_lv 8 signal 12 } 
	{ X_R_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ X_R_2_q1 sc_in sc_lv 32 signal 12 } 
	{ X_R_3_address0 sc_out sc_lv 8 signal 13 } 
	{ X_R_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ X_R_3_q0 sc_in sc_lv 32 signal 13 } 
	{ X_R_3_address1 sc_out sc_lv 8 signal 13 } 
	{ X_R_3_ce1 sc_out sc_logic 1 signal 13 } 
	{ X_R_3_q1 sc_in sc_lv 32 signal 13 } 
	{ X_I_0_address0 sc_out sc_lv 8 signal 14 } 
	{ X_I_0_ce0 sc_out sc_logic 1 signal 14 } 
	{ X_I_0_q0 sc_in sc_lv 32 signal 14 } 
	{ X_I_0_address1 sc_out sc_lv 8 signal 14 } 
	{ X_I_0_ce1 sc_out sc_logic 1 signal 14 } 
	{ X_I_0_q1 sc_in sc_lv 32 signal 14 } 
	{ X_I_1_address0 sc_out sc_lv 8 signal 15 } 
	{ X_I_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ X_I_1_q0 sc_in sc_lv 32 signal 15 } 
	{ X_I_1_address1 sc_out sc_lv 8 signal 15 } 
	{ X_I_1_ce1 sc_out sc_logic 1 signal 15 } 
	{ X_I_1_q1 sc_in sc_lv 32 signal 15 } 
	{ X_I_2_address0 sc_out sc_lv 8 signal 16 } 
	{ X_I_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ X_I_2_q0 sc_in sc_lv 32 signal 16 } 
	{ X_I_2_address1 sc_out sc_lv 8 signal 16 } 
	{ X_I_2_ce1 sc_out sc_logic 1 signal 16 } 
	{ X_I_2_q1 sc_in sc_lv 32 signal 16 } 
	{ X_I_3_address0 sc_out sc_lv 8 signal 17 } 
	{ X_I_3_ce0 sc_out sc_logic 1 signal 17 } 
	{ X_I_3_q0 sc_in sc_lv 32 signal 17 } 
	{ X_I_3_address1 sc_out sc_lv 8 signal 17 } 
	{ X_I_3_ce1 sc_out sc_logic 1 signal 17 } 
	{ X_I_3_q1 sc_in sc_lv 32 signal 17 } 
	{ OUT_I_1_address0 sc_out sc_lv 8 signal 18 } 
	{ OUT_I_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ OUT_I_1_we0 sc_out sc_logic 1 signal 18 } 
	{ OUT_I_1_d0 sc_out sc_lv 32 signal 18 } 
	{ OUT_I_1_address1 sc_out sc_lv 8 signal 18 } 
	{ OUT_I_1_ce1 sc_out sc_logic 1 signal 18 } 
	{ OUT_I_1_we1 sc_out sc_logic 1 signal 18 } 
	{ OUT_I_1_d1 sc_out sc_lv 32 signal 18 } 
	{ OUT_I_2_address0 sc_out sc_lv 8 signal 19 } 
	{ OUT_I_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ OUT_I_2_we0 sc_out sc_logic 1 signal 19 } 
	{ OUT_I_2_d0 sc_out sc_lv 32 signal 19 } 
	{ OUT_I_2_address1 sc_out sc_lv 8 signal 19 } 
	{ OUT_I_2_ce1 sc_out sc_logic 1 signal 19 } 
	{ OUT_I_2_we1 sc_out sc_logic 1 signal 19 } 
	{ OUT_I_2_d1 sc_out sc_lv 32 signal 19 } 
	{ OUT_I_3_address0 sc_out sc_lv 8 signal 20 } 
	{ OUT_I_3_ce0 sc_out sc_logic 1 signal 20 } 
	{ OUT_I_3_we0 sc_out sc_logic 1 signal 20 } 
	{ OUT_I_3_d0 sc_out sc_lv 32 signal 20 } 
	{ OUT_I_3_address1 sc_out sc_lv 8 signal 20 } 
	{ OUT_I_3_ce1 sc_out sc_logic 1 signal 20 } 
	{ OUT_I_3_we1 sc_out sc_logic 1 signal 20 } 
	{ OUT_I_3_d1 sc_out sc_lv 32 signal 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln160", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln160", "role": "default" }} , 
 	{ "name": "zext_ln157", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "zext_ln157", "role": "default" }} , 
 	{ "name": "OUT_I_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "address0" }} , 
 	{ "name": "OUT_I_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "ce0" }} , 
 	{ "name": "OUT_I_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "we0" }} , 
 	{ "name": "OUT_I_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "d0" }} , 
 	{ "name": "OUT_I_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "address1" }} , 
 	{ "name": "OUT_I_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "ce1" }} , 
 	{ "name": "OUT_I_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "we1" }} , 
 	{ "name": "OUT_I_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "d1" }} , 
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
 	{ "name": "sub3_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sub3_cast", "role": "default" }} , 
 	{ "name": "sub5_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "sub5_cast", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_real_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.W_imag_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U54", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U55", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U56", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_5_full_dsp_1_U57", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U58", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_5_full_dsp_1_U59", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U60", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U61", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U62", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U63", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_9_1_1_U64", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U65", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U66", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U67", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U68", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		W_imag {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln160 { ap_none {  { zext_ln160 in_data 0 9 } } }
	zext_ln157 { ap_none {  { zext_ln157 in_data 0 9 } } }
	OUT_I_0 { ap_memory {  { OUT_I_0_address0 mem_address 1 8 }  { OUT_I_0_ce0 mem_ce 1 1 }  { OUT_I_0_we0 mem_we 1 1 }  { OUT_I_0_d0 mem_din 1 32 }  { OUT_I_0_address1 MemPortADDR2 1 8 }  { OUT_I_0_ce1 MemPortCE2 1 1 }  { OUT_I_0_we1 MemPortWE2 1 1 }  { OUT_I_0_d1 MemPortDIN2 1 32 } } }
	OUT_R_0 { ap_memory {  { OUT_R_0_address0 mem_address 1 8 }  { OUT_R_0_ce0 mem_ce 1 1 }  { OUT_R_0_we0 mem_we 1 1 }  { OUT_R_0_d0 mem_din 1 32 }  { OUT_R_0_address1 MemPortADDR2 1 8 }  { OUT_R_0_ce1 MemPortCE2 1 1 }  { OUT_R_0_we1 MemPortWE2 1 1 }  { OUT_R_0_d1 MemPortDIN2 1 32 } } }
	OUT_R_1 { ap_memory {  { OUT_R_1_address0 mem_address 1 8 }  { OUT_R_1_ce0 mem_ce 1 1 }  { OUT_R_1_we0 mem_we 1 1 }  { OUT_R_1_d0 mem_din 1 32 }  { OUT_R_1_address1 MemPortADDR2 1 8 }  { OUT_R_1_ce1 MemPortCE2 1 1 }  { OUT_R_1_we1 MemPortWE2 1 1 }  { OUT_R_1_d1 MemPortDIN2 1 32 } } }
	OUT_R_2 { ap_memory {  { OUT_R_2_address0 mem_address 1 8 }  { OUT_R_2_ce0 mem_ce 1 1 }  { OUT_R_2_we0 mem_we 1 1 }  { OUT_R_2_d0 mem_din 1 32 }  { OUT_R_2_address1 MemPortADDR2 1 8 }  { OUT_R_2_ce1 MemPortCE2 1 1 }  { OUT_R_2_we1 MemPortWE2 1 1 }  { OUT_R_2_d1 MemPortDIN2 1 32 } } }
	OUT_R_3 { ap_memory {  { OUT_R_3_address0 mem_address 1 8 }  { OUT_R_3_ce0 mem_ce 1 1 }  { OUT_R_3_we0 mem_we 1 1 }  { OUT_R_3_d0 mem_din 1 32 }  { OUT_R_3_address1 MemPortADDR2 1 8 }  { OUT_R_3_ce1 MemPortCE2 1 1 }  { OUT_R_3_we1 MemPortWE2 1 1 }  { OUT_R_3_d1 MemPortDIN2 1 32 } } }
	sub3_cast { ap_none {  { sub3_cast in_data 0 4 } } }
	sub5_cast { ap_none {  { sub5_cast in_data 0 4 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 9 } } }
	X_R_0 { ap_memory {  { X_R_0_address0 mem_address 1 8 }  { X_R_0_ce0 mem_ce 1 1 }  { X_R_0_q0 in_data 0 32 }  { X_R_0_address1 MemPortADDR2 1 8 }  { X_R_0_ce1 MemPortCE2 1 1 }  { X_R_0_q1 in_data 0 32 } } }
	X_R_1 { ap_memory {  { X_R_1_address0 mem_address 1 8 }  { X_R_1_ce0 mem_ce 1 1 }  { X_R_1_q0 in_data 0 32 }  { X_R_1_address1 MemPortADDR2 1 8 }  { X_R_1_ce1 MemPortCE2 1 1 }  { X_R_1_q1 in_data 0 32 } } }
	X_R_2 { ap_memory {  { X_R_2_address0 mem_address 1 8 }  { X_R_2_ce0 mem_ce 1 1 }  { X_R_2_q0 in_data 0 32 }  { X_R_2_address1 MemPortADDR2 1 8 }  { X_R_2_ce1 MemPortCE2 1 1 }  { X_R_2_q1 in_data 0 32 } } }
	X_R_3 { ap_memory {  { X_R_3_address0 mem_address 1 8 }  { X_R_3_ce0 mem_ce 1 1 }  { X_R_3_q0 in_data 0 32 }  { X_R_3_address1 MemPortADDR2 1 8 }  { X_R_3_ce1 MemPortCE2 1 1 }  { X_R_3_q1 in_data 0 32 } } }
	X_I_0 { ap_memory {  { X_I_0_address0 mem_address 1 8 }  { X_I_0_ce0 mem_ce 1 1 }  { X_I_0_q0 in_data 0 32 }  { X_I_0_address1 MemPortADDR2 1 8 }  { X_I_0_ce1 MemPortCE2 1 1 }  { X_I_0_q1 in_data 0 32 } } }
	X_I_1 { ap_memory {  { X_I_1_address0 mem_address 1 8 }  { X_I_1_ce0 mem_ce 1 1 }  { X_I_1_q0 in_data 0 32 }  { X_I_1_address1 MemPortADDR2 1 8 }  { X_I_1_ce1 MemPortCE2 1 1 }  { X_I_1_q1 in_data 0 32 } } }
	X_I_2 { ap_memory {  { X_I_2_address0 mem_address 1 8 }  { X_I_2_ce0 mem_ce 1 1 }  { X_I_2_q0 in_data 0 32 }  { X_I_2_address1 MemPortADDR2 1 8 }  { X_I_2_ce1 MemPortCE2 1 1 }  { X_I_2_q1 in_data 0 32 } } }
	X_I_3 { ap_memory {  { X_I_3_address0 mem_address 1 8 }  { X_I_3_ce0 mem_ce 1 1 }  { X_I_3_q0 in_data 0 32 }  { X_I_3_address1 MemPortADDR2 1 8 }  { X_I_3_ce1 MemPortCE2 1 1 }  { X_I_3_q1 in_data 0 32 } } }
	OUT_I_1 { ap_memory {  { OUT_I_1_address0 mem_address 1 8 }  { OUT_I_1_ce0 mem_ce 1 1 }  { OUT_I_1_we0 mem_we 1 1 }  { OUT_I_1_d0 mem_din 1 32 }  { OUT_I_1_address1 MemPortADDR2 1 8 }  { OUT_I_1_ce1 MemPortCE2 1 1 }  { OUT_I_1_we1 MemPortWE2 1 1 }  { OUT_I_1_d1 MemPortDIN2 1 32 } } }
	OUT_I_2 { ap_memory {  { OUT_I_2_address0 mem_address 1 8 }  { OUT_I_2_ce0 mem_ce 1 1 }  { OUT_I_2_we0 mem_we 1 1 }  { OUT_I_2_d0 mem_din 1 32 }  { OUT_I_2_address1 MemPortADDR2 1 8 }  { OUT_I_2_ce1 MemPortCE2 1 1 }  { OUT_I_2_we1 MemPortWE2 1 1 }  { OUT_I_2_d1 MemPortDIN2 1 32 } } }
	OUT_I_3 { ap_memory {  { OUT_I_3_address0 mem_address 1 8 }  { OUT_I_3_ce0 mem_ce 1 1 }  { OUT_I_3_we0 mem_we 1 1 }  { OUT_I_3_d0 mem_din 1 32 }  { OUT_I_3_address1 MemPortADDR2 1 8 }  { OUT_I_3_ce1 MemPortCE2 1 1 }  { OUT_I_3_we1 MemPortWE2 1 1 }  { OUT_I_3_d1 MemPortDIN2 1 32 } } }
}
