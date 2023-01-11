// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan 10 21:23:25 2023
// Host        : DESKTOP-LOLTF0F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top sinusLUT -prefix
//               sinusLUT_ sinusLUT_sim_netlist.v
// Design      : sinusLUT
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sinusLUT,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module sinusLUT
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "sinusLUT.mem" *) 
  (* C_INIT_FILE_NAME = "sinusLUT.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  sinusLUT_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
F1jmcyXHOVmQqkawsF+I+pAFsdbJXgLz7VmR1NZpTEO9iSMNcF8z6epurNSSFBW9h1Prl6Bk37oC
MUw73g2gxg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
EUCaZuok5Ume+izaSgILvgq6iWgbYeLOGqGHG8WeT89snCorgif1HyHY6tuW/ahjvjKnwSgNLHuz
gM+KAtRm0ziOkbvP7WZdPNfj9cvBhiFG1N4g5HcJsQ7rBuBdW3z3azCmjwc/LsE8qPu1hFeXhGTB
xBaUvO92cgkK0jdomok=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
p4FO9nSo/Ht78CQxTq0ucUvihleUxVl0GK6xTdz9gCCFqg+xARLgTupxYcwiQbMNM1Q4jiVojHev
qffTNVFkhwyXeDQk1M8po7y6+YZrQ3MPXZ6cxTPrkAqnZMsIuX6/3g7UVUyLcv/eJFBKEl6Ncflt
rPpt8jDd/Tv2SNliLs/oBq5XcXSusQ56ETR43QAgiigVE9oyTkGnMZmAq2WoZdoAZwaN6Elmnu+Q
Ec6mpxnDHxcxs4engS0fYs44OsSPdTFgmeOC8npLH4tk4s7cOsvPI8Y4BlaNhmvYphXuqZsueR7V
zVsUwSF7KNRPQngVkXN8QSMrsnwDcL8sUPzLrQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l33/2RzEkrUMuMFfhHrVh+OBHLeTRD1prCChDhHCDPAZIeWY8OeRX1+GlhVkLNu1aC6cTy7SFCq8
XmlSeULb7cDc1anK79TvFt9nvraQPu69/gZ24DbXa9xdbCq/rejAfRnElE55BJ/xt33gz7hoVIJp
gV6wT3yNgkJQgmoFDPWyyt3/tAxM6TZs+Z/fr9RqZVGCyqRU3hv9rk3ckkXE7BPHO9LKGgZv+1+Y
MTXQs1eTaGHCyK611f/+H/K6VrOQcCs4nkma0uKL0CX/EJ3ZQjJbBv1fNLydspWNxVR5viopRKSa
LMtEUayt6rQB8D+QqvAaamoRATdtYllkjTk83Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
CeHgXxdQhXLDpZ3540tRiJbvll+A3PuCoMV//deWU7xyES+16FTkQE0g7A5luzPergOFBehUJAoi
SzkgNojiQQz8X5OUiBMFnsqfJI8NRrgdbfvMlINZi8pi2g0KmA4JvM1RSDAXMqlV8v4LAE06xen3
aDaWLCY5vovLtFnY3eE=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FvaAtiyPIB498MSR5e1PZ6It7gzjG32l2rI4IKBNgYQvBliqzOPHDbj32VlRUKd3F49vPw8Ymx2I
V+JM4JjFwv1d4GBEzX97gdj1eu8MwCLOSo2i2z0/aK1DUSy6lPOmqv3M7oCm4ZZCl7DqOqJG9u6X
dtPVOzPoNZFgN/fsnVukGAT+JnuN3kVuWHR20WUhkwOG0mvxXa/hlqe6W/diu/taWopQ+YVgoCv/
1hhl6CaRLXLXpUbdvnjD7PNqtKC7WMZu+mf0zMQbZTYnxddMsyIzJYyIgT4H15Fge1q9lFz6S3+K
mrgcadIRlywufZmpjPTRkyQtar0ftOazQGAr7w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+zLhFMzsz/OBpumFkNXAKE8cUhDqalr+SmMahqod6aenVSOjLZjhCpsNeix79/48o+Q6eSfZDf+
wTPcYmF7O6lmryH6f8755yJuGDpkl3HSYZtqp912ahpY7eSobj2rCjej5ACgonhe854lXnUZ7bJh
O01Mg2HPT0bVAGr3lRf1p+Kj0daht0nOI44uEJraLeeJFnnZ71YVyQxxqFFhSFLTxDtYUaA3omLX
OWMHxB3Kto1Ltk0Tsdo9LCeoPnnRWHoXvk8Fn7oegGu3LkDVUt0/nEkGYXyViGlInahhSw+ivzf+
DE+ze+EoAgQtRUfpOC7asqShHq0MCRdvy8jEmA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SpfnFclHOEK8OZXtpfvDFc6gTZiDRkAnRyMWpZ8l7XBmzIeS3943PIlWoQUJC3obOED6FYVxxq5B
fZ/r0kHia17zebzXkZtLVG9KuRZre1vxnp3O6H+on5O2eRWJxVQKFi6JPx5l/8IdE9S7tvK7i8UQ
Wkd/v5X0WT2emHZ71GpI5H7BDb2OW4viVAda/YF6H0fD54zqCt8YaOw4bILBIjn3aC3pe4yl0mBh
EG6SwVvTQK8ND6JKbW1brAuZ9cecFauTVl7f8zpP/TJZy7e8ZumszseSxugEpAyN7lXKcm4RMQjZ
eRARhL23gVVRyqx/dmPaQ5Fm7cP7pRM2icyfBw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ZWCq0ry04RR+cczb5V4E2qCDPf9zLo03Yj1iXgVE6RSz6qfrTVY7RWKRm/PyQZVLCLOK/5reuJxl
DtlDXhQzuBx0DZ0CTK6vt7LHDRSt0HqKPLJi0OCC/REuRuYOL+mZ/M6qSbB/IdHMnbxxR1jXAK0d
HD/IxUWc7gmuQAN6Y+x8qO4sMee+15VXWeCgGWP0To+LMOgFJpE+NgJZJzEWfa/QryzDzKMMSGw7
vvcUME8RzekVxQYvoF5ZbOv05SfYSI4iHBnTrxez2fypB0VlxvIOLbTc5AjTLqYzU0kV4g1vg7K+
jUNGh7tp4zpN9+epl0HSoQbs/oOX/Z4+oKGvug==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25184)
`pragma protect data_block
bvOokSEeG+lD41xmmm/kmxSGLl979XhaZ8ocYcQz6EQgP8wr+Ndi/bWiQEh3NRE0m/A84dHgyaez
YxClxafxfF1j9mon49VUpDRrC5B7LUMusovzT5NBpKJr3e6r1zRRHr8Lgy4yUW+FFwzE0VKHQ+HT
1A8a7jdInil+c5DQg59/lKQT5EI2HHZmvxrQvKlNTRm/Dxpub/hFX7wxxfylsTnmZwjsiXt61ox/
P2Oe6t9A8mW/1Z9jTjfewsO+FQV6b2T/DBv7U2Ir90bKPAHLI1H7Y6qz/ueCVc9GecvcMuavVVUc
dLGiuz9Omxr8Tf1k1+3sEu78rEan2HBtLyBshS4/MkpSrCy0AYWtfUaH3+JzyhzLgWsnZLPH0fzb
QMVrs+Uz8GewkW85rXPDLYCiuqeV67PRz44WJLO1SvuTA6CZNwDob2UqlQVGm1JRU6//usc/yX4V
b58bMy26F9LcVpVr0f50ZxqTmPWJYdMMIGjnZy1w8eVjHQ4h0A5oT85GYCTR3wh9vIh1uew8p30e
TiH/seV4O5PgnnCQSDwrgcnLigBuSOAtBhRVqf3Lwa307b5mQRWywDLIJO0fgMEkCWXj+p74yqeR
bLUsqiK2ez/0FjPPIzwxX4C/+51K5GUUYQEc/fjjxHJX8JTFY+1XDFRS7YRXDNCnIb1+H1C0Giii
mP8F6/uKe+Xe1UPVVfF1J86EnTr5E2siynAkYavUKPSa7/6id+McmXaiGKEpnrdY1MssVtQ7cvQi
Yj/WSgN/ZlVDxJBtCDeaFs6vii9zqNmYowg+XzreSPUyW4Yuoe8OFtYKU2R3tfDjZJNXQJ6YCr5H
1o39jRUm05rfc78XmTHwjuy9THj1M13S0CNcQMWhme+VUwm7gZxaJH5lTGgNEZcxSxFc8c6I0PL2
i4M9w3U8j/+R3ukqVxsWZqzOBinqRUk5UIx0Zox7nduXtuqyknoD2b7ETVTbGk1bCXO0p0KgEs65
HT+Lhgk32xe4DB9c2ovelVb6KtnKS/Tfp92kZnYJIb+iKEPuReghpA4IoX0XW8rlbJnh5mWX6ClQ
LP3AdbOx/LjyTMUgpllxZOFUOl1TgxzBm3w/hrD9kJ8PPN34bV3gHUqnikSrufpH3kg4WDJhfdHz
PWh/2sy2fMnrjT1pozYgIyPWGT8MXSFa9Bs1wT2qTypM7qFa+jLaoR/sJHKdGm1CtgVcAsmbh/S5
CnVobDCPy4E6XIYxhUniOOEeespZGkTkI/n3IBvzTkvmTesKvyAS9RXUlIK6F1Jq3O092UrNU1vB
CuVt2k7HBbSUAvHZuFgoo9pELzYXSO+eexYlCo9cyv/ktMc2DJZqtOmNj1i5oghYfzNUPWJWMUAb
8EcwmFnNboI0UOQBXc/4UzIDSEj+XZZtPAPBUoy6LLRyLzFvCCYTO1tIXFGzn7kllTySm0ucPybU
T/dwk/xbrYd9fOUaL7KjsI0Kqmf04ba4wkVSTguEbgFB0vaGif0fPNnptY2yRWb0lyDFA1v1FR8d
p3G8ldUcqIic+7VTZOJsapT9Z0It1KflapAFM57gBS19Ao2Xw0huFOjULr7Og0iVjhto6ixBLSyV
7LBpWFMn5X46mGy8jFdivbZetKi7P+dKxYCKXtWYKXZT4YvkXHKhBoifjFZbLax/ouMX9FSJas2W
XiUjmUewdmScqE2+h7f+DQoE+99RUsE1BzYIHN397SPWiO6WWiyDJ9qjy5VwS+7enE21h2FcwT5o
t/Nlmmujfu7v/jo21v+zjpRsQ8AWzRCJ0R23+tyjTk+ZrlbDH5AV97dsJxjRH5E2WByXKjUG6fgo
cRz7Is4POkxOy78Fq29UzvC6WdK3eBmaovzGbe5Zb2BxpSXvfleuYggYW25Ys/d3+3GCm10sFyGN
nkSdynH0MbqygynWf4c7F8u5LfWP63aUq7dXjh7Xy/qBxcO8cfVSGNn+TzvcwyLtRl78GqytS/4e
il7PzTTNALxiK+JYpiKgYG1/DozlmS11xl4xD0u5gMJkuFZlQBhOM6t1tTJa5V7XRQW98s8z/Pec
5YJR7V2gadfOUtb2TMxG6oVIJFBDMkjxu4G6yrg2jSVj/pk8SPLyT0w2tDwRe0HnFwGtTt2YLoDl
NCXrZuj+bfPaeNmIzj7SM1x+0mW61LEYUL5O5XHceHBV8NdqMSvaTrlSnPnMknjg9xfU/KAJ5TXV
y8A2A6G9XcmQmyNqzZOYMLntt9fEEu6+9/b3sDpegzEaKvUgLzxJTQxYFHTfVHWKLq+3jOx87SzU
jNRTHGC2oOqfLg3UNWMTKuZrzLplIk0DlS/ls2sgpZR7FefO2c5V031BnuUhjPyeTqOGtIAI5W81
H6dzSPCLJzGRGh5vpiH8wjB4PYNeJzIiBV4rFq2iXiwwR+iDSxJ+qACNaLy5pCwrF8++isMkL60I
51JTqwGG2y5BqV/qZDp/OLjGCtQIQyLyj0fXL509iXMLSJ+33UnKxm92mwGXG0/GBxNTw8DPoDPx
tqnQT/RCBIi8DtlJqlKq7wtVdHT0F0Ucf805Z7nop6aAH5+8EQYMRmewL+NALW/anGQQF5rPcQaq
kiNTSc+zQZZOlzhOAe0ZDfIFT5Q3RL5JsDVZzmqC3B5Z9ZHfS5OwZILF4oTojOb4DZ+8EAtpEpug
/N5IFsy02OMfTp4jFZA7UQSNbvH82KDRM5CmQB+j3jbgyJ3FQw3YunYxr9WlCIFUjAhJbfMz0CMv
76Y8keYRiWFqGa31oACVBDzwbC3ud2ydVzUEkmx+n/E55Zb9zVXDusxragcSr6+EnwgRUcCgGVP4
pguZiESUZASIfB9msNGUkzgt2/mySq3nkPA1bB98bDeDvjtsu5QUaoKsP9MoQsuduyuxsUvhkNZI
Olc+G/HZVuCLwaaARPpnK8KencHZSpgMr35H9bXH/iNT4/xQO87KAyI/0sANAVgtiGEaDTsze+B/
vbcMZL9QhVnfhxmDGeTpresIJh2aIiMGpH/HGD+It5sELBFq18VHvKU095VV2/acS4iZqh0hngqt
NaxOB1FX35I2TqBV1XDuvlozRJ5uIu+R+H24tJ07cKgZy7HUEQwVjXkpvOBI0whgwKvQsbgcl5PT
74pSjQavzIqOqQ67M201DGEX76a+g2HUUpJ/TC6UYpJUBb5H5DMrNJsPvFiPbIPlP53rwpnGcJ+g
rEOyhLZ/YZFoCdIsDxZPgBd0+gvbcLNzm/CqVdWRCiA2rFDHf94bXuL4xfBDT/v3FGLAA8aESHFN
wiCPSEhVbgDt3iUiTFE9lKBUzLT7WFapDGy11kCS6fzP3W/SaAFP2wFrVLC50gb2kKqBbjNZplbO
0baKEVgLikIF86BzrtEORDuFmnVSKcCHqsC3/gctpwUTUS2jEmN24ADZs1KHYCbpMZc3tpDHzHxO
J2bWXuTNNwMCU3ln6D5iAEnaVpdmuBj7QiqL0xPbg9ECI2Iqvgel6+7iouERd0pLBtpsCXMqqVKd
kwEhziQRbjRVSWlK+X8MXm8YovpKGc/7h3r4lqAuAzsg2+rm3Y3OIjRRM7IhGum3v+IHjvVAVyjy
EIJ2Uo67qGJUuVdTps65FOhKIK0ixLcfdWTCWzz7SF/uIDD7X/omIW0OXKLD1FJIxGh+db46EBoo
xvvo+L274j+je770QZ5IMIUcsjTcGNcNMp7ZrLJASBLaWpUzPrYO8D34UrKtAWuT0Kz1TYGVQ9EU
vQ0+8CA9CiQ06Rnou38K7vOxwV7dnpMIPuzuOdrOq3QwnV2kWcvpnqlxMjYLIgdujpBBMIXdx44z
QPl0xfQ1CC2v7Dz96/gaBDnwLnynDucWvVyU9YIRc0/9WvFhrzK4i0VwVYNjhQaZ9ffaOaXj9M5Q
gaKbu/y8PNHZXyZhU7SbaKzbgM1+w8VL/DqvkZheHg/cUbgE3dkaQlsaLXq8guqUgeNJNFdFSvGu
VlxcZ3aue0F/1xsDNSPpHASgQSk63ST+YG6Yj8oKHTyt2/BJ4edD1+l/4ipsSgWT8pPc14IbYQK3
PbYqmdhVR0AZOFiIzv5CGGL9RdJ2wtm/JR5OBhzq2jw1j95RDbtXb09grcp2kQyTllLsjGuWo72i
1O2bw+5ItxEiIdBEsV8AUIoK4eYFivta0FDxalnfJF4xljLVFBJag28DYJdCgtxTBtNo1j7t/wSz
/Ejrx8sk12scf/R9zd3yx/JIvPp01gymitXID3dCeFGzjCqN3N4B98p6YLfOsbw+5z61byQ1M+1z
qSYMGuOOPJrtTmiHGYDwRM0n/KdwQATuxYJ8PurePe7J5HfEwefGyOAM+asba3fu7ocvt4+B+dMR
jDh//7XO481qCD/2UJ1z9+0mF/L13ckv+WFR5V9r6wLAD9322de+po2Z3AjUeoLWygE0QhO9z0sm
hgPonevMfjlQw/nmfI+C/mJHi5Xk65YQ57R5xjwGnIcUiP1YYis2wQQEKjzMpU+ETZ0UJA7krROq
TIOOcMIUj7ecqASgku7b8anM1k9AxXxq8ryk8VyJarve7qPWsVaQfa3O+MoLkqHJXVrknIAgdOKs
mPuuNNx20QP0Kb3CFZRToImye1jxgp9I0H1HOPtxRdGkaWUPHnuECT4cAM2YDUcfEOnO7B9NwV1s
BbYTw7j8TmAKYdyajzJS3UrBZeMzqaqueiZRT1cpssFznZtvACCYvDJycVWLAJ6Kpamcbg4s2sip
n+++dLHYd9XqVoZUdLuPbo4rmurfbTv2TrVYuQkZoJ12lk5Mqjhs9DQKNh/qfvOrFZYcCy5ni2yM
MBa4y23gmJbY7uiGHUWjvuWxgRTXGotchNeQkOsB5jYvoiRA5zMhANpXbH9mOAqe7ArEtC5hwO4J
4nXvy8x19zNB/p+qt/S2IjWdWt745VKPh5DHAZwUWiBIBzHcmoe0290YOX60EYalUcTEwYTdw6JB
BgkkuRcK9Mc9I+gau16N+Ohuq6LGW3zeHpXh8vuaf+092+s5XVpcbSpNpLl+cIhuxXpnZ6ZNOHAn
RakrUjLdzYgZS4wKklEF9GxxcUZo8xgqsa0N7K/9UVnxsXYMYKtgL/Juzr5dIs3JXyT1/Lor3KK+
bNKfRZ3g5bieBhRZ/qBdjnsL5LPHJy7fXbbju0YV3mw145M/q66tvH1nTAWxaNY486ns1HMPVK/7
QH272R3rorL9AmqOP5bxTPdDySlOmeeu3eVrlF8kQT3wEVflbHttTujZPHqm3pWkVh3DESVoYRrL
PyaMzctyixEjb+xkkmP67K4b7e01/KO4JU6GWH4gupvsjB7moBNGg3dOBamcie7nWPfjf/i+e9ce
ApkUUIs0QFSGNKw179hes2xyD7/K9VKkzpDIXIx2CxkEaNje/EgRgSKvNv3hpWMot5CNkt+1kVou
zQXejqMnIhXFsHzDR3StiwwMnNMmZjD+r47Xy62ur3ps7fTukUZ+h8VARZif6N+9Zm6BRi7inCgB
kS8LKVSszBziNFWL3N5yPtwPg3QVFGsgKBNkTNr7VDBbElVgjb/0lfqXanApma9D7zwyiCPiMJE6
7IwETyRpTp6QStnXsd9aIGHEX56pv7p0qk26ZN6zbU0hZkj4caqx89SSMRZYaO5Fd6VofvIWQpUn
TFY2YNkTsmxGdJiiTQb7HCbUswHtc0NOnyep1ZuZyASJ8ZhpXTR4t734zawycMvV/Bo2fjuchh4b
hLGeR7AyqvocePqoRRKT9EVHYQllYfHtg8WM+FDz63lhMal+YIWu0/CH8QDi4tKBCmWurmUXPsFU
4EtArS1ctpquntBm5fukykkZq2J3eLvtsU7TMhhop+oBgBpBeCBTUKTbqoLRpGuztyBnYFbuOZJn
nPHzbCaqeLtc4O5nEAtK6Du28e5Rm5geJHOCdthiEUuDCnLKCc9ZPrdQR9ZMnB+vcoEWV35wPF+m
eLkxfaf0yhDaaWVx8i1C2Zd3hZ0zmDiraZEOh57smQyg5aLGzowLXr/g1OH9IJ2NpN+uYb7ROGQQ
P0XwHR/bnOMHGhxepZljJueNeUgJJuY2OBw3ucjcv/HpjNc17DGZ2dh+pu6BUzfn4Y9lIcuJ+Ybc
bhSVSXuD7jqCKE+SrumVh5NwuB8+t7rTb1IXRFG+gvWBsKcRW5e8K66eNe8Phzw2EFf1G3sCUVNq
Vich0xrCo4okYFhPuu37LaC+NMx65fl10+eDJMRfiqo602Y/2+IuSiUvDv18gRD/f0Y0ULcWYr/7
1yDhea3VO8TED2YDndOLNe3zq3vSZgKM6beMi6v/n5MXr6DRLp5m0fZ64NEoY/d8/nQXySri4EOU
/HG/4oL1MX8dIkxMK1zy53U8Gu5B+gRr2OltagkOYAqL/v9FephiLDvGl122PWyf+iEh0Ghho6oe
k8yAhUYJ1srlzNlI1IMWRAnbqesA/g2XBU2R3bfyFiqUyLooUwIIo2j3OHMFsqQAfXHPEnZqpeLG
bR5SpSkHu3nhm2ZpemdVYLuUclPiQL9nZPOEtS8xsToyIahgcZYDKEZ2FSA5icJYck83ozaQT/Cd
3kG+Q6blRUyT8NVg+U4ckXFmp14CdoYeLzfpU53vR2YwoTdpNVFcts7FpqK0J1jePeuNGirhfwGG
4FTUy15u/GjjHlsopTNLNF3+VZ0sJq9G1gx1UErfQzT67UZxFFa23Fkt2/eBpOFkIcT3wcMvsR+4
qm+nr+Y3Zo9nGW6ZQM/2DV5ybQ5JVf8VAkJW4I3isR0gLrzvfDTRgXSc8cSCCwtx6R04D6rshQ+4
rQdy/qt24Pjar1woGoh4WnSPaHJxMpsIaFbgM2sBgDvttrc7MNHXin2fFjQ8oJsXVmPnkiwhcloW
L7d/dyHBmIxME6ZHK0Ks9dOpMXVHajjD/XGTlX65Zr+9LFewEKX+M9BW0v5oJ4kgNQS7Rl/oQ5Jg
8vbD2vP3MGjofpv4sNRXq3pIOEcOVllJVtQJ7nk/62esmtQqkr6+o6stblh4KFW5wgEY8FptvAZH
wKLPrHwq1Jx/Ah2x21go7Np6ECnxdoeI+WOqCSR0C/0GYc9EjqP7MnJ/nder2bkFGo5jRPiuIZvl
pv8vzVixAnxftUkIyEplN+VliyzlPWzUFseVkAnf+JLRf7me5xdzYwp3bAYfSpSm9IkYWasTJLCU
ZUHmYoEQgB4ds8XThj1edg7bcLqotNXjXDJPPKwSR6znzWs1ScvCQRg08EJrqh7Zl7yBYfxfteAh
OjNXwUiad8pcbKWj+5yil0eRYZ+ALJWb8VvKC3w1avl7WdTM3I6mB9FHNjBakjgijqcY0tCjzsP7
sKiYUq0UuizRkhcd586SLWSzysGe+nDjxn7PppZbKjYaRdY2tZuXSV++XQl9LmP2QnCVQCXxw47X
b17O7QgyfvcLgizoN2P3tFMOwlk9BqYpRpjWGPb3MLdT7jfW42FrTM3kaztDQPEtvCRGweGGTFT7
tiwPdDKl2G3yeAcOkw7sjeRj9fBIS1fe/3UTyIYT3fklk6hWioxsrC/qWx2V6pq5BZdhelL3Gemr
xlNrPpzhf8wg48VFqwOrB5KmhaNASO+FxdaZ6b06VTka0wUFvZMZm+PFU9SZhwBWQUUbw7JA/9lG
VQC05WdO0jaxePsZWx/WrvQ6VCNFXIORDsFcySgW0o5Tci+m7DMaZlmfGkHTH+6c70YYsDmHMP13
IWH7z1QrHuSdOPgHNrJuPhVfq6aixMBKnyLjxpLdCrAkl3FOn0+7jm/tJV0IKX3kTZx7pvmkoXwA
0WQQKjWYoAo9Lx0CF24I+CoJay+hW6XmvYrwjKTkKv8kVciN7Z0W4M+TIey17YvIy7KVfLg0wmJK
+I5H6qaDnZPDLrOur/a2oTfQoZSQhgaQDa7D6AAPqu7LZ8Pa4xREy0qqHIixqxVR877y/VVJxSww
0w3/C/hU/FH+yzi6ubDFS3trsw48Kdn7XtEcNOpx3vs3/knaiipDMFlfO5bTXSX06LfsA+E73gZS
Rega2VY9N5fT+OymN8k0jqcXcX0dEmPqhQNREEnwHPznuarGFaaTxxZXAF2giVFjEGuLoR3K3XAG
nw7AHRRNs/PA3gFZ0pCHMdZgaZGDRoCCKFhND0kJxVUJBV5I38iSXfVF5SiNEZ+6/37nAViMocAc
uRxjnC0jcMIKQeqSSrWyHbtnQfGQqGjmMZMSrmioZzEk6L1TfkQlvgJXgwjbDw7oikE2T0klJDOf
I1lNTWgMC2NxSvuidNO7eNn4p5Xe+/FVvDkRdsYidughiyHLZR0RZfLj7OyCQhR1JuVecW5uMvVS
o9zSwe8Hl3LnGAoHsbGbtvR8d85++61w1PSdAOxSbIM+h+rC25zRiVbQsjCWUVauzQ1pM61rCxc+
b9L0zS/9KUviGZnJBvMpVGFdktE91yQ6ijCk2B82vOkPCa0MTKX41ObWNZy1Jt++D19t69kys5aj
A9OkmSvXTv+4jbUePW0Qzjbgo/UghgvRrw7L5GW9+5wcYyhwdX6PiNZTWoyqkISuHb+k/Df6kZs6
XlXJrYxuY+3cwZJMVw8lF5seDxl3C+RzOO3MyyPzaWUpNpQvIU7r3t1WVW5PJOPNCgdgbbA0MUz8
UJXzSwN/1bmZrpz51AO24jqGqTc0S1FLRxeZSn3pHJQsI5AxznEFuDNMGlKGfNcLADExWn2ETzaX
WQSXskrIAvJH5TzxfY7rN3y1VoNCYMC2IXKLukQB1z/1goxM2E3U6nTFsPaEliOcRf4fmmef+4pH
hvZn/GQi2p1g03LgYYKg2M4ocqhM2pcUgDgR09RAGAxEG9nrQcHpXvK9d9xoboh1OQ2K3INPaMRN
bODSNwevB+jdDQ09hApKMO1hE8fazSk+UAVpqdVwKZ6j677pyMO9RNb31VPcaoQImXKeeRHx2Et4
qGhm4e9y1qu+RKkr3Lz49WqcaT7iVG9zbs/UlA6HAUXAsNoQXtOKiuv7aEgSEQBMXr3hcDcHBXTx
7ekw0wWNYl+ASWupGx/e1iViJJrrcyRPDecmEjsd0TxmB/JBjKeUzNm2rMZ/O85AyeLXLgwRhZ9t
Rky2dldjUdfqN3KC65v88Gfz3zcg2fLGsMMJRthiWrlB36AsvAFM5AfHfYQi5eN+J87b19lMNqd8
+/9HQIc1u5GtfoDnanZ0WTIrsGwyE8mV8LVDhqBX2tkfUBNfj4jVg+QZRKds1WOAJREl1bH/iwxs
jOhLnEL04LPXaEY+D7WcXgbhk+hJfVxAxLtQGtABetfBrH/TXX8xCHTwC7y8OMPhg8J39Hpv4jii
rCp7AokkTnJXLwQFkEeUL4fnnU4on2JgtGiYQ+EsjyudP6UfKTkGaK0UvXK2pd3SQcLDh+VMI6uK
uNBY197AZmMb2v2DQwaQ/Zi/R4KjTwtZcOTXqZnhQZCbcpllJGWskDuAvNLSlDOX9RHNM5/iNPmH
JSvHrevjlmcqsZWgcIufgVYvibKGc7FGTy+Nh1R6jWWaWiIl5dYsbzlcF0tyKpr+D098akZCbH47
ImnlktFe9jdAKDaEDSFzAy6/PZQfbjVlbLtwm82BioRM+/6hQ30Hc//gXnGe6Kxc14xBriQjZgYu
D91BJjRy1Q3Mce8eOXZcykv7yW0hnXDNuXjAEA8lu4nG5WM5j5rahj4BPcZhHARi23lx4Ng8wKLy
02RuagZbTzFeEA+ATh026Sy1YZHDCxXo75j/2SIi/fg95MGRFYrJjWHOHzO4g7lYBEyw/R5IXG8L
QNs/4xtE5wsas+AFoTqI/ZwzFkN2RbxvZnWn4JrIOoV3dnIo7WzIAHwT+3aC0e/Fz/nar+zd/3WB
yaJu4A+zjpaf6W00QeyJeaaYEXdkJNaS8sTyHIRwHwrKYHs3kfzx+mwmbTsh7ddCrfEPVXShTfqJ
vA/xXuNyRJAjKk8A/1Y+afAYCyc8mfjQi3flDnbpDvguw8ltR2esnjRhvCtAM0rt9CgBSdUigb2z
YxTPKE7JOMv7Skx1hHlOo+NcJgfi9hSD9w+Zx6GActwsObI8IRdXu5XufH9ilXVuJgaInDTYDCJN
7qpSMyyl4iEzTdF7xU7T4qHkUxCxgWxKkpUmcC31ssdbaZLDyFT4CnRS9wBWn6xyN6I2hJNL28R8
pDdnfD4HRbRH2XvN1u7SMBjSFlMpH3D5qCCunITI7LRtgRaP15PEVOyuV5BZnEY0WEdvONn4QDve
Dfx+adkcgVunZQRDjTeOLedJ48MqQOGgSx/DSawGx9yRUEpDgbR6hELMD5SEkNcgzk2IhPgeHCXl
zLsWlaGKRH67IbPqSz6NfEduVXINFAsXc7FfAPXNbEP1fKCdME0nHCJmMwq9PXCH1vgJaxU0Gxay
P++p4GP0QtirTtsZDNklns5TM3Yi7UFMLU/UgeLagDkCLQe2gnWkhZ/8xxWyDsTscR7OridId0Ku
WEWanvNUZyk13BRsOrhuCb3eduzaXMiIQOWACOR16ehI8rFMj1Zb3V16O4aUJuxagFJxrGQC373y
0WiEA2fOMcvD8/GjaBBp3uuohY5GKnDwPAJZ+ARfLMzXT6WIzU9IaE+a7SXlLZ+wpFxW1SHEBEtD
JpmT08IK+kNmxsdYhNDEYi37ktbC1OfJ1Q+nZGzYe3ruqVNw5LZPiX6v8iPQ7XIKxqxDvk4+AzHC
KM50Snt/Sk9KbttxOgtiNGCQI8W4Zw2NVWwe4korPnVjOg85okfwq5zsAgfco4+zgeqSd3H37KVp
iihyimHXbTWqsjoCNR5RtixgEeuwOrwH+Udgm4pBfOqaojHVa6TjKRNJyVNdWK6/gbJ+MX5Mzpb1
XL+G4mkOxZBB2x4OS4qIxc9fDSWaLnIQNvWlaRwY/FCO4fHctZYhCZuiXlIjM+uoCEFzj2XuljlN
NEQQhCwWKFImHDgqp3/nXEOSOKLmh8blobDxs3Fz1ufcxq3BtwhEHveR2fo7113+G0zBZr/nCISW
Nb46aBTSHWA6h1YPj9+CJZctH9P9g76HTa5W5qDGX2/T8urtFk92iSOQ/TM7WZ/UKs0qkR7ZJZkf
zT4ScZ5iJFvKWNf6ckCJ6g+f471QFCVPVNFX4dzg3GbMuQOvC3d5Z2IXZV1XmBrI7Kh22gcURzPW
bMJsFuRRXc1K04YeBtyHNX+hb9bEht1OVJoKvLJLWIKi+1xM2SucpnZJYkKAzYC2uw8NcK6lg8o7
iqigzNuKIZU6Vo5Id9uC1DoQ9rqcBfysHtmjw/RVH6WvXNCQxRas/6FRaqyOGqVq0fQrz2SePD9U
3uolNXyyaF1qhlg9BfoEwLTbKUbjmo+w/mAPSl9qH9l8vcOQK6yjDQJy5CQRSOmqggioaW79j/Bn
ZIHY53xe6oPSxvUVwsdmSrkjsHqANQaSqDs0wqMoJMfJX+Pb3/SICi97rJiBI1018SkMnvBuWzlm
N37H90u8uz9AFW72mADQwlArQrLrY9jimaLTqLTXgRdPnql1zWMLvd1uK6p5vY8F/RE3EwfGkmXS
aX/moY9jH+MWzogIXEg4J6w1hj1j6svLZtNLLhqDpMTBGjGRmd7JIx73Fdj+cimYjX+H/9L18BWg
VZ0nxm9PhtHluO7cBsBvahNui14SHDhXDl9xYXcsSI334bR9to181Q6Gl0cx59dveZxSQT59NmC7
vXMX66629J9K++EhC2bHLceFA5X8dov6rReWBXAsemlSJdhsYtZ2MmyNCw05QpRldVKEFIQ2Bd3f
42/2e2PEm6ovEjPvrO2zPqjJpgCvds9bSBGIxSow6kVKyo/OFcIrCW1QQhxh7qm+bJy538TkWCej
GtioGqUgyl5CqDEFYWPw6K/4otmqyW1qvz7LyzI55GQegTFo+6HJ8dkzqGeGj9bLKu2aDaSKgedT
pY7dFjKCWvk425QFteItn7d5z5OPx/7OsiD8T3SovSSTlxBneguPyXih9QkCU+kvN72Ez14hwXRw
O4IvuoufLRzHcu5f+9A8J30n/2xuazDVBcnFsOjibNW4EkISOYtrSE8W/h9B4KXobzUdx/SEqdkf
QByWQr12ZBoKlyP3pbBJJQj9F4Q3x3dPIOkTkjQkVZUiqvgCNrn5iseJ/ftpndVvgncC88Ug05yQ
DoSQezLqkEIIfV6JoZ1phQsaTPu6RkSyfWw74b9xb59BbBnjewTNsHWgXMscGRhkGs5HK3AtWfb3
1C87g/UuS1QIKd30rBVPSMQ88u3AhJGMzn4DZ3FXhOoHbFhlAwtuV+G5PjgjazfDUyg+oeHFkPzk
zDs2j2j/5Ivuz+YuLwhloEG6emlHyWfv0IG3VVb8pgq7fZHnWyDeLWQxlLLJsu9n6RBmHkoGYI2L
4WN26xjkWXLDZbZezWK0JmZZUfcHYqcdxtb1MPEj3hTssM3QzJb4P9yAOSyVol6geodcyvhf2Bp6
d0mZhWSzFZkD3qSNOPHYdHOStiA8YnBug83yx/aOzYXmzqDruSw0L/MCYTA83o5pR8jJ3vd6lPQq
jyvGuaWBTOWYctI401RCuYG2KbDj3V0LgtyCOMUxk0hCwLahd/Fg7hACE8YEFhJyY48701tGqNsY
Y7o+CxwpHvotScwJXVHFEeFmVFqs8u87UH3lUwsrL9uBVt8+vzzI7VJhUR2zEAb2Udxke4wixaZx
QEGZ8X+AMV+MPsEtAS5ZIWHV2drFq3oIhMLPyRLIO4/xkl+TKmGp2Un++VQVdVV3C+T+EXCNhRrh
+ysrwxZHQXtB9P/deDEQXa+1Mq/8t3Pb7TPOewEsdsdzhXkysuzniO5VFdExxc/ysBehF8epi3gE
m1xYnBLSorHEojJYo1HlxraHqvwOGwyyZPwugWhpDf98nN0TDD+ysknKfrZo9nuw0tMOKoHZgJnV
dsdwuXHGIwmz7Q5xDeovKhf8v9K2I+VSVM4tlP5gosC4r3+ctQpqJ5XUq/2/RO59kw41qn+RoC6f
obSo/ouDeEOw4ear9dt1hsICAMNr5emgYaOSXZTuYUrqV0kDxfegf5GAlNsZEyAp5sc2nBxOyjn2
F0N+SHGmigKV1mnA5N0ur7l99lbR6Z4w8vUFOLpNW9WFBZNobNscV8dQupPltoUwmmannVHOKuXb
Cw+GxQKbh5EskOEq8UnnUuCtGj6jCy44lrib/jDI0l9tE6Zn7oNa9Eq8PYeXsLDMd91t1mrhagXP
NP9MNpBpaKovGhQUN3/SQEU7LZxrhFrbET7pLmfjMPQ9DWgQ50tfOBSxGucU1zAY9qXlyoDWZYh7
QrsZYoMoL+J0dm48+SR8hn4B5NCTTm0RwRH75K9wcj6cpgPYfiC/Nky4xDjoc68t0gH/S92hIO+7
vWqVisEWlNeRu6DQUwfikndcffxKp7p2P1AE4aAWfsdVfgHt7Axs4KNg7B4eVfBEYxnGqx9zZ9+h
1sY1A4tSuQxGk7W/fDsVscwQf08bIkE+25lLG6w8Q1PXD/pJuwZRgtrJ8uvGTmXFQeQc9wLgnxBE
/5C54grt1bBekyAFFkz9jGRwijvIQZWX86qwvXE19l5HzGrykTtEQUfBO4cExwyS+bdeGmiXXBk3
J7bIYx3IsBF29T7Xvg2vVvPGTrtj1RUdCGQZcB2c6SYycrQca4crH9ZR2S5hvAozSaP0E7u06aT1
AhZDtdouaSNYdAF3cgLYMWMRAiCpzy8xmwkR/0CGRzKhxmuXz/OfLA+3vdzWWaUwZVhI4O9X6CVK
w8QjBoZJ4Znwk67BpcfURHj6w0hgVn3b3vSo71X7pA+vfxx1qsUFUFkt3GThELdMFt1Z59qOqXR+
JMt3vTmXjk0eT85gEgRVrJdDlp/+5Bzg0pmLebhjZuyd0f+YU1qIHxzk7iTEKQBqcFSvD/xq/qJH
ho1O0/d2FTR15jekIwM44P8XKkF+IJ7srw/ANJtZFrXIOdQGBNFWJGdvSoyoBBGX2z6l2GfXzCeQ
o+raU9eCBYyCB6Mi3BEm8c7cdXcDNoLrwOWMAeHfryhH9XpVjZ8huGqBMIeyqZX3hz7ZwcOSQNbR
GoXmk7tHjnC73/W6GzAZfDy87kVTo4Mt+GrR8IZxyvTGEVm8lWNpw6vGasQEnrMNZDFefSpKWGPQ
66krBSPXY+GER11nAGz9UpzqNNJ0N3ZHFq+ZouPlLJMxpZd/YRFvK3GTs3J+irxWf7HbZ7Yr5mpj
pTondEREXa2UHAhwemQdZ8GOVBuilycZXn8siJYIMBuK7Lqn6hjbab2glknPp5M5qwfWzdKJoKyV
5MgPOAmr6ah/1vjX+kNG4/eiBwhdfgzaW9PmwsQvHBoihbgmzQX4Oux0IXBDyEImNG9/7UpugOa1
w65++11eiQVh2wDsLMgIr+EFL49zN/CP3EhFyvGeKvl0v4tmNqT013T4U4gCC+9y+dPMCrNc11bq
JEbyd8Q/Q7tvDeU6LGRyHeU4zncmH17vJ+b4ApH9h70u3Tm01nbfb3tsV+z4YDmh+2b6tKzXOK3A
gEUcLbMDxATb9Nv+dUBdHcvyfZ7VrK4iDwTgrwhlrG5CY+WeqOf7f+AdDmSi3UNbwhnRDwM10HIQ
QdgO0XRfwT8pedu7iLRlT0oLCzC8CPqCYAHnO2soPVc1TMttkECy8kC+nTwqt6LihNmzSY8A+3Jq
cH7gRWBO1IikSwTQbq6oPsaOyqL7lbsOjb5d9gvJ8ibbWvk9pCKKempdskK1GZF3WscuqwIaxCvA
PLTc2UBLudBmrPCxuKkZjI/GzDifefZPjy6lzloJmwdjRUesf0o6DyRJCn6Etuq7GQay9/vVENxb
rAJbRv4aourEmqsMAjfhV61KbWP4SLAcXaXgapeiN/VrPxHgNrBZcClbfDtEOJG4YCadrbZRIBvU
VzmhtxBd4LEBu2AeRs6i3/jygy1Vh+1AG3Yhvw0hNWHDJLA+2vZe5D1s+VTbhxvDpOAcgvifkV24
3v0Ryov7OZoMqsAoGKwzIHB6CstcYD0af7uo3hOROAf/kuRFKftPHcPLprtaBr7ErB9fJ/bohPAx
OZbuzVjviPvCE5i//vgzoaDTf9vzqBvd2vmdOUZeN6WPsmv3oRkZK5MgL0TmCR5PgODerO0yPuJ+
2mTNdYGPZpiQ4HQMk4gvd6zosWlDLLT/LFbf246jJ6maM3glFTno7LAnVoqiOhhqhSXZ0vqcfbbB
w+C/bkTBZwGHzKKSB1hpSKCSFZNSY8FvmRrxEduyYWVxofXxanFGGSYIFxRmESDtAygHxuNoum8s
0zDCilBQTUs/FtFgyQjaGXPIeit1d0Ygle5bB+tuJ8+cYQsZp47KL8pDJ5CYb8Qh9oqxaWHM0MYH
kSVBKtFOlcHFHUz/nl+aUVCIMidRWU7VcmwI4lJYrU/bkhsnD6ys2OBqrLWpmjJHGSvRJWvSfiGy
GTqiiXK14dmZPpNgSbn/1kwheGAX7d/XsuDRaJtpVL0HL30GFVFBoiqL/heYcrW4WMey0vcOveFW
kwodtZ+VEiCcD1qC7y4T7yx4DO70cz/v2BauW175I14W3WSVnwYykdqR7p3tZ5RGbiL/a0GGf3a/
3E92YhbI6d9B++0CNzVKua8YcVEMpp9HRzq/OXRTozyh8yxZ6mIf817SzSiwNXE9aoDUvOtk+5su
nPyzCDXhuHg9JSRc47KYImxIiIXV3DprQNZLdfp1C/LAASetf9tFc1Lakl9GNRRPRfk22dhNTwQC
OCOEFm66NC13jdUw12oaEaiL/G/26dYL8MZkrjPW1RfrxyI9AdxAi+WPDsEeT00SARl9v0WgYVYj
xz6riMUUNOVhPySsbEitvfO4zvEUBGfg84NFrydFFPQUryd38H5eSaVtSPri5zyjw8RH153drRg+
knkXuhBuQDAP7etr4vFRYb+oh1mybCz9b3Qsx9A6njZB01p15LFUPUyHF/PRXZDOshlZQh5j8/4P
DQ8sRwewJWGpP26OToS3+H0pnPGmRv7gOfBbvVEW02ePT7O3HsAng6NW4in1gHzuEtFviwP2rOk3
kFQU24Ihx38VYuHBIbzia6PqRBYa/Kz5SSTNN0l3aH32cLaFwJiwh4RXuiP3x1GSS0BfP7qdNjQv
c21J1B++ET4t09+wyDCMz+13bIFADTeiTKSW/uoJ+hYZrfMhr5HUlJ14zPHbd/wWmqWGV45l3oqu
SLpBGKT116BcyGKumD/UXpKH5miREVUJPUgpzb+rG8PsLCtOo+OrcG5idkhXki+/AaiN+unsF5LS
TM56uumFxKlAjCy3AYiZ1uNLsTXUKY9uVgRL+glBAsLavQkvGJ1bs+C7k7sHao8/RAW2hFh30sUf
jugyykv3bP1PGdvrt1Rt6o2CsMQUIrRLbkdTvdXY8ljRh8guWTaCyerHLnPHrNeCaTmroIbQuy0D
TPG8vjaYXMIU9ubXTxDl43ybGcpSNFwBimdUGNd0cDNhINOgvtKlIYc/pnj9eJOsqTkqW5NjY9r2
fgYyGfvo5DpmGJsWHWJFpz4nFRmRlkdzt9knPYLMLJHhTjz0qtPnrkyubEvYR3zGrsSCZ4KWRoO1
EMZC3c6jVhSLn2udaRbz/Qv3j8QYqRMDBexgRUurgmW/Gx3FGOciJ1Px7MTYVBEBO1A9Wf2Ihwul
zPqqXqpdKePkEWDiSjtRMon0r/Yx8wOBBcSiTecN/MnF0uYFIG6yLLMlMlAtgD3VVDn0wer8V42G
uVI0il92+T96upU47GcXVU3yeiC1fTZwEY+3Hxh83Trl6PlH8zZXyAWL8DT9yqxpI+rO6U1M8wBj
bHQewljtmoDPIyYmRQ35S53wBROxTdevIBqV3j3t0i0ZTKirYZmJhlaJmGwPz+1d7keCe7UE1sp8
+ao640qX9OG598VS0XGTElshfYZeLw48rhw+8OCwBCtDcOn+CZGP2Eb+Z5sNuuLjlIiZlWPLb6ib
MadvSElf+cyZuGJEXNV9iSXuNW/3XSU1A8lZv4T+BTtJPBzYHrOKIu9yknZSDq+KDq+qR0oOMwk6
9VqADWHnsGZHX/36kKWvpYVr9Le5C7EexQLJPYceu77Y9DHZMHZycn6fUyjxf056AsLoEvH1iMsB
HdjdUn2SU8OqBpvfz4B67+aYCKh1Vw4AC/6MxHyeMTIAGX5nfkKtlBtQhoxGKXbrrGTTtYbyQXVa
lH1CLln5NATdyIo8qlLnhRi6MorMd5R7gzclpvPgXqt3LFnYo9yvG3PoIoo4P0DuW2j6Rb7Gu2Tv
PwCOwb7CC4M5TTZwhxsgzItsb/N4+on1N4A6priYd4kufXp2Luc3z9w/YgvPR9fxo6VeAcu11lGj
SV578+VucFGyRjR+yKoVKuxEn+tn2BMC55YOy/eLteK97rZz98ZUdxBUPuG0a5N/W+pVjmRM0htx
D39NNdHp7yFNiESECAYD0JzDjoq4Gq5qmnQdwoSCYBONdRuxfEJ4byL7zhjbqSMcIeVpYxtafK7D
c+XjKTMhspDH2rrUyNIIICbQCdGdz7Zmri+jtEHhHzErCz7Ym+MlVNJMgVURQy6o6Mq5O6LwU+c0
pjt26EfwxWlFAwalWxjuDZh5ItbM+cM3aS2wwWQjKZqLfmR0avdwNgXp4s4eQJrHSDtNSOOGw48K
MXo4tR9gf+1iT9PILjV2xZ3fXEuYaJpVAxaaBhtMK8S2wujsRbFXjaRtjrUXHYQotlh0fp6W4fze
JtwzetToYjsiumkssDGNn+31RVrMuHoYXQInEKE0DXW9cekM/kh+yUO9KBBgZ/WLH/7HccFepEK7
s480ifIWZKDIt5LbQc76BpIpi5cP7aHDZ18yOSgJT/RTObd7vVGwRazG5w+Sh3Xl9elFQUsePiKR
ou3Y/rD/sBewYdTd0rbFKFW35/hc2CaSGc1WBQaaJmQyeq8KWF+lVqNmNO8fJawlc/dNmkBb94Sn
/kBZ5IpB7VF6rgchP4YPzebiROEnA0qIW1M54IB1Ax3OQTjtr2aCscx4izpVRN5MzEwVWCT7U0rK
9Fl82dRPLJhyGhK7RxDD62/8K/STCGW6m7xTtFdb4PVPAE+534jFtPlTgXbHq+2+pG72czsMkXEi
Oxj4yL8bC5XjdzpRexIIhr4qtUeDSXk5UheHE38E3Qqhz3FD3Ut42CD6fDxcGLuwJbk0gAGDoum3
BAy6rQPFJ9C/HIsin5thcHrQ93k+Za8jrMySH99k9yPML5lLTpYC08bOEZpK96bdHEcbqQl28Hnt
q8HxWrtMZE1WZ3s6siZTtX8IlJnr+UY3mbgZTVZVcdBugTbTOUsMjhHtsiYUv0ICESC09oduERG5
IqdBkXL6Vd4Y62saPvZs/nEiMoJMzPNHlYZUDmIQkqSbRcG8k4vSi6ADZWa1YdZdfNQya75cGMXc
hhGk7CNJFCSE62n2s+RRd3FKnYVMq+3B1y+3njF18Z3UIULFLoL1rFkTqyaAknsIK40jP9TLb49q
vvOzRjEjkW7SiLJf58NHgCb/0JutyRaCJvcwtHxv6+15fQ+tWL6mD1QCVfmPyIkx37uOE/Sndss4
BdfWXlLaDO4GyLseOm7i3OZZ96StLrEDzzAuNx6OuOjK+NlpMAHQE+Lw783qG2YNkxJsf4SPQ0Yb
yea9u58TsiYLagPHxS1s6Jumoh4bX5LXAZ8w9pmkMXv8j4RqgUb+ihIT0JUMFMDBBIBoua71+2Nf
VgsX8SXk6k52FUmvXL1q7q5TNsqBOBtStTVP5H7y8PMBHvQZO1Vjz5EFysXcCcpxsSGBBpb8B4ve
iQPAUfN2GHUoKa3cxzd+jeDshWbFbIVw1tx/LzE6aspuEJq0LSTnz2QHluVBaPxjAD/WAfb1O3XZ
Yeq1gyEq0TVcxR4WFp98blxZRQQQEd4y/IcGTp9VpzwDHa/Ho/PE12PJMRjM7odNJAc97dMUy/d+
+5mXurA9n7Sf/ra2ozOVlIPQ1e2O6zSni5BRe2OTRQ3z2td4TaDBklklPpRUuOzSKQ7x98bxft5+
bqHQ8LcKVB5Ij0LvhIayIvsflQ8YGNtfE8CT8ueJXSf8pzwQ5jJCHCaDcYFzRCabGTntkb4SZkr+
eg5G2mD8sQei7cixJBcplmlKa92TBkBzbANDle87nFIWNhC6hqzrZddkAeF0UDAaThAdMc2P71sx
i46yWmZ4BS7/oi/17nQosyUOTYIqX6dkzrBz8VgcykD+BRlOi2+BEFxugO1eD/C8EcPhn6bY17bR
rwaWd8BRtqPu+3BJ9foDsDbr9aX+OLyPlT2AFyh2T0UWTmAXui2GuJwIxwyYrw96whpXY1P40fNu
JT2MR4NrlECB0Tf0VwV0J/CmselggyzirvEgfLk5zs4/ozqHa58F+O2BVZcmwaHPejrIJruJzSgp
F5RwpE3ru43dl4r9j0bQ9B/ykTpEsYy+PDRaxgzpwcNAkEn0Y281rWkTbXlQ2wtmtHMKYr2/3qZ8
9lbH9m/VzNxTyNAVZFdAGy9q0tfcBeWamXaIsfcKjnv/Gfetpxm3+jkf9v5lIBpELt7y6lidBHmE
pmhLB9qQoefqg1PejcpXGF06MImrZKSnl5oQKp1JW0xwg4RyZdQYtu14ZCGvhX1hox1tpR+VFaaS
DSkzJvt/6mfjFzDDMA6ZwRTagv5eDifeC4na5F+G61wEvL3rhLrhkOPBrj74CA+S4Fah3wmc37fr
walkh59iMji/AKMx+E7vS0wZTX9PEVr+Q8de+vZqQypKeUHKBsPMBsITnKAPUu6/gj0ojCJRSYUf
VBCM8+gTIvnXindraOLNAZ6r3LZWzaTM6sKt/bLh7j68KDf3IqO2VtYH4c23vZJQPMOitA3j/y+0
2ww7sMoetezJ368nsu62OZzDiNnulWB4xpRXUvAV9U8M8V4m3waHCi/+vOL5/XyaFcS+3u5FgYZl
g+PWaj+XiHj+j5EomspzfOGmZ/3i1G54Psv2/pjWeP+YmjPrPBXWx+vpHKH44HV65ZLKGuT+lTfz
PDUCmMxoHz/Uy2jxDJ918HrJvBDFG79eAEamZoe8vU+NBpYI7Kffrgq4GOfzCAE4kCf1GIzplWFZ
Hrs+f2xw77/Y2SDtucEW/UF79BikVPvMJ+ohiFfszShyS1c3x/zhPKIgozGx4CR7C27nkYhrEKvB
nzhmZi7J3gDFuU0KfBeMBS3kwLwxV1WtBhyCX800cttqxW+B0fOPMKA7MnfiipZWQiOzGo50EyU1
hbRKfe19ML6DR6Fgo3qHbr/orU31/4h0Zjx3+U46KAXt7DP/1SFuHUnZpTXK8GKK039X31BPm0HD
Ledgcyshs+8tCzEWswLKAY5zHiMAGPEbx1i5uTY+7HX2/WTpMGIQd7vdvfOaaTjjyeZKbhjtADWM
nIms70jxgL4ScXP5ZS3dI5yArO+l6q3GbTGgKRRDDSEagIG7zSp7yg7O/iC1AyptEOMOxf3Ked6X
CPdHeQNDb/nCJkVe99s/ZKaeA5kELtuotyHeDITd1wekYPmeEWPr2MpIpZtfjFdcKu9m5EEGcYQf
OE1uhjsiXiM+ibNehI7J/gwYFCjUNPpzx62kxfPomg+i1YDAqV2u2VCK4vJEl7nCRziwunv/ckOi
DMDQc4yTfhGFgAuX47A1uIVjVKDYtGWv08dMZpz7ceVlihvEx9t7yF2rD+Gh8N37pHzK0FZUJBpS
Pldymcv4c2RzDGT0zBT3r1yVk6Jsfe0FBJP24pDExR6c1k2f/gtPyq4OrN2DzlOos1iGNbJAKP8/
husamQSwAa3/QLPCTOLYkqzLLc2xNowQFDCNjAA2hdR9cRtkLQwyqjRARqjqP33dKe0m7Yn/Tfs6
xHkB0uWiYUakbjybyBMXA966B6I2svDjjI/cZOAhKKPK/5tlWW9jNvUDmnHzs7lbTw0EY98Ob/3P
om+ZFXN+xrtHLc99hZ6PhmFuhSrZNJN9uWX2q7eJozM5fdFr5+W4jNYUbtx4IergSAtCJ71OXOBc
WBEMhFXjIuglPYZxQ3n3fsVUwBdcUxhh+Jt6ZTiOgfxfrojkdY5mMlZwBevLJ3uE5ySjUw0fSUv4
Y4bP+8/ujpL/HGSaRwdVNrudu5TevP6v3TBpDz1hbDHDY0FfKlUInWS4sWocjnXXj3crd0oU+lS5
1BjBtBPkV9D786tpnDKnZj/nvP62GJO/j3M9mlkHq5vsBaTXkfzKmtsh0EY7UBrrTYaRPJmwPM80
rqz0B0k0Ppf091i+cv8eXqux/48A1XCPACrZsjbm93uKDhaFD2i7aoAOXQ4JRCwuQ7Ycf2jZHaNF
DKGOyS8G9SkFi3voxyRntACL4zaIic0l4+6cwqH841R79dENxM17HF4NQHLHVRs9ineunEl4DZPR
UmDpX7lOlhKV1nJhGTuQc1ZH+wcwC6KuhK7qv3E3dNFH5isAvJTX038tnJj4WDxBntIvOxEhTPHn
PZMdBcwferFHtfWiYezouvL434T/aWa6RWEj0IBarGveLBNnxl/GC5WiCSt0bt2Qia2nP9H3QKkW
03sosqbrYH8HdvRomNrbKkrwq92X7Tpj62gn2HSwiZZ9aHVUiReJmZkh3I+YzPmTUe3196W48ev+
GHJe/d3n9ZiSyIo7psDjZxrLh41ietFqelOCOtcnbOg85uIDtubi4nxldv6dIGq41KjF3bPdGPKO
GCRYIxzbQIOBkgKM7m0Zlt3qACIeOaRBVCCpQw2s9xxrYIRjTFJwJaNY2MF4KPe+9t4nAQxWslgd
SbWL0piYpBvKlB/d/TQRwzcMjtxdjfcRFP83cMb9SQ44VzeRIWhjHogLzOf5rq/FbLPBu8aZMzjl
6vwYDNzT2KKNleL62cw57i5RhibnP4w6w5rvaRQhX1TGHhROVS0nUwasr9XwmuX0i5aUKj8/fzYH
msR/sXsj2yCoQDzUwhuRST57szcyVB6jYJ+OdJoVOfisg6It81wjBjVTRyPzLfE5Itvz+cADm+fS
juiIQkdkHkIYJqGNsuyQ8M/UieUCmFcgVK37owqEA3QKEwygXyFfPO0GNo6iai5lXOJ62cyFv5bF
NxYe2YrrMWV5RS1SDr/SObVObfuUJwQDp/lpSUOpbqDFP0wlsmlvDeSmlm+xu/wJPR5U7ac5lC3l
BlDoD2O0JQiPInyR/8sANW/v+LCmd/fyz5okpOWYIei0oktXHyQqZraVm1iJdPfzFpy+RqZn47i5
MPIBtwUOZUDB2AdDiaIx1ssaGZjLm4nwDZucIaV1i6dRitUbkftwAwwBpMDjCzcjX4D8S8ZE8s5q
Y4+OHYWePrd8wWiRBuw2PcToSAnOxi0WI/DZevy3HAWoughO46kdtzwOYMvYlk12CSUnpLoSIrq4
48w9xpJRkaOkjdZoIWIgpTBsGUHnGel4w6xF+QjrCXdzEfjQ4SfllAIbWNrJjFeP/K8zroBTnKZH
KByWM8Mw+DWOuqT8ZgwPQrSjJYsV65+wJmxI1b6AppGZitbKFUzjOEFOHx1iGGlv3yR4PEv0BEjs
u+4/iOX43fk/1pntH+lsZD1NotoZbaUmHzfLClPL4D3i0HlgYGDhMI7C1eYVSkp/oMYtOcHfhHnd
PGj4PUW5Xho5xwVYgJv6SNObceE5mHVmImqUuiFjBi0im3mEPukU9/EUtD7LnV5q/enN4pbK02SM
tP3R4EdwNW5TO+dwKez9vrguiEA4sJZs3yRv+1mHJPHtB2GLCuWX/TIawK/YKgrUHOBDhYSedro6
K/xZsxtxixHTbKWBS36hSVXQdtGJ5NrB/FDaCTa89w3L8lqJu5dWp1lEBPMPmztI1f2+lvVdctc8
J+nnds1OdulGMhmz3H6XxTZx6MjyA9QrIHhKetcUpc8LYJwGwvwySVfP/XyX7ratVYIBfK9ONYbz
hGEVLkV1xLlk10Phz0YUADka6Sv6VYnEAftYG2br+rb+w9vO4ewHZ0KZHS4Zk/n0AuDTUGlq0M9b
hMitseCO+qedtG3QGO03DAhE1CufH91V5nWveKk7TsBQOIiAWxWtle2RIQ173uCXxtN5ZwLq9gpt
dQKGYYqCxb8J+VQciPTbsr3MeBhHoNbqsMcbPcT0iIwjz/2A3yB5tTogbhPTp/7+/OmEsVVf3h6p
qX7Vmr2hfYwlCr3J+lnVsVMoIdnTXUL/p5Pgv9taTXhbVqZkVAcJQvMxP0uavbdlt/kc/QVECOTg
llkkuIdBIE94iD0l3cqWYS0EezlNGZ7velXUTuBODtS9nPtXMIkMWWGF2guY4lTZanj63Q+uPpz0
sKVTRX6ZGWqa54QqKuTMgsR4CWmvHOWjnWwTL9ZDgGbu3fh8l6UhMVpOgcCf15HcCXhfQUmMbIQJ
yuQtnzni1iCVQmUitlfO28Fe7HQZjQef3SqDMzAZPtDc9aNWphqpJqnH3cD72DV30lrwKwChcFTx
I8OP6JYmkhK8Vw6d659+CU4/tJ635BIa4B9XhWjQJ8zQUgrYHP0UedSRk+ik6gHoH21Mb+zGgAxS
0TLTZlKViMyMEsqjSTvBl6vCzTtj1zD7gqRVlSgtup1yMlo37XRKMXCkSojVMNjSbc5omZVKHHDS
RB27wyJBRoGGDF0svkc5SYrLm3rK84S4dRcSYIfceMU+xy5YrsxKoJNlkiGAdV8G+z4UFnKaLSdQ
6QZL036rAf7vK81zYEFYFmkpgA4Dby719nR6rP/FsOmTaaLMkPVESWPTSVBJHWRwkCbRE3Rb2o5s
pGwjo/auTZK11M7k1rH/1SrqR3DiQDDlkpqHZPjGmLTR5AR4HHyT/4grhbBM55HMgLiQDammdmEz
jOywtiVby+/zK832LSaV8n2rtKjFHHjnEqxjlnLjjqUthvrSx9U8DDVqWGJLfDdM/lrEpi77jvVX
oOOsq9iTTEzAf7c4Xo0QHbsNp7tXCyd5zPl/PvUG2YXDcaEpPmvc/bRLNjE1JIEIfQD4yh9gDwRB
3QuLs8NsFNZnkH74ru9tclQqG0oKFKjaU6YHuLkyA00ph5FT9W+N6GiPzAU0u5ddbpA7fTolJUNG
v3QV64YfmFqM9DRiir32emutzmqN42tNv/WX37nttazuZ3Nwm0p1sHWTIS1jTG/ej69ai26uCCrG
JcHict1GEGbWmwOvy73TQzxYO7YuvX+C2lzqcos9KkzzWWk9sNdIbijQ2UE+DKgAkN74lNliYCIg
2t4dIa78alG01Ovzz5k9qhiTBnngAX7sy49FbQNvTSKrOpUIhhdZtokyTFhbJ5RWH9tcBccTPz0T
EgBb3E5N6MPlKHIzfpgck0wvwrOLIhcgwV+ETlbc8GQMkFqn3KpmiiVoO7K+pR8bOF+Wh+8g503k
CPhxC6ElzI2k/uLbvfmuq2HB7Rg6g5HM2vawGzhvh39jZZTehrfWckUV5yoWB0GBE/RMv19LOSW7
+tOZaCOqJ74DUzAB5edb78xNlicVHlVX0NocCH2JjSLmOUyirisI0+Qhzvtm/hSD2WD/C16xXJGJ
/mrFupt+71on40O99NMMewMkqYs/8v9RK79yzfV+g2mGOwK/pc0fpQVDxVtn51dx29fN1MtCk8Lb
zf5hYTC2cUAyN+RuWvna8SqcVg7gaNCuwpLXTPKKvZJeYKX/uEzCRhlBUcQbR+i98gSlj+g8odsL
MnO2/OuJbz65iX7J7SqsZzAjMt6MM9x1IDo9a6T2TuWT1xKTYYov3O087+iGPPn6srDJr2kVwJoX
VjJATLDJfpsEjHdpWmh4rUoWvGTBDWBDUxbUp3hISC4p+qGQQouFeztKcbT/bUAbcgpiI6V3PW72
/DWikZT1ndGhXfxcnZXfhBARnPvC6oYfVqGFtuOo8z1yWHZU/jsPIGYSh7RqJlSSgUNYQoudVK6P
vVDdlc9C7p5MfPjDMa70YDKpH8IPls54wxgNUKWFUBtXBeBk8PYedDA4MzHd98sYE6zAq8BXDQv7
yT3OXJSOM/9OK3RVaBiiCIqcHfdW5z64ZJuFCFgA0Ig3Y/xZ0Kka63eL4fTMR3+PvRHGi1IS/FPF
hm3UTh1FOGssyjy25j7MgVn2kXI+YojXuv+QJzOxqoFoNiTebLfNCa5PoGad84/b1j23snnrJMYo
pcRueeUi2gnykyEiPLXt8u1BFxDEXD4fPltX7nrcpz1C8rScqDX5F7PfQtRe9YTeioX8arlHj5k4
BOl5jOYHS+ycOGGB+A9JMYw9fFVbx1EeatoI/25XIHWt2Ray9KibrC0pdJqBE9XgjltZnJ/WjKrR
eP+t8qqWoWWnfJ/7jr5+K96BrECie/vGE8oXHDrRso7D6XruLOsSL97yYxKLIrCSMlEGRLutjEog
T6DGczIyMcul4STOgZJg2vY8szV35Q/luxCpiVVCnpZUiBEFnFVapezmHUuU59UU1nv9wryEEduC
QLoZl7PR6ssxbxNZrAtmCAa/8gLPeNDdXCkn4XIQCintRiRMAnwzr/4UxaNR1Yd9HIz7+1Lc6aTu
LjYiVHy+FYFpUrOu7A1sD6IWel99DiAQOI8n85VMLCQuHUKgT7Vj5kHg55o15wY4ehjrMw8HKBBE
hmRdGZ3qpLlnEcB9nOumR2iiSH7PAyui8khUTyDLIc6y+TugFjsVbCtgXbapihD6WgGwHZE3gxja
vrZKPJat+R2+jdv+/h8bAhh8gEKwqM0cUcyNy2rNlAg3+KuyNzkqfDIRixA1eqq3p+NpIgmcGxG3
7JgYNvMIIUWFmCk0JO74mFIFh+4mQ8vyoYHfH6grH62gqxtraYmUL3WQrpDcN9qRw2aNhUjNJOG7
M0hHCQFhrlfbSntzDxrz6eecoD5W2rVRGDoIsHYE7XWUWftw/w97XuzHW/aUl8ffo8nEc5XOY8zL
LDx6uENPc3dbMKeTM9hhy3YaFH967rxSz3+P+AMRz3q7cwiBmQi3SpZRIT9EKpdo+pHfKmJsgqS+
Ot2uuxPeTIpnZkmYk9u+KnKHHC23ybF3h9lt/Lk0BtbHlYFvkhDTT1Znp46dqXcSG/zBe7GP5oVM
iPyizSXhvxXwZOQhewioEGCWk2jCFk1q648A+/ze4qrmuKA0ATVDlbZ9BJptSNEfLsPexVwh2775
S7CHlanRugf3Kei3SmHjUVbgPdgX5cEt6S02KGZknHaL6mNxYWgZ9yl10uN8a37X8GrbOKCS0SVb
i6m9XhMhpDxVVIa53e8Eu4ErDVTHg6T0n+COCeIpApaLCuAYKATjKNwgeOcgGepO+tXqaKweMw0Z
9Ey3LV7ElSRDW1cZPCfg7yb45d9YKBe8OcwEJ/KitLGOHsQkmHnhbDMK/Ypr0kB+NnlrB14Y9QJb
Q2AEKrPLlSPfxWug+mdfjqdBZMzWZJyLG7bMgnU6LPehNoS7WESq6+fPLNAjTLgivpPjkMgxHGbu
FCvtQG29T2s8skTdj70/w7FsoBx4vP/hEqwyT1JJasjlMb8ENRVxEKKjnqcgq7t0dh/aG6dPWg4Z
c9dUu/ZE7oDdEMjw7p+zhPvSPegA/q69rL6u8QZ/rfqlu3UXTBXHecGdNivGJYzUqgIkFHq+Jtoh
npWLTHd2cobRUZVt4NLKotOu1BwDr3xwc9RnWZGnOA2gs1r5+O5dlqdF4G3ScwsFlgxJXrg6zcej
BKVIY18m3OpKLfaJS5KK10eLPMdXbaxa4k3+RCiCVX68t4UkkrHVhLyO/LVtMHu/BFWaKB08AM25
iipfLB0IkGC1a22lAiUH5+hGO2AEe/eL99DuaHh9GN08Mys4p2B7wXmUY3UoNT/anxOsGqLAAOgk
w5fkAT6ISlMWk8XuMbqjg/h2svZW/ZqHVVQlU9qEccZnhebGdXPsiTEIVFlThujs7pYkAsG+w4d3
idC/b4SbVZ8/gTCEV8o5h+djMOVlNflwrlWghBi0OejVDk1mmIfYeTgLJp3A+3niFe9XI7f2fj6l
KcSotzvnxyXJ9LaM363wYKTXYS839IG1mhl0tjuL7KOMlQ3FxtpqUnKYUQExYpP1xvJVQGV2TXFz
/NXue8+0XxP9Orfup4bGAtuscdm37e/S9KAfHjnb42cDTy2gmPk7bOHJe24MFTdDiHc9yqM9AgDh
oavC6VrtvF2AT0wswcL5mUMRGDRWcZDnRMNYibdg/aKKVLJQiMy0oip63jO+9Gau5BfUOW7BZ059
7G/oLh+JQyqReOoohq7R+2IaLDxBYvi5+mN7VYrAsgxiuelsh/FR85xIaxExKFl51zs0q4Tl+U6m
w8B2CG5sIUwroz5BO7qTcI3h91b+UXwJIPN6GhH4ASuJnuSkUFC2gQKtZZiElZ8QAu5vyN2wN0mC
/7DhEXmngdZEGNivhu4wvCroSx7/+eSjlXqis+5FxeKVFZlA856rWOoqcMQ20x+XomBK/LsVae3d
d/DLYcSyqcHTJmRpd+J5ANDet3Z0EF1AyMlInV+Ty608SEz3G4pMUHe5gQY0DFn16+BkjhLv/l7V
e+gnZSmkj99xDmkgrV5nz9BmYTSdDPTxiWEwB4koxppnEvxllbgE2qFQlanVYUDBd3A/ypz3ulvV
K0fA2ki5N0mDba6WCuAI3M7ugF3+GgBwGHU8HqHLLBKO1EZGpFYYu5Jc9boGp05d+gB0qw+r3ay2
pBgvvDzVJ3motApMHn6ggYuCW56mQGaRNPKM77uJfHQ2wVJEFo4N7VwTm/GDPuq0Y3Wil1frzctC
oNu1gFKxGCwHtkJrfAosgKp0JvjcEsGQZxRtM1z0/bsMDIVTVILHS8TY6RiixsYWV8uNor14M23Y
XmumA34Rd/RbHufJZyMJLOngJBi7TCGF3Z2V2zmBq2CW6hTznkWkvzvSO8gDOtaJXpLV9V93ivR1
4jnUYc3oKZzdBw5NkFdnfPhff6PimDt3+JkHEGXmGRsIQd/WM3ddgq/Q9nju6lES0ViSTVzbm4mm
pcz408YW1scJ8s8wOzmCn8lq5GxalvQRBIctrdxtyvY1s2BWzhFVxmepUu3V4fhRPir5UgBpnE54
KwjPODxNbvhBKhBCr/lKyZgBgyoMaHadhD2tPaavuixW8BPNbw1+ohz8Qp4yPmETa8PDboe3N8E7
BubY6rtedidENWy8v8GU9V2KPd8yan2cEFc3K88YVwOdmUGf0Nyb0aGLjYkVmO1NpN1murnlS05v
mLD2aC3shzfqHFXhleLhyEVqLcPz0jcJX8VG13Pz8lkou7fsQQi4nbEyaV6uaCx+STs3y/g6R2ZY
jQ8xr6eHlOgov4az1OrsuOryh2JJxKtK/kQWT/5qmK/cHJ8bcK99KmQANf+fdKQQe6OQ50q+G2aa
8QbOg2p6nHz1/qMHRrVdJU8FbksjS9ZFUZBGc0JuQed1KkSafl2cJaOQiJohC2dNN9kRKh4wM1Kd
kEdQm69L2O/idx0MewwJE7HS1jmEZeS7H/TO++MAcdVzNjfYRKRw/2mZQCYJRqoaalKFmy2Z4U7V
kSzt1d6PKiPIcYN+FkuhOU5r7twWqTZN1ewOOIvhmC7KzDJGPnBwCWMYz/hEM4oYhSIuUmN2XDaV
Zw57EO9N5Dz+kp65qhverWUDzjlmVMJH8ocmr7ulJl2UDSlK0S1ZydElMvAufj+ihmNQGo50PJP2
9Po/UECstYGZCOw65aPD5xsV+KX1ALhRiD9V+2eUE4UVReH3C8QXnxS/2CcRtvQRxC0eJEEaVpWL
jNlyLo4Ap0CoghqY6x9gtCDBibX2jZ+gAsJkyy7W8gVLxfA/2wxd4IojdVERPIwjjAkoHslttB6H
Oyzufr9s44eVWId31qpPq7ud9wXLKALLQketlmZbe/1sGOKfWPk0KPUZye0dPhm6AcLxi/WtWoQz
4oVcu0+1wAemIIf7KhugzgVoQ+t55x9I+uGrj8KJQQumn+fok2SSqd9jjL1JfoD1icJ3UkbRX5C4
IJ4ODbZdTQ20hSB4SL+EeUt7yqWKkVmYUITdC7/uBDLxXSXKoI/eSn5XudMC5SMos1i0i3rT+eMq
LBTYXlpr9U0x8KLAUtSrkvKLHo0RriEP99/h+wfAWtNst8caI3CjJ6SEzdtGFdoVC64w3kbjIX8p
DPyyPIgil+1rB24cITUfxDkjiftUgsFUvRsdK5vYz3dRWmIJRDWqaWd+uLV6OQzRQQREBBMJFZp5
zlSdWk23OvqirjpghQ2f984bwPdPwHFiuqs7KRrG0jXhh085kSBbu8wn4GEZoeaTub9kdkKyT3cW
oZANvTbSVhajlQFB7wxjASMIyvi0Xsyjm4wKKlNRW1qSSwGuubAsBFnnMR/lcdAyHYZyFMK/HC8B
YixFFjcjf3Rf0GjYvGuyX3w5PWG277pOApOh3mDpHOBviySINEIqPMt5zFUXx/7ue4EF79Y4ivQE
c/ENZjC3Gwx5c1r4igyVGNEOr3riERYagkp6TISalgpLEAIpAquOzecAoHiydXyEy422UrjBqiyd
1WCvJaMe+3obM0Fxx6Z5ss20V/r1mL673WfXN8+10GCUWbPZLFk2g0oAtuD8Qjs3Xf+NV9Y6LnoE
RfbUrqxd8+o30G0yOVhr8NqCMYbRadYd5xmoobqb7L/iImEKExjIAgTS6MWyLhA1ot9Plt0V6udI
80TJDMP2eOr2dYxMqYr8E/q2Vxc0H1w2Of9fWM/2gfw7PHLjhIGfrVjtyjCEkmSvRPFj60aB8dyv
uSLWoYLV8QeGldrJcIfDuWpepPOSY1c31JnObQlRYaaCCyKSKE6YqusEaZ95iiS3CiZ6PFdX44Am
X6lPRtCIPE9w9NPaDPyH+A3I15JFen4ycf5c81OLgne+zNYlMN7yNivWbcxGUnZ2cKf2/4OxrKlN
4oKwMes/6AEirVIAYga4CcZ44DdVc3wUZO9VqMqEBNQaIUnC7ZDUI9vHzs4ybHAlaZgB6yq3WMSF
DvsVR1G0bCFYEmH2Bo1se3oMwEp7nwvLDmPEeUwDkjtkal5g0/ZjXMbG3VUnBsZKEcdggzWwc9Nb
4deGWkA97s6zOToKq6BFA42Okc+wmUuw1c12TK9pQOPrOMjdDr0gba/MlmVudyyJRB8cgMSjwGrw
KBb/l9piwn84YwM/oy93OrCrfoprEo6Z/+BhFXar1k452mH/8ajANURhBkpSU4F3ZwKh9DSHheY/
YWPlC0yX/U3RRFR6OKomJvY3R2iB5IRNiKLw2o+lJt087HuUxQOSsWjN4UOTuwV4Ova7dkzt6IVc
v0DTas29pJqFtBaXCIgtO7VgxG3KftQX3+H9m5FgpwD8z5lj7g3s9M4Mp1TAtSOpfUKYLdaKKL81
qpjYxq8hylqgrML2CK20RmGa+5gNZOtlEbuHIC6hhau5meDsuHw8ljNWkggn6jwdK7pg6pdjNLrX
0WcMaOTXgpKWsKZMiBYOllvCZ9EOqpc5Z6+pXg8/RYn0UeSnGzMg8KSaSZvtON82t0bfBC9UH4OM
1O6iZbf9hGBEumndRJo1bOYlnFd3UEqT2NrMC6ca1HlYV/bSGVZMjqmEqHFch+AWk2tc8dM/PXQz
qHsdvIR/xMvSk91QX2/FnDyjekwkpEdzqL8x3F/OdOkjup3akd2/tBdMddUVGbH7GdPWuipZ3bpn
IPizuoYhihBa6C5tDTHWSCW/zgq+GXkkpjhldq6UoMFA0UwHTBeL6E/irEALi24z69oPyuScp+OT
sbGezjyFye+msL8nXdytHwI70obmOaoTXLQfOzsshHq+bU0nigGNQSG8RXh91YpvzOw/3Am4ornP
eGVr21zOE/na7p6pouqVDidFVfqI/I+jaz2/TcLasOJJ86mm1AGl4O0Z2V6IukqWwzjC4mQFgjSS
YbygZBCKAuDP/6qHlvUbPlvck1P46/INfv8LfOCvwVRIj7FvKIoIkwmET+5OG9IK7rb7yALLxCum
bdHyWunuBLy+v+NZzMRf39GXkzdm3bHT1grxufmOS5aoCTKw1pTqLWpjQdx8/e0oR3clGxw5DY5h
8m8UyzJCEzuz9kb9n/0xUoQ000/hmQx2UYC3wjPPJP003VM0Z3nT/x21Z0t1kDkc0GydlmE6jys3
xzYbj0pZW8P+4IdGwWBlLheENE3hgyamDDbLMoNi/tmVcgwHfC1cO9R/ND7zzR4lzY6DeoEPtJmo
9Zplkp+o7Ae8QR7TmhFJl/gc++vQKx0eUfO0Ag9a14b4U/e5/lR5KNHsFLoCdrdL4Yv9CpRLjXnN
g1On8AaNEMTHKsRCYcPXFlRThH0wXLtEKOSSTm3XWQyl0JRuArlM/FmEb3AnT2wejileJEtvbPJV
6SMSXXa0yoyL1Q1fSaE/XxS6TOvOr/Og0Onz0oAXH5AJDrmwPCLZBDOvffRHWgQ5/xMjtlun78D7
7YV5RCZC7WH+X6OjiLqpWLFwlGmEKBBBT358M1NxiOzEGdXzObaVFHrT2O7AsLRNCoXRZzILv1kg
qbxpnitJdTKItqpiTXMQIwz/GwPr9HiyXbXH7x4DeNd7ccAuuxBMaLW3RtwQULRD8r9CwZQEGGxc
fKDi+0XkLYvEDz1yuVonqkEP9uwd3gkXbMjO/hj5UF1SrlXrrQNlhLyY0FFnLoh6B2uoyYoLPc0+
LGM/p97qTOCOWL3FV6QuokhvCbJh1+jCJlMEakK7WfbDcfl3+UwMFmKUuFexI5zmFt9XLE7KngFb
Yt2hvWQC9QeA7AP/wjhltSsKHYVOOfJY5lE3LkIYU+CcnxTYUJFQ/NygMxsEfkzMDeXU64z3+Cc1
gDin0peJhclFED/lkZTsVFraavxiBw7/GVcZZHETOd4IbKIaWJ8/slbTlbUOC8x5Oe7ovSBSQZPI
sMlAIUKcvWfCtBsnHaxXm3DaHj8lJt+ZVdpccDaVza5+1n3ZCPo0R4K8G+6xVF2XGI7VL5p/opFg
8S8dyunsMGnJPMj08+gLklOj9RSBXHKcwPC//Bwg3GVxZpxuLEd4kH+7rPu9PRGVEM6NwsS2ue6H
fTk2eNz639s5o+uae6llekV5Yz2SeF4VQmt+ZhT5fPC8NcUlR7t9jt38IjTry9p+u1vs4mdZImXu
10DvXnIwxo+3+0ZjDHQfvR3JVu6N1KK42GBphe+Q4uADGQrS5tyunzECILkk2V2xcjpz7UHkeb/+
C9T+Myt1brwD/UVU4pvRxhb4yQVOxsXgnbNiq9XPm+1yqj087SfNT7qAa0VocVcR1NSTj7ip2Kf4
MLqH6loUjd9SggMb/w6sV/BwsSSvln24Q55qeAzUJ+jA445eHTgbcF+MxBb6C/F7FxGC12YQIDpx
EOdDvF/WL65rMeh4UVYoi77HGzYJH41Ru2Vx5PW9w5G6dwBBnsmcGr8QLe1ORstvOYDEgXG5d82S
Dyu6tzgbXjmEXypufW/w2+brfnVnyio5vnziRsDFjKADnTsA71mJ2OqUehZQ7jAzmZeFbrP2dG/S
enXmb/uIylbrk8qT0CITDR8HsTZqkkX2HpOqodMmOaFm23/x5PhRkFHeX5UeCIxj00qogK0Lpam6
rycg6I4B2NOGXHu3lC8fSsuKfQaj+2o+smtKhnJqa6fSczoD+3EPou82BmWhwAIyJ8DyyYQMZwtd
Qc6dBDhu0wnrD4b/mZT6fQ4fNb8qLpn9CPnSGOlN8AeoSr/VVBkaddS8d3DcNlqWE7O7g7+Hclab
+ig/tEuBpYSyYmAc5Q6jOYUsXFXbVWXHH8wftqArrQHVN/zPMgjwPwQ38hcfvfRmx59z1mFf2bHN
wUUKNuvxeYB0ZG9FEk/z37NOzXm8Abo78ykfW7x8Lyric2ysIPHm6OfIaAoGv82cRxAV+opNhcxM
kBOi53ZZru8XAKvYiJ6lUh/v7PbGHckYHpfPVDRttpdFM4CKqVC+JuKr0VbqzCTMR2KdFv+k1fDP
O9ghqW/CmfvpejAQ8skyXeC6Pb+f4E2UZRjHNnXqimkye+ieZHVZg03DTCBfylpC0SPM493ubXxf
Yj0N8eHimJFZGiz9hl8/Vc/Vs6NA8O+S8+Dm/zfk/HYwvz/2JvaNdJsCnkflxlhFDdUx9yrPZ55G
TyJ2kB6GtWJzkbnz8/+G3INRY6NjRWz9Lef1bK75rgPNlQ8sfRFi0SWiORgVLoKBlK6aWwSq3nIK
t8oamc+IRFppK1ui9vh3PLDEOrjHVKe8BSPIw9ndaZ7ckJfBTylpVUQny4vRNlBljKlvIBswUJlO
f+ndjfqsW6ZrrwzcODkTVLXwPM7VUW9k5gn4drZAYhrl696pOOGVdS1gZer814dPROp3SsfnkSBC
ke42BddTCDUm8CpaE1o8zNIiFHRpaeGl7n2JzvUCK1MQ90ZkJrCIHC6CtHLzehCNndwl817wAGLf
lU4/kHQmTLUSXNUdB46GOoLjngwiH5DHAxxxb05fhrwrraeRBfGpRVD2F/W6NJdm+/lfEphZfbEu
agXEKmxVywsUeHtzZWZMywUFGe4I8G7F9nHnF9IzdsywTqp/auppAcIk2aKZ3zWSyoea032W3tWP
YWqJw5FA6qzEBsNJ/oFP1ZHjfL54BcpNaPnC9WFlz/E2MoJm1qUGj/ARtY00eIROCL1zi1C/gsNd
ORianAhlzSE7v3Hh2FEiKy0kCzUIp8SD0xnd7mW3lOpfhHTcwOeq+wQXiIrSg4cUs788a21u/LXM
jmDs835ETbUukaHFdwrJ0SkGD4tQSjtpKOeMFD36OvYvSj82jM2JPzWQMvEH9/o=
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
