// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Sun Aug  9 22:54:22 2020
// Host        : DESKTOP-T6ISU8F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/Simone
//               Ruffini/VivadoProjects/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_sim_netlist.v}
// Design      : xbip_multadd_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_multadd_0,xbip_multadd_v3_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "xbip_multadd_v3_0_15,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module xbip_multadd_0
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    SUBTRACT,
    P,
    PCOUT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF pcout_intf:p_intf:subtract_intf:pcin_intf:c_intf:b_intf:a_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME sclr_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [30:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [9:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 c_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME c_intf, LAYERED_METADATA undef" *) input [1:0]C;
  (* x_interface_info = "xilinx.com:signal:data:1.0 subtract_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME subtract_intf, LAYERED_METADATA undef" *) input SUBTRACT;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [41:0]P;
  (* x_interface_info = "xilinx.com:signal:data:1.0 pcout_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME pcout_intf, LAYERED_METADATA undef" *) output [47:0]PCOUT;

  wire [30:0]A;
  wire [9:0]B;
  wire [1:0]C;
  wire CE;
  wire CLK;
  wire [41:0]P;
  wire [47:0]PCOUT;
  wire SCLR;
  wire SUBTRACT;

  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "31" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "2" *) 
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_15 U0
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule

(* C_AB_LATENCY = "-1" *) (* C_A_TYPE = "1" *) (* C_A_WIDTH = "31" *) 
(* C_B_TYPE = "1" *) (* C_B_WIDTH = "10" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_C_LATENCY = "-1" *) (* C_C_TYPE = "1" *) (* C_C_WIDTH = "2" *) 
(* C_OUT_HIGH = "41" *) (* C_OUT_LOW = "0" *) (* C_TEST_CORE = "0" *) 
(* C_USE_PCIN = "0" *) (* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) 
(* ORIG_REF_NAME = "xbip_multadd_v3_0_15" *) (* downgradeipidentifiedwarnings = "yes" *) 
module xbip_multadd_0_xbip_multadd_v3_0_15
   (CLK,
    CE,
    SCLR,
    A,
    B,
    C,
    PCIN,
    SUBTRACT,
    P,
    PCOUT);
  input CLK;
  input CE;
  input SCLR;
  input [30:0]A;
  input [9:0]B;
  input [1:0]C;
  input [47:0]PCIN;
  input SUBTRACT;
  output [41:0]P;
  output [47:0]PCOUT;

  wire \<const0> ;
  wire [30:0]A;
  wire [9:0]B;
  wire [1:0]C;
  wire CE;
  wire CLK;
  wire [41:0]P;
  wire SCLR;
  wire SUBTRACT;
  wire [47:0]NLW_i_synth_PCOUT_UNCONNECTED;

  assign PCOUT[47] = \<const0> ;
  assign PCOUT[46] = \<const0> ;
  assign PCOUT[45] = \<const0> ;
  assign PCOUT[44] = \<const0> ;
  assign PCOUT[43] = \<const0> ;
  assign PCOUT[42] = \<const0> ;
  assign PCOUT[41] = \<const0> ;
  assign PCOUT[40] = \<const0> ;
  assign PCOUT[39] = \<const0> ;
  assign PCOUT[38] = \<const0> ;
  assign PCOUT[37] = \<const0> ;
  assign PCOUT[36] = \<const0> ;
  assign PCOUT[35] = \<const0> ;
  assign PCOUT[34] = \<const0> ;
  assign PCOUT[33] = \<const0> ;
  assign PCOUT[32] = \<const0> ;
  assign PCOUT[31] = \<const0> ;
  assign PCOUT[30] = \<const0> ;
  assign PCOUT[29] = \<const0> ;
  assign PCOUT[28] = \<const0> ;
  assign PCOUT[27] = \<const0> ;
  assign PCOUT[26] = \<const0> ;
  assign PCOUT[25] = \<const0> ;
  assign PCOUT[24] = \<const0> ;
  assign PCOUT[23] = \<const0> ;
  assign PCOUT[22] = \<const0> ;
  assign PCOUT[21] = \<const0> ;
  assign PCOUT[20] = \<const0> ;
  assign PCOUT[19] = \<const0> ;
  assign PCOUT[18] = \<const0> ;
  assign PCOUT[17] = \<const0> ;
  assign PCOUT[16] = \<const0> ;
  assign PCOUT[15] = \<const0> ;
  assign PCOUT[14] = \<const0> ;
  assign PCOUT[13] = \<const0> ;
  assign PCOUT[12] = \<const0> ;
  assign PCOUT[11] = \<const0> ;
  assign PCOUT[10] = \<const0> ;
  assign PCOUT[9] = \<const0> ;
  assign PCOUT[8] = \<const0> ;
  assign PCOUT[7] = \<const0> ;
  assign PCOUT[6] = \<const0> ;
  assign PCOUT[5] = \<const0> ;
  assign PCOUT[4] = \<const0> ;
  assign PCOUT[3] = \<const0> ;
  assign PCOUT[2] = \<const0> ;
  assign PCOUT[1] = \<const0> ;
  assign PCOUT[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_AB_LATENCY = "-1" *) 
  (* C_A_TYPE = "1" *) 
  (* C_A_WIDTH = "31" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "10" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_C_LATENCY = "-1" *) 
  (* C_C_TYPE = "1" *) 
  (* C_C_WIDTH = "2" *) 
  (* C_OUT_HIGH = "41" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_USE_PCIN = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  xbip_multadd_0_xbip_multadd_v3_0_15_viv i_synth
       (.A(A),
        .B(B),
        .C(C),
        .CE(CE),
        .CLK(CLK),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_i_synth_PCOUT_UNCONNECTED[47:0]),
        .SCLR(SCLR),
        .SUBTRACT(SUBTRACT));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
ZqI7Lq/aGyAcoaejBEIk07VX9jYIkvdeTPQu9dSbDEADopcPNa+0k8THWemULZmXocovtHBV2sQ+
UG9Mr3L0hg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
R4vPs+jPUBq40hDi8U6b9avbUk2Eb50U4A+mDDli/Y0olyqpMjS2bHK8VDjTVAFuQ+H3qih0cQYm
+ik1m47VLNMfNDfRLbftE2okRK8Kx81MRcEafr+7z29VxyL2KSwmOKbcDCEkIT1VX5y+96x7q9/g
O5zX1cVuj6hrFncQjBI=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
RHGRLed4zRtfx3HaMZFysMR3Ua1JohlSUQn/uIq0QNaCK2P96ztDgqQoqe6ZQ11betfsHTRFzq/1
66ClFz6QxXME/fh2KrrXSgUZxYxwfstEZlyOThrSfu+qzCsdk0R654q7wyvVT8+Lni3RuXc5nFXx
raCVZl6qLm50r3EadUq562wDBW7iVkrMp3OgccKyJyw39sT1Jc+0IkzHuHqjKA44tfGTOOSTHNUj
YgsyeZCJS72pabS90ZfprHyjsELB7Bxw/M9/XLEV7l1LP+SCDJFvOP5dNLZDBmwYIJ5OoU7247Tk
wYu3m6ZFZNnTwWGI9SAZJyiXILRa8hVZPL9TSA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OU7rNiePgxinwm/ruLBNeniAmTTLdwPhOZ1i35IGtDWXtaPoMnsPLRF6vnJo1xeYUES1MIlBqaG4
FUeyfrnBl3ofk5rfTbxL16dBcEtA8Z/duJARcLCIBD/J+xf2VlSqIo8dG9Ww8/L9pBTHpNAObSOU
o17xArTTrLfHWXZRGfRwuRpGlTLTYOMvS1AGhQcPbXjHrlijOoz3XigDVsnyGbHfkSgOlGBCnyDS
TPebi8IC8YIl88ieW+lqTL6jl+3DZ55iTfCJKbFt/HrE1Uou1l+60xI/9h9XhrNzE5ANic5eFmyC
tdncsHEBtx+UfZhyFrHV8z72yZoLCX2rOJ+IJA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
GUoHfgebfwQKNkw122kR1rRfB4ZFf7/0xjFIvV3auOQ9RcZO2jgecvvtUAn3nocoMNPW1jFFZW0u
xgkVDSrwVJrMR/obpu7gqo1n1FD2E5BpOJV2Gwso9aZGhgTdfd0mINfCxPi4lxUYuTw1vd+iNkBH
peC7j2xzDHSu6o2S58c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lW3oa+bS7VSdBch0q4Lk4kIel2MxeXNlqo+JkBKYCThE5vtBv3Mob32tRj6s2h8BAos9XGsKRu0r
zWpu3cgAnv8lYIL4/UPBP9T+caGqWHHoGULrLn4zuybUvPzfGPj+ANXGfPXBomTO48UgPFWBnBA2
3vlOjCiOyKLMQAUrg8RqpfdYfcnwHxk8ebrE+lZJf6NCQtrqGu/EnH7PYFH/8MSQa6yey02fLQ2J
HenzdGNam7fu3z20gETHgePuewowRrJu5bEZOzlor2RrSnb0hcSbcO4/KSA9EcbmjzBMjE5uRYAM
1y+0t4rNGr+0XAjpp8m6B8lGF+m1jIGYMJ55eQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AYjoOGO5c2rCxRUY5RbgjfKwpMKJQrCDGPu9wzqv2ZhoT9Trod7xJlCnzNNU4kNJPTgmDf05Bkoo
EvR1hgWeTmTgCGdy7Qci0Z0L3pdxnOg9i69qsJO1qAW46sOYPeZHpvATo3irsreTIyOEcblYRdLh
Raj2T02eEhljrx1UdWXHwIq6kJGwbPaiMRXRJewJ75w53lF3nNUwTYgttUbm/hKuK4MTBvyDWlHF
UReBw5kEbERTaRF91+HNJUeoBgfLIgVhtPzX3Yzqy4fl1PxZ0BzAGNRQWfLI4TBSyl64znmxdzaS
+wcpSJ3OHZL4sBSIwGqpZ8UuNr53DWWwkd5lqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F93W5rP9wRsskpVAtvm9VhlFJY5TOuivcFKT2bVYmeqxn925TMU0N0nDRJZmC+O7NbtC0kbL9Hfv
iPaQAjkvtWKCEafU216A83pjNwYVINq3GbStXAtCrvf3KbYJMQPnr6FzKWLa0RlmEqf2z1LRIJMY
cR3LKzziLGgP+oQLz6W3siXeoyqxsbDm+dasSbu2YxzGAvkTos4kX2slGrQzxYSQogS6j/MzVgIk
Vhsm3BYDbtVT5TsiHGfRfi137tS2Q9o11KN44GT+JYigwORe+GyKi5xjI6kGPl1N1DK12TlRGsgC
Wq2YWMn2ABYXE2F8mkwPOJqSaaAR0S5MMCjkaQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EO2KlFB8vWgjeXvua8SEZL2APl0WfdPtqoF/0VTjBDZhkKh8T7GBS9tSSrCin7kHRBUGF6hOUPK2
V0JQtp4yW7c3oVbMN2ePIV7UdtkAszA2lMqOqeKJbWn0TfxRWL5adG+jGlhhYEbaT6tkCGPbbtbk
y5Kew5kT3RyGP8Rb0tim3cGvqi2BdBxqdc5Sb+Vyj0havZUyZo1AsjuLnNukDIYIrPCtqOY22MTp
VlNOr/u23OIMx+xx7Z4aOvZacPCxfg662ljyHetf5a0wu31WI6zf/69lkXq1iWJtHgEJn2iDpIWs
bSWDEtGgKAFHGKVAoc0vIGP3aPG6DIsqRyQ90Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MNT34h9tTxC0iaJgqlN4swTc3CbNPiuG1NB9V9xjmzLY593qb+WiXeExTJ5iNNZmWlc9pPiWNIBA
nFfehgotpulrO/SK+m6Xn8WqRHCrlgyCQe7oj95/4hkbLwNvOwAC100h+0GXDdN6LaxyxL/zrrPK
jbczjT1WlQdUqmf9OlYIOVL7GN744AVaFOveMwGROs9m+8wKmdfCkUWGkLFKzj8w481JSEDDbE7Y
TtJw0gvWU2NalAiTqvvHl3Z6idyY+ujqa3Cuv31OFq0SPQpZRdmyMkrt/7zlb6E630MqiLOXneZa
aRhgF1Ic1Ufzbksdbg3hmBLExh6akRQdljGZug==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FbU/nSA8LayGK4Kc+bf474a/d2sITHW2mqjEcbVafZj2JgA0YqqY4FeqzqkrGLPcdW+dsNaVXIjP
x847Mc3DFKJI0aM9jbXoJtOZpNtlSeRvqShsfBdYdIXjfRWxWpCXwWEQfooa/4tcApaFk8EGoPtP
a39zgKzZymMCFnntdjNcAC3Y1xQliDnzZwPx40DTNoW2Iz6k89AwnNYoaqolluII1npZrGXNo4oO
N3JooWMPFDqEvwxdE6EqqVhhGe4+E3HTF3w6UFlFlCIECDRz66dAvDEerUhHIHUcmZC2eU/oL3ir
kusbb6PkulSCe5amSZE+DZUlP8EdNYCDS89cUw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24672)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
