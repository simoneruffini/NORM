// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jun 26 16:33:23 2020
// Host        : luca-pc running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/luca/Documents/git/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_stub.v
// Design      : blk_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *)
module blk_mem_gen_0(clka, ena, wea, addra, dina, douta, clkb, enb, web, addrb, 
  dinb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[15:0],dina[63:0],douta[63:0],clkb,enb,web[0:0],addrb[15:0],dinb[63:0],doutb[63:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [15:0]addra;
  input [63:0]dina;
  output [63:0]douta;
  input clkb;
  input enb;
  input [0:0]web;
  input [15:0]addrb;
  input [63:0]dinb;
  output [63:0]doutb;
endmodule
