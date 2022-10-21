// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __fft_stages_W_imag_ROM_AUTO_1R_H__
#define __fft_stages_W_imag_ROM_AUTO_1R_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct fft_stages_W_imag_ROM_AUTO_1R_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 512;
  static const unsigned AddressWidth = 9;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(fft_stages_W_imag_ROM_AUTO_1R_ram) {
        ram[0] = "0b10000000000000000000000000000000";
        ram[1] = "0b10111011110010010001000010000000";
        ram[2] = "0b10111100010010010001000010000000";
        ram[3] = "0b10111100100101101100101001000111";
        ram[4] = "0b10111100110010010000101000110101";
        ram[5] = "0b10111100111110110100101000100011";
        ram[6] = "0b10111101000101101100001011110000";
        ram[7] = "0b10111101001011111101111111000010";
        ram[8] = "0b10111101010010001111101110000111";
        ram[9] = "0b10111101011000100001010000100111";
        ram[10] = "0b10111101011110110010101110111011";
        ram[11] = "0b10111101100010100010000000010100";
        ram[12] = "0b10111101100101101010100100111111";
        ram[13] = "0b10111101101000110011000001010001";
        ram[14] = "0b10111101101011111011011001010110";
        ram[15] = "0b10111101101111000011101011001001";
        ram[16] = "0b10111101110010001011110100100011";
        ram[17] = "0b10111101110101010011110111101010";
        ram[18] = "0b10111101111000011011110000010010";
        ram[19] = "0b10111101111011100011100010101000";
        ram[20] = "0b10111101111110101011001010011110";
        ram[21] = "0b10111110000000111001010011111011";
        ram[22] = "0b10111110000010011100111110011010";
        ram[23] = "0b10111110000100000000100010100111";
        ram[24] = "0b10111110000101100100000001100100";
        ram[25] = "0b10111110000111000111011011010001";
        ram[26] = "0b10111110001000101010101110101100";
        ram[27] = "0b10111110001010001101111011110100";
        ram[28] = "0b10111110001011110001000010101010";
        ram[29] = "0b10111110001101010100000010001001";
        ram[30] = "0b10111110001110110110111011010110";
        ram[31] = "0b10111110010000011001101101001110";
        ram[32] = "0b10111110010001111100010110101100";
        ram[33] = "0b10111110010011011110111001111000";
        ram[34] = "0b10111110010101000001010011101000";
        ram[35] = "0b10111110010110100011100110000010";
        ram[36] = "0b10111110011000000101110000000011";
        ram[37] = "0b10111110011001100111110001101100";
        ram[38] = "0b10111110011011001001101001111000";
        ram[39] = "0b10111110011100101011011001101011";
        ram[40] = "0b10111110011110001100111111000000";
        ram[41] = "0b10111110011111101110011011111011";
        ram[42] = "0b10111110100000100111110111001100";
        ram[43] = "0b10111110100001011000011011001011";
        ram[44] = "0b10111110100010001000111010011011";
        ram[45] = "0b10111110100010111001010011111011";
        ram[46] = "0b10111110100011101001101000101100";
        ram[47] = "0b10111110100100011001110111101101";
        ram[48] = "0b10111110100101001010000000111100";
        ram[49] = "0b10111110100101111010000100011011";
        ram[50] = "0b10111110100110101010000010001000";
        ram[51] = "0b10111110100111011001111010000100";
        ram[52] = "0b10111110101000001001101011101101";
        ram[53] = "0b10111110101000111001010111000100";
        ram[54] = "0b10111110101001101000111100001000";
        ram[55] = "0b10111110101010011000011010111010";
        ram[56] = "0b10111110101011000111110011011001";
        ram[57] = "0b10111110101011110111000101000011";
        ram[58] = "0b10111110101100100110001111111010";
        ram[59] = "0b10111110101101010101010011111100";
        ram[60] = "0b10111110101110000100010000101000";
        ram[61] = "0b10111110101110110011000110100001";
        ram[62] = "0b10111110101111100001110101000011";
        ram[63] = "0b10111110110000010000011100010000";
        ram[64] = "0b10111110110000111110111100000111";
        ram[65] = "0b10111110110001101101010100101000";
        ram[66] = "0b10111110110010011011100101010010";
        ram[67] = "0b10111110110011001001101110000100";
        ram[68] = "0b10111110110011110111101111000000";
        ram[69] = "0b10111110110100100101101000000100";
        ram[70] = "0b10111110110101010011011001010000";
        ram[71] = "0b10111110110110000001000001100010";
        ram[72] = "0b10111110110110101110100001111101";
        ram[73] = "0b10111110110111011011111001111111";
        ram[74] = "0b10111110111000001001001001000111";
        ram[75] = "0b10111110111000110110001111110101";
        ram[76] = "0b10111110111001100011001101101010";
        ram[77] = "0b10111110111010010000000011000101";
        ram[78] = "0b10111110111010111100101111000101";
        ram[79] = "0b10111110111011101001010010001010";
        ram[80] = "0b10111110111100010101101011110011";
        ram[81] = "0b10111110111101000001111100000000";
        ram[82] = "0b10111110111101101110000011010010";
        ram[83] = "0b10111110111110011010000000100111";
        ram[84] = "0b10111110111111000101110100100000";
        ram[85] = "0b10111110111111110001011110111110";
        ram[86] = "0b10111111000000001110011111011110";
        ram[87] = "0b10111111000000100100001010101111";
        ram[88] = "0b10111111000000111001110001000001";
        ram[89] = "0b10111111000001001111010010000100";
        ram[90] = "0b10111111000001100100101110001000";
        ram[91] = "0b10111111000001111010000100111100";
        ram[92] = "0b10111111000010001111010110100001";
        ram[93] = "0b10111111000010100100100010110110";
        ram[94] = "0b10111111000010111001101001101011";
        ram[95] = "0b10111111000011001110101011010001";
        ram[96] = "0b10111111000011100011100111010110";
        ram[97] = "0b10111111000011111000011110001011";
        ram[98] = "0b10111111000100001101001111010000";
        ram[99] = "0b10111111000100100001111010110100";
        ram[100] = "0b10111111000100110110100000100111";
        ram[101] = "0b10111111000101001011000000111010";
        ram[102] = "0b10111111000101011111011011011100";
        ram[103] = "0b10111111000101110011110000001100";
        ram[104] = "0b10111111000110000111111110111011";
        ram[105] = "0b10111111000110011100001000001001";
        ram[106] = "0b10111111000110110000001011000101";
        ram[107] = "0b10111111000111000100001000001111";
        ram[108] = "0b10111111000111010111111111011000";
        ram[109] = "0b10111111000111101011110000001110";
        ram[110] = "0b10111111000111111111011011010011";
        ram[111] = "0b10111111001000010010111111110101";
        ram[112] = "0b10111111001000100110011110010100";
        ram[113] = "0b10111111001000111001110110100001";
        ram[114] = "0b10111111001001001101001000101101";
        ram[115] = "0b10111111001001100000010100000011";
        ram[116] = "0b10111111001001110011011001011001";
        ram[117] = "0b10111111001010000110011000001010";
        ram[118] = "0b10111111001010011001010000011000";
        ram[119] = "0b10111111001010101100000010000011";
        ram[120] = "0b10111111001010111110101101001010";
        ram[121] = "0b10111111001011010001010001101110";
        ram[122] = "0b10111111001011100011101111011110";
        ram[123] = "0b10111111001011110110000110101010";
        ram[124] = "0b10111111001100001000010111000010";
        ram[125] = "0b10111111001100011010100000010101";
        ram[126] = "0b10111111001100101100100011000101";
        ram[127] = "0b10111111001100111110011111000000";
        ram[128] = "0b10111111001101010000010011110111";
        ram[129] = "0b10111111001101100010000001101000";
        ram[130] = "0b10111111001101110011101000100110";
        ram[131] = "0b10111111001110000101001000011110";
        ram[132] = "0b10111111001110010110100001000000";
        ram[133] = "0b10111111001110100111110010011110";
        ram[134] = "0b10111111001110111000111100110110";
        ram[135] = "0b10111111001111001010000000001010";
        ram[136] = "0b10111111001111011010111011110111";
        ram[137] = "0b10111111001111101011110000011111";
        ram[138] = "0b10111111001111111100011101100000";
        ram[139] = "0b10111111010000001101000011011101";
        ram[140] = "0b10111111010000011101100001110011";
        ram[141] = "0b10111111010000101101111000100010";
        ram[142] = "0b10111111010000111110000111111100";
        ram[143] = "0b10111111010001001110001111101111";
        ram[144] = "0b10111111010001011110001111111100";
        ram[145] = "0b10111111010001101110001000100010";
        ram[146] = "0b10111111010001111101111001100001";
        ram[147] = "0b10111111010010001101100010111010";
        ram[148] = "0b10111111010010011101000100001011";
        ram[149] = "0b10111111010010101100011110000110";
        ram[150] = "0b10111111010010111011101111111001";
        ram[151] = "0b10111111010011001010111001110101";
        ram[152] = "0b10111111010011011001111100001010";
        ram[153] = "0b10111111010011101000110110010111";
        ram[154] = "0b10111111010011110111101000011100";
        ram[155] = "0b10111111010100000110010010101010";
        ram[156] = "0b10111111010100010100110101000000";
        ram[157] = "0b10111111010100100011001111001110";
        ram[158] = "0b10111111010100110001100001000100";
        ram[159] = "0b10111111010100111111101011000010";
        ram[160] = "0b10111111010101001101101100111000";
        ram[161] = "0b10111111010101011011100110010101";
        ram[162] = "0b10111111010101101001010111101010";
        ram[163] = "0b10111111010101110111000000100110";
        ram[164] = "0b10111111010110000100100001011010";
        ram[165] = "0b10111111010110010001111001100100";
        ram[166] = "0b10111111010110011111001001100111";
        ram[167] = "0b10111111010110101100010001010000";
        ram[168] = "0b10111111010110111001010000100001";
        ram[169] = "0b10111111010111000110000111001000";
        ram[170] = "0b10111111010111010010110101010110";
        ram[171] = "0b10111111010111011111011010111010";
        ram[172] = "0b10111111010111101011111000000110";
        ram[173] = "0b10111111010111111000001100100111";
        ram[174] = "0b10111111011000000100011000100000";
        ram[175] = "0b10111111011000010000011011101110";
        ram[176] = "0b10111111011000011100010110010011";
        ram[177] = "0b10111111011000101000001000001110";
        ram[178] = "0b10111111011000110011110001100000";
        ram[179] = "0b10111111011000111111010001110111";
        ram[180] = "0b10111111011001001010101001010100";
        ram[181] = "0b10111111011001010101111000000111";
        ram[182] = "0b10111111011001100000111110000000";
        ram[183] = "0b10111111011001101011111011001111";
        ram[184] = "0b10111111011001110110101111010011";
        ram[185] = "0b10111111011010000001011010101101";
        ram[186] = "0b10111111011010001011111100111100";
        ram[187] = "0b10111111011010010110010110010000";
        ram[188] = "0b10111111011010100000100110101011";
        ram[189] = "0b10111111011010101010101101111010";
        ram[190] = "0b10111111011010110100101100001110";
        ram[191] = "0b10111111011010111110100001010111";
        ram[192] = "0b10111111011011001000001101100110";
        ram[193] = "0b10111111011011010001110000011001";
        ram[194] = "0b10111111011011011011001010010010";
        ram[195] = "0b10111111011011100100011010111111";
        ram[196] = "0b10111111011011101101100010100001";
        ram[197] = "0b10111111011011110110100000111000";
        ram[198] = "0b10111111011011111111010101110011";
        ram[199] = "0b10111111011100001000000001100011";
        ram[200] = "0b10111111011100010000100100000111";
        ram[201] = "0b10111111011100011000111101010000";
        ram[202] = "0b10111111011100100001001101001101";
        ram[203] = "0b10111111011100101001010011111111";
        ram[204] = "0b10111111011100110001010001000100";
        ram[205] = "0b10111111011100111001000100111111";
        ram[206] = "0b10111111011101000000101111011101";
        ram[207] = "0b10111111011101001000010000011111";
        ram[208] = "0b10111111011101001111101000000101";
        ram[209] = "0b10111111011101010110110110001111";
        ram[210] = "0b10111111011101011101111011001110";
        ram[211] = "0b10111111011101100100110110010000";
        ram[212] = "0b10111111011101101011101000000110";
        ram[213] = "0b10111111011101110010010000010000";
        ram[214] = "0b10111111011101111000101110111101";
        ram[215] = "0b10111111011101111111000100001111";
        ram[216] = "0b10111111011110000101001111110100";
        ram[217] = "0b10111111011110001011010001111100";
        ram[218] = "0b10111111011110010001001010011001";
        ram[219] = "0b10111111011110010110111001001000";
        ram[220] = "0b10111111011110011100011110011011";
        ram[221] = "0b10111111011110100001111010000010";
        ram[222] = "0b10111111011110100111001011111100";
        ram[223] = "0b10111111011110101100010100011001";
        ram[224] = "0b10111111011110110001010010111010";
        ram[225] = "0b10111111011110110110000111111110";
        ram[226] = "0b10111111011110111010110011000101";
        ram[227] = "0b10111111011110111111010100110000";
        ram[228] = "0b10111111011111000011101100101110";
        ram[229] = "0b10111111011111000111111010101110";
        ram[230] = "0b10111111011111001011111111000010";
        ram[231] = "0b10111111011111001111111001111010";
        ram[232] = "0b10111111011111010011101010110100";
        ram[233] = "0b10111111011111010111010001110001";
        ram[234] = "0b10111111011111011010101111010010";
        ram[235] = "0b10111111011111011110000010110101";
        ram[236] = "0b10111111011111100001001100101011";
        ram[237] = "0b10111111011111100100001100100100";
        ram[238] = "0b10111111011111100111000010110000";
        ram[239] = "0b10111111011111101001101111010000";
        ram[240] = "0b10111111011111101100010001110010";
        ram[241] = "0b10111111011111101110101010010110";
        ram[242] = "0b10111111011111110000111001011110";
        ram[243] = "0b10111111011111110010111110011000";
        ram[244] = "0b10111111011111110100111001100110";
        ram[245] = "0b10111111011111110110101011000110";
        ram[246] = "0b10111111011111111000010010101001";
        ram[247] = "0b10111111011111111001110000100000";
        ram[248] = "0b10111111011111111011000100000111";
        ram[249] = "0b10111111011111111100001110010011";
        ram[250] = "0b10111111011111111101001110010001";
        ram[251] = "0b10111111011111111110000100100010";
        ram[252] = "0b10111111011111111110110001000110";
        ram[253] = "0b10111111011111111111010011101101";
        ram[254] = "0b10111111011111111111101100010110";
        ram[255] = "0b10111111011111111111111011000001";
        ram[256] = "0b10111111100000000000000000000000";
        ram[257] = "0b10111111011111111111111011000001";
        ram[258] = "0b10111111011111111111101100010110";
        ram[259] = "0b10111111011111111111010011101101";
        ram[260] = "0b10111111011111111110110001000110";
        ram[261] = "0b10111111011111111110000100100010";
        ram[262] = "0b10111111011111111101001110010001";
        ram[263] = "0b10111111011111111100001110010011";
        ram[264] = "0b10111111011111111011000100000111";
        ram[265] = "0b10111111011111111001110000100000";
        ram[266] = "0b10111111011111111000010010101001";
        ram[267] = "0b10111111011111110110101011000110";
        ram[268] = "0b10111111011111110100111001100110";
        ram[269] = "0b10111111011111110010111110011000";
        ram[270] = "0b10111111011111110000111001011110";
        ram[271] = "0b10111111011111101110101010010110";
        ram[272] = "0b10111111011111101100010001110010";
        ram[273] = "0b10111111011111101001101111010000";
        ram[274] = "0b10111111011111100111000010110000";
        ram[275] = "0b10111111011111100100001100100100";
        ram[276] = "0b10111111011111100001001100101011";
        ram[277] = "0b10111111011111011110000010110101";
        ram[278] = "0b10111111011111011010101111010010";
        ram[279] = "0b10111111011111010111010001110001";
        ram[280] = "0b10111111011111010011101010110100";
        ram[281] = "0b10111111011111001111111001111010";
        ram[282] = "0b10111111011111001011111111000010";
        ram[283] = "0b10111111011111000111111010101110";
        ram[284] = "0b10111111011111000011101100101110";
        ram[285] = "0b10111111011110111111010100110000";
        ram[286] = "0b10111111011110111010110011000101";
        ram[287] = "0b10111111011110110110000111111110";
        ram[288] = "0b10111111011110110001010010111010";
        ram[289] = "0b10111111011110101100010100011001";
        ram[290] = "0b10111111011110100111001011111100";
        ram[291] = "0b10111111011110100001111010000010";
        ram[292] = "0b10111111011110011100011110011011";
        ram[293] = "0b10111111011110010110111001001000";
        ram[294] = "0b10111111011110010001001010011001";
        ram[295] = "0b10111111011110001011010001111100";
        ram[296] = "0b10111111011110000101001111110100";
        ram[297] = "0b10111111011101111111000100001111";
        ram[298] = "0b10111111011101111000101110111101";
        ram[299] = "0b10111111011101110010010000010000";
        ram[300] = "0b10111111011101101011101000000110";
        ram[301] = "0b10111111011101100100110110010000";
        ram[302] = "0b10111111011101011101111011001110";
        ram[303] = "0b10111111011101010110110110001111";
        ram[304] = "0b10111111011101001111101000000101";
        ram[305] = "0b10111111011101001000010000011111";
        ram[306] = "0b10111111011101000000101111011101";
        ram[307] = "0b10111111011100111001000100111111";
        ram[308] = "0b10111111011100110001010001000100";
        ram[309] = "0b10111111011100101001010011111111";
        ram[310] = "0b10111111011100100001001101001101";
        ram[311] = "0b10111111011100011000111101010000";
        ram[312] = "0b10111111011100010000100100000111";
        ram[313] = "0b10111111011100001000000001100011";
        ram[314] = "0b10111111011011111111010101110011";
        ram[315] = "0b10111111011011110110100000100111";
        ram[316] = "0b10111111011011101101100010100001";
        ram[317] = "0b10111111011011100100011010111111";
        ram[318] = "0b10111111011011011011001010010010";
        ram[319] = "0b10111111011011010001110000011001";
        ram[320] = "0b10111111011011001000001101100110";
        ram[321] = "0b10111111011010111110100001010111";
        ram[322] = "0b10111111011010110100101100001110";
        ram[323] = "0b10111111011010101010101101111010";
        ram[324] = "0b10111111011010100000100110101011";
        ram[325] = "0b10111111011010010110010110010000";
        ram[326] = "0b10111111011010001011111100111100";
        ram[327] = "0b10111111011010000001011010101101";
        ram[328] = "0b10111111011001110110101111010011";
        ram[329] = "0b10111111011001101011111011001111";
        ram[330] = "0b10111111011001100000111110000000";
        ram[331] = "0b10111111011001010101111000000111";
        ram[332] = "0b10111111011001001010101001010100";
        ram[333] = "0b10111111011000111111010001110111";
        ram[334] = "0b10111111011000110011110001100000";
        ram[335] = "0b10111111011000101000001000001110";
        ram[336] = "0b10111111011000011100010110010011";
        ram[337] = "0b10111111011000010000011011101110";
        ram[338] = "0b10111111011000000100011000100000";
        ram[339] = "0b10111111010111111000001100100111";
        ram[340] = "0b10111111010111101011111000000110";
        ram[341] = "0b10111111010111011111011010111010";
        ram[342] = "0b10111111010111010010110101010110";
        ram[343] = "0b10111111010111000110000111001000";
        ram[344] = "0b10111111010110111001010000100001";
        ram[345] = "0b10111111010110101100010001010000";
        ram[346] = "0b10111111010110011111001001100111";
        ram[347] = "0b10111111010110010001111001100100";
        ram[348] = "0b10111111010110000100100001011010";
        ram[349] = "0b10111111010101110111000000100110";
        ram[350] = "0b10111111010101101001010111101010";
        ram[351] = "0b10111111010101011011100110010101";
        ram[352] = "0b10111111010101001101101100111000";
        ram[353] = "0b10111111010100111111101011000010";
        ram[354] = "0b10111111010100110001100001000100";
        ram[355] = "0b10111111010100100011001110111110";
        ram[356] = "0b10111111010100010100110101000000";
        ram[357] = "0b10111111010100000110010010101010";
        ram[358] = "0b10111111010011110111101000011100";
        ram[359] = "0b10111111010011101000110110010111";
        ram[360] = "0b10111111010011011001111100001010";
        ram[361] = "0b10111111010011001010111001110101";
        ram[362] = "0b10111111010010111011101111111001";
        ram[363] = "0b10111111010010101100011110000110";
        ram[364] = "0b10111111010010011101000100001011";
        ram[365] = "0b10111111010010001101100010111010";
        ram[366] = "0b10111111010001111101111001100001";
        ram[367] = "0b10111111010001101110001000100010";
        ram[368] = "0b10111111010001011110001111111100";
        ram[369] = "0b10111111010001001110001111101111";
        ram[370] = "0b10111111010000111110000111111100";
        ram[371] = "0b10111111010000101101111000100010";
        ram[372] = "0b10111111010000011101100001110011";
        ram[373] = "0b10111111010000001101000011011101";
        ram[374] = "0b10111111001111111100011101100000";
        ram[375] = "0b10111111001111101011110000011111";
        ram[376] = "0b10111111001111011010111011110111";
        ram[377] = "0b10111111001111001010000000001010";
        ram[378] = "0b10111111001110111000111100110110";
        ram[379] = "0b10111111001110100111110010011110";
        ram[380] = "0b10111111001110010110100001000000";
        ram[381] = "0b10111111001110000101001000001101";
        ram[382] = "0b10111111001101110011101000100110";
        ram[383] = "0b10111111001101100010000001101000";
        ram[384] = "0b10111111001101010000010011110111";
        ram[385] = "0b10111111001100111110011111000000";
        ram[386] = "0b10111111001100101100100011000101";
        ram[387] = "0b10111111001100011010100000010101";
        ram[388] = "0b10111111001100001000010111000010";
        ram[389] = "0b10111111001011110110000110101010";
        ram[390] = "0b10111111001011100011101111011110";
        ram[391] = "0b10111111001011010001010001101110";
        ram[392] = "0b10111111001010111110101101001010";
        ram[393] = "0b10111111001010101100000010000011";
        ram[394] = "0b10111111001010011001010000011000";
        ram[395] = "0b10111111001010000110011000001010";
        ram[396] = "0b10111111001001110011011001011001";
        ram[397] = "0b10111111001001100000010100000011";
        ram[398] = "0b10111111001001001101001000011100";
        ram[399] = "0b10111111001000111001110110100001";
        ram[400] = "0b10111111001000100110011110010100";
        ram[401] = "0b10111111001000010010111111110101";
        ram[402] = "0b10111111000111111111011011000010";
        ram[403] = "0b10111111000111101011110000001110";
        ram[404] = "0b10111111000111010111111111011000";
        ram[405] = "0b10111111000111000100001000001111";
        ram[406] = "0b10111111000110110000001011000101";
        ram[407] = "0b10111111000110011100000111111000";
        ram[408] = "0b10111111000110000111111110111011";
        ram[409] = "0b10111111000101110011110000001100";
        ram[410] = "0b10111111000101011111011011011100";
        ram[411] = "0b10111111000101001011000000111010";
        ram[412] = "0b10111111000100110110100000100111";
        ram[413] = "0b10111111000100100001111010110100";
        ram[414] = "0b10111111000100001101001111010000";
        ram[415] = "0b10111111000011111000011101111011";
        ram[416] = "0b10111111000011100011100111010110";
        ram[417] = "0b10111111000011001110101011010001";
        ram[418] = "0b10111111000010111001101001101011";
        ram[419] = "0b10111111000010100100100010100110";
        ram[420] = "0b10111111000010001111010110100001";
        ram[421] = "0b10111111000001111010000100111100";
        ram[422] = "0b10111111000001100100101110001000";
        ram[423] = "0b10111111000001001111010010000100";
        ram[424] = "0b10111111000000111001110001000001";
        ram[425] = "0b10111111000000100100001010101111";
        ram[426] = "0b10111111000000001110011111011110";
        ram[427] = "0b10111110111111110001011110111110";
        ram[428] = "0b10111110111111000101110100100000";
        ram[429] = "0b10111110111110011010000000100111";
        ram[430] = "0b10111110111101101110000011010010";
        ram[431] = "0b10111110111101000001111100000000";
        ram[432] = "0b10111110111100010101101011110011";
        ram[433] = "0b10111110111011101001010001101000";
        ram[434] = "0b10111110111010111100101111000101";
        ram[435] = "0b10111110111010010000000011000101";
        ram[436] = "0b10111110111001100011001101101010";
        ram[437] = "0b10111110111000110110001111110101";
        ram[438] = "0b10111110111000001001001001000111";
        ram[439] = "0b10111110110111011011111001111111";
        ram[440] = "0b10111110110110101110100001111101";
        ram[441] = "0b10111110110110000001000001100010";
        ram[442] = "0b10111110110101010011011000101111";
        ram[443] = "0b10111110110100100101101000000100";
        ram[444] = "0b10111110110011110111101111000000";
        ram[445] = "0b10111110110011001001101110000100";
        ram[446] = "0b10111110110010011011100101010010";
        ram[447] = "0b10111110110001101101010100101000";
        ram[448] = "0b10111110110000111110111100000111";
        ram[449] = "0b10111110110000010000011100010000";
        ram[450] = "0b10111110101111100001110101000011";
        ram[451] = "0b10111110101110110011000110100001";
        ram[452] = "0b10111110101110000100010000101000";
        ram[453] = "0b10111110101101010101010011011010";
        ram[454] = "0b10111110101100100110001111111010";
        ram[455] = "0b10111110101011110111000101000011";
        ram[456] = "0b10111110101011000111110011011001";
        ram[457] = "0b10111110101010011000011010111010";
        ram[458] = "0b10111110101001101000111100001000";
        ram[459] = "0b10111110101000111001010111000100";
        ram[460] = "0b10111110101000001001101011101101";
        ram[461] = "0b10111110100111011001111010000100";
        ram[462] = "0b10111110100110101010000010001000";
        ram[463] = "0b10111110100101111010000100011011";
        ram[464] = "0b10111110100101001010000000111100";
        ram[465] = "0b10111110100100011001110111001011";
        ram[466] = "0b10111110100011101001101000101100";
        ram[467] = "0b10111110100010111001010011111011";
        ram[468] = "0b10111110100010001000111010011011";
        ram[469] = "0b10111110100001011000011011001011";
        ram[470] = "0b10111110100000100111110111001100";
        ram[471] = "0b10111110011111101110011011111011";
        ram[472] = "0b10111110011110001100111111000000";
        ram[473] = "0b10111110011100101011011001101011";
        ram[474] = "0b10111110011011001001101001111000";
        ram[475] = "0b10111110011001100111110001101100";
        ram[476] = "0b10111110011000000101110000000011";
        ram[477] = "0b10111110010110100011100110000010";
        ram[478] = "0b10111110010101000001010011101000";
        ram[479] = "0b10111110010011011110111001111000";
        ram[480] = "0b10111110010001111100010110101100";
        ram[481] = "0b10111110010000011001101101001110";
        ram[482] = "0b10111110001110110110111011010110";
        ram[483] = "0b10111110001101010100000010001001";
        ram[484] = "0b10111110001011110001000010101010";
        ram[485] = "0b10111110001010001101111011110100";
        ram[486] = "0b10111110001000101010101110101100";
        ram[487] = "0b10111110000111000111011011010001";
        ram[488] = "0b10111110000101100100000001100100";
        ram[489] = "0b10111110000100000000100010100111";
        ram[490] = "0b10111110000010011100111110011010";
        ram[491] = "0b10111110000000111001010011111011";
        ram[492] = "0b10111101111110101011001010011110";
        ram[493] = "0b10111101111011100011100010101000";
        ram[494] = "0b10111101111000011011110000010010";
        ram[495] = "0b10111101110101010011110111101010";
        ram[496] = "0b10111101110010001011110100100011";
        ram[497] = "0b10111101101111000011101011001001";
        ram[498] = "0b10111101101011111011011001010110";
        ram[499] = "0b10111101101000110011000001010001";
        ram[500] = "0b10111101100101101010100010111001";
        ram[501] = "0b10111101100010100010000000010100";
        ram[502] = "0b10111101011110110010101110111011";
        ram[503] = "0b10111101011000100001010000100111";
        ram[504] = "0b10111101010010001111101110000111";
        ram[505] = "0b10111101001011111101111111000010";
        ram[506] = "0b10111101000101101100001011110000";
        ram[507] = "0b10111100111110110100101000100011";
        ram[508] = "0b10111100110010010000101000110101";
        ram[509] = "0b10111100100101101100101001000111";
        ram[510] = "0b10111100010010010000110001001110";
        ram[511] = "0b10111011110010010001000010000000";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(fft_stages_W_imag_ROM_AUTO_1R) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 512;
static const unsigned AddressWidth = 9;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


fft_stages_W_imag_ROM_AUTO_1R_ram* meminst;


SC_CTOR(fft_stages_W_imag_ROM_AUTO_1R) {
meminst = new fft_stages_W_imag_ROM_AUTO_1R_ram("fft_stages_W_imag_ROM_AUTO_1R_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~fft_stages_W_imag_ROM_AUTO_1R() {
    delete meminst;
}


};//endmodule
#endif
