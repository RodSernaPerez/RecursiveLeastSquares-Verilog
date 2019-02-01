`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:04:29 04/05/2016 
// Design Name: 
// Module Name:    BlockK 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BlockK #(parameter nBits=32, parameter M=32, parameter N=16)(
	output [M*N*nBits-1:0]K
    );
assign K={32'h00000156,
32'hffffff0e,
32'h000001a9,
32'h0000004b,
32'hfffffefb,
32'h00000131,
32'hfffffff2,
32'h000001b8,
32'h000000c3,
32'h0000014c,
32'hfffffe9d,
32'h000000b5,
32'h00000161,
32'h00000022,
32'h0000006f,
32'h000000a0,
32'h00000109,
32'hfffffe53,
32'h00000108,
32'hffffff8d,
32'h000002a9,
32'hfffffe41,
32'hffffffb1,
32'h00000118,
32'hfffffeb1,
32'hffffff36,
32'h000000b1,
32'hffffff8e,
32'h0000016f,
32'hfffffee3,
32'hfffffef3,
32'h0000006c,
32'hfffffe89,
32'hfffffec4,
32'h0000002f,
32'hfffffe53,
32'hfffffed8,
32'hffffffb3,
32'hffffffdf,
32'hffffffc4,
32'hfffffffc,
32'hffffff3c,
32'h000000d4,
32'h000000fe,
32'h000000b9,
32'hfffffed5,
32'h000001f0,
32'h00000082,
32'h00000148,
32'h00000074,
32'hffffff69,
32'hffffff1e,
32'h0000006a,
32'h00000026,
32'hffffff59,
32'hffffff37,
32'h000001eb,
32'hffffff75,
32'h000000ad,
32'h0000011c,
32'h00000019,
32'h00000023,
32'hffffff36,
32'h000001c3,
32'h0000010a,
32'h00000043,
32'hfffffef2,
32'hfffffe1c,
32'hffffff02,
32'hfffffe7b,
32'hffffffb5,
32'hffffff34,
32'hfffffefd,
32'h00000122,
32'hfffffeb6,
32'hffffff7e,
32'h000000e4,
32'h000000b3,
32'hffffffd9,
32'hffffffdf,
32'hffffff67,
32'hfffffea2,
32'hffffff9a,
32'h0000010c,
32'hfffffec2,
32'hfffffe41,
32'hffffffec,
32'h0000006d,
32'h00000184,
32'hfffffec8,
32'hfffffe93,
32'hfffffe59,
32'hffffff52,
32'hffffffd4,
32'hffffff7d,
32'h00000129,
32'hffffff47,
32'h000001d2,
32'h000000b3,
32'hffffff6c,
32'hffffff54,
32'hffffff95,
32'h0000016b,
32'h00000037,
32'h00000121,
32'hffffff4e,
32'hffffff72,
32'h00000052,
32'h0000018f,
32'hfffffe36,
32'hfffffe35,
32'hfffffea2,
32'h0000013b,
32'hfffffe8d,
32'hfffffec6,
32'h00000021,
32'h00000006,
32'h000001a1,
32'h000000b9,
32'hfffffeda,
32'h0000008d,
32'hffffff0a,
32'h0000001f,
32'hfffffeb4,
32'h00000138,
32'hffffffb3,
32'h00000059,
32'hfffffebb,
32'h00000023,
32'h00000099,
32'h000000fe,
32'hfffffed6,
32'hffffffbe,
32'h0000010c,
32'h0000010c,
32'hffffff8f,
32'hffffffff,
32'h00000231,
32'h0000014a,
32'hfffffcc4,
32'hffffff0a,
32'hfffffdd3,
32'hffffffe3,
32'h0000020b,
32'h0000028f,
32'h00000076,
32'hfffffe5d,
32'h0000012c,
32'hffffff59,
32'hfffffe52,
32'h00000045,
32'h0000014e,
32'h0000006d,
32'h000000cc,
32'h000000e7,
32'h000000fc,
32'hfffffe9c,
32'hfffffd5d,
32'h00000195,
32'hfffffed8,
32'h0000011b,
32'hffffff4f,
32'h000002b5,
32'h000000e7,
32'h00000183,
32'hfffffe91,
32'h000003e0,
32'hfffffbb3,
32'hfffffff1,
32'h00000011,
32'hfffffd90,
32'h000001ca,
32'hfffffead,
32'hffffffa7,
32'h00000196,
32'h000000bb,
32'h000001de,
32'hfffffe63,
32'h000001b7,
32'h0000007f,
32'hfffffbd6,
32'h000000e0,
32'hffffff52,
32'hfffffe97,
32'hfffffcd8,
32'hfffffe64,
32'h0000017d,
32'h0000015f,
32'hfffffe1c,
32'hffffff40,
32'hfffffc59,
32'hfffffff0,
32'hfffffff5,
32'h00000100,
32'hfffffe82,
32'hffffffcb,
32'h000000d4,
32'h000001f0,
32'hffffff39,
32'h00000073,
32'hfffffe11,
32'hfffffe74,
32'hfffffcdf,
32'h00000071,
32'hffffff7d,
32'hfffffdb7,
32'h00000040,
32'h00000195,
32'hffffffb0,
32'h0000005e,
32'hfffffba1,
32'h000001b4,
32'hfffffe86,
32'hffffffea,
32'h0000083c,
32'h0000032b,
32'hfffffcee,
32'hffffff56,
32'h00000275,
32'h00000173,
32'h0000029a,
32'h000002c8,
32'hffffff40,
32'h000004ed,
32'h000002b7,
32'h0000022f,
32'h0000026e,
32'hfffffcb1,
32'hffffff9a,
32'h0000001a,
32'h00000175,
32'h000002a9,
32'h00000001,
32'hfffffb81,
32'h00000009,
32'hfffffe12,
32'hfffffdaa,
32'h0000026d,
32'h00000249,
32'hffffff34,
32'hfffffeee,
32'hfffffc6d,
32'hfffffe68,
32'hfffffc39,
32'h00000169,
32'h0000011c,
32'h00000247,
32'h00000205,
32'h0000014d,
32'h000001b3,
32'hfffffec4,
32'h000001a1,
32'hfffffc29,
32'h00000006,
32'hfffffd7a,
32'hfffffe3b,
32'hfffffe5f,
32'hffffffb5,
32'hfffffca4,
32'hfffffe76,
32'hffffffaf,
32'h000001e2,
32'h000003dc,
32'h00000115,
32'hffffffae,
32'h0000026d,
32'hfffffef4,
32'h0000007c,
32'hffffff71,
32'hfffffffa,
32'h0000008d,
32'h0000053e,
32'h0000022a,
32'h000001e2,
32'h00000405,
32'hffffff54,
32'h00000071,
32'hffffffb5,
32'hfffffd05,
32'hfffffe37,
32'h0000019d,
32'hfffffdf8,
32'hffffff88,
32'hfffffe01,
32'hffffff32,
32'h00000147,
32'h00000375,
32'hfffffe78,
32'h000000b9,
32'hfffffdac,
32'h00000231,
32'hfffffdee,
32'hffffffd6,
32'h0000007c,
32'hfffffe58,
32'hfffffed2,
32'h00000187,
32'h00000115,
32'h00000013,
32'hffffff98,
32'hfffffcfc,
32'hffffff86,
32'hffffff43,
32'hfffffd80,
32'h000000e1,
32'h000000b1,
32'h0000025c,
32'hffffff9a,
32'h000001b0,
32'hfffffed2,
32'hfffffd6d,
32'hfffffd8f,
32'h00000292,
32'h0000004f,
32'hfffffdfd,
32'hfffffe91,
32'hffffff67,
32'hffffff12,
32'h0000026f,
32'hfffffe54,
32'h0000008a,
32'h000001a6,
32'h00000155,
32'h00000056,
32'hfffffe1e,
32'hffffff17,
32'hfffffeb1,
32'h0000013a,
32'hffffff67,
32'hfffffdda,
32'h0000022e,
32'hfffffe14,
32'h000001a7,
32'h0000010e,
32'hfffffec4,
32'hffffff72,
32'hffffff89,
32'hffffffb8,
32'hffffff19,
32'h000001c6,
32'hfffffdff,
32'hffffff72,
32'hffffff71,
32'hffffffee,
32'hfffffe07,
32'hffffff54,
32'h000001a8,
32'h000000fd,
32'h000002a5,
32'h00000133,
32'hfffffe79,
32'h000000df,
32'hffffff7d,
32'hfffffdf7,
32'hfffffeea,
32'hffffff7a,
32'hffffff40,
32'h000000ab,
32'h00000209,
32'h00000035,
32'h00000023,
32'h000001b6,
32'hffffffde,
32'h000000fe,
32'hffffffd9,
32'h000000b2,
32'hffffff5e,
32'h0000024d,
32'h000000ba,
32'h00000012,
32'h000001eb,
32'hfffffecb,
32'hfffffff5,
32'h00000027,
32'hfffffe9b,
32'hffffffa7,
32'h00000008,
32'hffffff05,
32'h00000093,
32'hfffffeb8,
32'hfffffe5c,
32'h00000013,
32'h000000e3,
32'hfffffe6f,
32'hffffff81,
32'hffffffcf,
32'h00000015,
32'hffffffdb,
32'h0000008f,
32'h000000e1,
32'hffffff85,
32'hffffff67,
32'hffffff9a,
32'h00000117,
32'hffffffb5,
32'h00000066,
32'hfffffe75,
32'hffffff38,
32'hfffffff6,
32'hffffffcb,
32'hffffffe3,
32'hffffff4d,
32'h0000015e,
32'h000000f2,
32'h0000012b,
32'hffffff12,
32'hffffff21,
32'hfffffed8,
32'h000000fc,
32'hfffffffc,
32'hffffff58,
32'hffffff92,
32'h00000011,
32'hffffff99,
32'hffffff66,
32'hfffffe5c,
32'h00000042,
32'h0000012b,
32'hfffffe65,
32'hffffff3b,
32'hffffffe8,
32'hffffff9f,
32'hffffffe3,
32'h000001e9,
32'h00000094,
32'h0000000f,
32'hffffff52,
32'hffffff95,
32'h0000003a,
32'hffffffce,
32'h00000084,
32'h00000128,
32'hffffffd1,
32'hfffffe47,
32'hffffff99,
32'h000000df,
32'hffffff06,
32'h0000008f,
32'h0000002b,
32'hffffff18,
32'hfffffebe,
32'h000000c8,
32'h0000019f,
32'h0000013d,
32'h00000016,
32'h000000bd,
32'hfffffe56,
32'h0000000e,
32'h00000067,
32'h000001c6,
32'hffffff8f,
32'hffffffa6,
32'h000000c5,
32'h00000046,
32'hffffffa2,
32'h0000012d,
32'h00000136,
32'hffffff3d,
32'hfffffefa,
32'hfffffee8,
32'hfffffffe,
32'hffffffa9,
32'h000001e5,
32'h00000025,
32'hffffff61,
32'hffffff27,
32'h000000d8,
32'h000000b6,
32'h0000000c,
32'hffffff89,
32'h00000058,
32'hfffffedf,
32'hffffffdd,
32'h000000ea,
32'h0000009a,
32'hfffffff3,
32'h00000042,
32'h00000042,
32'hffffff25,
32'h00000063,
32'h000000bf,
32'h0000003e,
32'h0000015b,
32'hfffffeb7,
32'h00000058,
32'h0000005f,
32'hfffffee5,
32'hffffffaf,
32'h0000001f,
32'hfffffe7d,
32'h000000aa,
32'hffffff3c,
32'h0000007b,
32'h000001c7,
32'h00000041,
32'hfffffed9,
32'hffffffbc,
32'h00000124,
32'hffffff44,
32'h00000012,
32'hffffffce,
32'hffffff88,
32'hffffff94,
32'h00000020,
32'h00000057,
32'hffffff82,
32'hffffff84,
32'hffffff9a,
32'h0000014c,
32'hffffff03,
32'h00000052,
32'h000000c3
};
endmodule
