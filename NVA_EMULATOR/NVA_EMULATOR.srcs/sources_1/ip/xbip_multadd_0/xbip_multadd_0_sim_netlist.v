// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Jul  3 09:38:14 2020
// Host        : luca-pc running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               /home/luca/Documents/git/NonVolatileProcEmul-FPGA/NVA_EMULATOR/NVA_EMULATOR.srcs/sources_1/ip/xbip_multadd_0/xbip_multadd_0_sim_netlist.v
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
HwcPg6ZuRyy9ClrrS0oIs3yySRyLyhajKgY4IrTqgyfTUd0/00EPRwJbUDedXvqG0DVL/mmWuVFz
qujrRbR25souku1/nwOJ1toaSvGwRAjF9/Vu3qi65e7yJY2ssUX6CneMdaQ3smRoHXZVQ2t9+Ety
EYtyMvM0BDxO5w+Zb4je0bk+HMkeJNSdbf7Pemo44tgfrN61xxfKB35TAr094SN9TD34+8y3wIf8
C7WQ8wHF3qi8T3f1oeJK9ag6OOZmVCDcYoPo7V7eITUvIyXgM366rAh7JqR7lCwoKmrWQ6gXzLwN
Gv9vSxkjtYqVtPQVUfW5D2VrB9VxAjh0EAU95w==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rzANjxrtYkij2BlawcchKYjysJGf5oXykDtrLjLT9r+adeBZxjGNri3Jg9XuG4ZT0McVTx5bbiwR
TmuBrUfk+ouw+w5ZWBDo2YtF9EChXIRk8E/w7VLkGKJatbEQ04WWuzlzbxfuz4hd9OGxwNUHPvW2
BDVltbYRQi2C4m/+YxSVYKMlXI+nkmgsB7K80cl5r7WisOfih2TM8PH1P6xXOABo8yNVFOmjMfMc
VW7O9AQZ2RYP6Jqp4DJ1J75D+t7Ra+ROm7MieH7pjhrkaDWTlSbBjOhc0uY3qAi1ao7YVffPwj+z
FnZkkfh6EaQrBB5hKa9vMVUUtZyyeA5yflayaA==

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
