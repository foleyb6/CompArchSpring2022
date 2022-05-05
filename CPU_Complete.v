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
// CREATED		"Wed May 04 22:37:23 2022"

module CPU_Complete(
	Clock,
	Reset,
	FinalOut,
	Instr,
	Status
);


input wire	Clock;
input wire	Reset;
output wire	[31:0] FinalOut;
output wire	[31:0] Instr;
output wire	[3:0] Status;

wire	[31:0] Instr_ALTERA_SYNTHESIZED;
wire	[3:0] Status_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	[1:0] SYNTHESIZED_WIRE_6;





CPU	b2v_inst(
	.PCsrc(SYNTHESIZED_WIRE_0),
	.EnWri(SYNTHESIZED_WIRE_1),
	.Clock(Clock),
	.Reset(Reset),
	.ALUsrc(SYNTHESIZED_WIRE_2),
	.RAMW(SYNTHESIZED_WIRE_3),
	.WB(SYNTHESIZED_WIRE_4),
	.RAMR(SYNTHESIZED_WIRE_5),
	.Func3(Instr_ALTERA_SYNTHESIZED[14:12]),
	.IMMSel(SYNTHESIZED_WIRE_6),
	.FinalOut(FinalOut),
	.Instr(Instr_ALTERA_SYNTHESIZED),
	.Status(Status_ALTERA_SYNTHESIZED));


Control	b2v_inst1(
	.Zero(Status_ALTERA_SYNTHESIZED[2]),
	.OPCode(Instr_ALTERA_SYNTHESIZED[6:0]),
	.PCsrc(SYNTHESIZED_WIRE_0),
	.EnW(SYNTHESIZED_WIRE_1),
	.ALUsrc(SYNTHESIZED_WIRE_2),
	.RAMW(SYNTHESIZED_WIRE_3),
	.WB(SYNTHESIZED_WIRE_4),
	.RAMR(SYNTHESIZED_WIRE_5),
	.IMMSel(SYNTHESIZED_WIRE_6));

assign	Instr = Instr_ALTERA_SYNTHESIZED;
assign	Status = Status_ALTERA_SYNTHESIZED;

endmodule
