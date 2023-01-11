// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan 10 21:23:25 2023
// Host        : DESKTOP-LOLTF0F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ sinusLUT_sim_netlist.v
// Design      : sinusLUT
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "sinusLUT,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25536)
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
