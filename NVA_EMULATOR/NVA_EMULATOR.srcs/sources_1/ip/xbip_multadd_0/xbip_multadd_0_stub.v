// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sun Jun 21 21:26:37 2020
// Host        : luca-pc running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/luca/Documents/git/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_stub.v
// Design      : xbip_multadd_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "xbip_multadd_v3_0_15,Vivado 2020.1" *)
module xbip_multadd_0(CLK, CE, SCLR, A, B, C, SUBTRACT, P, PCOUT)
/* synthesis syn_black_box black_box_pad_pin="CLK,CE,SCLR,A[30:0],B[9:0],C[1:0],SUBTRACT,P[41:0],PCOUT[47:0]" */;
  input CLK;
  input CE;
  input SCLR;
  input [30:0]A;
  input [9:0]B;
  input [1:0]C;
  input SUBTRACT;
  output [41:0]P;
  output [47:0]PCOUT;
endmodule
