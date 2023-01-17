// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue Jan 17 10:22:56 2023
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
