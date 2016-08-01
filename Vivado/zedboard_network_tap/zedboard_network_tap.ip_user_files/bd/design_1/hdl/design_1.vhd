--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Mon Aug  1 15:02:39 2016
--Host        : wintermute running 64-bit Ubuntu 14.04.4 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity s00_couplers_imp_1CFO1MB is
  port (
    M_ACLK : in STD_LOGIC;
    M_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_araddr : out STD_LOGIC;
    M_AXI_arburst : out STD_LOGIC;
    M_AXI_arcache : out STD_LOGIC;
    M_AXI_arid : out STD_LOGIC;
    M_AXI_arlen : out STD_LOGIC;
    M_AXI_arlock : out STD_LOGIC;
    M_AXI_arprot : out STD_LOGIC;
    M_AXI_arqos : out STD_LOGIC;
    M_AXI_arready : in STD_LOGIC;
    M_AXI_arsize : out STD_LOGIC;
    M_AXI_arvalid : out STD_LOGIC;
    M_AXI_awaddr : out STD_LOGIC;
    M_AXI_awburst : out STD_LOGIC;
    M_AXI_awcache : out STD_LOGIC;
    M_AXI_awid : out STD_LOGIC;
    M_AXI_awlen : out STD_LOGIC;
    M_AXI_awlock : out STD_LOGIC;
    M_AXI_awprot : out STD_LOGIC;
    M_AXI_awqos : out STD_LOGIC;
    M_AXI_awready : in STD_LOGIC;
    M_AXI_awsize : out STD_LOGIC;
    M_AXI_awvalid : out STD_LOGIC;
    M_AXI_bid : in STD_LOGIC;
    M_AXI_bready : out STD_LOGIC;
    M_AXI_bresp : in STD_LOGIC;
    M_AXI_bvalid : in STD_LOGIC;
    M_AXI_rdata : in STD_LOGIC;
    M_AXI_rid : in STD_LOGIC;
    M_AXI_rlast : in STD_LOGIC;
    M_AXI_rready : out STD_LOGIC;
    M_AXI_rresp : in STD_LOGIC;
    M_AXI_rvalid : in STD_LOGIC;
    M_AXI_wdata : out STD_LOGIC;
    M_AXI_wid : out STD_LOGIC;
    M_AXI_wlast : out STD_LOGIC;
    M_AXI_wready : in STD_LOGIC;
    M_AXI_wstrb : out STD_LOGIC;
    M_AXI_wvalid : out STD_LOGIC;
    S_ACLK : in STD_LOGIC;
    S_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_araddr : in STD_LOGIC;
    S_AXI_arburst : in STD_LOGIC;
    S_AXI_arcache : in STD_LOGIC;
    S_AXI_arid : in STD_LOGIC;
    S_AXI_arlen : in STD_LOGIC;
    S_AXI_arlock : in STD_LOGIC;
    S_AXI_arprot : in STD_LOGIC;
    S_AXI_arqos : in STD_LOGIC;
    S_AXI_arready : out STD_LOGIC;
    S_AXI_arsize : in STD_LOGIC;
    S_AXI_arvalid : in STD_LOGIC;
    S_AXI_awaddr : in STD_LOGIC;
    S_AXI_awburst : in STD_LOGIC;
    S_AXI_awcache : in STD_LOGIC;
    S_AXI_awid : in STD_LOGIC;
    S_AXI_awlen : in STD_LOGIC;
    S_AXI_awlock : in STD_LOGIC;
    S_AXI_awprot : in STD_LOGIC;
    S_AXI_awqos : in STD_LOGIC;
    S_AXI_awready : out STD_LOGIC;
    S_AXI_awsize : in STD_LOGIC;
    S_AXI_awvalid : in STD_LOGIC;
    S_AXI_bid : out STD_LOGIC;
    S_AXI_bready : in STD_LOGIC;
    S_AXI_bresp : out STD_LOGIC;
    S_AXI_bvalid : out STD_LOGIC;
    S_AXI_rdata : out STD_LOGIC;
    S_AXI_rid : out STD_LOGIC;
    S_AXI_rlast : out STD_LOGIC;
    S_AXI_rready : in STD_LOGIC;
    S_AXI_rresp : out STD_LOGIC;
    S_AXI_rvalid : out STD_LOGIC;
    S_AXI_wdata : in STD_LOGIC;
    S_AXI_wid : in STD_LOGIC;
    S_AXI_wlast : in STD_LOGIC;
    S_AXI_wready : out STD_LOGIC;
    S_AXI_wstrb : in STD_LOGIC;
    S_AXI_wvalid : in STD_LOGIC
  );
end s00_couplers_imp_1CFO1MB;

architecture STRUCTURE of s00_couplers_imp_1CFO1MB is
  signal s00_couplers_to_s00_couplers_ARADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_ARVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWADDR : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWBURST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWCACHE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLEN : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWLOCK : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWPROT : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWQOS : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWSIZE : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_AWVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_BVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RRESP : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_RVALID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WDATA : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WID : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WLAST : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WREADY : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WSTRB : STD_LOGIC;
  signal s00_couplers_to_s00_couplers_WVALID : STD_LOGIC;
begin
  M_AXI_araddr <= s00_couplers_to_s00_couplers_ARADDR;
  M_AXI_arburst <= s00_couplers_to_s00_couplers_ARBURST;
  M_AXI_arcache <= s00_couplers_to_s00_couplers_ARCACHE;
  M_AXI_arid <= s00_couplers_to_s00_couplers_ARID;
  M_AXI_arlen <= s00_couplers_to_s00_couplers_ARLEN;
  M_AXI_arlock <= s00_couplers_to_s00_couplers_ARLOCK;
  M_AXI_arprot <= s00_couplers_to_s00_couplers_ARPROT;
  M_AXI_arqos <= s00_couplers_to_s00_couplers_ARQOS;
  M_AXI_arsize <= s00_couplers_to_s00_couplers_ARSIZE;
  M_AXI_arvalid <= s00_couplers_to_s00_couplers_ARVALID;
  M_AXI_awaddr <= s00_couplers_to_s00_couplers_AWADDR;
  M_AXI_awburst <= s00_couplers_to_s00_couplers_AWBURST;
  M_AXI_awcache <= s00_couplers_to_s00_couplers_AWCACHE;
  M_AXI_awid <= s00_couplers_to_s00_couplers_AWID;
  M_AXI_awlen <= s00_couplers_to_s00_couplers_AWLEN;
  M_AXI_awlock <= s00_couplers_to_s00_couplers_AWLOCK;
  M_AXI_awprot <= s00_couplers_to_s00_couplers_AWPROT;
  M_AXI_awqos <= s00_couplers_to_s00_couplers_AWQOS;
  M_AXI_awsize <= s00_couplers_to_s00_couplers_AWSIZE;
  M_AXI_awvalid <= s00_couplers_to_s00_couplers_AWVALID;
  M_AXI_bready <= s00_couplers_to_s00_couplers_BREADY;
  M_AXI_rready <= s00_couplers_to_s00_couplers_RREADY;
  M_AXI_wdata <= s00_couplers_to_s00_couplers_WDATA;
  M_AXI_wid <= s00_couplers_to_s00_couplers_WID;
  M_AXI_wlast <= s00_couplers_to_s00_couplers_WLAST;
  M_AXI_wstrb <= s00_couplers_to_s00_couplers_WSTRB;
  M_AXI_wvalid <= s00_couplers_to_s00_couplers_WVALID;
  S_AXI_arready <= s00_couplers_to_s00_couplers_ARREADY;
  S_AXI_awready <= s00_couplers_to_s00_couplers_AWREADY;
  S_AXI_bid <= s00_couplers_to_s00_couplers_BID;
  S_AXI_bresp <= s00_couplers_to_s00_couplers_BRESP;
  S_AXI_bvalid <= s00_couplers_to_s00_couplers_BVALID;
  S_AXI_rdata <= s00_couplers_to_s00_couplers_RDATA;
  S_AXI_rid <= s00_couplers_to_s00_couplers_RID;
  S_AXI_rlast <= s00_couplers_to_s00_couplers_RLAST;
  S_AXI_rresp <= s00_couplers_to_s00_couplers_RRESP;
  S_AXI_rvalid <= s00_couplers_to_s00_couplers_RVALID;
  S_AXI_wready <= s00_couplers_to_s00_couplers_WREADY;
  s00_couplers_to_s00_couplers_ARADDR <= S_AXI_araddr;
  s00_couplers_to_s00_couplers_ARBURST <= S_AXI_arburst;
  s00_couplers_to_s00_couplers_ARCACHE <= S_AXI_arcache;
  s00_couplers_to_s00_couplers_ARID <= S_AXI_arid;
  s00_couplers_to_s00_couplers_ARLEN <= S_AXI_arlen;
  s00_couplers_to_s00_couplers_ARLOCK <= S_AXI_arlock;
  s00_couplers_to_s00_couplers_ARPROT <= S_AXI_arprot;
  s00_couplers_to_s00_couplers_ARQOS <= S_AXI_arqos;
  s00_couplers_to_s00_couplers_ARREADY <= M_AXI_arready;
  s00_couplers_to_s00_couplers_ARSIZE <= S_AXI_arsize;
  s00_couplers_to_s00_couplers_ARVALID <= S_AXI_arvalid;
  s00_couplers_to_s00_couplers_AWADDR <= S_AXI_awaddr;
  s00_couplers_to_s00_couplers_AWBURST <= S_AXI_awburst;
  s00_couplers_to_s00_couplers_AWCACHE <= S_AXI_awcache;
  s00_couplers_to_s00_couplers_AWID <= S_AXI_awid;
  s00_couplers_to_s00_couplers_AWLEN <= S_AXI_awlen;
  s00_couplers_to_s00_couplers_AWLOCK <= S_AXI_awlock;
  s00_couplers_to_s00_couplers_AWPROT <= S_AXI_awprot;
  s00_couplers_to_s00_couplers_AWQOS <= S_AXI_awqos;
  s00_couplers_to_s00_couplers_AWREADY <= M_AXI_awready;
  s00_couplers_to_s00_couplers_AWSIZE <= S_AXI_awsize;
  s00_couplers_to_s00_couplers_AWVALID <= S_AXI_awvalid;
  s00_couplers_to_s00_couplers_BID <= M_AXI_bid;
  s00_couplers_to_s00_couplers_BREADY <= S_AXI_bready;
  s00_couplers_to_s00_couplers_BRESP <= M_AXI_bresp;
  s00_couplers_to_s00_couplers_BVALID <= M_AXI_bvalid;
  s00_couplers_to_s00_couplers_RDATA <= M_AXI_rdata;
  s00_couplers_to_s00_couplers_RID <= M_AXI_rid;
  s00_couplers_to_s00_couplers_RLAST <= M_AXI_rlast;
  s00_couplers_to_s00_couplers_RREADY <= S_AXI_rready;
  s00_couplers_to_s00_couplers_RRESP <= M_AXI_rresp;
  s00_couplers_to_s00_couplers_RVALID <= M_AXI_rvalid;
  s00_couplers_to_s00_couplers_WDATA <= S_AXI_wdata;
  s00_couplers_to_s00_couplers_WID <= S_AXI_wid;
  s00_couplers_to_s00_couplers_WLAST <= S_AXI_wlast;
  s00_couplers_to_s00_couplers_WREADY <= M_AXI_wready;
  s00_couplers_to_s00_couplers_WSTRB <= S_AXI_wstrb;
  s00_couplers_to_s00_couplers_WVALID <= S_AXI_wvalid;
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_processing_system7_0_axi_periph_0 is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_ACLK : in STD_LOGIC;
    M00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rready : out STD_LOGIC;
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    S00_ACLK : in STD_LOGIC;
    S00_ARESETN : in STD_LOGIC_VECTOR ( 0 to 0 );
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_rlast : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S00_AXI_wlast : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC
  );
