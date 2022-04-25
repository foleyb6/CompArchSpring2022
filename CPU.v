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
// CREATED		"Sun Apr 24 21:03:15 2022"

module CPU(
	Reset,
	Clock,
	PCSel,
	EnWri,
	ALUsrc,
	WB,
	MRW,
	IMMXSel,
	FinalOut,
	Instr,
	Status
);


input wire	Reset;
input wire	Clock;
input wire	PCSel;
input wire	EnWri;
input wire	ALUsrc;
input wire	WB;
input wire	MRW;
input wire	[1:0] IMMXSel;
output wire	[31:0] FinalOut;
output wire	[31:0] Instr;
output wire	[3:0] Status;

wire	[31:0] Instr_ALTERA_SYNTHESIZED;
wire	[31:0] SYNTHESIZED_WIRE_0;
wire	[31:0] SYNTHESIZED_WIRE_1;
wire	[31:0] SYNTHESIZED_WIRE_16;
wire	[31:0] SYNTHESIZED_WIRE_17;
wire	[31:0] SYNTHESIZED_WIRE_18;
wire	[31:0] SYNTHESIZED_WIRE_19;
wire	[31:0] SYNTHESIZED_WIRE_7;
wire	[31:0] SYNTHESIZED_WIRE_8;
wire	[31:0] SYNTHESIZED_WIRE_10;
wire	[31:0] SYNTHESIZED_WIRE_14;
wire	[31:0] SYNTHESIZED_WIRE_15;

assign	FinalOut = SYNTHESIZED_WIRE_7;




ALU	b2v_inst(
	.Clock(Clock),
	.DataA(SYNTHESIZED_WIRE_0),
	.DataB(SYNTHESIZED_WIRE_1),
	.OPCode(Instr_ALTERA_SYNTHESIZED[6:0]),
	.ResultC(SYNTHESIZED_WIRE_19),
	.Status(Status));


Adder	b2v_inst1(
	.PCI(SYNTHESIZED_WIRE_16),
	.PCO(SYNTHESIZED_WIRE_15));


MuxCPU	b2v_inst10(
	.SEL(ALUsrc),
	.I0(SYNTHESIZED_WIRE_17),
	.I1(SYNTHESIZED_WIRE_18),
	.O(SYNTHESIZED_WIRE_1));


RAM	b2v_inst11(
	.RW(MRW),
	.Addr(SYNTHESIZED_WIRE_19),
	.DataI(SYNTHESIZED_WIRE_17),
	.DataO(SYNTHESIZED_WIRE_8));


Register	b2v_inst2(
	.Clock(Clock),
	.Reset(Reset),
	.EnWri(EnWri),
	.DataI(SYNTHESIZED_WIRE_7),
	.ReadA(Instr_ALTERA_SYNTHESIZED[19:15]),
	.ReadB(Instr_ALTERA_SYNTHESIZED[24:20]),
	.WriAdd(Instr_ALTERA_SYNTHESIZED[11:7]),
	.DataA(SYNTHESIZED_WIRE_0),
	.DataB(SYNTHESIZED_WIRE_17));


IMMGen	b2v_inst3(
	.IMMSel(IMMXSel),
	.Instr(Instr_ALTERA_SYNTHESIZED),
	.IMM(SYNTHESIZED_WIRE_18));


MuxCPU	b2v_inst4(
	.SEL(WB),
	.I0(SYNTHESIZED_WIRE_8),
	.I1(SYNTHESIZED_WIRE_19),
	.O(SYNTHESIZED_WIRE_7));


PC	b2v_inst5(
	.Clock(Clock),
	.Reset(Reset),
	.PCI(SYNTHESIZED_WIRE_10),
	.PCO(SYNTHESIZED_WIRE_16));


Adder32B	b2v_inst6(
	.IMM(SYNTHESIZED_WIRE_18),
	.PCI(SYNTHESIZED_WIRE_16),
	.PCO(SYNTHESIZED_WIRE_14));


ROM	b2v_inst7(
	.PC(SYNTHESIZED_WIRE_16),
	.Instr(Instr_ALTERA_SYNTHESIZED));


MuxCPU	b2v_inst9(
	.SEL(PCSel),
	.I0(SYNTHESIZED_WIRE_14),
	.I1(SYNTHESIZED_WIRE_15),
	.O(SYNTHESIZED_WIRE_10));

assign	Instr = Instr_ALTERA_SYNTHESIZED;

endmodule
