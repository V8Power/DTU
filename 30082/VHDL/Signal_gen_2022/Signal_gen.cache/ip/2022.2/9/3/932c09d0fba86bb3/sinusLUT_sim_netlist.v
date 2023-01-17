// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan 17 10:22:55 2023
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
