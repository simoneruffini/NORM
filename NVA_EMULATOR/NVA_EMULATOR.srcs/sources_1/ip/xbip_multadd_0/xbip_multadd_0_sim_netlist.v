// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sun Jun 21 21:26:37 2020
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
b08tVxYYU35/KSzHU2mN6xjf6/bVhAOX7rTMnKWm6CIg5/no/nJkBDTsQbTPANOpOCFMmGCi/yEU
yOB2Zx/iSxumkV/7IrRCFs+CjM6FpvQ9+iTF9on36kCEEJO+NSDepC7Jx3x8QWFW/m0mq+wdxogR
snCjm4G6RXVYjfbL1DNlgX+pLsHeDas2IBQplVhewfpxedi3NNeUrdyWUzfXv5EAypA9iyxknCQy
5/7RlNS5QEkmjGJSMDwz5/+rWJmTM9+BRbIopDfTQMmLyC9KiT4wVE4pBKjGhUyv1g+EK+wLxLEV
J0ZLnn0pELUpO5tS/U7RPPXPIPAaTOyTipCceQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gUxeTMuMMTWo56wY98054s6cHGP61M2EZ3D8C/ToC4hhCBzEnPj1GvPHpwdc4+DOnmt/tuJx6Cuv
L3EsL8jOt2BmwYTlEV+tEEQhsZkUE6NYqceXCVfAAfNhN2xpkMyh0zn8P37XUSs1KRFgWTruMXCF
abA1ntaXtjGn8MUMyMGkTRYuqMXPz6Lmga3pkvob4ptWY++2j6qh5+n70h0ciOgPIn1v+wGh6mz2
eX1yE4TwwUTe+fN3eBa4/RbQLXBmm8FwEwUsmc4wzvfS95K5HfGcdo1QLB09SeNyl12zayEw42IZ
qVd3gZY/6T9Qg2SJ7szv0OI6Y9aQiuGCBESmKg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 24672)
`pragma protect data_block
Viwtxrpdret3WV6RCKVfH6mdQWEQFsbcqVKWERgAWWXKRpOC+Qi1At3qddIiQybmktZfbAoEnMzH
H4Kqwy8o9YrAmlxxeg3n2Not/jwd3Ewmd4slkiKyeN+rFGqO84DCJtqt5blknL+/xEyaIkYjTkDH
EYhxoIBybG9fJkg1ibVLxDUghyi+e19CfoUueheiyFHuiqhxpdoh3B0LKVqt6pgNTfw4P2MU0TCf
yS32MX6vPkHO3CFinn2V/1BUsoWsKYqbn7SzA4bOHNRatm+suPrCepjpGoHbu7ZbikC71JJ1s5IA
5dkRXA6jwvF0zYXIQzpeps6ctIy+kilodDqCfgs4ZzLj+qmAlTd/mr/yUeExaN/TArtK8vNJIYkh
Ue94xMWDkgyGuHrYmdQKvHbUiRk20BlklAAcYdTlkfpPCNn3oMNtfXgBSbsnB1MaWRZJJgYivF/i
WgeznyuJZhnruWuVrbzyvDr+S02enMXLlnhp+sIzu/SCW8Dx2nxV66/FJfOqcjl5ynEdG5Be3vb/
21Uei1ymGiE1aHSXLhzgZKqSr0mEd7LjgKu203rJ05tNkkXmVQ07/x/JReE/l3iMtkDRfVeJitIM
Gsx2y/yZ00IGz6k69EYLTikoCbOYf2xI0zQjoVcU79QronKGiCIlb1kyd2V6GIMIXlEHzGK+6qc2
mbVhzVaPs1vt6TH9ViIMBIhHOWeB1JlstXECRvq2GabjAeWm4BGyStT37cZJIlJKMvL8PJGVpz0z
hUQzvO1lSrJzTgX0tcbopd8+YKm5sFPhHA0xwgyqee5IhXLcwqGabj35vOV1NqdW64iIC6s5C8tG
0U0ANkJdbXNNPpLJQqv/vMLIQTPyIfvyRFAfzPaFyS0yGWCQPJrn5smyIeECz0H8fq3efaiHa7Ac
ir4RktalhgaKq9/+ua0UlTnCqjaYGi+T6vbOnqBPrTkfutftcTKtkeNSIgfUO+YWtbGeUj+gHOa+
bprcDTPfZDMCk4dfKOuYyd9kZuVAQ4ahH3ia2q0QTUKyEC7Yc3tM6ZjBWz5envTpu36rrv3T6914
iP2ZaLNQc9qRqndDo7ie1Mrbb6GBGoOD0UUnio4FPbLSqucx+L0Aah02Fju6cj5J2pqil1Bf1GPK
AodfROFrPXWBcE5dLqVEG48tI46Hv1S/MM/aa6UwMB980wCO3qFphAmWVtHUZak46SSJvoAbKDs9
qnCMRNh/XppiWRtfmuzkO61MkXR6XIKbP1U57lLacVTAAcWyxrCe0DDP4nIxdQOJ2eUT7Gvh0lsg
RMc17DGaGjUbatXD4o+QfQsikrWpNV5l50wdr7PqXfIZEZtYQjtiQ6wf/sQ36eEBLIWih1SinkyP
2javrp1o6yVcN3a989udHkOrGZUa3VqdZpl3omO5Z9ohrxK2SJX3ixvsENuhy6JyUSc7RYfQRMyB
Tz4LLsLTct/zRbafpAd21UTi9khJrnbf+3iK9HQNyFX/Je3kv8iVQBXw3HhWGy0EO6Tq10WkKFlg
QxmSNuuVKG/c44RVgp3wZPgTYvY6Hk7Uts6puL+fZ6dIdTlFVf48PkqoLWrgxRFDr1krld3TQYBB
f0DQl0Vi8gzuohWba9pXaSRbdJtBENg7NnVx5rALpplgsKUiFx+E4rtzhEyypUm+3jmr9pn2KZkm
blsXWbq0TESrhlc9uJEnFjfnFMfNe8E/B2uV6/K0WJld3e34m8kg5TU78hNQcdlSNhncgJYFC+Eg
eSmaEqXXDnNSKdi48ftaNJC8kZCulWlHMQu+IDIZn9TRiim7eOlmENJv6MEtvLpJHH4WzXX4oh0t
03RPNnlr6XE9i9nJRRxpsqez/8kAwma75KZKJxNJD6bF93vqlZNwx8McHXqPmOEeC7ZX/XHvUIw9
VxT4CT5+tApBtC3pM8+SKotL89bTXLLra1Kn8/uzsOnR2vsi0qIYZH3SxQzXjQaVPIBtRMMcRGRh
YC4bQwAtcPJGR+7MDxOSu7ErIzDPLfzEX6IJM2n/6CGT44AGaV0azPxv5XUyIIiFUOdSAyqRj7K3
yj20fe5k3TVx3Y/DxFyG56aOi9lcHVGVGZHPy/TfM1xJGPQcQasblZD+BumR2TnHVXHTCmy24TR/
0qJXpDNIG5XwZh2arfwgDBVUfGTLDaftbexrRgaoa20pC5z2xyLhh+al+OnUzLaNhlCFfK0H5CVh
AE9alprexGqOOK1s0nXTPGkYtUEETjKoiKgKZ4iK963WfOz85mZ9wolRTKN5uV5SNdUgR8cLuwbp
D9RUr1nV4QCo4Gl4dnY4mFOp/o2MF7g0rUuG7052D55rN8xk6W4U2FfuV11HJCpzemqSrMZJv7YZ
6L/A+929MgrTN7FqrM0QcvZcMVzCFKDyOluC6YDzySk4a/Db4IvWSI51IntS0U9oEhexB9ccd+hx
/uKnCHyJBZ+AX8ocWeTI5IO7wlOyNKxX8bCx21+mNvCw7KLvqrEdWGBZDFQk68miyGcKw0u/xc7D
8ModpBm90STS0cvg54yhxRjUCSoVdFOG1azrF4qo7PR3iqCHGVM3pUFiBpgBuxJz3MdlUD3KD+X/
tF+l1+CLAl/RG3vzUQicOSs0MISUGKiMU0pWuX6sVRWePRo14P11IFl3mMif9VjnJELHaUB15HsN
q53onx9bVHLlKESesxdanMd8YcQuoyx2l2AoRBUeimRUBscmcqux0Esixe7uv4xhnNw/IInd8HXp
dlCVcDExhHDILu/cztSXBd6HfQdS5+reemSjWp3Z6VqxyUU9B17Zd04dXTfYVdnG+UdWL9L3OmFl
x/D9RL/4Tvh1PQfmIxzGUKNXFziXwXihqCT+MpCiWA/mTOSPGchJcPuqc8cOKwSVWMXegWgkZ/W2
9lP2Qw6C9sdqSYRlprPlD1053XcYxU17D7SlM5NqytMtNjPA8zZaUPUgE/dS8DXqEf1EvOf623zL
MvFpo/5ItBape/bcofruKMa3mjMOjy7axIA6K6P/kNyuX/WkLBD8JpeRVRnZyy0Cp346CN4k3w7Q
BsPTII9GHep607b9AgnA4WWIeVYM2h1CMplWkXZ4gGiLLX0YfCEOQDZLkpGgoF7FeEUyBIn8DNF4
jRFpnuKktR8I83R7f/l05VDkmGwtg0CCiHAI7VrJNbC89tFyAIIxtfQd9CQNEQ/UEjshLBt8Xjss
MUVmA3y2kn9d7a8r7DcLe9lMatwDJX98dY0iR0mxb1rxkdqvMlPpZG84Xt6lPqM6uOu7lzzHU1jo
/RGWmoxvYPMvCTUfvsEzPoHaBDGKQtd/aFX7tLut2njvZQEW4PccJtyt3CyUloEQpDzPt+Ak/Re7
tjee0sZSLVquHxCqTdu5brUO/MCEwPVPQYA/NhHr1hm+z53kUkcLyr5zLz07NpnRJdgZv416H5S1
A9l4T4VfJV+V0tIDrytxO4lH5Iam97VPqWoOh2ZxwA2MtuQGol5LnWKKM/WPzTB7qWqCBrJou4FL
cy6+QtTEhPs1H3zNNQ8lvUDbuo46t25ubeCTJQsyuzbaalYxrdjlT196uVthg2nLVIhwLSRLXdCK
oM2eD5LaSQlCi2YJG5QZw3sBYvpg2inWeVZVLsViJcpVKLi1CARNLhP2bLG5TNXpvFdPbPuRs2vO
1wwEx+AaPlf7vdbj6YF8zWo2SyrPSnTSiHR4IEFjBH0ZFy1XC7AoUT6mGA4kbKcMv8CjiUeK4FjT
MgGYAGc4nFWYGoVFI6WlDO1aDNFkuQBcmXNIrYVZEJLE9mZVRB07PCQ/KqCxFHNMPXNU/D4B4GNU
CGrCh7DTL7lRyQSUa1xAlb8IqqBd+bj5RdA+nMF6J2pFhVl4VCX9WNFqgA+zzJcmYcVy3+1yidqS
Zt+pZkKUACWhk3TEoYfbdtRTzADI1wYEOBAZSyB7WxoU2zLvapoLH0wr0BLoYGy81V3NhwB+/yD4
tAYbzj+96e3rP+XuSs1lRDbz7l7lx37NHWDkJs80su+Vt0+WH+K62+rKL4k28McQmV5PWAk0Pz//
WNWZ00aq8LiUMOh1DryevE4/fizieWoIP3ufukl6gYakyJF0E0Yeto/UWHOJuQgZ8Q1BdmY6hwba
M2dGWRUguFjVpNCXDhMf/Xe72wVL+TDaoCkAfkIcSd0heZqHP2brS9PRIuIJOyViFF1weyzpdZ8f
MofgfCaYLCGVQOdCMX3BDmzw47mwZOFU2cMndk03Pnd3+kQB0x4I3R8fjuf4EgGEeaK494oPDoHr
8JDKUVoeOloOQ5JOt8M0mpgkgIJ/Ysu+JqTYwxOJ3z8roPqjTAqYrvsMc4mrzT/Ps8UrH6JqTQzd
GBBtyK0hC1ClZH4hUV84XCk0mihkEUpmxdZ4xZPqLUxDbat6Z+DeDA6t+ttEarLZXRNxTQPneCRP
D2bTkNBon/clBllFL6JHoIb8YUZP7YbhRBBONwRKKMATUteU8N5rbMDgDNbh92pZuxs3626WYOY2
rncW75s9k8y3r9d/ezUssOdSiTVU255IStu4q0CtkyNwSarXELSxOFr6aAvLFy+Oe27CxDCjVQwZ
WIoyP54twjIdUfez8R28sBEb+QbbTdht51mxXOCW+RUG7LelR1LKidAlObI0ylO/qPo9WxdKTeQ0
d3rFQWwWz1IdvOKdIfjDDqN8AhpRr9IA1UAgGo1TTpWcRabuKsPwHpT3gDnAW1iQi8FyRPjFSn7T
MpMpF/0QyYX+ODcLWUnbNTJPem4yAeThzDdMejtWCX61gF3V9vP8lFht9TMAtMX7hUf6hgLpRNkD
XCG3TJYRQrFSqB0K+seGXVut7zYEFg6OZiCy+eV+KAoezbMIW+VOvgqTOnwkRDBn0hMP9AZHWIPX
NSwItvNMYnAfzM1RrzDPoIiPWKcITOmc6FAABvI7v6H/U++x51X52vj3MYk7BX8ND+HRURBJBkKe
FpozKskRNRs0HjONEAJZpKGV3/DSEA6ePacvEjCTbU6z6gKBIie9eELe4+R1z8Z4eutEgeGw03aY
369V7+jj4fCB2M3rXLDGTzp4WbDOigH7zh1BEV6ee+qMw3Yd/i4YL3WekhpJIYC/HIGSJqMGs4sw
P10TrJ+pVfS3aGcQSj952W9pvOwErdwnNDNzE5KyK2ISMmninpV+xJmZDW3urWZPBEdvB7i8cOrq
R8GUhbwWQ2EfBP5pLrdwnXV1VyisvVIkwQu4kJ1GXfGnai9YbBMq678wPMFEb4qp9crqLENdJZ3h
TvWhIleqpvsxbU0UJ932yc1D6vCBPXx7scwNbprjt1k2I6YNcnFhOO8PhC397SPiotErS0plbGjR
5EvLQ6An7Wbh8Vid6SrSR9nqpMJloBb1vNXJazFnXO7xDJ9PEEE3axJsjHNwvB3Jj9hmuyT/HQB6
rdzoJpRqZrr4D/yEl0Pz3AaBHJkQ/cpjIqDB7sycZapBoEwBVHShdfyGsGhEoRjA0jFo5Y7/zgyv
yjDSlBY+C5Q2u9Bz7w6f4lqjY+wLuLgwM2GCbX0qWYP0Y5Zsi7aI1aTGYOHik1XZdyL1O/kvpdYT
hqdWNkvzofNiC7572xJ9HttFJPuN9O5t5izaQUy5NtG0lC2mNLRR33+RIFbAtvtnnQ3lsNU8LQ+1
CFWMOprUIJnIE/az3k5WMQA5CDQMGpk9XyaE7H+W1dIYZBfoCTEqOz/guTFjVdOpQ1thS6r4dtQy
e2HjOfOPATcrOdPVcDb8J5UlFDHlFxVTVQaZ3n8zWzh1YGVBaGtKuqLjkVy6582CfASfKbMnxTfw
resQunh8mQ+DoYbUujGLmFBh2w7dje83GZ6FGwTCA40py5FXZUwgJtM5+3S8Zjl7BlH0g86ziA8A
aMI0rg13pzOe5TH9EtSlz2G4MOA/LbFD2zIsvAsA67NxYs3TBuRRz0yRw3w2aEMhYdleiblyJ3m+
GgMS2sVtlECxjCTYZzKwFZa2hM7Z23WCRuZDTBDWk89xDey80CDYEB5uSX3ll7C31tdncGvcsSWa
vHNES/0AOVu2WFECsufuUtDorrHaGnBFo+uzGZUiVrJ6A7ZkUW0E8+DZJrEI8HXoKgKHb6AHaeUA
Gfp+LVQSybWF8C0DYTHUOBsF2EcQw9Z1ICR8uQ2gJOmyPvrh3d9yekxe3tdM08IjLTw8RCnEUBib
wC+8CZYDqK++xWJeRgf6ayB8u0bIcqA0cUFJazNgjCyHyYQteUZ80h5CCTfB0ZRk0Zr0oNakMsf+
fRSbPuqVNwS19Py7W1kz5rgJ9mF0AEDN6fkCC3z/wKit9PVURZUHsPqQr3Lu9WY/0bHpyoFAp/jF
vNi6T2fT2Q4GHTi1WudkLDvOnFSm0v7C44kTvHpsNqoB69tw7U0ksGs9fblS43lb3ztpNqQQwUOq
p/3oGGI3mUhUxc+MSSz7C0T7XhUIiDgr3aEZX1SCS+L2IQL85EbbmiC3dFsl5k2wisxwin8DHNpa
sqOQ+9kZnwo7kOu50OeUjD2mWYt69x3dW6hL/0xhf1uP1c6hn1CI+JfGTdnAlndMnOAq0kughzko
1qxZaoEFw48OwAM1OL6et005aydd31JBPd3wIZGo2DwcuOAAvplpZCYqQBupW2EqyjSQc3Qvo2LO
DYnCyFQqlW6ezu6X5FmmA14FO3gxOmN7YsaAQrvQQW333L/PRDKbdLHefziYP3g64g0oVVeHetue
P4fa4iGdWLdP5vrYBWxuHDcpnrBq3h98XT7wuSeOKo++HIYehcvotEbMMOyzP/wnfOa3NAyhkP2+
t1jaltRbssuEwIq2Z5EWwM1zN+vvESzJcuFab5Q973Ooi52M0pC2EFnV3HA/7VNisOK6heqFA6bI
ARtD6KnnSlJAOrkpiaHQKs6pRdP6/bMKvrnETi0PqwzXf1XpSe4UXpyyA7U3Cpt8Zh24+v9/cyEo
eirEmCfOVfTOpe1JKGXLqMfGYYbY3oED6q8MBpi01VOx3nO6SJNj86xaFT+9XhXbdMPgWL3O2uVB
hDBBROxvPS+crkRlbBDgk8vkOuKcgPmkltDWpGoWVKLTauvzx2lOupPbpL5dzKdXirl95e4Uq1Om
SVj8DxCaCWCJFkqmcIPmRm+HnV0kkEIDC5i5OqU6YHD11acJRSBs+U2crQbX9xNe7CyVGOTbYV87
pbGr5PKiro2jDlTmffTvhVMy4HixxCjmEo87OKZtmiqDcdpGw2yrsEsLoZqVth/SS4eKraw3FGWl
pzRLhP9eAbam7AdRRa2JmI9v/ZExjyf7j+i36Z4JXxgaxvpdFeYIm5sYarGHcxq8/wgLlqyeAogR
iMUMmYHHqZC4QRGYT7KA/SnF3h9FeNsej8+YLSVwgADVcerj5agjIcorakNmd42aC2uBZ2V+GdBY
y39LiG8VMbzvURVX45RZYj2o/3lY6q6sWO+1or47sF4lGSJ0tLph7Ik1Z0zUR2p6BzUMcc/DGe8C
CGxrK7K+cwhad+XBRM9hno+kILzxOzVLab1W0FdVcQpfWLy+XRP8Z8aeXGofaT7VFsEuxbk2wBvi
mqcE+8LSrfgrA9+pFvf8oyGas/YA7eyMelpTjg2Sddjhin0klRzAyHUg1j0IYTVY1X1aX7uhf0II
meQj2we8PQbZSj880pPs3WltQHxMgIT4siibCNcBfk1X4Aagdx2M3YhC3XEfHElklo2dtJIXDwMu
p+wQJt/0av0JUCD/Fg+2FufDB5uxuvL3f6RtaX3XQyfOYqXz/oGNT3GA9uRjii2v0C51EnjtLnpo
TzCELk3NqssgwJxoCCiUYlvHyksYRasYN3cDtQWcBp30+JkRB+JjOc3n8PRnlkhl7kRlZ+JJX3SL
EUH0uWKqEZDxKwpfMOmYxgKoKxFyAli1AX4gQN28sLevXsXAs5axg0EXfqORWPvGERE69a+3Tw1q
4QHDDqSgBKD4HLvc8ZspXfULqIEyd9AI85KZTZEVmaBJrMBMxow7tfsCisZo4nWzb4g81nDNW0Lj
Sorf0w67kVrXiQVpv1iSmPyw2bVx5knhffZIZjiWkWqCenBlnirymsc6wNh8YAeMXVRKiGlOVCQQ
53cCLx+3lhHew1FveHBYWH8WojA9ceNi5TzR6x+rv4qe9RSPYOhng7xREJTeZyvODIIeAv5wMkUv
/EivMF4HonYpHXjoukNs6WoTRFdzXARWQNFYWcDbbGN1l1whJAfJHHA4x6uU4lbwhq5TMwKs/Soz
JoYm+eGWjMa9+h5MELhHLqvDSYCcjuZic4GJLCHpbRniY0TJbMr5kjijTUHacZlvWi5mOS1lSXlt
kmJPyjybEW+UY50KbeWXiBrLOXOCENyzjtGOtOcFFFLXRL+NgO0e2s2G8lprusg3URQQxcKB86Ap
mRmzuPXBW8yOaVgyHpu3RTlVymeNkhuj3z/FsSs7A7QtPOW4DKa0NP3GqJ1mPEJQX5BfwtJAsy+o
QKqSWsGFl7zasx4JG1V2t8K5UlHMkkNuIqtpVAAHw2cAAGEXKfW4tGTI63f9OI2bD9WuXSD1si0p
/Rxr2XgrPV4PUFjW3rYFsB9z+NpmxqBN1j/2x5iD2gFT8xQqh8RLFa6yWK1/kmnCVGCPJxvNO2+b
x6DEOdGHAZb1u8xMkla3erTopoOsMb/Srn9Dks3lYN45GQeSahfbeZecFWtjNwBz6bYCw/rjbzbb
Z8ubpo/Zf/2E+EyoX+ljNguKdJmmcwAL50ACxLsOUZHYK2dUM0ELavtGytkzYpwlJPufVudIegHx
6po7ZbLN0EQoESJCfxgYiNlwBsSbpW+TOgHAFjMUiRhah/UwluS/HL/HbL58XG6eDpckWJCguPK6
zzGtjAmb0oSYiT/DBiMZYXKrVbTaUry7DIOLclwkpj3j6Pl9CTfJ+MO3xqsrwuQWwV8jdgzdbuJ0
uH6ssk2J0CvBYGY/0geqkHI5MNAU2uzCp5Vuj3W5uKMODAikrosPNjaglAIDKfAWGcAQeLOs2m49
1w00ialI17tO+9hYAYSik7EXof4SLUE4xzKwveVHp+Y8ztv/tnQvu2aLcvIEMbWctYzjudpXf122
eeKbR603G/Tspk5j6GQOeDo03KEEP5rmfFMgpzPq91kBTeE+7jJgD1KPh0i4oEyxwqLP100AeEkM
qNIYVrHETZ7vL43luD7roGDz8jitfC/3LzQzwJg2sHvOrl6QlV8wyrTKG42SYziup+xI9HM37TE2
TO6zmB7IOqIGtJOjjOQl2qWPtQdXcWtWpKUqVnKNrza8ej/e6IdPZh88vTyasFHXJhwcAbIY1kVG
Y8F2518nRvI5l8Gxplu9N29pZ+QYGuacDjId0joVe/OCSO8uNtsmAS46a+CppV1AEQRhzJp6saSZ
q5BYg64nnTRt9UbxR43CLs7O4hbQBNoBGu+0l7b5pnW5BHO7QXPQ6pFGjGsm/Hw9rRt2D/TSNrz7
dxktvF1I0j5etpaa98HJkavt4DyhnDLEbPDt8WLpxGog+e5XMVhbj0DpCuJ1EqodoEocRzQs8AMo
nCngVwWDLQPGgtTTzDUMbYiS3ZJUq0GO7adOMIhrv2puXj5WflNIL+cqbqbasBn9PBbyWxb3pf7W
U3ux2Gf426rXh+8orbRYcrWgxGCEnhZWDrpgO3pK874WruYf3ZVOLm4fgpGVr4q7HXNo1Y9bljCF
AWkZvcFNSOf2dJS/+YY/vUSCyfn0nJh1mCB9UHSeVv/NnK4CcsDqfJZyoEZTO4364MJTrxMry/vX
JV9a2HPTwPer7o0aMHNGT41HJH+WLgUUdTHhPVH9nUnv2fTqBjz5DPSsZma/pxPJnWeolS8NcJIT
5jZExkGONJCOeOWLkMmshesnd5xFi7wzPVBYslh4JDJ2sQJlnJuuiZYEuuUsNCtwe5HOD+74bqWx
EliHvUX1scHREUmedESpGVBFfaYRQ9IXw8PfFUUMgoeyaUw3smj1OCFdbvBgDmwgxNHZtoX8Oo1d
Vuat+ozRduxbG+cLF1z6GKodJa7Yl7sB0MBpmqPBOKc0F8m1lRkvfI0eSW4LGhpjUoDNWEM31SZu
s1Ty2GoCZOlb5C+BXTT3P8d8PZcN3lQEf8TfNZCBX34Q6OpoSpsTbEY6LL14V4ZUtoi7zwhX3kou
zNhHfNyU557TlTm2w4puw7tU4tWwelmELBjjHJmE5qpx1UD0CqpKcxnTaWMSR4pOrQHCjUgNr5ib
Ixo0mr8nqQ6eBWPgR8BMGO30vIw+V7AWBfBPe8f4aLyZ20ugMFFaA0ztjY64Vxpcv15UBXy/k4F2
UsMStYUylvTZBhCSqVVkUqEZWxkXeLrRrjo/zHgBiO2Ae+wHYRbTKuxfnC4nQPAIBoQn2/sPGtVC
MDKxsSZ/4JN22DCuqYsNo+oSEFLDVhJ5/42mXIwsRT7ffJk/CyZ4mPhcMYpgw1xYm/o4okTXIr8W
/AWdDyDpoLU3WxBGmSUIk/tmLCGiEzy2rtv8E7eoS8WdHW0KscEGoR89Q0PXnzPZ4J4TRhgp09+f
DihyeE+2RRBLekwglX3JV87iUvKjFmYn5A863y/XHZF0d1WEIMk5TljRGCaIOUQIR+uGhR9OCRZ3
IqV1bC5NPxo7KMxCG6VS5icqc3CYmciw6AXbDac66U3kPtU7fJWi1Vmu0fWHdRQKnwrua5e6vvqc
eOiId5r3RP/PhNRIJMeFHDwHUdN88F6bHHtkIhI+S+FBZuCBU0SWipdImx8OgRbVuM4zfrO3WJAA
SexIofyWwyvDlKCnOZJItUpkQKOR+hMBffEPCeTB40h1yhihhAxRDH00At65v4Xy9ujUn5iHK5yx
9FQDKbahAH3DR07aN56Jcv8q3YL1cWnTdGu0Ksog/vA2QP4WNSlYUdS3fQhMZ7yG5WJht9xiduCw
OYC0xmb/TLf6Q15/HiU9Leilx/aGPRMbU48TJq3U+aDhGV6IINWBHHjM8jaC1DmUp4866VpkLD8g
dinHgA5gEXbiAZoBE12X1Rl9DQxuD5S5MgcstuEmtTqYmfI7uwn432XVLk+2eDL8AeM0uxHUvfaZ
sEJ4lO9X+9Akqq36LuXELjrnAA+fBYaA6fB/Y6mzrbsCRpusB+hNi4rO5Gv6EUP4hr55VyDkLpt8
C7Htq+qnuK0N+8J5I8at9o8/ex0ydCQzIXWGx7TGtFfPsv8twOKC0mm3yK7AeeULzt5SeiwKWZgl
W3NFBtdPWqT9eQQA63eTMwmNWHqYpgH0LB8TO1ylzjYP+YlfYsGWvfYduT0kI0qB3xOCQqVF58Tt
Ofd1KF3Cbg/iDlL0X519topt4nPuFKFq7me2PGzrTbJhJ04ISIW/MHt9aITFnlX3cudyUhi61DMm
xNyqAOS1Aae4t7VstwJ0Vdy7fBqpZHod+MU+3juKN0TB9XnC5kAIcwnW7CKUMJUhEdYo6is1lF20
HhpzmLN5drRNtMTGx++CX5Ms/VVgj7bMfhsSoj7hfMTycPxL4af2UjGUosHX9zBuaILjpfTynKBw
B33CofSP5s8cRmWA/bg6Wq4fAK34mcTHBUzlAozv0no7qBtBl1o0Z5BMF/+oSyjnN2bx9WnshpAV
yWopHR3H0dKKehmSEPVL678wnl5bBr9maI67LL/1Y1fwf1aqcl60XaTFzNVC99FjJn55DRwLM/0U
MXay9Phxe3A44T3e2ZUGFOVkTkJ3XiTl74E8PWRu38omL+sj+ue4p1F4bVVDi025UQKHHpsvNb14
CKbEyIXROyH7rgPDna3dRD+Pr/2obEyew5kKoFMWjelIoWC1qEzMqAvRuJVq99o3Nt/YeUTdfNSk
AFkQ7L3s8WcIm6eQ+dnd7+3JXtan/vpzO6huBR7VqLdWe5XkIzi0iTW4NqmXns+2VD9U8ZrQJpaL
RLdadLCWVMf/olbfiP0TNKMd/JTk9wnb732rWx3HHNkowCWtUmpPifM+eGnTwcOp4tlnwQbZT7uJ
cMFvckPQrYqhFDBSkEGEQHJBk2SnGfOcyfytJFCRK0qsFtEAPcuTCXV4+FpH22w9lLZPn+YEia2g
3JYhyYVhpCRuxshYjAAS/XaxGXVS5Lo1uCWctXEoUmellylrDrxvDUXecODfFkk//UxNLXtMD1O2
qYdRIllTOCjnPMoMHMOjcZ5KyP2MatW7NiDcdq0YFrqgeUbZRhtr8jZ0viQzGIE9uBQHY26hPOI/
DCMpvSUTPz6dX9zmV0gNrxBHfs7vS0NiE9cgeE8AKvcCM8mwGZ1jryHiOd6hwr5dnynqgT9ZYhHZ
gZ5se7D6I7HsoEm4JcsrOC4s6q14V4pJ8Q/9nSnhIau5S/zqRsFbksgXwO63MPBeOi1zfXdVUwhA
b6LDBuecRzMVpzZ8d3ts1WyAgMzS+G/thX3pf6I9/NrpitKSg5W3WOGsAUQqXE05RIwmmpl9+PfW
h9EMQdc9jd/dRp6AnR3zPqkFLLYfVNxXtxRbA6awF3T5BjOpZRzkAuGwnAi0GJPZ3IJmun5uY89V
XZsTESEo+6eAPk6wlgcmUquhuwsIMZUmlnhw+jdlqi4sWpFrg6G6+bWc8ABrQuQ0x/6/uuyYvqAq
dVsRPo8maFwXAKTYoAoUrb/kW7wwYb2ym2iAf0RC7ShnxywJKwF8grCYAHBFQXd6SFcavimmEWLm
/z1X+3IInsCLXSGUD5YsTOpL0Xvor+dBDt8xCB8JTFG+E8BQbp4Dmk8gEgLqErW4OWCfXv3frLZO
iSFsLIr79ab+vQtbB/rK/UQs1Ua0jAGGvDhVJrzDk4yIKX8mq54/B91ISH1huAajYPE5N22gOLMY
CbYWinoAFMvS+bXjajYAqcbDbdEOL8VNbC6W+flYGVWYJoB1w3ubgFzo2gnE7BXfGN54HABuuGAx
1xX4zUXojH9E3VhwIlcsCas7cmN6SWDC8PY8Jfqb2Wwr6X30n5xYrkEUTw8kpdOpYvYC102O2wty
1adOZjvE6aRLlXCkYZuguTR9MhtuWicpR05iADXJNyRbIlzxI6FzmKWS1QVGGQk9/1786NGWPfRQ
swQAFrAuZiE/e3XVVZzDWrBL+NYMGDAsql4JgWjR4ZOV5y3BDog2crAZLVhMueLZOAroLWI3FpGP
sJUmELZXTStZPAyfi0AUTJrpjEy6SgxzwoiwhdQgYV24piyJAZneuR+fa+VBSvjcI6l+TJ+xdU+z
l7tLQmjpLYWt1jg8VPUNUBXfMn8puhAkFpKHT91DzNhnRM8A6QgPCuoz406bTfsKz5U3Rehv2uan
UjxLbXO7wqL2OOO7jA0FifJ7+F3aimsGZDI10I8yM04GUHv/SkIj6MchnkvlANueHgw3BgCiPu5l
PnK9qLLbq9NVaX06C6fPqMV9dfTE3I16uoi1a1iOUbu5Hi0iTr3gxk9JodarzbEExPxxPN5SMgTN
g97AFN5uU/uoAkm9GNp+shvQSiiyzw+uYy80iZroOYLfWrSrKUBTSdHPvBh7Y3kjMrTYsiULLJ6h
oVbfbOVhEN1r1oRiOEx08ttR+v06CjzcAefc/+clWXxek7x8dfS3Cy01eYv/JMYP6oaBWt0mDCZn
1M4uisCha91saz3hW6yKLjYaUdSRibSeyev9pd4MwyHcF5MysMoJUHhIWMB09kiDkzSuMRAZ7w3v
d+WzQaRbpczBZQRcyJXKv2q6w8q7hEqoK1oSjhT4ZYxoFBBz0V79bDPA0Fxum2TPe8V/ExdoZP9Q
VYb8//D0CSu+Nt0orFyN80cYO1iNQTf9MwgTLaVUK2BrUHS/dzCoyVdYuknmGmtGc1zqbYfkkiBy
9r5rYT+Th3RLdg+rty+1oxJRy4o3W4F0NMoXyF4FAsyiL4onZN6QzI4ZkCTbCIt/tYYvcys7/UZ1
olNIs99Eqb5Fw2xsWZ1abTb//ZOgFbDkW3Wfp4tQdRFSAgfWo8JGrsg//bChn5PGBj26zPRV7Qmo
K3H2SqT5IAtzFJ2+a/4WnpI4Udwl6NBEYK6HGNM1vLnxmCtYauw+5MPOiMFa2Mk9WV0XvXpG6wmV
MTFCYi5lg+Q7ltLLV8LMHeOGSKSD4u2QPSODRBcsNUw68srlWODL1uJ3rIfIM3xSugTLsewp6TwJ
MTeuW8AmK8rd4okWa+RuvFcGghRoGowkB3QBPHPTmmz5kKwKJ1+bOqeTdAXXPRnVZeI4sZbTr3L4
aw7dL5BQLrI89F/t8G6DcqJqbhMexoRJwEefKmYU1TQEZsAgI/Qco1IiITjpCHWcO0W2nWWgk6O5
0b81PYFEnCRGIq/yhRrY0CzP+Gk4Q7LLdVm/4Jz5XryIKP3vbyNbZU80Wkad4EvaL3KxqiZCA+NS
c5IuqLPyjcQfeuHd8ZA9TepJ/ORK4U0SoqcRfXEgh3M9/QzAzLjFw+np39pp6XfuA3H98LswCZS8
ovZxvC/xxhQb7Qsj/F27p942ogaNDVqWFJQXIRrKkpdMlGWrzS+wyIja9nuuDnI+THbg2hvyU5cq
aXPvjS9B966yqFS15pnHiMY+7GX1IQIWt7ql+NQWD1HhEsfhNUVMocBKkUVwRYIdbD+nO/yz2u8U
TOuHfS19vIR2XN7q7iviLpu0jJt0sAlVHvF0zpBv417QLNWgm0RX3o5nI/2R+Q+/OhlsyNIslY9t
6bRu8QM9W/0jhtdrd+UPReEVg53ARNH+75/gKrcK4++HtrsqsjuCfvMSR6Ope8emuZSiWzeGugkW
nW4wpqZ7/Jcga41dguv6fdJ8GxSoWr0SmFgZaRMj5MH5T1NI2rGJJRA2Y3+Uk4ya9lVFvkNOKhdN
t6ymYTpGGhx5PKjQH/95PFSUuOSR+/CUy//fdEcTSOv1tlIOAi2tjA5NA6+9yBQtRPcwUk6c4HV1
Q/zqXz/u6vBRXDpWQOLqfnA7EJf37bi0cvFHaKif5dofdLboEyWrQrs80k5EM5VPB6hl0rQtatLx
Hj3CYl0o5mI8SpfxxiTbG2u76ZkhQ6yoHCRGdmzXToIIpLXu8/HI7GUzVZrK5kvWOlZ84LgpDeiq
9nxZPROROWIgGRKwmHL6n6LW3k2ThOwc9CnhQkjccTmowuX/yLWLifrxZDoOhSG1I4qr9Fv7WnDO
U08nPrt01NUEfcWFVO4fWr88syZ9+PsFwX1o9/xryd/U3wBEnXNWy2qkw2ve9OV6EJrRSiBopZEL
wYwwNuXbYcn8fJhOf+Pvq/zlbQwnaeFtJVcahJ93oOJsCmDVX5kl7ZWq7Uf+mIrWCqXX68r9IeoN
MuN/Bq+tpGxpK/r5K6tbQ0G0hJBxD0vC/1wRfV5vPCjlYJ/HSMwYvY4u7DeFBvjgt54a7hZc7ggd
RdZTSbTbAyYmakuEj4r8/U4gSrWSbFFazSGzlOQpoQMqhFNrGwitucK1b/b149zYaSZYdOfIIWpn
jhTaNCqTzmUKtiYhvEKM+NL9ihzVuULTjgfqWafogWTAndiyo2KVzp91bv9KHRsbbBeOP0uvsNwT
MBQr7a9hLAZ1a1f+KCM3dvXHr7Tsd+LznUw1FqUTw1g3E/c0OE0GFNzs6KrJ0WDBDHRZAaYSNx8H
Hbu3BOY8DextpXE3SLPKfQq+LUHgzzfqIOrsMyy6EV+2xfHFvzl6wepYZNnnLJpE+fSRFGxiEbSc
Nj2nIxg1LGGzM9m+bstu1VGglMQii2IV7VoWyjy2FAAJpJiJLJBA6hvkAz5afVPNoh9sw5wZZ8Gc
Dg8qdKalTtMxERLJnvKdFgJozcBnR0ZqfHcaNUXTXcGyNUvW3ROLqhVopczgwtjYKssdVsMOv8Xw
EdQ1KGfHuInfK88QSP97SxchgqkZJWc+AxvhUQxegDlgvDZo001s7OHQ8Oy20+P9fY3KGsMhUAoh
oKCLGjK092NRU1t/6s5uAVOqnVX8sf26t3mbvtJMHb/Nr8NwJap+4bvccaYmJKyVUoQINAb1D6jN
7cKWYW87BWZ9Hc5/JpR0pOi3XE0cVyasL31FiKBJ123Lk9M7BwF+b/IMGepOQrjqu2S3N9izcT46
vrAYLJvaNKErxCjHaYIPfrSb9oftjDFlxtjuRwBMdG/QKoy+nv844EQoEeYiQTabwYx7jptBfMyH
+yMMkHyG60GVlikkK4E/akW6UGPf+aOGPoYr2Dn3Vx8+1txVhVHwvjfwoIKpNbPdP49TZK+GpDrV
lbvzjsrQ7EnBmpbm+7dGrMBjfoJoK+QdCjsEAGCxH8dh1jadhev29UUvDGBpUrw8I9aUVjkUWvQb
WIQRLdJNxuHjUsL+bChpEk9xUm8lf22Y4/1STHniEqgHYGWXYbNuKxF6HEp7Q8iWLBSTy6lXiVyX
t5P9+wjk2s0i96Z4J7ooI5+n26P7ol9pOqgKiwOWaHaCdi+OpZLsZwuBslzmxm2bB32SQfqtfEoo
m2nXkO2ou2j9IR1GxA+9tLtFQ+uaAR7S3RdN7Ymw+VOMYP/rMjI1bDwAou/xnEYKnDmS0a3WVQyt
i2kXAceVXe3f+xuCPKYFjK4XPKbRCiuPHz+hQ4Tw+WQj7j5hH4VL2NNJ0DEw5Phx92RdEaafYEIw
6VFUPFgL3NkaCWAhLozjeCEKehZk94Jvlou1VLWizBTjKItd9Fd6rcSJbAvuw1lqmjG4OZK9Sezd
xIUzsPtt7K0jDk23yT56fF/A4n6IWYNT1Y9C4khvzhMM4O6ZBHQ2P6M8LrRfo32BYpDTrf7sN6L/
KNdrQT1NeOjXx1e1UWJEVsZ3ztw4+deXy/w8GlA1LA3MssM8PmW9/xHfQvSIhnViF3617r8S32k0
c2TsRW36RM28MQEZZBW8qL0PRUe8cXgfwTeZrptnQeXNU87o0Z7J8k2e06b6DL3OZoaGOXu75rZe
uezHdCr84apj5/kdXq1S5IwZSROUKVj5zhnH3HUSIwDEH/793oU3A+fldb1Z+X1w1MJn4PRzf/bi
aC6PPaFgIehlXWl6i+tDSf7e+/Ui70S1lsCZixFossrd7Y2pCyzx3CjN9yWWfkMIdoqSHhInVQPd
77pBKFC+ZRNlBZeQ1FcWRcxcOiSqOAgkcf53ZfIFe5tIYBOx/AK1zQdorVMbVjA3Ui24gWeRyrr6
U2dJ7uLbVmjjnHtlxjPQkODlsB/cTwzGv/3GKlyXSRnWxNuY9RCm6JW1yXTPEubkbf4WBnBYp1b8
svEl0dkwkUoMSJ+Fjz7FY+O1zYdmvPR3GW3Q3CvOanxiycTDh4OsaCg+40IBB8jTnAV+q5OzOoh8
l1OHwUVU2hhV6vBobmdnV1D3qjyO4I6uThsA+upyDy/vV8/hxluOg+friS0PjDhG8geT1QImbfDO
Hv2o0jAc11g4OcNr75MKXF/4iseFstx3/PZ/OA2w7xWnx5AzSQ2+j0S+TSQndsIv4cCkzblpY+ps
/9Ksj3emWFAzXCyak9Ns+oGF+rJXV4f5giep6zRqXiLXQ6+aTiTSvP5QYVln9ZVEgg8mrQF/f/W/
4bbXBcut5CZpPDE+AV9C92KWcNsJP7G2upojErLOPHd4WyubCuonCPND0rBliHu7eO5N8n6iViAm
X7Bfn9/Fwy2M6N+eA0SbqThPwSBfLDsPLUHtZ/PgQJbBJQzF9OatlHj046ogCW9i2aXG35Trvas+
MTPzC0nwzRWGv4rMMoUYl7FG5hCl09Ud7X4PH8FjBAaEmjzac+6RUiMoINN3AJE19dkfxIqy+qkZ
sPu6vDGy/wvSu95hX7hUg7tTZsD89avb1JN4cWrjVUAq2JJzRR5YSKSa5Gnp1VNQAuQ95DZfkciR
tSDxtms44Rsw3z4wA+20Rh1mb2gA91q+k8FU1pcw5VFP384pXwLTqPkbIjIv1GdbmICldfJjqlml
V0XgbIW94PwihmHfBci84l+xxuj10Da98yFOkd0OxGohhLt5/KeaX0+6FullrrofDO2d0UtQGn0M
Eu5EK10h03OaNjJXTtVUKt6TzFXfkMEibyl1H0caFDxTWo6xGOC221J2HKSmvw7NmRsbX8YrjUV/
1F467uGvvAPmySAIOGlXEr3MtGy4MWQX8IsZXDsBa4mVDx+Tbb4U/qgkkDRSPPXFa0Dc7xPt4MyE
JYLu+fiT62sUgaO1va8D9NVXJ5GK4yO6l8mVAQEJOMySFn1SelympG2P1GYP3WaE6Bl+zuxrUnBe
un1x/MrYnzoyBq5TOaOToVBdWhWrOt1/fIxn/vONqMuak+B0J9hFxTFD4RmyfIqxvRLQ/63bRRHt
bWiYkx0wwB20iC5AEz2G79TqSF+FnDw773u5jSaiJtcqZkr+kBKK++Oy1eWUvjIgTl/IoQ2jJFJj
08okyM5lSwOJho7vQ3OPskpIgLCN2RtMK2DSSDA21/qhc71AMMFgsauSvjc8X/r5+qFy9AdS0DQf
FpSSjSRXx5bQdkiWsn2hxEjNOgrgwSMjprsCwVhkGfLhcPgO3yBypz9RpTcCyiOL0v/44TWLMiAB
jImf8cV6a/39UVhnd1cZjkLD+fyUpQHS7p5dIeAlLKhVPTmRBI0F1stU4XHim1ZITCemQx3FYO5T
HrdkN2ibSNUzMLYY7ZcLS7I8/PL2AR8j3q+5Vu/7vEzMufVxaz2WHvOEZksOeTX4GG7S7UKXS4xa
Mn0Pxax4VjkxVv92laPVhQlz9mkTSs2HV3/24MH5f13DPSmMK8c7i+mHoTwWf2pgoij+HCMOdCxC
zIlgykYjRRbSaB33h5ePasRrDN8hYgFexv4xH6CbC8pzmqfFBExf2980MonAZeCnAHoxe0laN7uA
aa8q1OYRVQ7P8oKgGr2p5QoCP2CN39BJq70heKssrfR1muw38w49KaCXK5ncmUNkqgVELaG2GdAp
HOaKPmeZD/1Pffqfr3J6DbzhygO33WryHcviM7UGf7q/whAl+6x8HB4CJi/MKvYReaw85eVqqpNe
4NjCxDcuDeb3TuNQ6vPqfQw39qSGtCRHF5e7nJsH6pu/FhG3QnX7f8KChmg7+gWW+kvKDRVVCAfA
gMRup3+SbzLsqgk5M861aM6AQAzV/A/TH0ZjFZ+bCNcOA31ZwMh6OoRHve7W30EUwk+ok6ALzfnB
LT4zNy32w+DSeeBgt8iS4JnTpYG5t7cnp2VylrDOb6OaMv39+rwBzIr5vSu4IEqv4RYLT7bp4HsT
iZ2Uc0N/TxYD/R9dIvMQtcsDb99vo3tacjrNuEVsgC0ruCe/FXefTKE2AYUcmzk3ZQeSm4udjqC1
84WMQ4qMmNt9CGXxvrbwQP9sd+5c+PLNf2DCqvHpmdOYX2I870O48Ko758GkdaBKNBbSV04dOzP2
hgddvC7fN9OV4GjCbls5Yh81PyOizhR/HfranVF/46zeU+p8z5J+f+xiHJNhc0V3ut1rqUvVn/w1
9qWeZ5Tgi3Zcr5w96daMFCN3W5LJFn/z98qVfFlKZbS6SW6jaJFvyFL5uRvsWbDSjLfSno5AbS+M
GQeg/dIuuk60MUomzoYkrRbGkfzx1HDAaX7KDgPo/Vh38uJD32Ev/VP4gtLR82xq54rBmOyZ7AQn
dVzxR1ATWy9S0KqIWP9ln+D16D8yAsHdy6mPDURfwlF4+u2E2xFoUbWSeHbqYvBcI9vUlehhnFjp
H5f67sYt/t0myRoEc0vBKPkObcfRIfeEI/0/MsTHezBSiDIV5mX7AbChN9FaFF6MsdhP6Lbyx45D
heQmy/WGgdNCv3M3eyXaORT5PhwpacNHHr6ek0aA+QmP4bfwRDRg4NFd8YgPiLiZRcwFLoZILMNi
3FBbboJLMIBdOqbus1IfZNmnzJQRawwPp/ThkUOH11oTsR5a42Tb0wQUEoTmNWw1cb82NGObJRUL
Y+iAK/QXOOolZfkK/fDEoI7aOvoa5Yyp1Ud5zq1MLPRTONP77sZCryY+Wg5AdQ+hVe0lb4yiFHlG
sham7IEsjA8xldylb1NZRJ4YQJVhp3o9aBZtg8e3w3imIUzarvaXQ3sfbpV4nuJ6bFPO1U2YlT4F
i+LLL8SK1wBa6jyoyF038Efbx4JRWTPMjf0mirvKQHgFznE1YygT278RHrBYagxXwC95nS0/M1WF
wdYkZTRVjLc2NoeGfE0wrkiwa593bPkoby7MRsTaT6Y7d1dK1x+Y7mOl2xeJlEIzUvyGEe9KyC/v
n4eAb5YQOsbR8ASX4PGK4ELc7CVDT7p8YVyvxTtUlR0p6ft0ycLN26yaal+r2qf/EzZDYu0YAxZG
j58fEcorKg25o8FwpYgzyxWoyKrKkTfjoORygeblP3d8DkvpQHkKue/qlxsDKwgsHU+23LwIAyUb
Gt4K7+kqdwm0PzK/FsTMo9vVp9XRHJXgUWMzuOwrJZf9hxGi0d0hmgC4v1Qkp4H/MWETHpolNJVg
+TqcBhJGS75hNGh3izgHmhgFQhNp4IUA03a7NGzmG4VJewnDECU44J69OUsjYi2SLSBPBUn/VmeS
VtFM8t7brHTebxQK6onKFW0TcSEA38lJ0G8HTzXqYcnY/m8b0JGdwzXeQRi+dLIBVhdkzljnBleO
HWKBoZdFNqRKYJjB73kt5G6V7fQG55Jb4+OCVEaDN6XUg+AJH7jVyLL6scdIe2vl7s4GWDKKIh1P
tvro8/2I6/06OoaLa/T6sIBP8L3mRconxZfxCwasOpNXeMBdbKc9sJHfm4OGD9OqESHUtds/Libz
sBT5sL6eGDdW+6moO6Y1pgp0oGWr1KdTnSbiIX3fQL3D5TwQ1IG5QKa7tqy4z6X2HXLtH4ib8Rjj
BJB45SlxIHpl+UhymbFVLOm0KUZPrwP3ca6QpcNxCTud/Iz25k4FIvSe39lLPseTJqFZshUtsAWN
7o8Oa31Prl1XBRlxBaeY62+DHGn5D18gDqSkdyxQeZW/iiaBJd4CsVPDM0miy1jlRRhTU58VvlRk
OUv+Bbo4iw9VR63VGaNIQrzs6c418PABrbgtkLIHHeyCL7VwNbxJX7cNjgblmx0YwIDhZWJFLEDF
U33iUYqjL+cR7xGhX7gLaHyPAvxVA+u84gBJ/S3CPZY+Dn3bkFMz9CsoitgfidAcv3W27ChndiZp
XhCRkbbS72+34xu0N6FPr7yYU8ypn0dkpxnTtMD95nDOymgUtKb53cFznLRoQqfMMQjFYa0jkMe6
DOEvqcBtio1sC7qTQLEmXlBXfMfhi4cc1Olhw95QX2u2FxUadxV0VzPFzTPT1SqVx+E6jD2StlHj
FuXNuWPhQDmUE9hIhppyHf6mC6ClT3cuuVeucZ2L1XLNkZtfkUckLNt5XvUSbgV9wB/1aNMdx3Qq
bFE6gS05S96Sa67yP4Gfp5hVEd71U0cXstWzc7fkXSPLIa23ikTp4Bh9STHuz46GvwhuWlqEoGFX
8TGwgU1h6s4jvISYibNPWK9UOd6v9k9O3PxdpsIIfDLWDuCEkXT9s2Pe/jTRI81U65n/WRL4QHHa
i6D39Q9rB/iPt2JW/R9InflR5QObCo07xq5MKlF3u6l8utde2GXr2N9HrDPrNSAbos2NSHOAK+eM
x6XFIjmp5pFoMZDhsPbKKwctsjmsQz0ZaD/LrUaoMC6EVjHuhN4Yw3lIGiIN5QEbAT5ZKEqW6PI1
ryDxRImEYYhPc9k5WzpEUp+Y8faGNxL3fuONScLzeRnpstq8RoDGUw5E1WcQviB1S5LR5hSqZBmA
sxf2u6LMef/P10TDM+cgGWXPK6H9jfWgxyrJKpY+3JRuLsdZel9Cb0ywet+Gnp7spPBo1WC9tmil
gAxdYgQ6kiMFBwtf0cCksMfkrYTgS32GKKk7dtScMCFlZXGn33oR/SodhJV6ocoHSN5WWBJZVott
Wq8Ttp8iDSFl58LSeYIXeD90SBNzjt2vo3SwkE/cL5gSblNReOCZPzgjmSqZYEMjPefAYC0t8F14
FSd0/9JCo0s75CLVUAh+AtVdVB/SyfdPao6LgNqrVovEjwrfV/XriV74u9XOh7fzw9dGvfQxLZlw
EGiuE2JJNTr5yvITU30sQCmIoEBbSZZAS+ixDYb+rCXN/mV9Qw25xQqyD+9zZhw9MJg78rvxNgAg
2H16oMaG9RMFc4ggDsSwP7fwJTXyJrVGpRxrp0YfCfvvCRgb7bHIETSsWhOdpKJB4a47pfbGTjs6
ei56eFhstyBjv78M0h+m3Q63EjAsMW0QPMxkH8wuQpITyiZB3HhoXt3OE+O8BxokCYiOsan4PIs9
MdAxdbowseC9zMDLvrAFBB2Q6lTbfcZTXglrfMlIOyof6aCbPDeKyCziSFCEFilCs7iRcvTAa5rB
MyXCJ3uoEg7XgrMlA4fJzVluc+LvIr96ymRYwdvoxkOb/bF7Dfoy8xddN3B1yDYihQ3+oYFvb9jM
ExfBmIQDVfYzioJ6FpzLnu4EQTSck3rF5nlrgY0o1lwE/wWFAlvdBhasguIuKseFjtpxD6KciFVG
5UNOEt8U2BsUMiaSn0wPP/JCD/uLLK72mlfb8CrQgaPGzbuKd9idgajaDy3zAjSxThS6zsJVyhyM
AAj7nwxD4J/wYYn0LPSzVtj3xoIptudASeKjgXsmWqwEdPtXBmwChzuPdgeZoBbq1pAKV/VQ4ifc
zgdI5AZTHlsPkHdZwy7P0jN0vdwfRgvaECorvQNG8OhSzNLJhYz2hpZnTyTh8VSM1f3sHBYYzNj6
xfj0UfwsFklNFiCAURoKvDX1xyiMencQ8XXXGnGpf78laVBkhskKHr6cTiGnZQLcWFOo5eCFdX0O
cGJBIzibHEQZG7nqvZFjxC0vtCVJlW2hEi01hMbOx4WH9ikKAfhx9328H3oTYYz1KGvCCr/MUqrJ
ZD6csYdCNfvrABAd3u9jFxfoLBeAmtXHDRTedkpzC+twoZjB9A/tzJqWJmIhHOdQmrC4rP7ljyP/
d00qCM09MG9TccUoGUZXjx5SpNz6eCXlsWtbzgXaCLBna7TL8EvmGxtFHjoT39ZmJ6DQoyOIJaqu
0DxBjVGNVc5f2yqsRllGiMQazLnrjsWuvkQZc6lxMDFU9iznN//wisW/Gyejq2RM80X7ujALBkad
EnMJ+5HTYXTEIzyds8a7AgixBUa54dNliTz+C7oGKCg9J7rl/jakzP+qUfeke4KpgfWB0l7dVHjW
lVoO8iwhBCoHhxr6dVZFPWt74efaBgXFxQMqCrbWZRjahTGI6xGdZ8w5nile0kDO+if++agbVHmi
Nu7fOyMQ6zizNrE3JXX9R8mWz4b4OyLiJlxeR7Hq9iplQJPOt9FWHXMmEhE6vTJwm259hhDClvtO
Cq1ry6x1oTig5kYLo0IEfPgBelc027yLHtGbBHEqPI/u8/X/voc014a0loTO9BN10cSCKYjjP056
q+tz1Huh97lCx2ibT69DPr+pPXFr9rm7Wm4FWdfzv5xPdBJa2NgOa9td8WGKyvc7pXeT0k8T1ODn
bttmGhVFyCB8qEkZI4gHm39FitN/abCCXGsVllBMtownfMR2Wq00LghW9STFf4sjZgpyjMh0GzWO
Xyn3jRQjZnimmqaGeCc3q7VhGE0oPItwADN/CB5mebiA3DWEiNqrCCs5r3kAn3HPEy+njWAoSbe1
fRVhwnUddCTkfdv6+PpLy4rVMbkaDkEQzWgYfAnVW2VA4l99w1mtRCgilU+pHZHbbzz8/PlPVvAY
vP0UFDFKfWz3bBi+yPIsM8GfiG2Gson4PFFCb21UfKaTMDkj58iUK2++Yp4+F06VjYEWulZhfRpU
Mr/u86FJtfs2wnDc7FvVayP58RngQKchuxin9ObIieOQqImOSOLNESU4MPEZfDHU5N2LPBcWMfjm
BinVqFwHOsTkosdTkGit4Vf4gwxeVa6ODwlQQyjOMRnYVdf4uRrvGKzrL3ZkkjngmTQPxCeOyD49
i8hHKYwYO52VmuTZpxJYf/nn0ZmTCuTi44XvipOBznH4jzqlkThCrLlMXORU9E+htnKiCxTLBGqv
Vg4Ps2cS3SRWMH9aocKhnqrt9AcpL1cgTQoIMqeBAjSlMwXBI/nXv27GwHSnpTQ08vRTZ0OsFKE3
awZrWfxoZ1y6SJc7jVgp8aSMz/oNQUYJFmGfLWyydfgEF/N2JB7NVwHf7NcgLaRD1bpNN8g8raHx
+BdAhYLAR6sXqWubZLHOuCuSuDf9xJm/Uk5MCvUY8YLE6B0TnZJ3B+5MCo29d6wbrZcnOSoZd2eB
HJrNEklS3brDVQ63nQp1xWKZ7kTnzvQLnkotosbmsFWa46EoVHcN0/0KtGt8wOmY0O9JPp9KdDRS
PL/WzRzxPrYuQtct0dKZnRUp3I/X+cBgfR01Tu14hD0CIEKGeW21jiadaAp1iUCNRiKb95sO7r1+
q0fJV0EnSYiz1lqeuQbggUjU5xTypnw+q4BbDZoxMVxRk/+dYDYyT3K3NvH5LDXUSPrHEK+y3wnT
40OQThbW3OWZCH4AGx0e1b9X4yKgwFUXQJI60y15AHXwB80iAwK9eRYTAsibiwvKgWHA+tUPbZBC
dN/zsOqKucnp+CLmAUhQpg5UtXFu+avVybg5LF3cHmsXWSOP2Z2zwy/1ZkdRF5tdf5JJ00lD7LgW
4oyDvOUx3tcBfoZNFN5Dg89ha6DEvrcdCQsGwuIoQuHdtYlv6//MbzBevOuGQF7xJhuwH4ouenU2
2qT4ViCiNyH4Rw7ngmkjE4Bo+yr0xeZ4j9hgY92/m5RWZV6LMCeJu2MU1Q5Xc2E7jOZZDtJnQ6Bb
/WKL4LSEGk1LKbbzyjjr7Umb9ZZGk/a/iUR3XFLMrZNkvPA6vRZDM823flaPT7Sz1Kl0LpWTrPOi
ocHYNfCmiP4376TXeB+dNs6eR/PEPMUh61/6L4EnbQoMjWYocjgGdzkKhBbi0iHyYFgegawaoBoj
gZgW+D6gsdLnXBCn20rVc7QfnwG7OG01cWwziBSY0n2RWNMgom89tF2Kn5DV08uNwC+NDYGZuG/9
W5rTur8OaZGbCdmHTEr9ryNLLcHHA5ReS61P5mZSHEUuuOitTAVuwosta37IRNtgfOqDSl0Fu/yN
nkK1mmuOec6ASwkuRN1kw9M3m4CUIXBB60uWmiXP3kWqC+gixg8wcBv7Hi7Tq55UCz/Cw6UWuny2
cc6YKme6g9U0iY5jpbO+BSjKtZEt4J0uvpiwd4OAaWdQKmjcatd6qwtLYZjflACvn+7RoZ6TKTGJ
yobl9nBUawokYS+D4Je4uYAbb0iWAGiTqPSNXktrT8Oh3WoAxSnJcNPX42GUbhgPCz84W1HhYfej
YF1Po7NjLeikVe3w2Ju6pbVC5RBNYyQg75siKGCQ3Q57V76ZT/Bo/JJlfCrqnKxf7gr1X6BVY6aB
Y8I4B/HJJEjVBuOZRzd3qg4X/xT0hO8dmFo2zFCMfXxj84CcU30RPAbM35gl0SBXSEp6LI47kw0K
6faiHYokuERzGovyk3wji+6dt1KyIHt12cIDlIOMHqYehKEIeRO9nAyQrWp/rm/9jGsTVxIhYrfl
izNWmqYqJX0+4U4iHmwyPYBvp2EUgyRUeA596QQj2H9ZUlfxfap0Kk/rg6DYzti9hyRMNU5CRUD/
DD/B2a5Pf/ZH3tilu1dPGGhRVky+4Ty8ZsV3BSIZGfRfdg1uE4jInHstmfsrcVuDMqGJ1d0PYdZs
GwdcA3DCi3NtA48hzsfwY5dmKyQzl9r/NXvcFkkt3lHEnp9PejOkLUaE0fx7wCxPQrMugVrvLpVP
JesGhOt5S3e5COZchxSVT8BXNOFEFEay+jHq6RPPCgzAjpTRfHIiEpAg56KwhswRxm46p/tY/ao2
DcgaRaaOpilcxG+SKDeMwJRSa1CB4ROtsqr5G6jkMbeDBZf8ERmgen806MulcPBPO9E8lJa4OUxG
4UVKfMrTVGxrK2JOzrIbajlaFEhYyD0Cp6UunAkm5Yjtou769RXKvM+0EDotncidP+J/AdV+siRE
+iVPOza35KivVEmI7kZWAvvGT8BOHqbjBRRQtTTWOy6jpryD686DTAKNN7Qy0jL6CcqCwyxEMncF
vjPUj7UsyOdygFuu3CpYIzrT8QEplO9gYlYBaEvW5V5JhEbxYUW7gTwRjDs4jKNMHgfVdGkshat2
R+dWAgTQdf7ychW/XfwkSFGLTlx73GKTdcUsPaRpIFx5wCCSY7jU8rbeTRoO6N0Yv5rKFJHvekw0
EG0l2vbJ9D/cxiLmjVpZFvfIeTGbPoLFMeubGsPbn7k4Vj1L8QdX58tBje7SH89KR47T/OCkvb44
zuWsfIQclCLYGR8BuAe3EPHbMeGzwe8Nm66uDTb9DmA49+QmXOfvNXU2IHETAv048KYBTD/5oH7U
Zug0Zn+N9A/pdlbKkNPrWsWs3/tJCsbE4OPSM8qkZ3Jdh7TKZW6era9KyEqSJwOYcCc8snj0bN/L
nh7My0/1TduM8LN7LwP6/GRNLNjVTawnJ34HapIAk7geE2WwSnGXIkSXQgaB9WFpVhA64WPbJGur
YknA9xw/WUARTNOE7GKOReA70A3rOAeiOrr3Z02c9K4Gc1mVodETViF2EQK6/uOHvlWQ3vUvhR6Y
iv2MSvdYlDKhnB6bewXvZp2w5uzE7pAaPt0VOLHWHeyNKBo0qCgzYpMKpg+RyVyWbGGWdBLv8rT4
4EzeiUQ1pKZduVxut5QZb1jbGqgc4IPm9A5Y4T0eoknemZ5ZPwRXbi5wYduD7hdu8IuLZEEvzxLb
sIX8VmUJgot8fa5dkTPWuM38isQ03r5qxaseEk1jxWjGu9GsjFQ62fpn08t/UO0KwdCls/Mbkqj+
yrfJTk/1HDz6TVS06kJ2eTQFC7rmDyH6jmjHAzFGC4nfXKKjUC+57EBebgdw02ol+FzgB+Hsr/zY
E9NV12vDD6e7kMpeWIBk/7U6YtUssy1nztenQnkoEo2LOTeV178I6NS+BW1vItnFHEH8c5JyeejR
C9BNxv9rldM3LAaBJEnZSzbymqyebR6y3lHGQVzNbw48ztfzzseZ5C3pwvzFk81OeGrQYp3gA/D1
jcAxFe8b3VKLxi8il506loVV3Zi4TiLG+g6jTEoSf8BJQASA8JjXuglDMjtU7SvPOZ6ygJSbEXrs
lDi0ZlfoIATACuEDXAIPaBzmMLS6lkrJCSJvlywputVqpTAnfUYSCpYf9XmGnOLcC2QomXVOuXxF
iyl610DcBIvIUBQr7cv5zGKbWzsu0nxX3qFBybL3YNid3RvJNpHdCTgBFIwhrUPo/iRzH9ehwKdb
q+HbpZZC3EBeVQmyZYfalWu+qZ4zPb+17/kDgaMi3P5sXTlzvIsuQIMxKz+rgj2E2xkq30l3EJOz
t5jFg8BxRMs5KeilF+3VKL8jp9IRCVSiRy+PDRI6bsrRR5bjd3HrdFpiPFLXo+PmE74n5bkndjLx
+iy6AhUrHlSRFLQPKDZRLpfoNE1ApWVE7gsYd8B+LGwsjDAvBkbybBvPNqFLuSytyRD7TFl9vXHW
CZx14H9lPP0bJRf+m+KIA2Fzkc4ufRtbpoVB2p+xVKpDW+lX8J0pMOpDz38s9FtzNlZP9VsrlzcQ
+DcFj3BH9pucRiRKK73iIufBkmTWL59O3GfwkTcwq/Wqa5yo/oA0VfAIZolDBZHDqaJcrGM3V4id
j12RBwZEix6xVPYsUkZzBeP8FLgtnNxfxHIWTcWh6CfxQPsPFqEOUZVwgz2bb8OnVktAHq+JI9vF
yRFZhfqOsUCXMOsh6KaGiq+YW8r3VemNtMc3Iver+/oP1wo+jU9udrYC0Ot/+xBNHROrPm9cMvnN
jD2ZAL3umdbgbzTMBnBXxurMWKkDoHlGT8iVIicY7yWVsQIfbQQ9msUQrh/WMQ/WvKwHDocE8CQf
AxDXVYH4TNgfMZsfswDGrIPGv59T2gMlrTzZaLIgABSdN/+/L7qPHNtWoy8K7dMffE9ELhNXIcYz
utP19SE6LM6VwCyCqTBTjEAOsl3Nmu2AEiZyDWsn13GfBbEqn+pjuefEXqUNe1jhJXnPBMbSmf8w
bdIXuzwJVcs4o4AQ5gbMmRW97PrXeO5u7hpMXbiBAbwWefBWq0Hs3ZFYihACijPTWwPbcyua4eIt
Q9UlGhHsICwgMfL6TooQRbCv+PotTqW3PSjjnuNxR3TyXWRKt2f4ABN28PrJBtjB0dsiD4Gma/m5
UhpgO6kfN8M/kxgu5PoBWtaRdCk1DKHDc3biuCRIRrALh17g606r2txt8oXd1HyxWI0KY9LmeMo4
V5Tss5U75/wO0pych4XopdBjBIAD1axRIOZCrxuOqW47rS4+fc5tIwm7EC1dppUIC0zmAW5TduHL
6POAf7RwAEpctbRdOlrn08S27OpzmkxJvA7q/vSwdnJKph9rnG4PTs+ZXgzIlHQAox7oC4OVtido
JTLkqqvqjIC6/b5/W9avS3NfHs+MmXUOb+O4pojoCdiFIX1YkUlcCN0m+Q/LQIboqDYAZkidGepY
3ehBeMs3lyfcieMJ9I/FrtT/KUxAssj1KoDLj3HBAvYwViODHuUa7Pf0sC/7IyJITWQ2f4vit1r6
j/LjPDQ+BQ7xcGZJwisJ6E5FuNDhrgszQB96DMn6wNRCNl5SPO6yLaTZF3/jyxEDmtXAPUikmF/C
MsqO/46kJSLfIfWXMVhJ+A0XamNmCP6cdPYSRNBqrZbEhJCgpF/9t3XmiDsEiBPE6kIniJo9sV7R
uXpSlJUNaiXMP/QV9rIf68sh6QosBpdRJ4lN2wO0UuKv2QCw7vf0RCdNdfy7TLsxv2W4uYZx6ZCa
nsqo324aYd0YW/fPHS6B4cnm9Jb5vfVXY39hdUS9JORY8goh7CABHP8N3Wwb2BwDBnfQFd7aQzQb
T3XOrBGXhjyeaWtTs7kjMSPjMV9eQ7VVi7R0A9bptT/2VNO/qhFPteGasdOQwpofm4Yzh5QkktpE
m06X5fjQ24RSjCWdkMHcOOpEazDafsluh9HzGuDyoCgSbQsrlKe1Pl2R8TcJS0fwwlJvlldZazzd
OM6ZQJrPcxG9ODwTTxbtP3iiAbQy99SGZ6w+kjM0u0InOoFzf/q7Fut3RczQxgpZHTxnVLWHP31N
+isxOEtmcJiXGDs3LAd1fGqvvX78MP5LTUHuL+xaqR9VNUWaZOqC0pUHDlfcpHtY7fnxYOdKfpgn
YnadzWwtC5K97RhdnS3C8ABoaoIQ0l0VwhYi1teXl9AHaGBuADHfdkclR7/croxAF9u9AQuHI6xA
cVCdkbCKH6tqzdfEIiQnOoljg95p2wZB1ySCz2RYPL1NWTRPilw9aZMAr+gbpamO4Q2S/22JKUmh
iO8FgPC4hvw1RH59q7qTTJyaydTtqF6i4O0rZgkM3Hx0A6qSHfcfwYdkkGw0okA3qROAreD2K4VA
c0tjDsDwLhRboghqV4EjaM9PwL6+FRKm4K6IBl/XyUkK33v7o6/UEDlQypX378ig7sPUVF0paFab
sn1cXfU0RS8c8BxS1d7LWiS37lfqZQsNWCT1UEB9hF9jnN6i5OCJv5EiLZq6krHFZ273CUEGvL7q
1UZCRoVuBWN3q6yS/o38zPvbxDUyCrNwNVwRJ9xa4wHE0SaNQrcM0ToO3qLVAiqH4Wt7xJ0VtZ2m
EpZ0F2U7CUQ1X9/GwVhhATpF1prdtW1gBMslveRcohv6Fg1T1h75C2iKyQMTTaCnhgtJk6d95JB5
MQIewy/6Lp4lRoKHTwhvZq60qOlw3ZrexjxnENctnxI6YGVqGoqkcuIKVTJHFORUpGoJkr6hlWhs
IubmNjoLzGOLN+9QwRkqnHV2sjQRp6lQz52dxc7ml8TuyZo0DVSzqNCVH8q3jEfosbNljo9hY6A4
XfVnt2xrfjjR3CSHpQtVenxfqPIBViNME6D5VhRAKYdqMva7i3Th2CqCYqOPBeD3Bz+/jErP7YeN
8EpoWDPoZHlhA3Vmk/mexRPlatjMXUpEt8gjxTuNRa1L++ZZO6pytVbJXvTdN0ASlabSyjwGeLJA
pIJFLCweDj3EnOSUw/IF3y9aqLx9MckwYiVO3kbBW4KrFWL7tKu02u8TprTQD9x5wl3CAxmgR1rB
O3JfeQ2jWJ5OI9nfeKkPicvTrYnraBZTsbtu+a5HkEzdN66QcRUCBz+GUyr5VRZj0L78j+8dHAiF
fsuoaBOEPbkuMew8++0Vj5RdcGsuViQIDUfnVbwZ1t48hWIAIAdlkG3AGZm6fUOj49gpnN6k6VGR
Nd9Jo1gym4EqAjRULKfkSLfs+IVDNVfmK+jIOHNNvqwPNJFDG8batBE1AApJzZh0pl4mqB4YI3hE
z+7wffuu6MXxLmcyd6cdOYpVpdwjRp66TXr04TGpTuZ+b9K+TXykMHSN4KhXvbGGuDa795zEoH0b
UIGGMEkYVl9zKOv64VanD7H8oIJQO4cTsuiT4B0TNnv5T3y7nwzzj9HToUjnFWzCg5qU4y7RCtbv
fMmRxBXzGdyS15oUWpNk0YNlOK6D2pi4xoCRAwSO/P/F/LYyGH0SZiBpy2/7p7MPmdTBDUMuRkWA
rlI6La/fY5Xs9Wp1Q7xwZPVpq/xyBa8Hu56FdcDp4I7x8jgnC2b4dhTnDXE7kR5nfsvHnlno2QYI
VQsL481Qqo0DnUua8P2AvEjIHgsc0asZcCdiRgI1HHgRWV2JE6AosFYT8LCZaGAfojjRemg7KpYn
fnRkyYTt4ltt/Ym5+a40zgdbKqtdOwjFuOm0F7LY7Nhd5HW0uN9s78ad2qZBPtQJMg10yDbUxi3Z
5Kv9+j2L6/4U+f9Y7L+dEdPtAVVz6ue1c6IxZV19N1+L5uhDwk/ZhWqQ1Y0ZfQ6AmZUn7/Pofh4g
/ZK6ROk73jxh8dm0eXaUIDuIp6hoe3XfdEud/31S3Jsr9SZfw8/NhPhCETrPpvkAOw1w1AafS408
pX3s0EYFrQO/hAi4nwcCnR2K6qY+7NkzGy9f6oBalz8/6LaLLRjBQRnZu4NpOEtNb2rAuTc4GMxG
TiAZ/G7Unm1EtjNlVl73QbiYVKuNqZdklrW4wZLQmYRLqe61gjJEuHWKG5uqvaHo8x04QbPUVekr
XTsaqQaqapfNxMysuc8moHfi+mlOCLTZgNHCi75U8Ke1+MXNsictCUF+zk+ucA5EGVx7jDz4++Qh
Oor/69dTVIvfoY8hAYY+gXYdHk6XQvdBRl6pwgokb7KwAC/8X6M3yErqI/nSeK68VCfhiOyiF5SR
Lwy1WlL6h+FWP1gqmYpgoqo8dFHbyIPRRRU/lOD2jSar+U829G6H/6kpZQb/i37uomDyyy5d72mK
WyXT+9sDfDO8bMLs2IIx5rxPyndYnEjc+wO3KuwQSvZXH+zIB77Se2yExjN6KccnzRz/k6qryuWd
3lCpetFumHv6VqJZxuw0d3+c4o5OWjobj7I4VJzD5r23yuA3W0bmtUJmYvgGveEq1seo5FQsMC4u
yo3BExAQQRxADyjj/wnpL3L019WYtKHeYTxUtSTKq0e/gYWAGsaRhsSJsJL74yttMlD25yVCNB/C
JVa5pWkYzU4CBB5hsnre8m5Wv/ZAzpiF3+euR/yYojn5PGZqrIYUz3CMJ1JOMFKSO9Yk0zk8eAgc
XPZdzjU3NTrktuK1Qn4FZemePRX6B2ss8HKRE2GTj5IFum/9M7YB57qdtvDFRCSVW6GrU7y6kroT
lP34uQM50hpR4CG5t1QA/aDHEmJ8Dpc0ffB0Ht4SkBGJAHmetS2uwOhd1+qKgRegVGopctJnYaiE
I2jz4KB8Cb0SrCepKpTXtW06oReAe3dMBRX9snMKcXb/3h4kdswfi9ssuOCTY0xXLZwfUtoPxMBX
TIDZ7wyxKkmGk1ZWqToYUwygM8VF96O7Ncld+A3RdoSZ0shXLVj4LlnuJJOstm8y4eYkNxvRY0SW
x3TfAIJ5WksBW8P8AmLYBSHXK43ndPQW/d5azUzVTAqkRJMwMY88w2G/oD3mr99/BdbMKIIJPwDY
8cx/zldkVT1tWILKSO7mPw7CU2TxGx6FMiAj2qjFuZvNkO3NWaVRnT4ebZkX5V7GOva1xEjH3buH
eA4Q3v6NyBN2OdWgDLvKbLoCXM1UenSCahJlqNTTyhZgeUmyTfpu+wvO2vzyLsYfn0fJVO4LZzx1
jD7TuxAJI+5mj2d5+jyAPd/Vp5lBgMAvDXkUHPigkan4GPde3jpDek4wbT/oibTpbJczbPnUOlB/
CkiL8rGRDpo4ElWoEhNSYNr6HhA2ek3vxp7+6UqVOzhXuueTA2qJX9y1iqsvndJDBb9G4mwnzXJu
piYL31HxvdoET94kGrDKnQnW4hJwUAl78qX3txzfxq81IbMMBh8sJNYXEh+C8w8hhN24ujBI/lP6
vrKZ6BCO77s+He/CJ6sjDjyvia19D3wwf1AgsORxTPWG/3UYCXnqYUY8WK6JpVgo/RRzSfqkhCk6
zOQizaYWnwoQ2inWANNs8OB4xWt1zWsCLx5XLX788yN8L32CrxurKQuCFg6plDCs0V7GqCTLSxmC
YEsmHDC7eSK4PmndbH5+x07iBbhCPcQu9xY2gHoHx5kCdAbJEuY2Ha5aXFva05nnTXkwdaZ8HbaB
CAV0SBh1dqnnSvkF2YLAF5wzlG85GfhlWdIOyIXSmsqp6tWGfv7Ulnf022Bu1K6rsc+hzi/KcFOy
BC4QuNhG6Nl2hjpDT0mZjvle4agOPnIfRC1EibRcMw0qJ6PmSaNeVfvIuGE+q3YaagfvpFjtWXPg
zCuLPEk6ZrRuAdg/vYWIY1DdRpnHw8YEqcxT3yTeUEq/h2le06AXJ43zCTMw0VMRgsFN/+zzBLyb
MjdHcoAZozDu7KroyMp4Fhm97LEMUxSUHxryzb0N5OePgeP7Np7qm7fm201ce1jpUmluLm5K1yc+
WStcmy9G4M3oxyunjh2//Lv23PWTfY1dQM9XcPT87cYmnto3dRPJF1oJfLGSsiYTbrDInrZkxvOP
CA5GkxJj0m3bvhjJ46EaAVd/AS9RrvNVXaCYtuuEfWc4ZpoTfDdkIhp647JcXQDq
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
