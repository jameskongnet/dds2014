// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.0 Build 156 04/24/2013 SJ Full Version"
// CREATED		"Sat Nov 23 00:34:24 2013"

module system(
	inclk0,
	areset,
	UDCLK,
	FSKDATA_BPSK_HOLD,
	c0,
	locked,
	RESET,
	WRITE,
	CONFIGERR,
	AOUT,
	DOUT
);


input wire	inclk0;
input wire	areset;
output wire	UDCLK;
output wire	FSKDATA_BPSK_HOLD;
output wire	c0;
output wire	locked;
output wire	RESET;
output wire	WRITE;
output wire	CONFIGERR;
output wire	[4:0] AOUT;
output wire	[7:0] DOUT;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[4:0] SYNTHESIZED_WIRE_5;
wire	[47:0] SYNTHESIZED_WIRE_6;
wire	[15:0] SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_8;
wire	[15:0] SYNTHESIZED_WIRE_9;
wire	[31:0] SYNTHESIZED_WIRE_10;
wire	[2:0] SYNTHESIZED_WIRE_23;
wire	[13:0] SYNTHESIZED_WIRE_12;
wire	[13:0] SYNTHESIZED_WIRE_13;
wire	[19:0] SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	[31:0] SYNTHESIZED_WIRE_18;
wire	[31:0] SYNTHESIZED_WIRE_19;
wire	[31:0] SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;





DDS_CONFIG	b2v_inst(
	.CEN(SYNTHESIZED_WIRE_0),
	.CLK(SYNTHESIZED_WIRE_1),
	.TRAIANGLE(SYNTHESIZED_WIRE_2),
	.PLLEN(SYNTHESIZED_WIRE_3),
	.PLLRANGE(SYNTHESIZED_WIRE_4),
	.CLKMUILT(SYNTHESIZED_WIRE_5),
	.DFW(SYNTHESIZED_WIRE_6),
	.F1H(SYNTHESIZED_WIRE_7),
	.F1L(SYNTHESIZED_WIRE_8),
	.F2H(SYNTHESIZED_WIRE_9),
	.F2L(SYNTHESIZED_WIRE_10),
	.MODE(SYNTHESIZED_WIRE_23),
	.PTW1(SYNTHESIZED_WIRE_12),
	.PTW2(SYNTHESIZED_WIRE_13),
	.RAMPRATE(SYNTHESIZED_WIRE_14),
	.READY(SYNTHESIZED_WIRE_17),
	.RESET(RESET),
	.WRITE(WRITE),
	.CONFIGERR(CONFIGERR),
	.AOUT(AOUT),
	.DOUT(DOUT));
	defparam	b2v_inst.FINAL = 7'b1010011;
	defparam	b2v_inst.PTW2SET = 7'b0111010;


DDS_UPDATE_CYCLE	b2v_inst1(
	.CLK(SYNTHESIZED_WIRE_15),
	.FSKDATA_BPSK(SYNTHESIZED_WIRE_16),
	.UEN(SYNTHESIZED_WIRE_17),
	.CYCLE(SYNTHESIZED_WIRE_18),
	.FSKDATA_BPSK_HOLD_CLK_CYCLE(SYNTHESIZED_WIRE_19),
	.MODE(SYNTHESIZED_WIRE_23),
	.UD_DELAY_CLK_CYCLE(SYNTHESIZED_WIRE_21),
	.UDCLK(UDCLK),
	.FSKDATA_BPSK_HOLD(FSKDATA_BPSK_HOLD));


pll	b2v_inst3(
	.inclk0(inclk0),
	.areset(areset),
	.c0(c0),
	.c1(SYNTHESIZED_WIRE_22),
	.c2(SYNTHESIZED_WIRE_15),
	.c3(SYNTHESIZED_WIRE_1),
	.locked(locked));


testcore	b2v_inst4(
	.CLKIN(SYNTHESIZED_WIRE_22),
	.CEN(SYNTHESIZED_WIRE_0),
	.TRAIANGLE(SYNTHESIZED_WIRE_2),
	.PLLEN(SYNTHESIZED_WIRE_3),
	.PLLRANGE(SYNTHESIZED_WIRE_4),
	.FSKDATA_BPSK(SYNTHESIZED_WIRE_16),
	.CLKMUILT(SYNTHESIZED_WIRE_5),
	.CYCLE(SYNTHESIZED_WIRE_18),
	.DFW(SYNTHESIZED_WIRE_6),
	.F1H(SYNTHESIZED_WIRE_7),
	.F1L(SYNTHESIZED_WIRE_8),
	.F2H(SYNTHESIZED_WIRE_9),
	.F2L(SYNTHESIZED_WIRE_10),
	.FSKDATA_BPSK_HOLD_CLK_CYCLE(SYNTHESIZED_WIRE_19),
	.MODE(SYNTHESIZED_WIRE_23),
	.PTW1(SYNTHESIZED_WIRE_12),
	.PTW2(SYNTHESIZED_WIRE_13),
	.RAMPRATE(SYNTHESIZED_WIRE_14),
	.UD_DELAY_CLK_CYCLE(SYNTHESIZED_WIRE_21));


endmodule
