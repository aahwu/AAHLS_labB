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
	{ Stage0_R_1 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ Stage0_I_1 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ Stage0_R float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ Stage1_R_1 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ Stage0_I float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ Stage1_I_1 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ Stage1_R float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ Stage1_I float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ Stage0_R_3 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ Stage0_I_3 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ Stage0_R_2 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ Stage1_R_3 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ Stage0_I_2 float 32 regular {array 256 { 1 3 } 1 1 }  }
	{ Stage1_I_3 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ Stage1_R_2 float 32 regular {array 256 { 0 3 } 0 1 }  }
	{ Stage1_I_2 float 32 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "Stage0_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage0_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage0_R", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage1_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage0_I", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage1_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage1_R", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage1_I", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage0_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage0_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage0_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage1_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage0_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage1_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage1_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage1_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 138
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ Stage0_R_1_address0 sc_out sc_lv 8 signal 0 } 
	{ Stage0_R_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ Stage0_R_1_q0 sc_in sc_lv 32 signal 0 } 
	{ Stage0_I_1_address0 sc_out sc_lv 8 signal 1 } 
	{ Stage0_I_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ Stage0_I_1_q0 sc_in sc_lv 32 signal 1 } 
	{ Stage0_R_address0 sc_out sc_lv 8 signal 2 } 
	{ Stage0_R_ce0 sc_out sc_logic 1 signal 2 } 
	{ Stage0_R_q0 sc_in sc_lv 32 signal 2 } 
	{ Stage1_R_1_address0 sc_out sc_lv 8 signal 3 } 
	{ Stage1_R_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ Stage1_R_1_we0 sc_out sc_logic 1 signal 3 } 
	{ Stage1_R_1_d0 sc_out sc_lv 32 signal 3 } 
	{ Stage0_I_address0 sc_out sc_lv 8 signal 4 } 
	{ Stage0_I_ce0 sc_out sc_logic 1 signal 4 } 
	{ Stage0_I_q0 sc_in sc_lv 32 signal 4 } 
	{ Stage1_I_1_address0 sc_out sc_lv 8 signal 5 } 
	{ Stage1_I_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ Stage1_I_1_we0 sc_out sc_logic 1 signal 5 } 
	{ Stage1_I_1_d0 sc_out sc_lv 32 signal 5 } 
	{ Stage1_R_address0 sc_out sc_lv 8 signal 6 } 
	{ Stage1_R_ce0 sc_out sc_logic 1 signal 6 } 
	{ Stage1_R_we0 sc_out sc_logic 1 signal 6 } 
	{ Stage1_R_d0 sc_out sc_lv 32 signal 6 } 
	{ Stage1_I_address0 sc_out sc_lv 8 signal 7 } 
	{ Stage1_I_ce0 sc_out sc_logic 1 signal 7 } 
	{ Stage1_I_we0 sc_out sc_logic 1 signal 7 } 
	{ Stage1_I_d0 sc_out sc_lv 32 signal 7 } 
	{ Stage0_R_3_address0 sc_out sc_lv 8 signal 8 } 
	{ Stage0_R_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ Stage0_R_3_q0 sc_in sc_lv 32 signal 8 } 
	{ Stage0_I_3_address0 sc_out sc_lv 8 signal 9 } 
	{ Stage0_I_3_ce0 sc_out sc_logic 1 signal 9 } 
	{ Stage0_I_3_q0 sc_in sc_lv 32 signal 9 } 
	{ Stage0_R_2_address0 sc_out sc_lv 8 signal 10 } 
	{ Stage0_R_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ Stage0_R_2_q0 sc_in sc_lv 32 signal 10 } 
	{ Stage1_R_3_address0 sc_out sc_lv 8 signal 11 } 
	{ Stage1_R_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ Stage1_R_3_we0 sc_out sc_logic 1 signal 11 } 
	{ Stage1_R_3_d0 sc_out sc_lv 32 signal 11 } 
	{ Stage0_I_2_address0 sc_out sc_lv 8 signal 12 } 
	{ Stage0_I_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ Stage0_I_2_q0 sc_in sc_lv 32 signal 12 } 
	{ Stage1_I_3_address0 sc_out sc_lv 8 signal 13 } 
	{ Stage1_I_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ Stage1_I_3_we0 sc_out sc_logic 1 signal 13 } 
	{ Stage1_I_3_d0 sc_out sc_lv 32 signal 13 } 
	{ Stage1_R_2_address0 sc_out sc_lv 8 signal 14 } 
	{ Stage1_R_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ Stage1_R_2_we0 sc_out sc_logic 1 signal 14 } 
	{ Stage1_R_2_d0 sc_out sc_lv 32 signal 14 } 
	{ Stage1_I_2_address0 sc_out sc_lv 8 signal 15 } 
	{ Stage1_I_2_ce0 sc_out sc_logic 1 signal 15 } 
	{ Stage1_I_2_we0 sc_out sc_logic 1 signal 15 } 
	{ Stage1_I_2_d0 sc_out sc_lv 32 signal 15 } 
	{ grp_fu_519_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_519_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_519_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_519_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_519_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_523_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_523_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_523_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_523_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_523_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_527_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_527_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_527_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_527_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_527_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_531_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_531_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_531_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_531_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_531_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_535_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_535_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_535_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_535_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_535_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_539_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_539_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_539_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_539_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_539_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_543_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_543_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_543_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_543_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_543_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_547_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_547_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_547_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_547_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_547_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_551_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_551_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_551_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_551_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_551_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_555_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_555_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_555_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_555_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_555_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_559_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_559_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_559_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_559_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_559_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_563_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_563_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_563_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_563_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_563_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_567_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_567_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_567_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_567_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_571_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_571_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_571_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_571_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_575_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_575_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_575_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_575_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_579_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_579_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_579_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_579_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "Stage0_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage0_R_1", "role": "address0" }} , 
 	{ "name": "Stage0_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage0_R_1", "role": "ce0" }} , 
 	{ "name": "Stage0_R_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage0_R_1", "role": "q0" }} , 
 	{ "name": "Stage0_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage0_I_1", "role": "address0" }} , 
 	{ "name": "Stage0_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage0_I_1", "role": "ce0" }} , 
 	{ "name": "Stage0_I_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage0_I_1", "role": "q0" }} , 
 	{ "name": "Stage0_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage0_R", "role": "address0" }} , 
 	{ "name": "Stage0_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage0_R", "role": "ce0" }} , 
 	{ "name": "Stage0_R_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage0_R", "role": "q0" }} , 
 	{ "name": "Stage1_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage1_R_1", "role": "address0" }} , 
 	{ "name": "Stage1_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_R_1", "role": "ce0" }} , 
 	{ "name": "Stage1_R_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_R_1", "role": "we0" }} , 
 	{ "name": "Stage1_R_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage1_R_1", "role": "d0" }} , 
 	{ "name": "Stage0_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage0_I", "role": "address0" }} , 
 	{ "name": "Stage0_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage0_I", "role": "ce0" }} , 
 	{ "name": "Stage0_I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage0_I", "role": "q0" }} , 
 	{ "name": "Stage1_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage1_I_1", "role": "address0" }} , 
 	{ "name": "Stage1_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_I_1", "role": "ce0" }} , 
 	{ "name": "Stage1_I_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_I_1", "role": "we0" }} , 
 	{ "name": "Stage1_I_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage1_I_1", "role": "d0" }} , 
 	{ "name": "Stage1_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage1_R", "role": "address0" }} , 
 	{ "name": "Stage1_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_R", "role": "ce0" }} , 
 	{ "name": "Stage1_R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_R", "role": "we0" }} , 
 	{ "name": "Stage1_R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage1_R", "role": "d0" }} , 
 	{ "name": "Stage1_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage1_I", "role": "address0" }} , 
 	{ "name": "Stage1_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_I", "role": "ce0" }} , 
 	{ "name": "Stage1_I_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_I", "role": "we0" }} , 
 	{ "name": "Stage1_I_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage1_I", "role": "d0" }} , 
 	{ "name": "Stage0_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage0_R_3", "role": "address0" }} , 
 	{ "name": "Stage0_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage0_R_3", "role": "ce0" }} , 
 	{ "name": "Stage0_R_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage0_R_3", "role": "q0" }} , 
 	{ "name": "Stage0_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage0_I_3", "role": "address0" }} , 
 	{ "name": "Stage0_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage0_I_3", "role": "ce0" }} , 
 	{ "name": "Stage0_I_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage0_I_3", "role": "q0" }} , 
 	{ "name": "Stage0_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage0_R_2", "role": "address0" }} , 
 	{ "name": "Stage0_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage0_R_2", "role": "ce0" }} , 
 	{ "name": "Stage0_R_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage0_R_2", "role": "q0" }} , 
 	{ "name": "Stage1_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage1_R_3", "role": "address0" }} , 
 	{ "name": "Stage1_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_R_3", "role": "ce0" }} , 
 	{ "name": "Stage1_R_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_R_3", "role": "we0" }} , 
 	{ "name": "Stage1_R_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage1_R_3", "role": "d0" }} , 
 	{ "name": "Stage0_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage0_I_2", "role": "address0" }} , 
 	{ "name": "Stage0_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage0_I_2", "role": "ce0" }} , 
 	{ "name": "Stage0_I_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage0_I_2", "role": "q0" }} , 
 	{ "name": "Stage1_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage1_I_3", "role": "address0" }} , 
 	{ "name": "Stage1_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_I_3", "role": "ce0" }} , 
 	{ "name": "Stage1_I_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_I_3", "role": "we0" }} , 
 	{ "name": "Stage1_I_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage1_I_3", "role": "d0" }} , 
 	{ "name": "Stage1_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage1_R_2", "role": "address0" }} , 
 	{ "name": "Stage1_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_R_2", "role": "ce0" }} , 
 	{ "name": "Stage1_R_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_R_2", "role": "we0" }} , 
 	{ "name": "Stage1_R_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage1_R_2", "role": "d0" }} , 
 	{ "name": "Stage1_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage1_I_2", "role": "address0" }} , 
 	{ "name": "Stage1_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_I_2", "role": "ce0" }} , 
 	{ "name": "Stage1_I_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage1_I_2", "role": "we0" }} , 
 	{ "name": "Stage1_I_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage1_I_2", "role": "d0" }} , 
 	{ "name": "grp_fu_519_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_519_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_519_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_519_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_519_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_519_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_519_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_519_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_519_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_519_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_523_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_523_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_523_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_523_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_523_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_527_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_527_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_527_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_527_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_527_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_531_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_531_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_531_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_531_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_531_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_535_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_535_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_535_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_535_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_535_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_539_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_539_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_539_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_539_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_539_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_543_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_543_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_543_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_543_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_543_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_547_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_547_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_547_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_547_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_547_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_551_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_551_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_551_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_551_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_551_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_555_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_555_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_555_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_555_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_555_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_559_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_559_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_559_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_559_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_559_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_563_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_563_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_563_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_563_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_563_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_567_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_567_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_567_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_567_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_567_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_567_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_567_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_567_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_571_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_571_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_571_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_571_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_571_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_571_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_571_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_571_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_575_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_575_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_575_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_575_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_575_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_575_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_575_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_575_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_579_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_579_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_579_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_579_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_579_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_579_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_579_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_579_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		Stage1_I_2 {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "273", "Max" : "273"}
	, {"Name" : "Interval", "Min" : "273", "Max" : "273"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	Stage0_R_1 { ap_memory {  { Stage0_R_1_address0 mem_address 1 8 }  { Stage0_R_1_ce0 mem_ce 1 1 }  { Stage0_R_1_q0 mem_dout 0 32 } } }
	Stage0_I_1 { ap_memory {  { Stage0_I_1_address0 mem_address 1 8 }  { Stage0_I_1_ce0 mem_ce 1 1 }  { Stage0_I_1_q0 mem_dout 0 32 } } }
	Stage0_R { ap_memory {  { Stage0_R_address0 mem_address 1 8 }  { Stage0_R_ce0 mem_ce 1 1 }  { Stage0_R_q0 mem_dout 0 32 } } }
	Stage1_R_1 { ap_memory {  { Stage1_R_1_address0 mem_address 1 8 }  { Stage1_R_1_ce0 mem_ce 1 1 }  { Stage1_R_1_we0 mem_we 1 1 }  { Stage1_R_1_d0 mem_din 1 32 } } }
	Stage0_I { ap_memory {  { Stage0_I_address0 mem_address 1 8 }  { Stage0_I_ce0 mem_ce 1 1 }  { Stage0_I_q0 mem_dout 0 32 } } }
	Stage1_I_1 { ap_memory {  { Stage1_I_1_address0 mem_address 1 8 }  { Stage1_I_1_ce0 mem_ce 1 1 }  { Stage1_I_1_we0 mem_we 1 1 }  { Stage1_I_1_d0 mem_din 1 32 } } }
	Stage1_R { ap_memory {  { Stage1_R_address0 mem_address 1 8 }  { Stage1_R_ce0 mem_ce 1 1 }  { Stage1_R_we0 mem_we 1 1 }  { Stage1_R_d0 mem_din 1 32 } } }
	Stage1_I { ap_memory {  { Stage1_I_address0 mem_address 1 8 }  { Stage1_I_ce0 mem_ce 1 1 }  { Stage1_I_we0 mem_we 1 1 }  { Stage1_I_d0 mem_din 1 32 } } }
	Stage0_R_3 { ap_memory {  { Stage0_R_3_address0 mem_address 1 8 }  { Stage0_R_3_ce0 mem_ce 1 1 }  { Stage0_R_3_q0 mem_dout 0 32 } } }
	Stage0_I_3 { ap_memory {  { Stage0_I_3_address0 mem_address 1 8 }  { Stage0_I_3_ce0 mem_ce 1 1 }  { Stage0_I_3_q0 mem_dout 0 32 } } }
	Stage0_R_2 { ap_memory {  { Stage0_R_2_address0 mem_address 1 8 }  { Stage0_R_2_ce0 mem_ce 1 1 }  { Stage0_R_2_q0 mem_dout 0 32 } } }
	Stage1_R_3 { ap_memory {  { Stage1_R_3_address0 mem_address 1 8 }  { Stage1_R_3_ce0 mem_ce 1 1 }  { Stage1_R_3_we0 mem_we 1 1 }  { Stage1_R_3_d0 mem_din 1 32 } } }
	Stage0_I_2 { ap_memory {  { Stage0_I_2_address0 mem_address 1 8 }  { Stage0_I_2_ce0 mem_ce 1 1 }  { Stage0_I_2_q0 mem_dout 0 32 } } }
	Stage1_I_3 { ap_memory {  { Stage1_I_3_address0 mem_address 1 8 }  { Stage1_I_3_ce0 mem_ce 1 1 }  { Stage1_I_3_we0 mem_we 1 1 }  { Stage1_I_3_d0 mem_din 1 32 } } }
	Stage1_R_2 { ap_memory {  { Stage1_R_2_address0 mem_address 1 8 }  { Stage1_R_2_ce0 mem_ce 1 1 }  { Stage1_R_2_we0 mem_we 1 1 }  { Stage1_R_2_d0 mem_din 1 32 } } }
	Stage1_I_2 { ap_memory {  { Stage1_I_2_address0 mem_address 1 8 }  { Stage1_I_2_ce0 mem_ce 1 1 }  { Stage1_I_2_we0 mem_we 1 1 }  { Stage1_I_2_d0 mem_din 1 32 } } }
}
