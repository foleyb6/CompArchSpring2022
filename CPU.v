// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"
// CREATED		"Wed May 04 23:22:24 2022"

module CPU(
	EnWri,
	Clock,
	Reset,
	ALUsrc,
	RAMW,
	WB,
	PCsrc,
	RAMR,
	Func3,
	IMMSel,
	FinalOut,
	Instr,
	Status
);


input wire	EnWri;
input wire	Clock;
input wire	Reset;
input wire	ALUsrc;
input wire	RAMW;
input wire	WB;
input wire	PCsrc;
input wire	RAMR;
input wire	[2:0] Func3;
input wire	[1:0] IMMSel;
output wire	[31:0] FinalOut;
output wire	[31:0] Instr;
output wire	[3:0] Status;

wire	[31:0] Instr_ALTERA_SYNTHESIZED;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_11;
wire	[31:0] SYNTHESIZED_WIRE_12;
wire	[31:0] SYNTHESIZED_WIRE_13;
wire	[31:0] SYNTHESIZED_WIRE_6;
wire	[31:0] SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_10;

assign	FinalOut = SYNTHESIZED_WIRE_6;




ALU_Supreme	b2v_inst(
	.DataA(SYNTHESIZED_WIRE_0),
	.DataB(SYNTHESIZED_WIRE_1),
	.OPCode(Func3),
	.FinalOut(SYNTHESIZED_WIRE_13),
	.Status(Status));


MuxCPU	b2v_inst10(
	.SEL(ALUsrc),
	.I0(SYNTHESIZED_WIRE_11),
	.I1(SYNTHESIZED_WIRE_12),
	.O(SYNTHESIZED_WIRE_1));


RAM	b2v_inst11(
	.RAMW(RAMW),
	.RAMR(RAMR),
	.Addr(SYNTHESIZED_WIRE_13),
	.DataI(SYNTHESIZED_WIRE_11),
	.DataO(SYNTHESIZED_WIRE_7));


Register	b2v_inst2(
	.Clock(Clock),
	.Reset(Reset),
	.EnWri(EnWri),
	.DataI(SYNTHESIZED_WIRE_6),
	.ReadA(Instr_ALTERA_SYNTHESIZED[19:15]),
	.ReadB(Instr_ALTERA_SYNTHESIZED[24:20]),
	.WriAdd(Instr_ALTERA_SYNTHESIZED[11:7]),
	.DataA(SYNTHESIZED_WIRE_0),
	.DataB(SYNTHESIZED_WIRE_11));


IMMGen	b2v_inst3(
	.IMMSel(IMMSel),
	.Instr(Instr_ALTERA_SYNTHESIZED),
	.IMM(SYNTHESIZED_WIRE_12));


MuxCPU	b2v_inst4(
	.SEL(WB),
	.I0(SYNTHESIZED_WIRE_7),
	.I1(SYNTHESIZED_WIRE_13),
	.O(SYNTHESIZED_WIRE_6));


PC	b2v_inst5(
	.Clock(Clock),
	.Sel(PCsrc),
	.IMM(SYNTHESIZED_WIRE_12),
	.PCO(SYNTHESIZED_WIRE_10));


ROM	b2v_inst7(
	.Clock(Clock),
	.PC(SYNTHESIZED_WIRE_10),
	.Instr(Instr_ALTERA_SYNTHESIZED));

assign	Instr = Instr_ALTERA_SYNTHESIZED;

endmodule
