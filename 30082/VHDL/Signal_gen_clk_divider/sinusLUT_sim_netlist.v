// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jan  4 13:40:26 2023
// Host        : DESKTOP-MKAFNHE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/felix/Documents/DTU/30082_project_jan_23/Git/DTU/30082/VHDL/Signal_gen/sinusLUT_sim_netlist.v
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
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
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

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module sinusLUT_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;

  sinusLUT_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module sinusLUT_blk_mem_gen_prim_width
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;

  sinusLUT_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module sinusLUT_blk_mem_gen_prim_wrapper_init
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [11:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8585848484848483838383838282828282818181818180808080807F7F7F7F7F),
    .INIT_01(256'h8B8B8B8A8A8A8A8A898989898988888888888787878787868686868686858585),
    .INIT_02(256'h9191919190909090908F8F8F8F8F8E8E8E8E8E8D8D8D8D8D8C8C8C8C8C8C8B8B),
    .INIT_03(256'h9797979797969696969695959595959494949494939393939392929292929291),
    .INIT_04(256'h9D9D9D9D9D9C9C9C9C9C9B9B9B9B9B9B9A9A9A9A9A9999999999989898989897),
    .INIT_05(256'hA3A3A3A3A3A2A2A2A2A2A1A1A1A1A1A1A0A0A0A0A09F9F9F9F9F9E9E9E9E9E9E),
    .INIT_06(256'hA9A9A9A9A9A8A8A8A8A8A7A7A7A7A7A7A6A6A6A6A6A5A5A5A5A5A4A4A4A4A4A4),
    .INIT_07(256'hAFAFAFAFAEAEAEAEAEADADADADADADACACACACACABABABABABABAAAAAAAAAAA9),
    .INIT_08(256'hB5B5B4B4B4B4B4B4B3B3B3B3B3B2B2B2B2B2B2B1B1B1B1B1B1B0B0B0B0B0AFAF),
    .INIT_09(256'hBABABABABABAB9B9B9B9B9B8B8B8B8B8B8B7B7B7B7B7B7B6B6B6B6B6B6B5B5B5),
    .INIT_0A(256'hC0C0BFBFBFBFBFBFBEBEBEBEBEBEBDBDBDBDBDBDBCBCBCBCBCBCBBBBBBBBBBBB),
    .INIT_0B(256'hC5C5C5C5C4C4C4C4C4C4C3C3C3C3C3C3C2C2C2C2C2C2C1C1C1C1C1C1C0C0C0C0),
    .INIT_0C(256'hCACACACACAC9C9C9C9C9C9C8C8C8C8C8C8C7C7C7C7C7C7C7C6C6C6C6C6C6C5C5),
    .INIT_0D(256'hCFCFCFCFCECECECECECECECDCDCDCDCDCDCCCCCCCCCCCCCCCBCBCBCBCBCBCACA),
    .INIT_0E(256'hD4D4D3D3D3D3D3D3D3D2D2D2D2D2D2D2D1D1D1D1D1D1D1D0D0D0D0D0D0D0CFCF),
    .INIT_0F(256'hD8D8D8D8D8D8D7D7D7D7D7D7D7D6D6D6D6D6D6D6D6D5D5D5D5D5D5D5D4D4D4D4),
    .INIT_10(256'hDDDCDCDCDCDCDCDCDCDBDBDBDBDBDBDBDADADADADADADADAD9D9D9D9D9D9D9D8),
    .INIT_11(256'hE1E1E0E0E0E0E0E0E0E0DFDFDFDFDFDFDFDFDEDEDEDEDEDEDEDEDDDDDDDDDDDD),
    .INIT_12(256'hE5E4E4E4E4E4E4E4E4E3E3E3E3E3E3E3E3E3E2E2E2E2E2E2E2E2E1E1E1E1E1E1),
    .INIT_13(256'hE8E8E8E8E8E8E7E7E7E7E7E7E7E7E7E6E6E6E6E6E6E6E6E6E5E5E5E5E5E5E5E5),
    .INIT_14(256'hEBEBEBEBEBEBEBEBEBEBEAEAEAEAEAEAEAEAEAE9E9E9E9E9E9E9E9E9E9E8E8E8),
    .INIT_15(256'hEFEEEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDEDEDEDECECECECECECECECECEC),
    .INIT_16(256'hF1F1F1F1F1F1F1F1F1F1F0F0F0F0F0F0F0F0F0F0F0EFEFEFEFEFEFEFEFEFEFEF),
    .INIT_17(256'hF4F4F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F2F2F2F2F2F2F2F2F2F1F1),
    .INIT_18(256'hF6F6F6F6F6F6F6F6F6F5F5F5F5F5F5F5F5F5F5F5F5F5F5F4F4F4F4F4F4F4F4F4),
    .INIT_19(256'hF8F8F8F8F8F8F8F8F8F8F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6F6F6F6),
    .INIT_1A(256'hFAFAFAFAFAF9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F8F8F8F8F8F8F8F8),
    .INIT_1B(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFBFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA),
    .INIT_1C(256'hFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_1D(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFCFCFCFCFCFCFCFCFCFCFCFCFCFC),
    .INIT_1E(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_1F(256'hFEFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_20(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_21(256'hFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_22(256'hFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD),
    .INIT_23(256'hFBFBFBFBFBFBFBFBFBFBFBFBFBFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFC),
    .INIT_24(256'hFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFBFBFBFBFBFBFBFBFBFBFBFBFB),
    .INIT_25(256'hF8F8F8F8F8F8F8F8F8F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9FAFAFAFA),
    .INIT_26(256'hF6F6F6F6F6F6F6F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F8F8F8F8F8F8F8F8F8),
    .INIT_27(256'hF4F4F4F4F4F4F4F4F4F4F5F5F5F5F5F5F5F5F5F5F5F5F5F5F6F6F6F6F6F6F6F6),
    .INIT_28(256'hF1F1F1F2F2F2F2F2F2F2F2F2F2F2F2F3F3F3F3F3F3F3F3F3F3F3F3F3F4F4F4F4),
    .INIT_29(256'hEFEFEFEFEFEFEFEFEFEFEFEFF0F0F0F0F0F0F0F0F0F0F0F1F1F1F1F1F1F1F1F1),
    .INIT_2A(256'hEBECECECECECECECECECECEDEDEDEDEDEDEDEDEDEDEDEEEEEEEEEEEEEEEEEEEE),
    .INIT_2B(256'hE8E8E8E8E9E9E9E9E9E9E9E9E9E9EAEAEAEAEAEAEAEAEAEBEBEBEBEBEBEBEBEB),
    .INIT_2C(256'hE5E5E5E5E5E5E5E5E5E6E6E6E6E6E6E6E6E6E7E7E7E7E7E7E7E7E7E8E8E8E8E8),
    .INIT_2D(256'hE1E1E1E1E1E1E1E2E2E2E2E2E2E2E2E3E3E3E3E3E3E3E3E3E4E4E4E4E4E4E4E4),
    .INIT_2E(256'hDDDDDDDDDDDDDDDEDEDEDEDEDEDEDEDFDFDFDFDFDFDFDFE0E0E0E0E0E0E0E0E1),
    .INIT_2F(256'hD8D8D9D9D9D9D9D9D9DADADADADADADADADBDBDBDBDBDBDBDCDCDCDCDCDCDCDC),
    .INIT_30(256'hD4D4D4D4D4D5D5D5D5D5D5D5D6D6D6D6D6D6D6D6D7D7D7D7D7D7D7D8D8D8D8D8),
    .INIT_31(256'hCFCFCFD0D0D0D0D0D0D0D1D1D1D1D1D1D1D2D2D2D2D2D2D2D3D3D3D3D3D3D3D4),
    .INIT_32(256'hCACACACBCBCBCBCBCBCCCCCCCCCCCCCCCDCDCDCDCDCDCECECECECECECECFCFCF),
    .INIT_33(256'hC5C5C5C6C6C6C6C6C6C7C7C7C7C7C7C7C8C8C8C8C8C8C9C9C9C9C9C9CACACACA),
    .INIT_34(256'hC0C0C0C0C0C1C1C1C1C1C1C2C2C2C2C2C2C3C3C3C3C3C3C4C4C4C4C4C4C5C5C5),
    .INIT_35(256'hBABBBBBBBBBBBBBCBCBCBCBCBCBDBDBDBDBDBDBEBEBEBEBEBEBFBFBFBFBFBFC0),
    .INIT_36(256'hB5B5B5B5B6B6B6B6B6B6B7B7B7B7B7B7B8B8B8B8B8B8B9B9B9B9B9BABABABABA),
    .INIT_37(256'hAFAFAFB0B0B0B0B0B1B1B1B1B1B1B2B2B2B2B2B2B3B3B3B3B3B4B4B4B4B4B4B5),
    .INIT_38(256'hA9A9AAAAAAAAAAABABABABABABACACACACACADADADADADADAEAEAEAEAEAFAFAF),
    .INIT_39(256'hA3A4A4A4A4A4A4A5A5A5A5A5A6A6A6A6A6A7A7A7A7A7A7A8A8A8A8A8A9A9A9A9),
    .INIT_3A(256'h9D9E9E9E9E9E9E9F9F9F9F9FA0A0A0A0A0A1A1A1A1A1A1A2A2A2A2A2A3A3A3A3),
    .INIT_3B(256'h9797989898989899999999999A9A9A9A9A9B9B9B9B9B9B9C9C9C9C9C9D9D9D9D),
    .INIT_3C(256'h9191929292929292939393939394949494949595959595969696969697979797),
    .INIT_3D(256'h8B8B8B8C8C8C8C8C8C8D8D8D8D8D8E8E8E8E8E8F8F8F8F8F9090909090919191),
    .INIT_3E(256'h858585858686868686868787878787888888888889898989898A8A8A8A8A8B8B),
    .INIT_3F(256'h7F7F7F7F7F7F8080808080818181818182828282828383838383848484848485),
    .INIT_40(256'h787879797979797A7A7A7A7A7B7B7B7B7B7C7C7C7C7C7D7D7D7D7D7E7E7E7E7E),
    .INIT_41(256'h7272727373737373747474747475757575757676767676777777777777787878),
    .INIT_42(256'h6C6C6C6C6D6D6D6D6D6E6E6E6E6E6F6F6F6F6F70707070707171717171717272),
    .INIT_43(256'h66666666666767676767686868686869696969696A6A6A6A6A6B6B6B6B6B6B6C),
    .INIT_44(256'h6060606060616161616162626262626263636363636464646464656565656566),
    .INIT_45(256'h5A5A5A5A5A5B5B5B5B5B5C5C5C5C5C5C5D5D5D5D5D5E5E5E5E5E5F5F5F5F5F5F),
    .INIT_46(256'h5454545454555555555556565656565657575757575858585858595959595959),
    .INIT_47(256'h4E4E4E4E4F4F4F4F4F5050505050505151515151525252525252535353535354),
    .INIT_48(256'h48484949494949494A4A4A4A4A4B4B4B4B4B4B4C4C4C4C4C4C4D4D4D4D4D4E4E),
    .INIT_49(256'h4343434343434444444444454545454545464646464646474747474747484848),
    .INIT_4A(256'h3D3D3E3E3E3E3E3E3F3F3F3F3F3F404040404040414141414141424242424242),
    .INIT_4B(256'h383838383939393939393A3A3A3A3A3A3B3B3B3B3B3B3C3C3C3C3C3C3D3D3D3D),
    .INIT_4C(256'h3333333333343434343434353535353535363636363636363737373737373838),
    .INIT_4D(256'h2E2E2E2E2F2F2F2F2F2F2F303030303030313131313131313232323232323333),
    .INIT_4E(256'h29292A2A2A2A2A2A2A2B2B2B2B2B2B2B2C2C2C2C2C2C2C2D2D2D2D2D2D2D2E2E),
    .INIT_4F(256'h2525252525252626262626262627272727272727272828282828282829292929),
    .INIT_50(256'h2021212121212121212222222222222223232323232323232424242424242425),
    .INIT_51(256'h1C1C1D1D1D1D1D1D1D1D1E1E1E1E1E1E1E1E1F1F1F1F1F1F1F1F202020202020),
    .INIT_52(256'h1819191919191919191A1A1A1A1A1A1A1A1A1B1B1B1B1B1B1B1B1C1C1C1C1C1C),
    .INIT_53(256'h1515151515151616161616161616161717171717171717171818181818181818),
    .INIT_54(256'h1212121212121212121213131313131313131314141414141414141414151515),
    .INIT_55(256'h0E0F0F0F0F0F0F0F0F0F0F101010101010101010101011111111111111111111),
    .INIT_56(256'h0C0C0C0C0C0C0C0C0C0C0D0D0D0D0D0D0D0D0D0D0D0E0E0E0E0E0E0E0E0E0E0E),
    .INIT_57(256'h09090909090A0A0A0A0A0A0A0A0A0A0A0A0A0B0B0B0B0B0B0B0B0B0B0B0B0C0C),
    .INIT_58(256'h0707070707070707070808080808080808080808080808090909090909090909),
    .INIT_59(256'h0505050505050505050506060606060606060606060606060606070707070707),
    .INIT_5A(256'h0303030303040404040404040404040404040404040404040505050505050505),
    .INIT_5B(256'h0202020202020202020202020202030303030303030303030303030303030303),
    .INIT_5C(256'h0101010101010101010101010101010101010101020202020202020202020202),
    .INIT_5D(256'h0000000000000000000000000000000000000101010101010101010101010101),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0101010101010101010101010101010000000000000000000000000000000000),
    .INIT_63(256'h0202020202020202020202020201010101010101010101010101010101010101),
    .INIT_64(256'h0303030303030303030303030303030303030302020202020202020202020202),
    .INIT_65(256'h0505050505050505050404040404040404040404040404040404040403030303),
    .INIT_66(256'h0707070707070706060606060606060606060606060606050505050505050505),
    .INIT_67(256'h0909090909090909090908080808080808080808080808080707070707070707),
    .INIT_68(256'h0C0C0C0B0B0B0B0B0B0B0B0B0B0B0B0A0A0A0A0A0A0A0A0A0A0A0A0A09090909),
    .INIT_69(256'h0E0E0E0E0E0E0E0E0E0E0E0E0D0D0D0D0D0D0D0D0D0D0D0C0C0C0C0C0C0C0C0C),
    .INIT_6A(256'h121111111111111111111110101010101010101010100F0F0F0F0F0F0F0F0F0F),
    .INIT_6B(256'h1515151514141414141414141414131313131313131313121212121212121212),
    .INIT_6C(256'h1818181818181818181717171717171717171616161616161616161515151515),
    .INIT_6D(256'h1C1C1C1C1C1C1C1B1B1B1B1B1B1B1B1A1A1A1A1A1A1A1A1A1919191919191919),
    .INIT_6E(256'h202020202020201F1F1F1F1F1F1F1F1E1E1E1E1E1E1E1E1D1D1D1D1D1D1D1D1C),
    .INIT_6F(256'h2525242424242424242323232323232323222222222222222121212121212121),
    .INIT_70(256'h2929292929282828282828282727272727272727262626262626262525252525),
    .INIT_71(256'h2E2E2E2D2D2D2D2D2D2D2C2C2C2C2C2C2C2B2B2B2B2B2B2B2A2A2A2A2A2A2A29),
    .INIT_72(256'h333333323232323232313131313131313030303030302F2F2F2F2F2F2F2E2E2E),
    .INIT_73(256'h3838383737373737373636363636363635353535353534343434343433333333),
    .INIT_74(256'h3D3D3D3D3D3C3C3C3C3C3C3B3B3B3B3B3B3A3A3A3A3A3A393939393939383838),
    .INIT_75(256'h434242424242424141414141414040404040403F3F3F3F3F3F3E3E3E3E3E3E3D),
    .INIT_76(256'h4848484847474747474746464646464645454545454544444444444343434343),
    .INIT_77(256'h4E4E4E4D4D4D4D4D4C4C4C4C4C4C4B4B4B4B4B4B4A4A4A4A4A49494949494948),
    .INIT_78(256'h5454535353535352525252525251515151515050505050504F4F4F4F4F4E4E4E),
    .INIT_79(256'h5A59595959595958585858585757575757565656565656555555555554545454),
    .INIT_7A(256'h605F5F5F5F5F5F5E5E5E5E5E5D5D5D5D5D5C5C5C5C5C5C5B5B5B5B5B5A5A5A5A),
    .INIT_7B(256'h6666656565656564646464646363636363626262626262616161616160606060),
    .INIT_7C(256'h6C6C6B6B6B6B6B6B6A6A6A6A6A69696969696868686868676767676766666666),
    .INIT_7D(256'h72727271717171717170707070706F6F6F6F6F6E6E6E6E6E6D6D6D6D6D6C6C6C),
    .INIT_7E(256'h7878787877777777777776767676767575757575747474747473737373737272),
    .INIT_7F(256'h7F7E7E7E7E7E7D7D7D7D7D7C7C7C7C7C7B7B7B7B7B7A7A7A7A7A797979797978),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_n_71 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module sinusLUT_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;

  sinusLUT_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "12" *) (* C_ADDRB_WIDTH = "12" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "1" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "sinusLUT.mem" *) 
(* C_INIT_FILE_NAME = "sinusLUT.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "4096" *) (* C_READ_DEPTH_B = "4096" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "8" *) (* C_READ_WIDTH_B = "8" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "4096" *) 
(* C_WRITE_DEPTH_B = "4096" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "8" *) (* C_WRITE_WIDTH_B = "8" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4" *) (* downgradeipidentifiedwarnings = "yes" *) 
module sinusLUT_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [11:0]addra;
  input [7:0]dina;
  output [7:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [11:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [11:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [7:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [11:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  sinusLUT_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_4_synth" *) 
module sinusLUT_blk_mem_gen_v8_4_4_synth
   (douta,
    clka,
    addra);
  output [7:0]douta;
  input clka;
  input [11:0]addra;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;

  sinusLUT_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
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