end design_1_processing_system7_0_axi_periph_0;

architecture STRUCTURE of design_1_processing_system7_0_axi_periph_0 is
  signal S00_ACLK_1 : STD_LOGIC;
  signal S00_ARESETN_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_ACLK_net : STD_LOGIC;
  signal processing_system7_0_axi_periph_ARESETN_net : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_ARVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_AWVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_BVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RDATA : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RRESP : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_RVALID : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WLAST : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WREADY : STD_LOGIC;
  signal processing_system7_0_axi_periph_to_s00_couplers_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_axi_periph_to_s00_couplers_WVALID : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_ARADDR : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_ARREADY : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_ARVALID : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_AWADDR : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_AWREADY : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_AWVALID : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_BREADY : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_processing_system7_0_axi_periph_BVALID : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_couplers_to_processing_system7_0_axi_periph_RREADY : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal s00_couplers_to_processing_system7_0_axi_periph_RVALID : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_WDATA : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_WREADY : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_WSTRB : STD_LOGIC;
  signal s00_couplers_to_processing_system7_0_axi_periph_WVALID : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_arburst_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_arcache_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_arid_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_arlen_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_arlock_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_arprot_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_arqos_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_arsize_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_awburst_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_awcache_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_awid_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_awlen_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_awlock_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_awprot_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_awqos_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_awsize_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_wid_UNCONNECTED : STD_LOGIC;
  signal NLW_s00_couplers_M_AXI_wlast_UNCONNECTED : STD_LOGIC;
