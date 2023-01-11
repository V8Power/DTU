// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan 10 21:23:25 2023
// Host        : DESKTOP-LOLTF0F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/felix/Documents/DTU/30082_project_jan_23/Git/DTU/30082/VHDL/Signal_gen_2022/sinusLUT_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25472)
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
