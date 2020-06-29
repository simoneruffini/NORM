// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Jun 29 18:37:23 2020
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
eVtzHm566SXex5NqEl9kEAymBOCIoO58/ITu2VOOhQi/gRbFcqNELB/14Q1c6onESjbLkQJY9v4L
P1dr2gitkB4AWNaejNS+nA9SPoi01YDmzLVVLeFiOJD8PDvgQihMsKEExJZIkiEI5G+QVf1BIb1W
oslDlaRSIi3bWYey9ruLfWfXr68uc3IJ2Aek0jxYp7BhPQl62+071HDvHhcjnEMLbknW0jZaETXI
iseGRcJ9PB5CMPWD+wI1YJG2uUeq872zW8YhDo7/4HcORd1A2sVr73aGwnR/0FJchLmjh+ZZG8SK
BCCDU5LK31rEXT5szJ+vpLMXnmqDJosXDLaBvg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h5o2xKb+7gOa08Ab5UeEQZhFH+Khh54/i/br2yAcuWJMNnl+hjrnDEE+I55FuyQtBekuCZcf7Jnb
j5tp9R/hc57z9ROaxke8RR4sIuiQSFMTWTyWn/d2Pa7Wr3yN57D+lpVIkJBoD5wQCVuU8nHd2KOh
vN/VQ2d8Uxz1/KEhvpPsIAt0h7BXdwusjFXgzGPebiYZHaqv58sTFmlAz/s5CPIurGZ2G3xK/Ohl
4bWa4oZ9EDrS5NjbFSUg1ZBgRCS+Oyszn8fkgrgRdb08iaCKE8q6uXAECWnNhIH656ezrT5M/y8r
4wICE4mgmxB7iRTemsBRrP0NZskxTuxhgNhODA==

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