begin
  M00_AXI_araddr(31) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(30) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(29) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(28) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(27) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(26) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(25) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(24) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(23) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(22) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(21) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(20) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(19) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(18) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(17) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(16) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(15) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(14) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(13) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(12) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(11) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(10) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(9) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(8) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(7) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(6) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(5) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(4) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(3) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(2) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(1) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_araddr(0) <= s00_couplers_to_processing_system7_0_axi_periph_ARADDR;
  M00_AXI_arvalid <= s00_couplers_to_processing_system7_0_axi_periph_ARVALID;
  M00_AXI_awaddr(31) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(30) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(29) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(28) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(27) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(26) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(25) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(24) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(23) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(22) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(21) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(20) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(19) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(18) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(17) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(16) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(15) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(14) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(13) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(12) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(11) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(10) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(9) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(8) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(7) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(6) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(5) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(4) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(3) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(2) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(1) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awaddr(0) <= s00_couplers_to_processing_system7_0_axi_periph_AWADDR;
  M00_AXI_awvalid <= s00_couplers_to_processing_system7_0_axi_periph_AWVALID;
  M00_AXI_bready <= s00_couplers_to_processing_system7_0_axi_periph_BREADY;
  M00_AXI_rready <= s00_couplers_to_processing_system7_0_axi_periph_RREADY;
  M00_AXI_wdata(31) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(30) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(29) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(28) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(27) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(26) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(25) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(24) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(23) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(22) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(21) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(20) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(19) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(18) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(17) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(16) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(15) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(14) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(13) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(12) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(11) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(10) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(9) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(8) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(7) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(6) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(5) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(4) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(3) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(2) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(1) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wdata(0) <= s00_couplers_to_processing_system7_0_axi_periph_WDATA;
  M00_AXI_wstrb(3) <= s00_couplers_to_processing_system7_0_axi_periph_WSTRB;
  M00_AXI_wstrb(2) <= s00_couplers_to_processing_system7_0_axi_periph_WSTRB;
  M00_AXI_wstrb(1) <= s00_couplers_to_processing_system7_0_axi_periph_WSTRB;
  M00_AXI_wstrb(0) <= s00_couplers_to_processing_system7_0_axi_periph_WSTRB;
  M00_AXI_wvalid <= s00_couplers_to_processing_system7_0_axi_periph_WVALID;
  S00_ACLK_1 <= S00_ACLK;
  S00_ARESETN_1(0) <= S00_ARESETN(0);
  S00_AXI_arready <= processing_system7_0_axi_periph_to_s00_couplers_ARREADY;
  S00_AXI_awready <= processing_system7_0_axi_periph_to_s00_couplers_AWREADY;
  S00_AXI_bid(11) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(10) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(9) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(8) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(7) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(6) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(5) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(4) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(3) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(2) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(1) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bid(0) <= processing_system7_0_axi_periph_to_s00_couplers_BID;
  S00_AXI_bresp(1) <= processing_system7_0_axi_periph_to_s00_couplers_BRESP;
  S00_AXI_bresp(0) <= processing_system7_0_axi_periph_to_s00_couplers_BRESP;
  S00_AXI_bvalid <= processing_system7_0_axi_periph_to_s00_couplers_BVALID;
  S00_AXI_rdata(31) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(30) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(29) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(28) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(27) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(26) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(25) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(24) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(23) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(22) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(21) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(20) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(19) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(18) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(17) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(16) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(15) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(14) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(13) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(12) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(11) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(10) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(9) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(8) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(7) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(6) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(5) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(4) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(3) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(2) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(1) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rdata(0) <= processing_system7_0_axi_periph_to_s00_couplers_RDATA;
  S00_AXI_rid(11) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(10) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(9) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(8) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(7) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(6) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(5) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(4) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(3) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(2) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(1) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rid(0) <= processing_system7_0_axi_periph_to_s00_couplers_RID;
  S00_AXI_rlast <= processing_system7_0_axi_periph_to_s00_couplers_RLAST;
  S00_AXI_rresp(1) <= processing_system7_0_axi_periph_to_s00_couplers_RRESP;
  S00_AXI_rresp(0) <= processing_system7_0_axi_periph_to_s00_couplers_RRESP;
  S00_AXI_rvalid <= processing_system7_0_axi_periph_to_s00_couplers_RVALID;
  S00_AXI_wready <= processing_system7_0_axi_periph_to_s00_couplers_WREADY;
  processing_system7_0_axi_periph_ACLK_net <= M00_ACLK;
  processing_system7_0_axi_periph_ARESETN_net(0) <= M00_ARESETN(0);
  processing_system7_0_axi_periph_to_s00_couplers_ARADDR(31 downto 0) <= S00_AXI_araddr(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARBURST(1 downto 0) <= S00_AXI_arburst(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARCACHE(3 downto 0) <= S00_AXI_arcache(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARID(11 downto 0) <= S00_AXI_arid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARLEN(3 downto 0) <= S00_AXI_arlen(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARLOCK(1 downto 0) <= S00_AXI_arlock(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARPROT(2 downto 0) <= S00_AXI_arprot(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARQOS(3 downto 0) <= S00_AXI_arqos(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARSIZE(2 downto 0) <= S00_AXI_arsize(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_ARVALID <= S00_AXI_arvalid;
  processing_system7_0_axi_periph_to_s00_couplers_AWADDR(31 downto 0) <= S00_AXI_awaddr(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWBURST(1 downto 0) <= S00_AXI_awburst(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWCACHE(3 downto 0) <= S00_AXI_awcache(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWID(11 downto 0) <= S00_AXI_awid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWLEN(3 downto 0) <= S00_AXI_awlen(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWLOCK(1 downto 0) <= S00_AXI_awlock(1 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWPROT(2 downto 0) <= S00_AXI_awprot(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWQOS(3 downto 0) <= S00_AXI_awqos(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWSIZE(2 downto 0) <= S00_AXI_awsize(2 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_AWVALID <= S00_AXI_awvalid;
  processing_system7_0_axi_periph_to_s00_couplers_BREADY <= S00_AXI_bready;
  processing_system7_0_axi_periph_to_s00_couplers_RREADY <= S00_AXI_rready;
  processing_system7_0_axi_periph_to_s00_couplers_WDATA(31 downto 0) <= S00_AXI_wdata(31 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WID(11 downto 0) <= S00_AXI_wid(11 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WLAST <= S00_AXI_wlast;
  processing_system7_0_axi_periph_to_s00_couplers_WSTRB(3 downto 0) <= S00_AXI_wstrb(3 downto 0);
  processing_system7_0_axi_periph_to_s00_couplers_WVALID <= S00_AXI_wvalid;
  s00_couplers_to_processing_system7_0_axi_periph_ARREADY <= M00_AXI_arready;
  s00_couplers_to_processing_system7_0_axi_periph_AWREADY <= M00_AXI_awready;
  s00_couplers_to_processing_system7_0_axi_periph_BRESP(1 downto 0) <= M00_AXI_bresp(1 downto 0);
  s00_couplers_to_processing_system7_0_axi_periph_BVALID <= M00_AXI_bvalid;
  s00_couplers_to_processing_system7_0_axi_periph_RDATA(31 downto 0) <= M00_AXI_rdata(31 downto 0);
  s00_couplers_to_processing_system7_0_axi_periph_RRESP(1 downto 0) <= M00_AXI_rresp(1 downto 0);
  s00_couplers_to_processing_system7_0_axi_periph_RVALID <= M00_AXI_rvalid;
  s00_couplers_to_processing_system7_0_axi_periph_WREADY <= M00_AXI_wready;
s00_couplers: entity work.s00_couplers_imp_1CFO1MB
     port map (
      M_ACLK => processing_system7_0_axi_periph_ACLK_net,
      M_ARESETN(0) => processing_system7_0_axi_periph_ARESETN_net(0),
      M_AXI_araddr => s00_couplers_to_processing_system7_0_axi_periph_ARADDR,
      M_AXI_arburst => NLW_s00_couplers_M_AXI_arburst_UNCONNECTED,
      M_AXI_arcache => NLW_s00_couplers_M_AXI_arcache_UNCONNECTED,
      M_AXI_arid => NLW_s00_couplers_M_AXI_arid_UNCONNECTED,
      M_AXI_arlen => NLW_s00_couplers_M_AXI_arlen_UNCONNECTED,
      M_AXI_arlock => NLW_s00_couplers_M_AXI_arlock_UNCONNECTED,
      M_AXI_arprot => NLW_s00_couplers_M_AXI_arprot_UNCONNECTED,
      M_AXI_arqos => NLW_s00_couplers_M_AXI_arqos_UNCONNECTED,
      M_AXI_arready => s00_couplers_to_processing_system7_0_axi_periph_ARREADY,
      M_AXI_arsize => NLW_s00_couplers_M_AXI_arsize_UNCONNECTED,
      M_AXI_arvalid => s00_couplers_to_processing_system7_0_axi_periph_ARVALID,
      M_AXI_awaddr => s00_couplers_to_processing_system7_0_axi_periph_AWADDR,
      M_AXI_awburst => NLW_s00_couplers_M_AXI_awburst_UNCONNECTED,
      M_AXI_awcache => NLW_s00_couplers_M_AXI_awcache_UNCONNECTED,
      M_AXI_awid => NLW_s00_couplers_M_AXI_awid_UNCONNECTED,
      M_AXI_awlen => NLW_s00_couplers_M_AXI_awlen_UNCONNECTED,
      M_AXI_awlock => NLW_s00_couplers_M_AXI_awlock_UNCONNECTED,
      M_AXI_awprot => NLW_s00_couplers_M_AXI_awprot_UNCONNECTED,
      M_AXI_awqos => NLW_s00_couplers_M_AXI_awqos_UNCONNECTED,
      M_AXI_awready => s00_couplers_to_processing_system7_0_axi_periph_AWREADY,
      M_AXI_awsize => NLW_s00_couplers_M_AXI_awsize_UNCONNECTED,
      M_AXI_awvalid => s00_couplers_to_processing_system7_0_axi_periph_AWVALID,
      M_AXI_bid => '0',
      M_AXI_bready => s00_couplers_to_processing_system7_0_axi_periph_BREADY,
      M_AXI_bresp => s00_couplers_to_processing_system7_0_axi_periph_BRESP(0),
      M_AXI_bvalid => s00_couplers_to_processing_system7_0_axi_periph_BVALID,
      M_AXI_rdata => s00_couplers_to_processing_system7_0_axi_periph_RDATA(0),
      M_AXI_rid => '0',
      M_AXI_rlast => '0',
      M_AXI_rready => s00_couplers_to_processing_system7_0_axi_periph_RREADY,
      M_AXI_rresp => s00_couplers_to_processing_system7_0_axi_periph_RRESP(0),
      M_AXI_rvalid => s00_couplers_to_processing_system7_0_axi_periph_RVALID,
      M_AXI_wdata => s00_couplers_to_processing_system7_0_axi_periph_WDATA,
      M_AXI_wid => NLW_s00_couplers_M_AXI_wid_UNCONNECTED,
      M_AXI_wlast => NLW_s00_couplers_M_AXI_wlast_UNCONNECTED,
      M_AXI_wready => s00_couplers_to_processing_system7_0_axi_periph_WREADY,
      M_AXI_wstrb => s00_couplers_to_processing_system7_0_axi_periph_WSTRB,
      M_AXI_wvalid => s00_couplers_to_processing_system7_0_axi_periph_WVALID,
      S_ACLK => S00_ACLK_1,
      S_ARESETN(0) => S00_ARESETN_1(0),
      S_AXI_araddr => processing_system7_0_axi_periph_to_s00_couplers_ARADDR(0),
      S_AXI_arburst => processing_system7_0_axi_periph_to_s00_couplers_ARBURST(0),
      S_AXI_arcache => processing_system7_0_axi_periph_to_s00_couplers_ARCACHE(0),
      S_AXI_arid => processing_system7_0_axi_periph_to_s00_couplers_ARID(0),
      S_AXI_arlen => processing_system7_0_axi_periph_to_s00_couplers_ARLEN(0),
      S_AXI_arlock => processing_system7_0_axi_periph_to_s00_couplers_ARLOCK(0),
      S_AXI_arprot => processing_system7_0_axi_periph_to_s00_couplers_ARPROT(0),
      S_AXI_arqos => processing_system7_0_axi_periph_to_s00_couplers_ARQOS(0),
      S_AXI_arready => processing_system7_0_axi_periph_to_s00_couplers_ARREADY,
      S_AXI_arsize => processing_system7_0_axi_periph_to_s00_couplers_ARSIZE(0),
      S_AXI_arvalid => processing_system7_0_axi_periph_to_s00_couplers_ARVALID,
      S_AXI_awaddr => processing_system7_0_axi_periph_to_s00_couplers_AWADDR(0),
      S_AXI_awburst => processing_system7_0_axi_periph_to_s00_couplers_AWBURST(0),
      S_AXI_awcache => processing_system7_0_axi_periph_to_s00_couplers_AWCACHE(0),
      S_AXI_awid => processing_system7_0_axi_periph_to_s00_couplers_AWID(0),
      S_AXI_awlen => processing_system7_0_axi_periph_to_s00_couplers_AWLEN(0),
      S_AXI_awlock => processing_system7_0_axi_periph_to_s00_couplers_AWLOCK(0),
      S_AXI_awprot => processing_system7_0_axi_periph_to_s00_couplers_AWPROT(0),
      S_AXI_awqos => processing_system7_0_axi_periph_to_s00_couplers_AWQOS(0),
      S_AXI_awready => processing_system7_0_axi_periph_to_s00_couplers_AWREADY,
      S_AXI_awsize => processing_system7_0_axi_periph_to_s00_couplers_AWSIZE(0),
      S_AXI_awvalid => processing_system7_0_axi_periph_to_s00_couplers_AWVALID,
      S_AXI_bid => processing_system7_0_axi_periph_to_s00_couplers_BID,
      S_AXI_bready => processing_system7_0_axi_periph_to_s00_couplers_BREADY,
      S_AXI_bresp => processing_system7_0_axi_periph_to_s00_couplers_BRESP,
      S_AXI_bvalid => processing_system7_0_axi_periph_to_s00_couplers_BVALID,
      S_AXI_rdata => processing_system7_0_axi_periph_to_s00_couplers_RDATA,
      S_AXI_rid => processing_system7_0_axi_periph_to_s00_couplers_RID,
      S_AXI_rlast => processing_system7_0_axi_periph_to_s00_couplers_RLAST,
      S_AXI_rready => processing_system7_0_axi_periph_to_s00_couplers_RREADY,
      S_AXI_rresp => processing_system7_0_axi_periph_to_s00_couplers_RRESP,
      S_AXI_rvalid => processing_system7_0_axi_periph_to_s00_couplers_RVALID,
      S_AXI_wdata => processing_system7_0_axi_periph_to_s00_couplers_WDATA(0),
      S_AXI_wid => processing_system7_0_axi_periph_to_s00_couplers_WID(0),
      S_AXI_wlast => processing_system7_0_axi_periph_to_s00_couplers_WLAST,
      S_AXI_wready => processing_system7_0_axi_periph_to_s00_couplers_WREADY,
      S_AXI_wstrb => processing_system7_0_axi_periph_to_s00_couplers_WSTRB(0),
      S_AXI_wvalid => processing_system7_0_axi_periph_to_s00_couplers_WVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    ref_clk_fsel : out STD_LOGIC_VECTOR ( 0 to 0 );
    ref_clk_oe : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_port_0 : out STD_LOGIC;
    reset_port_1 : out STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    rgmii_port_0_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_port_0_rx_ctl : in STD_LOGIC;
    rgmii_port_0_rxc : in STD_LOGIC;
    rgmii_port_0_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_port_0_tx_ctl : out STD_LOGIC;
    rgmii_port_0_txc : out STD_LOGIC;
    rgmii_port_1_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_port_1_rx_ctl : in STD_LOGIC;
    rgmii_port_1_rxc : in STD_LOGIC;
    rgmii_port_1_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_port_1_tx_ctl : out STD_LOGIC;
    rgmii_port_1_txc : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=35,numReposBlks=33,numNonXlnxBlks=2,numHierBlks=2,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=1,da_ps7_cnt=1,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_processing_system7_0_0 is
  port (
    ENET1_GMII_TX_EN : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET1_GMII_TX_ER : out STD_LOGIC_VECTOR ( 0 to 0 );
    ENET1_MDIO_MDC : out STD_LOGIC;
    ENET1_MDIO_O : out STD_LOGIC;
    ENET1_MDIO_T : out STD_LOGIC;
    ENET1_GMII_TXD : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ENET1_GMII_COL : in STD_LOGIC;
    ENET1_GMII_CRS : in STD_LOGIC;
    ENET1_GMII_RX_CLK : in STD_LOGIC;
    ENET1_GMII_RX_DV : in STD_LOGIC;
    ENET1_GMII_RX_ER : in STD_LOGIC;
    ENET1_GMII_TX_CLK : in STD_LOGIC;
    ENET1_MDIO_I : in STD_LOGIC;
    ENET1_EXT_INTIN : in STD_LOGIC;
    ENET1_GMII_RXD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    TTC0_WAVE0_OUT : out STD_LOGIC;
    TTC0_WAVE1_OUT : out STD_LOGIC;
    TTC0_WAVE2_OUT : out STD_LOGIC;
    USB0_PORT_INDCTL : out STD_LOGIC_VECTOR ( 1 downto 0 );
    USB0_VBUS_PWRSELECT : out STD_LOGIC;
    USB0_VBUS_PWRFAULT : in STD_LOGIC;
    M_AXI_GP0_ARVALID : out STD_LOGIC;
    M_AXI_GP0_AWVALID : out STD_LOGIC;
    M_AXI_GP0_BREADY : out STD_LOGIC;
    M_AXI_GP0_RREADY : out STD_LOGIC;
    M_AXI_GP0_WLAST : out STD_LOGIC;
    M_AXI_GP0_WVALID : out STD_LOGIC;
    M_AXI_GP0_ARID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_AWID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_WID : out STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_GP0_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_GP0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWLEN : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_GP0_ACLK : in STD_LOGIC;
    M_AXI_GP0_ARREADY : in STD_LOGIC;
    M_AXI_GP0_AWREADY : in STD_LOGIC;
    M_AXI_GP0_BVALID : in STD_LOGIC;
    M_AXI_GP0_RLAST : in STD_LOGIC;
    M_AXI_GP0_RVALID : in STD_LOGIC;
    M_AXI_GP0_WREADY : in STD_LOGIC;
    M_AXI_GP0_BID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_RID : in STD_LOGIC_VECTOR ( 11 downto 0 );
    M_AXI_GP0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_GP0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    FCLK_CLK0 : out STD_LOGIC;
    FCLK_CLK1 : out STD_LOGIC;
    FCLK_RESET0_N : out STD_LOGIC;
    MIO : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    DDR_CAS_n : inout STD_LOGIC;
    DDR_CKE : inout STD_LOGIC;
    DDR_Clk_n : inout STD_LOGIC;
    DDR_Clk : inout STD_LOGIC;
    DDR_CS_n : inout STD_LOGIC;
    DDR_DRSTB : inout STD_LOGIC;
    DDR_ODT : inout STD_LOGIC;
    DDR_RAS_n : inout STD_LOGIC;
    DDR_WEB : inout STD_LOGIC;
    DDR_BankAddr : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_Addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_VRN : inout STD_LOGIC;
    DDR_VRP : inout STD_LOGIC;
    DDR_DM : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQ : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_DQS_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_DQS : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    PS_SRSTB : inout STD_LOGIC;
    PS_CLK : inout STD_LOGIC;
    PS_PORB : inout STD_LOGIC
  );
  end component design_1_processing_system7_0_0;
  component design_1_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_0_0;
  component design_1_gmii_to_rgmii_1_0 is
  port (
    tx_reset : in STD_LOGIC;
    rx_reset : in STD_LOGIC;
    mmcm_locked_in : in STD_LOGIC;
    ref_clk_in : in STD_LOGIC;
    gmii_clk_125m_in : in STD_LOGIC;
    gmii_clk_25m_in : in STD_LOGIC;
    gmii_clk_2_5m_in : in STD_LOGIC;
    rgmii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_tx_ctl : out STD_LOGIC;
    rgmii_txc : out STD_LOGIC;
    rgmii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rgmii_rx_ctl : in STD_LOGIC;
    rgmii_rxc : in STD_LOGIC;
    link_status : out STD_LOGIC;
    clock_speed : out STD_LOGIC_VECTOR ( 1 downto 0 );
    duplex_status : out STD_LOGIC;
    mdio_gem_mdc : in STD_LOGIC;
    mdio_gem_i : out STD_LOGIC;
    mdio_gem_o : in STD_LOGIC;
    mdio_gem_t : in STD_LOGIC;
    mdio_phy_mdc : out STD_LOGIC;
    mdio_phy_i : in STD_LOGIC;
    mdio_phy_o : out STD_LOGIC;
    mdio_phy_t : out STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_tx_clk : out STD_LOGIC;
    gmii_crs : out STD_LOGIC;
    gmii_col : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_rx_clk : out STD_LOGIC;
    speed_mode : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component design_1_gmii_to_rgmii_1_0;
  component design_1_util_reduced_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC
  );
  end component design_1_util_reduced_logic_0_0;
  component design_1_util_reduced_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC
  );
  end component design_1_util_reduced_logic_1_0;
  component design_1_ref_clk_oe_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_ref_clk_oe_0;
  component design_1_ref_clk_fsel_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_ref_clk_fsel_0;
  component design_1_fifo_generator_0_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC
  );
  end component design_1_fifo_generator_0_0;
  component design_1_fifo_generator_1_0 is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC
  );
  end component design_1_fifo_generator_1_0;
  component design_1_link_status_and_gate_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_link_status_and_gate_0;
  component design_1_link_status_not_gate_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_link_status_not_gate_0;
  component design_1_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component design_1_xlconcat_0_0;
  component design_1_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    In2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  end component design_1_xlconcat_1_0;
  component design_1_xlslice_data_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlslice_data_0_0;
  component design_1_xlslice_error_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_error_0_0;
  component design_1_xlslice_valid_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_valid_0_0;
  component design_1_xlslice_data_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_xlslice_data_1_0;
  component design_1_xlslice_error_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_error_1_0;
  component design_1_xlslice_valid_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 9 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlslice_valid_1_0;
  component design_1_or_gate_wr_en_fifo_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_or_gate_wr_en_fifo_0_0;
  component design_1_or_gate_rd_en_fifo_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_or_gate_rd_en_fifo_0_0;
  component design_1_or_gate_wr_en_fifo_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_or_gate_wr_en_fifo_1_0;
  component design_1_or_gate_rd_en_fifo_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_or_gate_rd_en_fifo_1_0;
  component design_1_not_gate_full_fifo_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_not_gate_full_fifo_0_0;
  component design_1_not_gate_full_fifo_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_not_gate_full_fifo_1_0;
  component design_1_not_gate_empty_fifo_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_not_gate_empty_fifo_0_0;
  component design_1_not_gate_empty_fifo_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_not_gate_empty_fifo_1_0;
  component design_1_gmii2axis_0_0 is
  port (
    I_clk200 : in STD_LOGIC;
    mdio_gem_mdc : in STD_LOGIC;
    mdio_gem_i : out STD_LOGIC;
    mdio_gem_o : in STD_LOGIC;
    mdio_gem_t : in STD_LOGIC;
    Q_link_status : out STD_LOGIC;
    Q_clock_speed : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q_speed_mode : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q_duplex_status : out STD_LOGIC;
    Q_rgmii_txd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q_rgmii_tx_ctl : out STD_LOGIC;
    Q_rgmii_txc : out STD_LOGIC;
    I_rgmii_rxd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I_rgmii_rx_ctl : in STD_LOGIC;
    I_rgmii_rxc : in STD_LOGIC;
    mdio_phy_mdc : out STD_LOGIC;
    mdio_phy_i : in STD_LOGIC;
    mdio_phy_o : out STD_LOGIC;
    mdio_phy_t : out STD_LOGIC;
    Q_mmcm_locked : out STD_LOGIC;
    I_gmii_tx_er : in STD_LOGIC;
    Q_gmii_rx_er : out STD_LOGIC;
    Q_gmii_clk_125m_out : out STD_LOGIC;
    Q_gmii_clk_25m_out : out STD_LOGIC;
    Q_gmii_clk_2_5m_out : out STD_LOGIC;
    Q_ref_clk_out : out STD_LOGIC;
    m00_axis_aclk_OUT : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    s00_axis_aclk_OUT : out STD_LOGIC;
    s00_axis_aresetn : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    m00_axis_aresetn : in STD_LOGIC
  );
  end component design_1_gmii2axis_0_0;
  component design_1_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_xlconstant_0_0;
  component design_1_not_gate_full_fifo_1_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_not_gate_full_fifo_1_1;
  component design_1_rst_processing_system7_0_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_processing_system7_0_100M_0;
  component design_1_rst_gmii2axis_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_gmii2axis_0_0;
  component design_1_axi_interfaces_0_0 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    d_o_TVALID : out STD_LOGIC;
    d_o_TREADY : in STD_LOGIC;
    d_o_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    d_i_TVALID : in STD_LOGIC;
    d_i_TREADY : out STD_LOGIC;
    d_i_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_axi_interfaces_0_0;
  signal axi_interfaces_0_d_i_TREADY : STD_LOGIC;
  signal axi_interfaces_0_d_o_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_interfaces_0_d_o_TVALID : STD_LOGIC;
  signal fifo_generator_0_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal fifo_generator_0_prog_empty : STD_LOGIC;
  signal fifo_generator_0_prog_full : STD_LOGIC;
  signal fifo_generator_1_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal fifo_generator_1_prog_empty : STD_LOGIC;
  signal fifo_generator_1_prog_full : STD_LOGIC;
  signal gmii2axis_0_Q_gmii_clk_125m_out : STD_LOGIC;
  signal gmii2axis_0_Q_gmii_clk_25m_out : STD_LOGIC;
  signal gmii2axis_0_Q_gmii_clk_2_5m_out : STD_LOGIC;
  signal gmii2axis_0_Q_gmii_rx_er : STD_LOGIC;
  signal gmii2axis_0_Q_link_status : STD_LOGIC;
  signal gmii2axis_0_Q_mmcm_locked : STD_LOGIC;
  signal gmii2axis_0_Q_ref_clk_out : STD_LOGIC;
  signal gmii2axis_0_RGMII_RD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii2axis_0_RGMII_RXC : STD_LOGIC;
  signal gmii2axis_0_RGMII_RX_CTL : STD_LOGIC;
  signal gmii2axis_0_RGMII_TD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii2axis_0_RGMII_TXC : STD_LOGIC;
  signal gmii2axis_0_RGMII_TX_CTL : STD_LOGIC;
  signal gmii2axis_0_m00_axis_aclk_OUT : STD_LOGIC;
  signal gmii2axis_0_m00_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gmii2axis_0_m00_axis_tvalid : STD_LOGIC;
  signal gmii2axis_0_s00_axis_aclk_OUT : STD_LOGIC;
  signal gmii_to_rgmii_1_MDIO_PHY_MDC : STD_LOGIC;
  signal gmii_to_rgmii_1_MDIO_PHY_MDIO_I : STD_LOGIC;
  signal gmii_to_rgmii_1_MDIO_PHY_MDIO_O : STD_LOGIC;
  signal gmii_to_rgmii_1_MDIO_PHY_MDIO_T : STD_LOGIC;
  signal gmii_to_rgmii_1_RGMII_RD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_to_rgmii_1_RGMII_RXC : STD_LOGIC;
  signal gmii_to_rgmii_1_RGMII_RX_CTL : STD_LOGIC;
  signal gmii_to_rgmii_1_RGMII_TD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_to_rgmii_1_RGMII_TXC : STD_LOGIC;
  signal gmii_to_rgmii_1_RGMII_TX_CTL : STD_LOGIC;
  signal gmii_to_rgmii_1_gmii_rx_clk : STD_LOGIC;
  signal gmii_to_rgmii_1_gmii_rx_dv : STD_LOGIC;
  signal gmii_to_rgmii_1_gmii_rx_er : STD_LOGIC;
  signal gmii_to_rgmii_1_gmii_rxd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gmii_to_rgmii_1_gmii_tx_clk : STD_LOGIC;
  signal gmii_to_rgmii_1_link_status : STD_LOGIC;
  signal link_status_and_gate_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal link_status_not_gate_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal not_gate_empty_fifo_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal not_gate_empty_fifo_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal not_gate_full_fifo_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal not_gate_full_fifo_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal not_gate_full_fifo_2_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal or_gate_rd_en_fifo_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal or_gate_rd_en_fifo_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal or_gate_wr_en_fifo_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal or_gate_wr_en_fifo_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal processing_system7_0_DDR_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal processing_system7_0_DDR_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_DDR_CAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_CKE : STD_LOGIC;
  signal processing_system7_0_DDR_CK_N : STD_LOGIC;
  signal processing_system7_0_DDR_CK_P : STD_LOGIC;
  signal processing_system7_0_DDR_CS_N : STD_LOGIC;
  signal processing_system7_0_DDR_DM : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_DDR_DQS_N : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_DQS_P : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_DDR_ODT : STD_LOGIC;
  signal processing_system7_0_DDR_RAS_N : STD_LOGIC;
  signal processing_system7_0_DDR_RESET_N : STD_LOGIC;
  signal processing_system7_0_DDR_WE_N : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK0 : STD_LOGIC;
  signal processing_system7_0_FCLK_CLK1 : STD_LOGIC;
  signal processing_system7_0_FCLK_RESET0_N : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRN : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_DDR_VRP : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_MIO : STD_LOGIC_VECTOR ( 53 downto 0 );
  signal processing_system7_0_FIXED_IO_PS_CLK : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_PORB : STD_LOGIC;
  signal processing_system7_0_FIXED_IO_PS_SRSTB : STD_LOGIC;
  signal processing_system7_0_MDIO_ETHERNET_1_MDC : STD_LOGIC;
  signal processing_system7_0_MDIO_ETHERNET_1_MDIO_I : STD_LOGIC;
  signal processing_system7_0_MDIO_ETHERNET_1_MDIO_O : STD_LOGIC;
  signal processing_system7_0_MDIO_ETHERNET_1_MDIO_T : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_ARVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLEN : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWLOCK : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal processing_system7_0_M_AXI_GP0_AWVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_BVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal processing_system7_0_M_AXI_GP0_RVALID : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WID : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WLAST : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WREADY : STD_LOGIC;
  signal processing_system7_0_M_AXI_GP0_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal processing_system7_0_M_AXI_GP0_WVALID : STD_LOGIC;
  signal ref_clk_fsel_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ref_clk_oe_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_rtl_1 : STD_LOGIC;
  signal rst_gmii2axis_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_processing_system7_0_100M_interconnect_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_processing_system7_0_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_reduced_logic_0_Res : STD_LOGIC;
  signal util_reduced_logic_1_Res : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_data_0_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_data_1_Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xlslice_error_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_error_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_valid_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_valid_1_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_interfaces_0_ap_done_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interfaces_0_ap_idle_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_interfaces_0_ap_ready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_0_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_0_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_1_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_1_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_1_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii2axis_0_Q_duplex_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii2axis_0_m00_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii2axis_0_mdio_phy_mdc_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii2axis_0_mdio_phy_o_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii2axis_0_mdio_phy_t_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii2axis_0_s00_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii2axis_0_Q_clock_speed_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii2axis_0_Q_speed_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii2axis_0_m00_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_gmii_to_rgmii_1_duplex_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_gmii_col_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_gmii_crs_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_clock_speed_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_1_speed_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET1_GMII_TXD_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_ENET1_GMII_TX_EN_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_ENET1_GMII_TX_ER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_axi_periph_M00_AXI_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_axi_periph_M00_AXI_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_axi_periph_M00_AXI_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_axi_periph_M00_AXI_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_axi_periph_M00_AXI_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_axi_periph_M00_AXI_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_axi_periph_M00_AXI_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_axi_periph_M00_AXI_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_axi_periph_M00_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_gmii2axis_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_gmii2axis_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gmii2axis_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_gmii2axis_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_processing_system7_0_100M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_processing_system7_0_100M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_processing_system7_0_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  gmii2axis_0_RGMII_RD(3 downto 0) <= rgmii_port_0_rd(3 downto 0);
  gmii2axis_0_RGMII_RXC <= rgmii_port_0_rxc;
  gmii2axis_0_RGMII_RX_CTL <= rgmii_port_0_rx_ctl;
  gmii_to_rgmii_1_RGMII_RD(3 downto 0) <= rgmii_port_1_rd(3 downto 0);
  gmii_to_rgmii_1_RGMII_RXC <= rgmii_port_1_rxc;
  gmii_to_rgmii_1_RGMII_RX_CTL <= rgmii_port_1_rx_ctl;
  ref_clk_fsel(0) <= ref_clk_fsel_dout(0);
  ref_clk_oe(0) <= ref_clk_oe_dout(0);
  reset_port_0 <= util_reduced_logic_0_Res;
  reset_port_1 <= util_reduced_logic_1_Res;
  reset_rtl_1 <= reset_rtl;
  rgmii_port_0_td(3 downto 0) <= gmii2axis_0_RGMII_TD(3 downto 0);
  rgmii_port_0_tx_ctl <= gmii2axis_0_RGMII_TX_CTL;
  rgmii_port_0_txc <= gmii2axis_0_RGMII_TXC;
  rgmii_port_1_td(3 downto 0) <= gmii_to_rgmii_1_RGMII_TD(3 downto 0);
  rgmii_port_1_tx_ctl <= gmii_to_rgmii_1_RGMII_TX_CTL;
  rgmii_port_1_txc <= gmii_to_rgmii_1_RGMII_TXC;
axi_interfaces_0: component design_1_axi_interfaces_0_0
     port map (
      ap_clk => gmii2axis_0_m00_axis_aclk_OUT,
      ap_done => NLW_axi_interfaces_0_ap_done_UNCONNECTED,
      ap_idle => NLW_axi_interfaces_0_ap_idle_UNCONNECTED,
      ap_ready => NLW_axi_interfaces_0_ap_ready_UNCONNECTED,
      ap_rst_n => not_gate_full_fifo_2_Res(0),
      ap_start => xlconstant_0_dout(0),
      d_i_TDATA(7 downto 0) => gmii2axis_0_m00_axis_tdata(7 downto 0),
      d_i_TREADY => axi_interfaces_0_d_i_TREADY,
      d_i_TVALID => gmii2axis_0_m00_axis_tvalid,
      d_o_TDATA(7 downto 0) => axi_interfaces_0_d_o_TDATA(7 downto 0),
      d_o_TREADY => '0',
      d_o_TVALID => axi_interfaces_0_d_o_TVALID
    );
fifo_generator_0: component design_1_fifo_generator_0_0
     port map (
      din(9 downto 0) => xlconcat_0_dout(9 downto 0),
      dout(9 downto 0) => fifo_generator_0_dout(9 downto 0),
      empty => NLW_fifo_generator_0_empty_UNCONNECTED,
      full => NLW_fifo_generator_0_full_UNCONNECTED,
      prog_empty => fifo_generator_0_prog_empty,
      prog_full => fifo_generator_0_prog_full,
      rd_clk => gmii_to_rgmii_1_gmii_tx_clk,
      rd_en => or_gate_rd_en_fifo_0_Res(0),
      rst => link_status_not_gate_Res(0),
      valid => NLW_fifo_generator_0_valid_UNCONNECTED,
      wr_clk => gmii2axis_0_m00_axis_aclk_OUT,
      wr_en => or_gate_wr_en_fifo_0_Res(0)
    );
fifo_generator_1: component design_1_fifo_generator_1_0
     port map (
      din(9 downto 0) => xlconcat_1_dout(9 downto 0),
      dout(9 downto 0) => fifo_generator_1_dout(9 downto 0),
      empty => NLW_fifo_generator_1_empty_UNCONNECTED,
      full => NLW_fifo_generator_1_full_UNCONNECTED,
      prog_empty => fifo_generator_1_prog_empty,
      prog_full => fifo_generator_1_prog_full,
      rd_clk => gmii2axis_0_s00_axis_aclk_OUT,
      rd_en => or_gate_rd_en_fifo_1_Res(0),
      rst => link_status_not_gate_Res(0),
      valid => NLW_fifo_generator_1_valid_UNCONNECTED,
      wr_clk => gmii_to_rgmii_1_gmii_rx_clk,
      wr_en => or_gate_wr_en_fifo_1_Res(0)
    );
gmii2axis_0: component design_1_gmii2axis_0_0
     port map (
      I_clk200 => processing_system7_0_FCLK_CLK1,
      I_gmii_tx_er => xlslice_error_1_Dout(0),
      I_rgmii_rx_ctl => gmii2axis_0_RGMII_RX_CTL,
      I_rgmii_rxc => gmii2axis_0_RGMII_RXC,
      I_rgmii_rxd(3 downto 0) => gmii2axis_0_RGMII_RD(3 downto 0),
      Q_clock_speed(1 downto 0) => NLW_gmii2axis_0_Q_clock_speed_UNCONNECTED(1 downto 0),
      Q_duplex_status => NLW_gmii2axis_0_Q_duplex_status_UNCONNECTED,
      Q_gmii_clk_125m_out => gmii2axis_0_Q_gmii_clk_125m_out,
      Q_gmii_clk_25m_out => gmii2axis_0_Q_gmii_clk_25m_out,
      Q_gmii_clk_2_5m_out => gmii2axis_0_Q_gmii_clk_2_5m_out,
      Q_gmii_rx_er => gmii2axis_0_Q_gmii_rx_er,
      Q_link_status => gmii2axis_0_Q_link_status,
      Q_mmcm_locked => gmii2axis_0_Q_mmcm_locked,
      Q_ref_clk_out => gmii2axis_0_Q_ref_clk_out,
      Q_rgmii_tx_ctl => gmii2axis_0_RGMII_TX_CTL,
      Q_rgmii_txc => gmii2axis_0_RGMII_TXC,
      Q_rgmii_txd(3 downto 0) => gmii2axis_0_RGMII_TD(3 downto 0),
      Q_speed_mode(1 downto 0) => NLW_gmii2axis_0_Q_speed_mode_UNCONNECTED(1 downto 0),
      m00_axis_aclk_OUT => gmii2axis_0_m00_axis_aclk_OUT,
      m00_axis_aresetn => util_vector_logic_0_Res(0),
      m00_axis_tdata(7 downto 0) => gmii2axis_0_m00_axis_tdata(7 downto 0),
      m00_axis_tlast => NLW_gmii2axis_0_m00_axis_tlast_UNCONNECTED,
      m00_axis_tready => axi_interfaces_0_d_i_TREADY,
      m00_axis_tstrb(0) => NLW_gmii2axis_0_m00_axis_tstrb_UNCONNECTED(0),
      m00_axis_tvalid => gmii2axis_0_m00_axis_tvalid,
      mdio_gem_i => gmii_to_rgmii_1_MDIO_PHY_MDIO_I,
      mdio_gem_mdc => gmii_to_rgmii_1_MDIO_PHY_MDC,
      mdio_gem_o => gmii_to_rgmii_1_MDIO_PHY_MDIO_O,
      mdio_gem_t => gmii_to_rgmii_1_MDIO_PHY_MDIO_T,
      mdio_phy_i => '0',
      mdio_phy_mdc => NLW_gmii2axis_0_mdio_phy_mdc_UNCONNECTED,
      mdio_phy_o => NLW_gmii2axis_0_mdio_phy_o_UNCONNECTED,
      mdio_phy_t => NLW_gmii2axis_0_mdio_phy_t_UNCONNECTED,
      s00_axis_aclk_OUT => gmii2axis_0_s00_axis_aclk_OUT,
      s00_axis_aresetn => util_vector_logic_0_Res(0),
      s00_axis_tdata(7 downto 0) => xlslice_data_1_Dout(7 downto 0),
      s00_axis_tlast => '0',
      s00_axis_tready => NLW_gmii2axis_0_s00_axis_tready_UNCONNECTED,
      s00_axis_tstrb(0) => '0',
      s00_axis_tvalid => xlslice_valid_1_Dout(0)
    );
gmii_to_rgmii_1: component design_1_gmii_to_rgmii_1_0
     port map (
      clock_speed(1 downto 0) => NLW_gmii_to_rgmii_1_clock_speed_UNCONNECTED(1 downto 0),
      duplex_status => NLW_gmii_to_rgmii_1_duplex_status_UNCONNECTED,
      gmii_clk_125m_in => gmii2axis_0_Q_gmii_clk_125m_out,
      gmii_clk_25m_in => gmii2axis_0_Q_gmii_clk_25m_out,
      gmii_clk_2_5m_in => gmii2axis_0_Q_gmii_clk_2_5m_out,
      gmii_col => NLW_gmii_to_rgmii_1_gmii_col_UNCONNECTED,
      gmii_crs => NLW_gmii_to_rgmii_1_gmii_crs_UNCONNECTED,
      gmii_rx_clk => gmii_to_rgmii_1_gmii_rx_clk,
      gmii_rx_dv => gmii_to_rgmii_1_gmii_rx_dv,
      gmii_rx_er => gmii_to_rgmii_1_gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_to_rgmii_1_gmii_rxd(7 downto 0),
      gmii_tx_clk => gmii_to_rgmii_1_gmii_tx_clk,
      gmii_tx_en => xlslice_valid_0_Dout(0),
      gmii_tx_er => xlslice_error_0_Dout(0),
      gmii_txd(7 downto 0) => xlslice_data_0_Dout(7 downto 0),
      link_status => gmii_to_rgmii_1_link_status,
      mdio_gem_i => processing_system7_0_MDIO_ETHERNET_1_MDIO_I,
      mdio_gem_mdc => processing_system7_0_MDIO_ETHERNET_1_MDC,
      mdio_gem_o => processing_system7_0_MDIO_ETHERNET_1_MDIO_O,
      mdio_gem_t => processing_system7_0_MDIO_ETHERNET_1_MDIO_T,
      mdio_phy_i => gmii_to_rgmii_1_MDIO_PHY_MDIO_I,
      mdio_phy_mdc => gmii_to_rgmii_1_MDIO_PHY_MDC,
      mdio_phy_o => gmii_to_rgmii_1_MDIO_PHY_MDIO_O,
      mdio_phy_t => gmii_to_rgmii_1_MDIO_PHY_MDIO_T,
      mmcm_locked_in => gmii2axis_0_Q_mmcm_locked,
      ref_clk_in => gmii2axis_0_Q_ref_clk_out,
      rgmii_rx_ctl => gmii_to_rgmii_1_RGMII_RX_CTL,
      rgmii_rxc => gmii_to_rgmii_1_RGMII_RXC,
      rgmii_rxd(3 downto 0) => gmii_to_rgmii_1_RGMII_RD(3 downto 0),
      rgmii_tx_ctl => gmii_to_rgmii_1_RGMII_TX_CTL,
      rgmii_txc => gmii_to_rgmii_1_RGMII_TXC,
      rgmii_txd(3 downto 0) => gmii_to_rgmii_1_RGMII_TD(3 downto 0),
      rx_reset => util_vector_logic_0_Res(0),
      speed_mode(1 downto 0) => NLW_gmii_to_rgmii_1_speed_mode_UNCONNECTED(1 downto 0),
      tx_reset => util_vector_logic_0_Res(0)
    );
link_status_and_gate: component design_1_link_status_and_gate_0
     port map (
      Op1(0) => gmii2axis_0_Q_link_status,
      Op2(0) => gmii_to_rgmii_1_link_status,
      Res(0) => link_status_and_gate_Res(0)
    );
link_status_not_gate: component design_1_link_status_not_gate_0
     port map (
      Op1(0) => link_status_and_gate_Res(0),
      Res(0) => link_status_not_gate_Res(0)
    );
not_gate_empty_fifo_0: component design_1_not_gate_empty_fifo_0_0
     port map (
      Op1(0) => fifo_generator_0_prog_empty,
      Res(0) => not_gate_empty_fifo_0_Res(0)
    );
not_gate_empty_fifo_1: component design_1_not_gate_empty_fifo_1_0
     port map (
      Op1(0) => fifo_generator_1_prog_empty,
      Res(0) => not_gate_empty_fifo_1_Res(0)
    );
not_gate_full_fifo_0: component design_1_not_gate_full_fifo_0_0
     port map (
      Op1(0) => fifo_generator_0_prog_full,
      Res(0) => not_gate_full_fifo_0_Res(0)
    );
not_gate_full_fifo_1: component design_1_not_gate_full_fifo_1_0
     port map (
      Op1(0) => fifo_generator_1_prog_full,
      Res(0) => not_gate_full_fifo_1_Res(0)
    );
not_gate_full_fifo_2: component design_1_not_gate_full_fifo_1_1
     port map (
      Op1(0) => util_vector_logic_0_Res(0),
      Res(0) => not_gate_full_fifo_2_Res(0)
    );
or_gate_rd_en_fifo_0: component design_1_or_gate_rd_en_fifo_0_0
     port map (
      Op1(0) => not_gate_empty_fifo_0_Res(0),
      Op2(0) => xlslice_valid_0_Dout(0),
      Res(0) => or_gate_rd_en_fifo_0_Res(0)
    );
or_gate_rd_en_fifo_1: component design_1_or_gate_rd_en_fifo_1_0
     port map (
      Op1(0) => not_gate_empty_fifo_1_Res(0),
      Op2(0) => xlslice_valid_1_Dout(0),
      Res(0) => or_gate_rd_en_fifo_1_Res(0)
    );
or_gate_wr_en_fifo_0: component design_1_or_gate_wr_en_fifo_0_0
     port map (
      Op1(0) => not_gate_full_fifo_0_Res(0),
      Op2(0) => axi_interfaces_0_d_o_TVALID,
      Res(0) => or_gate_wr_en_fifo_0_Res(0)
    );
or_gate_wr_en_fifo_1: component design_1_or_gate_wr_en_fifo_1_0
     port map (
      Op1(0) => not_gate_full_fifo_1_Res(0),
      Op2(0) => gmii_to_rgmii_1_gmii_rx_dv,
      Res(0) => or_gate_wr_en_fifo_1_Res(0)
    );
processing_system7_0: component design_1_processing_system7_0_0
     port map (
      DDR_Addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_BankAddr(2 downto 0) => DDR_ba(2 downto 0),
      DDR_CAS_n => DDR_cas_n,
      DDR_CKE => DDR_cke,
      DDR_CS_n => DDR_cs_n,
      DDR_Clk => DDR_ck_p,
      DDR_Clk_n => DDR_ck_n,
      DDR_DM(3 downto 0) => DDR_dm(3 downto 0),
      DDR_DQ(31 downto 0) => DDR_dq(31 downto 0),
      DDR_DQS(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_DQS_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_DRSTB => DDR_reset_n,
      DDR_ODT => DDR_odt,
      DDR_RAS_n => DDR_ras_n,
      DDR_VRN => FIXED_IO_ddr_vrn,
      DDR_VRP => FIXED_IO_ddr_vrp,
      DDR_WEB => DDR_we_n,
      ENET1_EXT_INTIN => '0',
      ENET1_GMII_COL => '0',
      ENET1_GMII_CRS => '0',
      ENET1_GMII_RXD(7 downto 0) => B"00000000",
      ENET1_GMII_RX_CLK => '0',
      ENET1_GMII_RX_DV => '0',
      ENET1_GMII_RX_ER => '0',
      ENET1_GMII_TXD(7 downto 0) => NLW_processing_system7_0_ENET1_GMII_TXD_UNCONNECTED(7 downto 0),
      ENET1_GMII_TX_CLK => '0',
      ENET1_GMII_TX_EN(0) => NLW_processing_system7_0_ENET1_GMII_TX_EN_UNCONNECTED(0),
      ENET1_GMII_TX_ER(0) => NLW_processing_system7_0_ENET1_GMII_TX_ER_UNCONNECTED(0),
      ENET1_MDIO_I => processing_system7_0_MDIO_ETHERNET_1_MDIO_I,
      ENET1_MDIO_MDC => processing_system7_0_MDIO_ETHERNET_1_MDC,
      ENET1_MDIO_O => processing_system7_0_MDIO_ETHERNET_1_MDIO_O,
      ENET1_MDIO_T => processing_system7_0_MDIO_ETHERNET_1_MDIO_T,
      FCLK_CLK0 => processing_system7_0_FCLK_CLK0,
      FCLK_CLK1 => processing_system7_0_FCLK_CLK1,
      FCLK_RESET0_N => processing_system7_0_FCLK_RESET0_N,
      MIO(53 downto 0) => FIXED_IO_mio(53 downto 0),
      M_AXI_GP0_ACLK => processing_system7_0_FCLK_CLK0,
      M_AXI_GP0_ARADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      M_AXI_GP0_ARREADY => processing_system7_0_M_AXI_GP0_ARREADY,
      M_AXI_GP0_ARSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      M_AXI_GP0_ARVALID => processing_system7_0_M_AXI_GP0_ARVALID,
      M_AXI_GP0_AWADDR(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      M_AXI_GP0_AWREADY => processing_system7_0_M_AXI_GP0_AWREADY,
      M_AXI_GP0_AWSIZE(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      M_AXI_GP0_AWVALID => processing_system7_0_M_AXI_GP0_AWVALID,
      M_AXI_GP0_BID(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      M_AXI_GP0_BREADY => processing_system7_0_M_AXI_GP0_BREADY,
      M_AXI_GP0_BRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      M_AXI_GP0_BVALID => processing_system7_0_M_AXI_GP0_BVALID,
      M_AXI_GP0_RDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      M_AXI_GP0_RID(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      M_AXI_GP0_RLAST => processing_system7_0_M_AXI_GP0_RLAST,
      M_AXI_GP0_RREADY => processing_system7_0_M_AXI_GP0_RREADY,
      M_AXI_GP0_RRESP(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      M_AXI_GP0_RVALID => processing_system7_0_M_AXI_GP0_RVALID,
      M_AXI_GP0_WDATA(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      M_AXI_GP0_WLAST => processing_system7_0_M_AXI_GP0_WLAST,
      M_AXI_GP0_WREADY => processing_system7_0_M_AXI_GP0_WREADY,
      M_AXI_GP0_WSTRB(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      M_AXI_GP0_WVALID => processing_system7_0_M_AXI_GP0_WVALID,
      PS_CLK => FIXED_IO_ps_clk,
      PS_PORB => FIXED_IO_ps_porb,
      PS_SRSTB => FIXED_IO_ps_srstb,
      TTC0_WAVE0_OUT => NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED,
      TTC0_WAVE1_OUT => NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED,
      TTC0_WAVE2_OUT => NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED,
      USB0_PORT_INDCTL(1 downto 0) => NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED(1 downto 0),
      USB0_VBUS_PWRFAULT => '0',
      USB0_VBUS_PWRSELECT => NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED
    );
processing_system7_0_axi_periph: entity work.design_1_processing_system7_0_axi_periph_0
     port map (
      ACLK => processing_system7_0_FCLK_CLK0,
      ARESETN(0) => rst_processing_system7_0_100M_interconnect_aresetn(0),
      M00_ACLK => processing_system7_0_FCLK_CLK0,
      M00_ARESETN(0) => rst_gmii2axis_0_peripheral_aresetn(0),
      M00_AXI_araddr(31 downto 0) => NLW_processing_system7_0_axi_periph_M00_AXI_araddr_UNCONNECTED(31 downto 0),
      M00_AXI_arready => '0',
      M00_AXI_arvalid => NLW_processing_system7_0_axi_periph_M00_AXI_arvalid_UNCONNECTED,
      M00_AXI_awaddr(31 downto 0) => NLW_processing_system7_0_axi_periph_M00_AXI_awaddr_UNCONNECTED(31 downto 0),
      M00_AXI_awready => '0',
      M00_AXI_awvalid => NLW_processing_system7_0_axi_periph_M00_AXI_awvalid_UNCONNECTED,
      M00_AXI_bready => NLW_processing_system7_0_axi_periph_M00_AXI_bready_UNCONNECTED,
      M00_AXI_bresp(1 downto 0) => B"00",
      M00_AXI_bvalid => '0',
      M00_AXI_rdata(31 downto 0) => B"00000000000000000000000000000000",
      M00_AXI_rready => NLW_processing_system7_0_axi_periph_M00_AXI_rready_UNCONNECTED,
      M00_AXI_rresp(1 downto 0) => B"00",
      M00_AXI_rvalid => '0',
      M00_AXI_wdata(31 downto 0) => NLW_processing_system7_0_axi_periph_M00_AXI_wdata_UNCONNECTED(31 downto 0),
      M00_AXI_wready => '0',
      M00_AXI_wstrb(3 downto 0) => NLW_processing_system7_0_axi_periph_M00_AXI_wstrb_UNCONNECTED(3 downto 0),
      M00_AXI_wvalid => NLW_processing_system7_0_axi_periph_M00_AXI_wvalid_UNCONNECTED,
      S00_ACLK => processing_system7_0_FCLK_CLK0,
      S00_ARESETN(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      S00_AXI_araddr(31 downto 0) => processing_system7_0_M_AXI_GP0_ARADDR(31 downto 0),
      S00_AXI_arburst(1 downto 0) => processing_system7_0_M_AXI_GP0_ARBURST(1 downto 0),
      S00_AXI_arcache(3 downto 0) => processing_system7_0_M_AXI_GP0_ARCACHE(3 downto 0),
      S00_AXI_arid(11 downto 0) => processing_system7_0_M_AXI_GP0_ARID(11 downto 0),
      S00_AXI_arlen(3 downto 0) => processing_system7_0_M_AXI_GP0_ARLEN(3 downto 0),
      S00_AXI_arlock(1 downto 0) => processing_system7_0_M_AXI_GP0_ARLOCK(1 downto 0),
      S00_AXI_arprot(2 downto 0) => processing_system7_0_M_AXI_GP0_ARPROT(2 downto 0),
      S00_AXI_arqos(3 downto 0) => processing_system7_0_M_AXI_GP0_ARQOS(3 downto 0),
      S00_AXI_arready => processing_system7_0_M_AXI_GP0_ARREADY,
      S00_AXI_arsize(2 downto 0) => processing_system7_0_M_AXI_GP0_ARSIZE(2 downto 0),
      S00_AXI_arvalid => processing_system7_0_M_AXI_GP0_ARVALID,
      S00_AXI_awaddr(31 downto 0) => processing_system7_0_M_AXI_GP0_AWADDR(31 downto 0),
      S00_AXI_awburst(1 downto 0) => processing_system7_0_M_AXI_GP0_AWBURST(1 downto 0),
      S00_AXI_awcache(3 downto 0) => processing_system7_0_M_AXI_GP0_AWCACHE(3 downto 0),
      S00_AXI_awid(11 downto 0) => processing_system7_0_M_AXI_GP0_AWID(11 downto 0),
      S00_AXI_awlen(3 downto 0) => processing_system7_0_M_AXI_GP0_AWLEN(3 downto 0),
      S00_AXI_awlock(1 downto 0) => processing_system7_0_M_AXI_GP0_AWLOCK(1 downto 0),
      S00_AXI_awprot(2 downto 0) => processing_system7_0_M_AXI_GP0_AWPROT(2 downto 0),
      S00_AXI_awqos(3 downto 0) => processing_system7_0_M_AXI_GP0_AWQOS(3 downto 0),
      S00_AXI_awready => processing_system7_0_M_AXI_GP0_AWREADY,
      S00_AXI_awsize(2 downto 0) => processing_system7_0_M_AXI_GP0_AWSIZE(2 downto 0),
      S00_AXI_awvalid => processing_system7_0_M_AXI_GP0_AWVALID,
      S00_AXI_bid(11 downto 0) => processing_system7_0_M_AXI_GP0_BID(11 downto 0),
      S00_AXI_bready => processing_system7_0_M_AXI_GP0_BREADY,
      S00_AXI_bresp(1 downto 0) => processing_system7_0_M_AXI_GP0_BRESP(1 downto 0),
      S00_AXI_bvalid => processing_system7_0_M_AXI_GP0_BVALID,
      S00_AXI_rdata(31 downto 0) => processing_system7_0_M_AXI_GP0_RDATA(31 downto 0),
      S00_AXI_rid(11 downto 0) => processing_system7_0_M_AXI_GP0_RID(11 downto 0),
      S00_AXI_rlast => processing_system7_0_M_AXI_GP0_RLAST,
      S00_AXI_rready => processing_system7_0_M_AXI_GP0_RREADY,
      S00_AXI_rresp(1 downto 0) => processing_system7_0_M_AXI_GP0_RRESP(1 downto 0),
      S00_AXI_rvalid => processing_system7_0_M_AXI_GP0_RVALID,
      S00_AXI_wdata(31 downto 0) => processing_system7_0_M_AXI_GP0_WDATA(31 downto 0),
      S00_AXI_wid(11 downto 0) => processing_system7_0_M_AXI_GP0_WID(11 downto 0),
      S00_AXI_wlast => processing_system7_0_M_AXI_GP0_WLAST,
      S00_AXI_wready => processing_system7_0_M_AXI_GP0_WREADY,
      S00_AXI_wstrb(3 downto 0) => processing_system7_0_M_AXI_GP0_WSTRB(3 downto 0),
      S00_AXI_wvalid => processing_system7_0_M_AXI_GP0_WVALID
    );
ref_clk_fsel_RnM: component design_1_ref_clk_fsel_0
     port map (
      dout(0) => ref_clk_fsel_dout(0)
    );
ref_clk_oe_RnM: component design_1_ref_clk_oe_0
     port map (
      dout(0) => ref_clk_oe_dout(0)
    );
rst_gmii2axis_0: component design_1_rst_gmii2axis_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_gmii2axis_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => reset_rtl_1,
      interconnect_aresetn(0) => NLW_rst_gmii2axis_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_gmii2axis_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_gmii2axis_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_gmii2axis_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => gmii2axis_0_m00_axis_aclk_OUT
    );
rst_processing_system7_0_100M: component design_1_rst_processing_system7_0_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_processing_system7_0_100M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => '1',
      ext_reset_in => processing_system7_0_FCLK_RESET0_N,
      interconnect_aresetn(0) => rst_processing_system7_0_100M_interconnect_aresetn(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_processing_system7_0_100M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_processing_system7_0_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_processing_system7_0_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => processing_system7_0_FCLK_CLK0
    );
util_reduced_logic_0: component design_1_util_reduced_logic_0_0
     port map (
      Op1(0) => processing_system7_0_FCLK_RESET0_N,
      Res => util_reduced_logic_0_Res
    );
util_reduced_logic_1: component design_1_util_reduced_logic_1_0
     port map (
      Op1(0) => processing_system7_0_FCLK_RESET0_N,
      Res => util_reduced_logic_1_Res
    );
util_vector_logic_0: component design_1_util_vector_logic_0_0
     port map (
      Op1(0) => processing_system7_0_FCLK_RESET0_N,
      Res(0) => util_vector_logic_0_Res(0)
    );
xlconcat_0: component design_1_xlconcat_0_0
     port map (
      In0(7 downto 0) => axi_interfaces_0_d_o_TDATA(7 downto 0),
      In1(0) => gmii2axis_0_Q_gmii_rx_er,
      In2(0) => axi_interfaces_0_d_o_TVALID,
      dout(9 downto 0) => xlconcat_0_dout(9 downto 0)
    );
xlconcat_1: component design_1_xlconcat_1_0
     port map (
      In0(7 downto 0) => gmii_to_rgmii_1_gmii_rxd(7 downto 0),
      In1(0) => gmii_to_rgmii_1_gmii_rx_er,
      In2(0) => gmii_to_rgmii_1_gmii_rx_dv,
      dout(9 downto 0) => xlconcat_1_dout(9 downto 0)
    );
xlconstant_0: component design_1_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlslice_data_0: component design_1_xlslice_data_0_0
     port map (
      Din(9 downto 0) => fifo_generator_0_dout(9 downto 0),
      Dout(7 downto 0) => xlslice_data_0_Dout(7 downto 0)
    );
xlslice_data_1: component design_1_xlslice_data_1_0
     port map (
      Din(9 downto 0) => fifo_generator_1_dout(9 downto 0),
      Dout(7 downto 0) => xlslice_data_1_Dout(7 downto 0)
    );
xlslice_error_0: component design_1_xlslice_error_0_0
     port map (
      Din(9 downto 0) => fifo_generator_0_dout(9 downto 0),
      Dout(0) => xlslice_error_0_Dout(0)
    );
xlslice_error_1: component design_1_xlslice_error_1_0
     port map (
      Din(9 downto 0) => fifo_generator_1_dout(9 downto 0),
      Dout(0) => xlslice_error_1_Dout(0)
    );
xlslice_valid_0: component design_1_xlslice_valid_0_0
     port map (
      Din(9 downto 0) => fifo_generator_0_dout(9 downto 0),
      Dout(0) => xlslice_valid_0_Dout(0)
    );
xlslice_valid_1: component design_1_xlslice_valid_1_0
     port map (
      Din(9 downto 0) => fifo_generator_1_dout(9 downto 0),
      Dout(0) => xlslice_valid_1_Dout(0)
    );
end STRUCTURE;
