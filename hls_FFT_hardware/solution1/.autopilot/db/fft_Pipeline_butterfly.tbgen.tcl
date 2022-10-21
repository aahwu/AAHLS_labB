set moduleName fft_Pipeline_butterfly
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
set C_modelName {fft_Pipeline_butterfly}
set C_modelType { void 0 }
set C_modelArgList {
	{ OUT_R_1 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_1 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage9_R_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage9_R_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage9_I_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage9_I_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ OUT_R_0 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_0 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ Stage9_R_0 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage9_R_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage9_I_0 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ Stage9_I_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ OUT_R_2 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_2 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_R_3 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ OUT_I_3 int 32 regular {array 256 { 0 0 } 0 1 }  }
	{ W_real float 32 regular {array 512 { 1 1 } 1 1 } {global 0}  }
	{ W_imag float 32 regular {array 512 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "OUT_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage9_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage9_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage9_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage9_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_R_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Stage9_R_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage9_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage9_I_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "Stage9_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "OUT_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "OUT_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "W_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 206
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ OUT_R_1_address0 sc_out sc_lv 8 signal 0 } 
	{ OUT_R_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ OUT_R_1_we0 sc_out sc_logic 1 signal 0 } 
	{ OUT_R_1_d0 sc_out sc_lv 32 signal 0 } 
	{ OUT_R_1_address1 sc_out sc_lv 8 signal 0 } 
	{ OUT_R_1_ce1 sc_out sc_logic 1 signal 0 } 
	{ OUT_R_1_we1 sc_out sc_logic 1 signal 0 } 
	{ OUT_R_1_d1 sc_out sc_lv 32 signal 0 } 
	{ OUT_I_1_address0 sc_out sc_lv 8 signal 1 } 
	{ OUT_I_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ OUT_I_1_we0 sc_out sc_logic 1 signal 1 } 
	{ OUT_I_1_d0 sc_out sc_lv 32 signal 1 } 
	{ OUT_I_1_address1 sc_out sc_lv 8 signal 1 } 
	{ OUT_I_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ OUT_I_1_we1 sc_out sc_logic 1 signal 1 } 
	{ OUT_I_1_d1 sc_out sc_lv 32 signal 1 } 
	{ Stage9_R_1_address0 sc_out sc_lv 8 signal 2 } 
	{ Stage9_R_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ Stage9_R_1_q0 sc_in sc_lv 32 signal 2 } 
	{ Stage9_R_1_address1 sc_out sc_lv 8 signal 2 } 
	{ Stage9_R_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ Stage9_R_1_q1 sc_in sc_lv 32 signal 2 } 
	{ Stage9_R_3_address0 sc_out sc_lv 8 signal 3 } 
	{ Stage9_R_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ Stage9_R_3_q0 sc_in sc_lv 32 signal 3 } 
	{ Stage9_R_3_address1 sc_out sc_lv 8 signal 3 } 
	{ Stage9_R_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ Stage9_R_3_q1 sc_in sc_lv 32 signal 3 } 
	{ Stage9_I_1_address0 sc_out sc_lv 8 signal 4 } 
	{ Stage9_I_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ Stage9_I_1_q0 sc_in sc_lv 32 signal 4 } 
	{ Stage9_I_1_address1 sc_out sc_lv 8 signal 4 } 
	{ Stage9_I_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ Stage9_I_1_q1 sc_in sc_lv 32 signal 4 } 
	{ Stage9_I_3_address0 sc_out sc_lv 8 signal 5 } 
	{ Stage9_I_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ Stage9_I_3_q0 sc_in sc_lv 32 signal 5 } 
	{ Stage9_I_3_address1 sc_out sc_lv 8 signal 5 } 
	{ Stage9_I_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ Stage9_I_3_q1 sc_in sc_lv 32 signal 5 } 
	{ OUT_R_0_address0 sc_out sc_lv 8 signal 6 } 
	{ OUT_R_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ OUT_R_0_we0 sc_out sc_logic 1 signal 6 } 
	{ OUT_R_0_d0 sc_out sc_lv 32 signal 6 } 
	{ OUT_R_0_address1 sc_out sc_lv 8 signal 6 } 
	{ OUT_R_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ OUT_R_0_we1 sc_out sc_logic 1 signal 6 } 
	{ OUT_R_0_d1 sc_out sc_lv 32 signal 6 } 
	{ OUT_I_0_address0 sc_out sc_lv 8 signal 7 } 
	{ OUT_I_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ OUT_I_0_we0 sc_out sc_logic 1 signal 7 } 
	{ OUT_I_0_d0 sc_out sc_lv 32 signal 7 } 
	{ OUT_I_0_address1 sc_out sc_lv 8 signal 7 } 
	{ OUT_I_0_ce1 sc_out sc_logic 1 signal 7 } 
	{ OUT_I_0_we1 sc_out sc_logic 1 signal 7 } 
	{ OUT_I_0_d1 sc_out sc_lv 32 signal 7 } 
	{ Stage9_R_0_address0 sc_out sc_lv 8 signal 8 } 
	{ Stage9_R_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ Stage9_R_0_q0 sc_in sc_lv 32 signal 8 } 
	{ Stage9_R_0_address1 sc_out sc_lv 8 signal 8 } 
	{ Stage9_R_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ Stage9_R_0_q1 sc_in sc_lv 32 signal 8 } 
	{ Stage9_R_2_address0 sc_out sc_lv 8 signal 9 } 
	{ Stage9_R_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ Stage9_R_2_q0 sc_in sc_lv 32 signal 9 } 
	{ Stage9_R_2_address1 sc_out sc_lv 8 signal 9 } 
	{ Stage9_R_2_ce1 sc_out sc_logic 1 signal 9 } 
	{ Stage9_R_2_q1 sc_in sc_lv 32 signal 9 } 
	{ Stage9_I_0_address0 sc_out sc_lv 8 signal 10 } 
	{ Stage9_I_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ Stage9_I_0_q0 sc_in sc_lv 32 signal 10 } 
	{ Stage9_I_0_address1 sc_out sc_lv 8 signal 10 } 
	{ Stage9_I_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ Stage9_I_0_q1 sc_in sc_lv 32 signal 10 } 
	{ Stage9_I_2_address0 sc_out sc_lv 8 signal 11 } 
	{ Stage9_I_2_ce0 sc_out sc_logic 1 signal 11 } 
	{ Stage9_I_2_q0 sc_in sc_lv 32 signal 11 } 
	{ Stage9_I_2_address1 sc_out sc_lv 8 signal 11 } 
	{ Stage9_I_2_ce1 sc_out sc_logic 1 signal 11 } 
	{ Stage9_I_2_q1 sc_in sc_lv 32 signal 11 } 
	{ OUT_R_2_address0 sc_out sc_lv 8 signal 12 } 
	{ OUT_R_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ OUT_R_2_we0 sc_out sc_logic 1 signal 12 } 
	{ OUT_R_2_d0 sc_out sc_lv 32 signal 12 } 
	{ OUT_R_2_address1 sc_out sc_lv 8 signal 12 } 
	{ OUT_R_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ OUT_R_2_we1 sc_out sc_logic 1 signal 12 } 
	{ OUT_R_2_d1 sc_out sc_lv 32 signal 12 } 
	{ OUT_I_2_address0 sc_out sc_lv 8 signal 13 } 
	{ OUT_I_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_2_we0 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_2_d0 sc_out sc_lv 32 signal 13 } 
	{ OUT_I_2_address1 sc_out sc_lv 8 signal 13 } 
	{ OUT_I_2_ce1 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_2_we1 sc_out sc_logic 1 signal 13 } 
	{ OUT_I_2_d1 sc_out sc_lv 32 signal 13 } 
	{ OUT_R_3_address0 sc_out sc_lv 8 signal 14 } 
	{ OUT_R_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ OUT_R_3_we0 sc_out sc_logic 1 signal 14 } 
	{ OUT_R_3_d0 sc_out sc_lv 32 signal 14 } 
	{ OUT_R_3_address1 sc_out sc_lv 8 signal 14 } 
	{ OUT_R_3_ce1 sc_out sc_logic 1 signal 14 } 
	{ OUT_R_3_we1 sc_out sc_logic 1 signal 14 } 
	{ OUT_R_3_d1 sc_out sc_lv 32 signal 14 } 
	{ OUT_I_3_address0 sc_out sc_lv 8 signal 15 } 
	{ OUT_I_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_we0 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_d0 sc_out sc_lv 32 signal 15 } 
	{ OUT_I_3_address1 sc_out sc_lv 8 signal 15 } 
	{ OUT_I_3_ce1 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_we1 sc_out sc_logic 1 signal 15 } 
	{ OUT_I_3_d1 sc_out sc_lv 32 signal 15 } 
	{ W_real_address0 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce0 sc_out sc_logic 1 signal 16 } 
	{ W_real_q0 sc_in sc_lv 32 signal 16 } 
	{ W_real_address1 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce1 sc_out sc_logic 1 signal 16 } 
	{ W_real_q1 sc_in sc_lv 32 signal 16 } 
	{ W_imag_address0 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce0 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q0 sc_in sc_lv 32 signal 17 } 
	{ W_imag_address1 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce1 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q1 sc_in sc_lv 32 signal 17 } 
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
 	{ "name": "OUT_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "address0" }} , 
 	{ "name": "OUT_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "ce0" }} , 
 	{ "name": "OUT_R_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "we0" }} , 
 	{ "name": "OUT_R_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "d0" }} , 
 	{ "name": "OUT_R_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "address1" }} , 
 	{ "name": "OUT_R_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "ce1" }} , 
 	{ "name": "OUT_R_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "we1" }} , 
 	{ "name": "OUT_R_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_1", "role": "d1" }} , 
 	{ "name": "OUT_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "address0" }} , 
 	{ "name": "OUT_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "ce0" }} , 
 	{ "name": "OUT_I_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "we0" }} , 
 	{ "name": "OUT_I_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "d0" }} , 
 	{ "name": "OUT_I_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "address1" }} , 
 	{ "name": "OUT_I_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "ce1" }} , 
 	{ "name": "OUT_I_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "we1" }} , 
 	{ "name": "OUT_I_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_1", "role": "d1" }} , 
 	{ "name": "Stage9_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_R_1", "role": "address0" }} , 
 	{ "name": "Stage9_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_R_1", "role": "ce0" }} , 
 	{ "name": "Stage9_R_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_R_1", "role": "q0" }} , 
 	{ "name": "Stage9_R_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_R_1", "role": "address1" }} , 
 	{ "name": "Stage9_R_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_R_1", "role": "ce1" }} , 
 	{ "name": "Stage9_R_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_R_1", "role": "q1" }} , 
 	{ "name": "Stage9_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_R_3", "role": "address0" }} , 
 	{ "name": "Stage9_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_R_3", "role": "ce0" }} , 
 	{ "name": "Stage9_R_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_R_3", "role": "q0" }} , 
 	{ "name": "Stage9_R_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_R_3", "role": "address1" }} , 
 	{ "name": "Stage9_R_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_R_3", "role": "ce1" }} , 
 	{ "name": "Stage9_R_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_R_3", "role": "q1" }} , 
 	{ "name": "Stage9_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_I_1", "role": "address0" }} , 
 	{ "name": "Stage9_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_I_1", "role": "ce0" }} , 
 	{ "name": "Stage9_I_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_I_1", "role": "q0" }} , 
 	{ "name": "Stage9_I_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_I_1", "role": "address1" }} , 
 	{ "name": "Stage9_I_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_I_1", "role": "ce1" }} , 
 	{ "name": "Stage9_I_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_I_1", "role": "q1" }} , 
 	{ "name": "Stage9_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_I_3", "role": "address0" }} , 
 	{ "name": "Stage9_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_I_3", "role": "ce0" }} , 
 	{ "name": "Stage9_I_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_I_3", "role": "q0" }} , 
 	{ "name": "Stage9_I_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_I_3", "role": "address1" }} , 
 	{ "name": "Stage9_I_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_I_3", "role": "ce1" }} , 
 	{ "name": "Stage9_I_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_I_3", "role": "q1" }} , 
 	{ "name": "OUT_R_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "address0" }} , 
 	{ "name": "OUT_R_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "ce0" }} , 
 	{ "name": "OUT_R_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "we0" }} , 
 	{ "name": "OUT_R_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "d0" }} , 
 	{ "name": "OUT_R_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "address1" }} , 
 	{ "name": "OUT_R_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "ce1" }} , 
 	{ "name": "OUT_R_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "we1" }} , 
 	{ "name": "OUT_R_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_0", "role": "d1" }} , 
 	{ "name": "OUT_I_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "address0" }} , 
 	{ "name": "OUT_I_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "ce0" }} , 
 	{ "name": "OUT_I_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "we0" }} , 
 	{ "name": "OUT_I_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "d0" }} , 
 	{ "name": "OUT_I_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "address1" }} , 
 	{ "name": "OUT_I_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "ce1" }} , 
 	{ "name": "OUT_I_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "we1" }} , 
 	{ "name": "OUT_I_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_0", "role": "d1" }} , 
 	{ "name": "Stage9_R_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_R_0", "role": "address0" }} , 
 	{ "name": "Stage9_R_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_R_0", "role": "ce0" }} , 
 	{ "name": "Stage9_R_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_R_0", "role": "q0" }} , 
 	{ "name": "Stage9_R_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_R_0", "role": "address1" }} , 
 	{ "name": "Stage9_R_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_R_0", "role": "ce1" }} , 
 	{ "name": "Stage9_R_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_R_0", "role": "q1" }} , 
 	{ "name": "Stage9_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_R_2", "role": "address0" }} , 
 	{ "name": "Stage9_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_R_2", "role": "ce0" }} , 
 	{ "name": "Stage9_R_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_R_2", "role": "q0" }} , 
 	{ "name": "Stage9_R_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_R_2", "role": "address1" }} , 
 	{ "name": "Stage9_R_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_R_2", "role": "ce1" }} , 
 	{ "name": "Stage9_R_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_R_2", "role": "q1" }} , 
 	{ "name": "Stage9_I_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_I_0", "role": "address0" }} , 
 	{ "name": "Stage9_I_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_I_0", "role": "ce0" }} , 
 	{ "name": "Stage9_I_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_I_0", "role": "q0" }} , 
 	{ "name": "Stage9_I_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_I_0", "role": "address1" }} , 
 	{ "name": "Stage9_I_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_I_0", "role": "ce1" }} , 
 	{ "name": "Stage9_I_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_I_0", "role": "q1" }} , 
 	{ "name": "Stage9_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_I_2", "role": "address0" }} , 
 	{ "name": "Stage9_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_I_2", "role": "ce0" }} , 
 	{ "name": "Stage9_I_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_I_2", "role": "q0" }} , 
 	{ "name": "Stage9_I_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "Stage9_I_2", "role": "address1" }} , 
 	{ "name": "Stage9_I_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "Stage9_I_2", "role": "ce1" }} , 
 	{ "name": "Stage9_I_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "Stage9_I_2", "role": "q1" }} , 
 	{ "name": "OUT_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "address0" }} , 
 	{ "name": "OUT_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "ce0" }} , 
 	{ "name": "OUT_R_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "we0" }} , 
 	{ "name": "OUT_R_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "d0" }} , 
 	{ "name": "OUT_R_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "address1" }} , 
 	{ "name": "OUT_R_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "ce1" }} , 
 	{ "name": "OUT_R_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "we1" }} , 
 	{ "name": "OUT_R_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_2", "role": "d1" }} , 
 	{ "name": "OUT_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "address0" }} , 
 	{ "name": "OUT_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "ce0" }} , 
 	{ "name": "OUT_I_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "we0" }} , 
 	{ "name": "OUT_I_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "d0" }} , 
 	{ "name": "OUT_I_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "address1" }} , 
 	{ "name": "OUT_I_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "ce1" }} , 
 	{ "name": "OUT_I_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "we1" }} , 
 	{ "name": "OUT_I_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_2", "role": "d1" }} , 
 	{ "name": "OUT_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "address0" }} , 
 	{ "name": "OUT_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "ce0" }} , 
 	{ "name": "OUT_R_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "we0" }} , 
 	{ "name": "OUT_R_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "d0" }} , 
 	{ "name": "OUT_R_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "address1" }} , 
 	{ "name": "OUT_R_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "ce1" }} , 
 	{ "name": "OUT_R_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "we1" }} , 
 	{ "name": "OUT_R_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_R_3", "role": "d1" }} , 
 	{ "name": "OUT_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "address0" }} , 
 	{ "name": "OUT_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "ce0" }} , 
 	{ "name": "OUT_I_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "we0" }} , 
 	{ "name": "OUT_I_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "d0" }} , 
 	{ "name": "OUT_I_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "address1" }} , 
 	{ "name": "OUT_I_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "ce1" }} , 
 	{ "name": "OUT_I_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "we1" }} , 
 	{ "name": "OUT_I_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "OUT_I_3", "role": "d1" }} , 
 	{ "name": "W_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address0" }} , 
 	{ "name": "W_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce0" }} , 
 	{ "name": "W_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q0" }} , 
 	{ "name": "W_real_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address1" }} , 
 	{ "name": "W_real_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce1" }} , 
 	{ "name": "W_real_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q1" }} , 
 	{ "name": "W_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address0" }} , 
 	{ "name": "W_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce0" }} , 
 	{ "name": "W_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q0" }} , 
 	{ "name": "W_imag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address1" }} , 
 	{ "name": "W_imag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce1" }} , 
 	{ "name": "W_imag_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U126", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U127", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U128", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U129", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U130", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U131", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U132", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U133", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U134", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U135", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U136", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U137", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "273", "Max" : "273"}
	, {"Name" : "Interval", "Min" : "273", "Max" : "273"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	OUT_R_1 { ap_memory {  { OUT_R_1_address0 mem_address 1 8 }  { OUT_R_1_ce0 mem_ce 1 1 }  { OUT_R_1_we0 mem_we 1 1 }  { OUT_R_1_d0 mem_din 1 32 }  { OUT_R_1_address1 MemPortADDR2 1 8 }  { OUT_R_1_ce1 MemPortCE2 1 1 }  { OUT_R_1_we1 MemPortWE2 1 1 }  { OUT_R_1_d1 MemPortDIN2 1 32 } } }
	OUT_I_1 { ap_memory {  { OUT_I_1_address0 mem_address 1 8 }  { OUT_I_1_ce0 mem_ce 1 1 }  { OUT_I_1_we0 mem_we 1 1 }  { OUT_I_1_d0 mem_din 1 32 }  { OUT_I_1_address1 MemPortADDR2 1 8 }  { OUT_I_1_ce1 MemPortCE2 1 1 }  { OUT_I_1_we1 MemPortWE2 1 1 }  { OUT_I_1_d1 MemPortDIN2 1 32 } } }
	Stage9_R_1 { ap_memory {  { Stage9_R_1_address0 mem_address 1 8 }  { Stage9_R_1_ce0 mem_ce 1 1 }  { Stage9_R_1_q0 in_data 0 32 }  { Stage9_R_1_address1 MemPortADDR2 1 8 }  { Stage9_R_1_ce1 MemPortCE2 1 1 }  { Stage9_R_1_q1 in_data 0 32 } } }
	Stage9_R_3 { ap_memory {  { Stage9_R_3_address0 mem_address 1 8 }  { Stage9_R_3_ce0 mem_ce 1 1 }  { Stage9_R_3_q0 in_data 0 32 }  { Stage9_R_3_address1 MemPortADDR2 1 8 }  { Stage9_R_3_ce1 MemPortCE2 1 1 }  { Stage9_R_3_q1 in_data 0 32 } } }
	Stage9_I_1 { ap_memory {  { Stage9_I_1_address0 mem_address 1 8 }  { Stage9_I_1_ce0 mem_ce 1 1 }  { Stage9_I_1_q0 in_data 0 32 }  { Stage9_I_1_address1 MemPortADDR2 1 8 }  { Stage9_I_1_ce1 MemPortCE2 1 1 }  { Stage9_I_1_q1 in_data 0 32 } } }
	Stage9_I_3 { ap_memory {  { Stage9_I_3_address0 mem_address 1 8 }  { Stage9_I_3_ce0 mem_ce 1 1 }  { Stage9_I_3_q0 in_data 0 32 }  { Stage9_I_3_address1 MemPortADDR2 1 8 }  { Stage9_I_3_ce1 MemPortCE2 1 1 }  { Stage9_I_3_q1 in_data 0 32 } } }
	OUT_R_0 { ap_memory {  { OUT_R_0_address0 mem_address 1 8 }  { OUT_R_0_ce0 mem_ce 1 1 }  { OUT_R_0_we0 mem_we 1 1 }  { OUT_R_0_d0 mem_din 1 32 }  { OUT_R_0_address1 MemPortADDR2 1 8 }  { OUT_R_0_ce1 MemPortCE2 1 1 }  { OUT_R_0_we1 MemPortWE2 1 1 }  { OUT_R_0_d1 MemPortDIN2 1 32 } } }
	OUT_I_0 { ap_memory {  { OUT_I_0_address0 mem_address 1 8 }  { OUT_I_0_ce0 mem_ce 1 1 }  { OUT_I_0_we0 mem_we 1 1 }  { OUT_I_0_d0 mem_din 1 32 }  { OUT_I_0_address1 MemPortADDR2 1 8 }  { OUT_I_0_ce1 MemPortCE2 1 1 }  { OUT_I_0_we1 MemPortWE2 1 1 }  { OUT_I_0_d1 MemPortDIN2 1 32 } } }
	Stage9_R_0 { ap_memory {  { Stage9_R_0_address0 mem_address 1 8 }  { Stage9_R_0_ce0 mem_ce 1 1 }  { Stage9_R_0_q0 in_data 0 32 }  { Stage9_R_0_address1 MemPortADDR2 1 8 }  { Stage9_R_0_ce1 MemPortCE2 1 1 }  { Stage9_R_0_q1 in_data 0 32 } } }
	Stage9_R_2 { ap_memory {  { Stage9_R_2_address0 mem_address 1 8 }  { Stage9_R_2_ce0 mem_ce 1 1 }  { Stage9_R_2_q0 in_data 0 32 }  { Stage9_R_2_address1 MemPortADDR2 1 8 }  { Stage9_R_2_ce1 MemPortCE2 1 1 }  { Stage9_R_2_q1 in_data 0 32 } } }
	Stage9_I_0 { ap_memory {  { Stage9_I_0_address0 mem_address 1 8 }  { Stage9_I_0_ce0 mem_ce 1 1 }  { Stage9_I_0_q0 in_data 0 32 }  { Stage9_I_0_address1 MemPortADDR2 1 8 }  { Stage9_I_0_ce1 MemPortCE2 1 1 }  { Stage9_I_0_q1 in_data 0 32 } } }
	Stage9_I_2 { ap_memory {  { Stage9_I_2_address0 mem_address 1 8 }  { Stage9_I_2_ce0 mem_ce 1 1 }  { Stage9_I_2_q0 in_data 0 32 }  { Stage9_I_2_address1 MemPortADDR2 1 8 }  { Stage9_I_2_ce1 MemPortCE2 1 1 }  { Stage9_I_2_q1 in_data 0 32 } } }
	OUT_R_2 { ap_memory {  { OUT_R_2_address0 mem_address 1 8 }  { OUT_R_2_ce0 mem_ce 1 1 }  { OUT_R_2_we0 mem_we 1 1 }  { OUT_R_2_d0 mem_din 1 32 }  { OUT_R_2_address1 MemPortADDR2 1 8 }  { OUT_R_2_ce1 MemPortCE2 1 1 }  { OUT_R_2_we1 MemPortWE2 1 1 }  { OUT_R_2_d1 MemPortDIN2 1 32 } } }
	OUT_I_2 { ap_memory {  { OUT_I_2_address0 mem_address 1 8 }  { OUT_I_2_ce0 mem_ce 1 1 }  { OUT_I_2_we0 mem_we 1 1 }  { OUT_I_2_d0 mem_din 1 32 }  { OUT_I_2_address1 MemPortADDR2 1 8 }  { OUT_I_2_ce1 MemPortCE2 1 1 }  { OUT_I_2_we1 MemPortWE2 1 1 }  { OUT_I_2_d1 MemPortDIN2 1 32 } } }
	OUT_R_3 { ap_memory {  { OUT_R_3_address0 mem_address 1 8 }  { OUT_R_3_ce0 mem_ce 1 1 }  { OUT_R_3_we0 mem_we 1 1 }  { OUT_R_3_d0 mem_din 1 32 }  { OUT_R_3_address1 MemPortADDR2 1 8 }  { OUT_R_3_ce1 MemPortCE2 1 1 }  { OUT_R_3_we1 MemPortWE2 1 1 }  { OUT_R_3_d1 MemPortDIN2 1 32 } } }
	OUT_I_3 { ap_memory {  { OUT_I_3_address0 mem_address 1 8 }  { OUT_I_3_ce0 mem_ce 1 1 }  { OUT_I_3_we0 mem_we 1 1 }  { OUT_I_3_d0 mem_din 1 32 }  { OUT_I_3_address1 MemPortADDR2 1 8 }  { OUT_I_3_ce1 MemPortCE2 1 1 }  { OUT_I_3_we1 MemPortWE2 1 1 }  { OUT_I_3_d1 MemPortDIN2 1 32 } } }
	W_real { ap_memory {  { W_real_address0 mem_address 1 9 }  { W_real_ce0 mem_ce 1 1 }  { W_real_q0 mem_dout 0 32 }  { W_real_address1 MemPortADDR2 1 9 }  { W_real_ce1 MemPortCE2 1 1 }  { W_real_q1 MemPortDOUT2 0 32 } } }
	W_imag { ap_memory {  { W_imag_address0 mem_address 1 9 }  { W_imag_ce0 mem_ce 1 1 }  { W_imag_q0 mem_dout 0 32 }  { W_imag_address1 MemPortADDR2 1 9 }  { W_imag_ce1 MemPortCE2 1 1 }  { W_imag_q1 MemPortDOUT2 0 32 } } }
}
