--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Tue Aug  2 18:10:17 2016
--Host        : wintermute running 64-bit Ubuntu 14.04.4 LTS
--Command     : generate_target design_2.bd
--Design      : design_2
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2 is
  port (
    GMII_0_col : out STD_LOGIC;
    GMII_0_crs : out STD_LOGIC;
    GMII_0_rx_clk : out STD_LOGIC;
    GMII_0_rx_dv : out STD_LOGIC;
    GMII_0_rx_er : out STD_LOGIC;
    GMII_0_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    GMII_0_tx_clk : out STD_LOGIC;
    GMII_0_tx_en : in STD_LOGIC;
    GMII_0_tx_er : in STD_LOGIC;
    GMII_0_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    GMII_1_col : out STD_LOGIC;
    GMII_1_crs : out STD_LOGIC;
    GMII_1_rx_clk : out STD_LOGIC;
    GMII_1_rx_dv : out STD_LOGIC;
    GMII_1_rx_er : out STD_LOGIC;
    GMII_1_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    GMII_1_tx_clk : out STD_LOGIC;
    GMII_1_tx_en : in STD_LOGIC;
    GMII_1_tx_er : in STD_LOGIC;
    GMII_1_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RGMII_0_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_0_rx_ctl : in STD_LOGIC;
    RGMII_0_rxc : in STD_LOGIC;
    RGMII_0_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_0_tx_ctl : out STD_LOGIC;
    RGMII_0_txc : out STD_LOGIC;
    RGMII_1_rd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_1_rx_ctl : in STD_LOGIC;
    RGMII_1_rxc : in STD_LOGIC;
    RGMII_1_td : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RGMII_1_tx_ctl : out STD_LOGIC;
    RGMII_1_txc : out STD_LOGIC;
    clkin : in STD_LOGIC;
    link_status_AND : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mdio_gem_i : out STD_LOGIC;
    mdio_gem_mdc : in STD_LOGIC;
    mdio_gem_o : in STD_LOGIC;
    mdio_gem_t : in STD_LOGIC;
    rx_reset : in STD_LOGIC;
    tx_reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_2 : entity is "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_2 : entity is "design_2.hwdef";
end design_2;

architecture STRUCTURE of design_2 is
  component design_2_gmii_to_rgmii_0_0 is
  port (
    tx_reset : in STD_LOGIC;
    rx_reset : in STD_LOGIC;
    clkin : in STD_LOGIC;
    ref_clk_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    gmii_clk_125m_out : out STD_LOGIC;
    gmii_clk_25m_out : out STD_LOGIC;
    gmii_clk_2_5m_out : out STD_LOGIC;
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
  end component design_2_gmii_to_rgmii_0_0;
  component design_2_gmii_to_rgmii_0_1 is
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
  end component design_2_gmii_to_rgmii_0_1;
  component design_2_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Op2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Res : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_2_util_vector_logic_0_0;
  signal \^gmii_1_col\ : STD_LOGIC;
  signal \^gmii_1_crs\ : STD_LOGIC;
  signal \^gmii_1_rxd\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^gmii_1_rx_clk\ : STD_LOGIC;
  signal \^gmii_1_rx_dv\ : STD_LOGIC;
  signal \^gmii_1_rx_er\ : STD_LOGIC;
  signal \^gmii_1_txd\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^gmii_1_tx_clk\ : STD_LOGIC;
  signal \^gmii_1_tx_en\ : STD_LOGIC;
  signal \^gmii_1_tx_er\ : STD_LOGIC;
  signal GMII_2_COL : STD_LOGIC;
  signal GMII_2_CRS : STD_LOGIC;
  signal GMII_2_RXD : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal GMII_2_RX_CLK : STD_LOGIC;
  signal GMII_2_RX_DV : STD_LOGIC;
  signal GMII_2_RX_ER : STD_LOGIC;
  signal GMII_2_TXD : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal GMII_2_TX_CLK : STD_LOGIC;
  signal GMII_2_TX_EN : STD_LOGIC;
  signal GMII_2_TX_ER : STD_LOGIC;
  signal clkin_1 : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_RD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_to_rgmii_0_RGMII_RXC : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_RX_CTL : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_TD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_to_rgmii_0_RGMII_TXC : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_TX_CTL : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_clk_125m_out : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_clk_25m_out : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_clk_2_5m_out : STD_LOGIC;
  signal gmii_to_rgmii_0_link_status : STD_LOGIC;
  signal gmii_to_rgmii_0_mmcm_locked_out : STD_LOGIC;
  signal gmii_to_rgmii_0_ref_clk_out : STD_LOGIC;
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
  signal gmii_to_rgmii_1_link_status : STD_LOGIC;
  signal gmii_to_rgmii_1_mdio_gem_i : STD_LOGIC;
  signal mdio_gem_mdc_1 : STD_LOGIC;
  signal mdio_gem_o_1 : STD_LOGIC;
  signal mdio_gem_t_1 : STD_LOGIC;
  signal rx_reset_1 : STD_LOGIC;
  signal tx_reset_1 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_gmii_to_rgmii_0_duplex_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mdio_phy_mdc_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mdio_phy_o_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mdio_phy_t_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_clock_speed_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_0_speed_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_1_duplex_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_clock_speed_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_1_speed_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  GMII_0_col <= \^gmii_1_col\;
  GMII_0_crs <= \^gmii_1_crs\;
  GMII_0_rx_clk <= \^gmii_1_rx_clk\;
  GMII_0_rx_dv <= \^gmii_1_rx_dv\;
  GMII_0_rx_er <= \^gmii_1_rx_er\;
  GMII_0_rxd(7 downto 0) <= \^gmii_1_rxd\(7 downto 0);
  GMII_0_tx_clk <= \^gmii_1_tx_clk\;
  GMII_1_col <= GMII_2_COL;
  GMII_1_crs <= GMII_2_CRS;
  GMII_1_rx_clk <= GMII_2_RX_CLK;
  GMII_1_rx_dv <= GMII_2_RX_DV;
  GMII_1_rx_er <= GMII_2_RX_ER;
  GMII_1_rxd(7 downto 0) <= GMII_2_RXD(7 downto 0);
  GMII_1_tx_clk <= GMII_2_TX_CLK;
  GMII_2_TXD(7 downto 0) <= GMII_1_txd(7 downto 0);
  GMII_2_TX_EN <= GMII_1_tx_en;
  GMII_2_TX_ER <= GMII_1_tx_er;
  RGMII_0_td(3 downto 0) <= gmii_to_rgmii_0_RGMII_TD(3 downto 0);
  RGMII_0_tx_ctl <= gmii_to_rgmii_0_RGMII_TX_CTL;
  RGMII_0_txc <= gmii_to_rgmii_0_RGMII_TXC;
  RGMII_1_td(3 downto 0) <= gmii_to_rgmii_1_RGMII_TD(3 downto 0);
  RGMII_1_tx_ctl <= gmii_to_rgmii_1_RGMII_TX_CTL;
  RGMII_1_txc <= gmii_to_rgmii_1_RGMII_TXC;
  \^gmii_1_tx_en\ <= GMII_0_tx_en;
  \^gmii_1_tx_er\ <= GMII_0_tx_er;
  \^gmii_1_txd\(7 downto 0) <= GMII_0_txd(7 downto 0);
  clkin_1 <= clkin;
  gmii_to_rgmii_0_RGMII_RD(3 downto 0) <= RGMII_0_rd(3 downto 0);
  gmii_to_rgmii_0_RGMII_RXC <= RGMII_0_rxc;
  gmii_to_rgmii_0_RGMII_RX_CTL <= RGMII_0_rx_ctl;
  gmii_to_rgmii_1_RGMII_RD(3 downto 0) <= RGMII_1_rd(3 downto 0);
  gmii_to_rgmii_1_RGMII_RXC <= RGMII_1_rxc;
  gmii_to_rgmii_1_RGMII_RX_CTL <= RGMII_1_rx_ctl;
  link_status_AND(7 downto 0) <= util_vector_logic_0_Res(7 downto 0);
  mdio_gem_i <= gmii_to_rgmii_1_mdio_gem_i;
  mdio_gem_mdc_1 <= mdio_gem_mdc;
  mdio_gem_o_1 <= mdio_gem_o;
  mdio_gem_t_1 <= mdio_gem_t;
  rx_reset_1 <= rx_reset;
  tx_reset_1 <= tx_reset;
gmii_to_rgmii_0: component design_2_gmii_to_rgmii_0_0
     port map (
      clkin => clkin_1,
      clock_speed(1 downto 0) => NLW_gmii_to_rgmii_0_clock_speed_UNCONNECTED(1 downto 0),
      duplex_status => NLW_gmii_to_rgmii_0_duplex_status_UNCONNECTED,
      gmii_clk_125m_out => gmii_to_rgmii_0_gmii_clk_125m_out,
      gmii_clk_25m_out => gmii_to_rgmii_0_gmii_clk_25m_out,
      gmii_clk_2_5m_out => gmii_to_rgmii_0_gmii_clk_2_5m_out,
      gmii_col => \^gmii_1_col\,
      gmii_crs => \^gmii_1_crs\,
      gmii_rx_clk => \^gmii_1_rx_clk\,
      gmii_rx_dv => \^gmii_1_rx_dv\,
      gmii_rx_er => \^gmii_1_rx_er\,
      gmii_rxd(7 downto 0) => \^gmii_1_rxd\(7 downto 0),
      gmii_tx_clk => \^gmii_1_tx_clk\,
      gmii_tx_en => \^gmii_1_tx_en\,
      gmii_tx_er => \^gmii_1_tx_er\,
      gmii_txd(7 downto 0) => \^gmii_1_txd\(7 downto 0),
      link_status => gmii_to_rgmii_0_link_status,
      mdio_gem_i => gmii_to_rgmii_1_MDIO_PHY_MDIO_I,
      mdio_gem_mdc => gmii_to_rgmii_1_MDIO_PHY_MDC,
      mdio_gem_o => gmii_to_rgmii_1_MDIO_PHY_MDIO_O,
      mdio_gem_t => gmii_to_rgmii_1_MDIO_PHY_MDIO_T,
      mdio_phy_i => '0',
      mdio_phy_mdc => NLW_gmii_to_rgmii_0_mdio_phy_mdc_UNCONNECTED,
      mdio_phy_o => NLW_gmii_to_rgmii_0_mdio_phy_o_UNCONNECTED,
      mdio_phy_t => NLW_gmii_to_rgmii_0_mdio_phy_t_UNCONNECTED,
      mmcm_locked_out => gmii_to_rgmii_0_mmcm_locked_out,
      ref_clk_out => gmii_to_rgmii_0_ref_clk_out,
      rgmii_rx_ctl => gmii_to_rgmii_0_RGMII_RX_CTL,
      rgmii_rxc => gmii_to_rgmii_0_RGMII_RXC,
      rgmii_rxd(3 downto 0) => gmii_to_rgmii_0_RGMII_RD(3 downto 0),
      rgmii_tx_ctl => gmii_to_rgmii_0_RGMII_TX_CTL,
      rgmii_txc => gmii_to_rgmii_0_RGMII_TXC,
      rgmii_txd(3 downto 0) => gmii_to_rgmii_0_RGMII_TD(3 downto 0),
      rx_reset => rx_reset_1,
      speed_mode(1 downto 0) => NLW_gmii_to_rgmii_0_speed_mode_UNCONNECTED(1 downto 0),
      tx_reset => tx_reset_1
    );
gmii_to_rgmii_1: component design_2_gmii_to_rgmii_0_1
     port map (
      clock_speed(1 downto 0) => NLW_gmii_to_rgmii_1_clock_speed_UNCONNECTED(1 downto 0),
      duplex_status => NLW_gmii_to_rgmii_1_duplex_status_UNCONNECTED,
      gmii_clk_125m_in => gmii_to_rgmii_0_gmii_clk_125m_out,
      gmii_clk_25m_in => gmii_to_rgmii_0_gmii_clk_25m_out,
      gmii_clk_2_5m_in => gmii_to_rgmii_0_gmii_clk_2_5m_out,
      gmii_col => GMII_2_COL,
      gmii_crs => GMII_2_CRS,
      gmii_rx_clk => GMII_2_RX_CLK,
      gmii_rx_dv => GMII_2_RX_DV,
      gmii_rx_er => GMII_2_RX_ER,
      gmii_rxd(7 downto 0) => GMII_2_RXD(7 downto 0),
      gmii_tx_clk => GMII_2_TX_CLK,
      gmii_tx_en => GMII_2_TX_EN,
      gmii_tx_er => GMII_2_TX_ER,
      gmii_txd(7 downto 0) => GMII_2_TXD(7 downto 0),
      link_status => gmii_to_rgmii_1_link_status,
      mdio_gem_i => gmii_to_rgmii_1_mdio_gem_i,
      mdio_gem_mdc => mdio_gem_mdc_1,
      mdio_gem_o => mdio_gem_o_1,
      mdio_gem_t => mdio_gem_t_1,
      mdio_phy_i => gmii_to_rgmii_1_MDIO_PHY_MDIO_I,
      mdio_phy_mdc => gmii_to_rgmii_1_MDIO_PHY_MDC,
      mdio_phy_o => gmii_to_rgmii_1_MDIO_PHY_MDIO_O,
      mdio_phy_t => gmii_to_rgmii_1_MDIO_PHY_MDIO_T,
      mmcm_locked_in => gmii_to_rgmii_0_mmcm_locked_out,
      ref_clk_in => gmii_to_rgmii_0_ref_clk_out,
      rgmii_rx_ctl => gmii_to_rgmii_1_RGMII_RX_CTL,
      rgmii_rxc => gmii_to_rgmii_1_RGMII_RXC,
      rgmii_rxd(3 downto 0) => gmii_to_rgmii_1_RGMII_RD(3 downto 0),
      rgmii_tx_ctl => gmii_to_rgmii_1_RGMII_TX_CTL,
      rgmii_txc => gmii_to_rgmii_1_RGMII_TXC,
      rgmii_txd(3 downto 0) => gmii_to_rgmii_1_RGMII_TD(3 downto 0),
      rx_reset => rx_reset_1,
      speed_mode(1 downto 0) => NLW_gmii_to_rgmii_1_speed_mode_UNCONNECTED(1 downto 0),
      tx_reset => tx_reset_1
    );
link_status_and_gate: component design_2_util_vector_logic_0_0
     port map (
      Op1(7) => gmii_to_rgmii_0_link_status,
      Op1(6) => gmii_to_rgmii_0_link_status,
      Op1(5) => gmii_to_rgmii_0_link_status,
      Op1(4) => gmii_to_rgmii_0_link_status,
      Op1(3) => gmii_to_rgmii_0_link_status,
      Op1(2) => gmii_to_rgmii_0_link_status,
      Op1(1) => gmii_to_rgmii_0_link_status,
      Op1(0) => gmii_to_rgmii_0_link_status,
      Op2(7) => gmii_to_rgmii_1_link_status,
      Op2(6) => gmii_to_rgmii_1_link_status,
      Op2(5) => gmii_to_rgmii_1_link_status,
      Op2(4) => gmii_to_rgmii_1_link_status,
      Op2(3) => gmii_to_rgmii_1_link_status,
      Op2(2) => gmii_to_rgmii_1_link_status,
      Op2(1) => gmii_to_rgmii_1_link_status,
      Op2(0) => gmii_to_rgmii_1_link_status,
      Res(7 downto 0) => util_vector_logic_0_Res(7 downto 0)
    );
end STRUCTURE;
