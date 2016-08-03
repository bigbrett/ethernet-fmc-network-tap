--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Wed Aug  3 12:19:30 2016
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
    M_AXIS_GMII0_RX_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_GMII0_RX_tready : in STD_LOGIC;
    M_AXIS_GMII0_RX_tvalid : out STD_LOGIC;
    M_AXIS_GMII1_RX_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_GMII1_RX_tready : in STD_LOGIC;
    M_AXIS_GMII1_RX_tvalid : out STD_LOGIC;
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
    S_AXIS_GMII0_TX_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_GMII0_TX_tready : out STD_LOGIC;
    S_AXIS_GMII0_TX_tvalid : in STD_LOGIC;
    S_AXIS_GMII1_TX_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_GMII1_TX_tready : out STD_LOGIC;
    S_AXIS_GMII1_TX_tvalid : in STD_LOGIC;
    clkin : in STD_LOGIC;
    gmii_0_rx_clk : out STD_LOGIC;
    gmii_0_rx_er : out STD_LOGIC;
    gmii_0_tx_clk : out STD_LOGIC;
    gmii_0_tx_er : in STD_LOGIC;
    gmii_1_rx_clk : out STD_LOGIC;
    gmii_1_tx_clk : out STD_LOGIC;
    gmii_1_rx_er : out STD_LOGIC;
    gmii_1_tx_er : in STD_LOGIC;
    link_status_AND : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mdio_gem_i : out STD_LOGIC;
    mdio_gem_mdc : in STD_LOGIC;
    mdio_gem_o : in STD_LOGIC;
    mdio_gem_t : in STD_LOGIC;
    rx_reset : in STD_LOGIC;
    tx_reset : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_2 : entity is "design_2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_2,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
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
  component design_2_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_2_axis_data_fifo_0_0;
  component design_2_axis_subset_converter_0_5 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_2_axis_subset_converter_0_5;
  component design_2_axis_subset_converter_1_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_2_axis_subset_converter_1_1;
  component design_2_axis_data_fifo_0_1 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_2_axis_data_fifo_0_1;
  component design_2_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_util_vector_logic_0_1;
  component design_2_util_vector_logic_0_2 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_2_util_vector_logic_0_2;
  component design_2_axis_data_fifo_2_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_2_axis_data_fifo_2_0;
  component design_2_axis_subset_converter_2_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_2_axis_subset_converter_2_0;
  component design_2_axis_subset_converter_3_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_2_axis_subset_converter_3_0;
  component design_2_axis_data_fifo_3_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component design_2_axis_data_fifo_3_0;
  signal S_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_1_TREADY : STD_LOGIC;
  signal S_AXIS_1_TVALID : STD_LOGIC;
  signal S_AXIS_2_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_2_TREADY : STD_LOGIC;
  signal S_AXIS_2_TVALID : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_0_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_0_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_1_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_1_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_2_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_2_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_2_M_AXIS_TVALID : STD_LOGIC;
  signal axis_data_fifo_3_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_data_fifo_3_M_AXIS_TREADY : STD_LOGIC;
  signal axis_data_fifo_3_M_AXIS_TVALID : STD_LOGIC;
  signal axis_subset_converter_0_m_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_subset_converter_0_m_axis_tvalid : STD_LOGIC;
  signal axis_subset_converter_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_subset_converter_1_M_AXIS_TREADY : STD_LOGIC;
  signal axis_subset_converter_1_M_AXIS_TVALID : STD_LOGIC;
  signal axis_subset_converter_2_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_subset_converter_2_M_AXIS_TREADY : STD_LOGIC;
  signal axis_subset_converter_2_M_AXIS_TVALID : STD_LOGIC;
  signal axis_subset_converter_3_m_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axis_subset_converter_3_m_axis_tvalid : STD_LOGIC;
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
  signal gmii_to_rgmii_0_gmii_rx_clk : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_rx_dv : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_rx_er : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_tx_er : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_rxd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gmii_to_rgmii_0_gmii_tx_clk : STD_LOGIC;
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
  signal gmii_to_rgmii_1_gmii_rx_clk : STD_LOGIC;
  signal gmii_to_rgmii_1_gmii_rx_dv : STD_LOGIC;
  signal gmii_to_rgmii_1_gmii_rx_er: STD_LOGIC;
  signal gmii_to_rgmii_1_gmii_tx_er: STD_LOGIC;
 signal gmii_to_rgmii_1_gmii_rxd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gmii_to_rgmii_1_gmii_tx_clk : STD_LOGIC;
  signal gmii_to_rgmii_1_link_status : STD_LOGIC;
  signal gmii_to_rgmii_1_mdio_gem_i : STD_LOGIC;
  signal mdio_gem_mdc_1 : STD_LOGIC;
  signal mdio_gem_o_1 : STD_LOGIC;
  signal mdio_gem_t_1 : STD_LOGIC;
  signal rx_reset_1 : STD_LOGIC;
  signal tx_reset_1 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal util_vector_logic_0_Res1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_1_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_1_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_1_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_1_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_2_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_2_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_2_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_2_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_3_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_3_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_axis_data_fifo_3_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_gmii_to_rgmii_0_duplex_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_gmii_col_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_gmii_crs_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mdio_phy_mdc_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mdio_phy_o_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mdio_phy_t_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_clock_speed_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_0_speed_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_1_duplex_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_gmii_col_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_gmii_crs_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_clock_speed_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_1_speed_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  M_AXIS_GMII0_RX_tdata(7 downto 0) <= axis_subset_converter_1_M_AXIS_TDATA(7 downto 0);
  M_AXIS_GMII0_RX_tvalid <= axis_subset_converter_1_M_AXIS_TVALID;
  M_AXIS_GMII1_RX_tdata(7 downto 0) <= axis_subset_converter_2_M_AXIS_TDATA(7 downto 0);
  M_AXIS_GMII1_RX_tvalid <= axis_subset_converter_2_M_AXIS_TVALID;
  RGMII_0_td(3 downto 0) <= gmii_to_rgmii_0_RGMII_TD(3 downto 0);
  RGMII_0_tx_ctl <= gmii_to_rgmii_0_RGMII_TX_CTL;
  RGMII_0_txc <= gmii_to_rgmii_0_RGMII_TXC;
  RGMII_1_td(3 downto 0) <= gmii_to_rgmii_1_RGMII_TD(3 downto 0);
  RGMII_1_tx_ctl <= gmii_to_rgmii_1_RGMII_TX_CTL;
  RGMII_1_txc <= gmii_to_rgmii_1_RGMII_TXC;
  S_AXIS_1_TDATA(7 downto 0) <= S_AXIS_GMII0_TX_tdata(7 downto 0);
  S_AXIS_1_TVALID <= S_AXIS_GMII0_TX_tvalid;
  S_AXIS_2_TDATA(7 downto 0) <= S_AXIS_GMII1_TX_tdata(7 downto 0);
  S_AXIS_2_TVALID <= S_AXIS_GMII1_TX_tvalid;
  S_AXIS_GMII0_TX_tready <= S_AXIS_1_TREADY;
  S_AXIS_GMII1_TX_tready <= S_AXIS_2_TREADY;
  axis_subset_converter_1_M_AXIS_TREADY <= M_AXIS_GMII0_RX_tready;
  axis_subset_converter_2_M_AXIS_TREADY <= M_AXIS_GMII1_RX_tready;
  clkin_1 <= clkin;
  gmii_0_rx_clk <= gmii_to_rgmii_0_gmii_rx_clk;
  gmii_0_tx_clk <= gmii_to_rgmii_0_gmii_tx_clk;
  gmii_1_rx_clk <= gmii_to_rgmii_1_gmii_rx_clk;
  gmii_1_tx_clk <= gmii_to_rgmii_1_gmii_tx_clk;

  gmii_0_rx_er <= gmii_to_rgmii_0_gmii_rx_er;
  gmii_to_rgmii_0_gmii_tx_er <= gmii_0_tx_er;

  gmii_1_rx_er <= gmii_to_rgmii_1_gmii_rx_er;
  gmii_to_rgmii_1_gmii_tx_er <= gmii_1_tx_er;

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
axis_data_fifo_0: component design_2_axis_data_fifo_0_0
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_0_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_aclk => gmii_to_rgmii_0_gmii_tx_clk,
      m_axis_aresetn => util_vector_logic_0_Res1(0),
      m_axis_tdata(7 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID,
      s_axis_aclk => clkin_1,
      s_axis_aresetn => util_vector_logic_0_Res1(0),
      s_axis_tdata(7 downto 0) => S_AXIS_1_TDATA(7 downto 0),
      s_axis_tready => S_AXIS_1_TREADY,
      s_axis_tvalid => S_AXIS_1_TVALID
    );
axis_data_fifo_1: component design_2_axis_data_fifo_0_1
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_1_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_1_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_1_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_aclk => clkin_1,
      m_axis_aresetn => util_vector_logic_1_Res(0),
      m_axis_tdata(7 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => axis_data_fifo_1_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_1_M_AXIS_TVALID,
      s_axis_aclk => gmii_to_rgmii_0_gmii_rx_clk,
      s_axis_aresetn => util_vector_logic_1_Res(0),
      s_axis_tdata(7 downto 0) => gmii_to_rgmii_0_gmii_rxd(7 downto 0),
      s_axis_tready => NLW_axis_data_fifo_1_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => gmii_to_rgmii_0_gmii_rx_dv
    );
axis_data_fifo_2: component design_2_axis_data_fifo_2_0
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_2_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_2_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_2_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_aclk => gmii_to_rgmii_0_ref_clk_out,
      m_axis_aresetn => util_vector_logic_1_Res(0),
      m_axis_tdata(7 downto 0) => axis_data_fifo_2_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => axis_data_fifo_2_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_2_M_AXIS_TVALID,
      s_axis_aclk => gmii_to_rgmii_1_gmii_rx_clk,
      s_axis_aresetn => util_vector_logic_1_Res(0),
      s_axis_tdata(7 downto 0) => gmii_to_rgmii_1_gmii_rxd(7 downto 0),
      s_axis_tready => NLW_axis_data_fifo_2_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => gmii_to_rgmii_1_gmii_rx_dv
    );
axis_data_fifo_3: component design_2_axis_data_fifo_3_0
     port map (
      axis_data_count(31 downto 0) => NLW_axis_data_fifo_3_axis_data_count_UNCONNECTED(31 downto 0),
      axis_rd_data_count(31 downto 0) => NLW_axis_data_fifo_3_axis_rd_data_count_UNCONNECTED(31 downto 0),
      axis_wr_data_count(31 downto 0) => NLW_axis_data_fifo_3_axis_wr_data_count_UNCONNECTED(31 downto 0),
      m_axis_aclk => gmii_to_rgmii_1_gmii_tx_clk,
      m_axis_aresetn => util_vector_logic_0_Res1(0),
      m_axis_tdata(7 downto 0) => axis_data_fifo_3_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => axis_data_fifo_3_M_AXIS_TREADY,
      m_axis_tvalid => axis_data_fifo_3_M_AXIS_TVALID,
      s_axis_aclk => gmii_to_rgmii_0_ref_clk_out,
      s_axis_aresetn => util_vector_logic_0_Res1(0),
      s_axis_tdata(7 downto 0) => S_AXIS_2_TDATA(7 downto 0),
      s_axis_tready => S_AXIS_2_TREADY,
      s_axis_tvalid => S_AXIS_2_TVALID
    );
axis_subset_converter_0: component design_2_axis_subset_converter_0_5
     port map (
      aclk => gmii_to_rgmii_0_gmii_tx_clk,
      aresetn => util_vector_logic_0_Res1(0),
      m_axis_tdata(7 downto 0) => axis_subset_converter_0_m_axis_tdata(7 downto 0),
      m_axis_tready => '1',
      m_axis_tvalid => axis_subset_converter_0_m_axis_tvalid,
      s_axis_tdata(7 downto 0) => axis_data_fifo_0_M_AXIS_TDATA(7 downto 0),
      s_axis_tready => axis_data_fifo_0_M_AXIS_TREADY,
      s_axis_tvalid => axis_data_fifo_0_M_AXIS_TVALID
    );
axis_subset_converter_1: component design_2_axis_subset_converter_1_1
     port map (
      aclk => clkin_1,
      aresetn => util_vector_logic_1_Res(0),
      m_axis_tdata(7 downto 0) => axis_subset_converter_1_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => axis_subset_converter_1_M_AXIS_TREADY,
      m_axis_tvalid => axis_subset_converter_1_M_AXIS_TVALID,
      s_axis_tdata(7 downto 0) => axis_data_fifo_1_M_AXIS_TDATA(7 downto 0),
      s_axis_tready => axis_data_fifo_1_M_AXIS_TREADY,
      s_axis_tvalid => axis_data_fifo_1_M_AXIS_TVALID
    );
axis_subset_converter_2: component design_2_axis_subset_converter_2_0
     port map (
      aclk => gmii_to_rgmii_0_ref_clk_out,
      aresetn => util_vector_logic_1_Res(0),
      m_axis_tdata(7 downto 0) => axis_subset_converter_2_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => axis_subset_converter_2_M_AXIS_TREADY,
      m_axis_tvalid => axis_subset_converter_2_M_AXIS_TVALID,
      s_axis_tdata(7 downto 0) => axis_data_fifo_2_M_AXIS_TDATA(7 downto 0),
      s_axis_tready => axis_data_fifo_2_M_AXIS_TREADY,
      s_axis_tvalid => axis_data_fifo_2_M_AXIS_TVALID
    );
axis_subset_converter_3: component design_2_axis_subset_converter_3_0
     port map (
      aclk => gmii_to_rgmii_1_gmii_tx_clk,
      aresetn => util_vector_logic_0_Res1(0),
      m_axis_tdata(7 downto 0) => axis_subset_converter_3_m_axis_tdata(7 downto 0),
      m_axis_tready => '1',
      m_axis_tvalid => axis_subset_converter_3_m_axis_tvalid,
      s_axis_tdata(7 downto 0) => axis_data_fifo_3_M_AXIS_TDATA(7 downto 0),
      s_axis_tready => axis_data_fifo_3_M_AXIS_TREADY,
      s_axis_tvalid => axis_data_fifo_3_M_AXIS_TVALID
    );
gmii_to_rgmii_0: component design_2_gmii_to_rgmii_0_0
     port map (
      clkin => clkin_1,
      clock_speed(1 downto 0) => NLW_gmii_to_rgmii_0_clock_speed_UNCONNECTED(1 downto 0),
      duplex_status => NLW_gmii_to_rgmii_0_duplex_status_UNCONNECTED,
      gmii_clk_125m_out => gmii_to_rgmii_0_gmii_clk_125m_out,
      gmii_clk_25m_out => gmii_to_rgmii_0_gmii_clk_25m_out,
      gmii_clk_2_5m_out => gmii_to_rgmii_0_gmii_clk_2_5m_out,
      gmii_col => NLW_gmii_to_rgmii_0_gmii_col_UNCONNECTED,
      gmii_crs => NLW_gmii_to_rgmii_0_gmii_crs_UNCONNECTED,
      gmii_rx_clk => gmii_to_rgmii_0_gmii_rx_clk,
      gmii_rx_dv => gmii_to_rgmii_0_gmii_rx_dv,
      gmii_rx_er => gmii_to_rgmii_0_gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_to_rgmii_0_gmii_rxd(7 downto 0),
      gmii_tx_clk => gmii_to_rgmii_0_gmii_tx_clk,
      gmii_tx_en => axis_subset_converter_0_m_axis_tvalid,
      gmii_tx_er => gmii_to_rgmii_0_gmii_tx_er,
      gmii_txd(7 downto 0) => axis_subset_converter_0_m_axis_tdata(7 downto 0),
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
      gmii_col => NLW_gmii_to_rgmii_1_gmii_col_UNCONNECTED,
      gmii_crs => NLW_gmii_to_rgmii_1_gmii_crs_UNCONNECTED,
      gmii_rx_clk => gmii_to_rgmii_1_gmii_rx_clk,
      gmii_rx_dv => gmii_to_rgmii_1_gmii_rx_dv,
      gmii_rx_er => gmii_to_rgmii_1_gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_to_rgmii_1_gmii_rxd(7 downto 0),
      gmii_tx_clk => gmii_to_rgmii_1_gmii_tx_clk,
      gmii_tx_en => axis_subset_converter_3_m_axis_tvalid,
      gmii_tx_er => gmii_to_rgmii_1_gmii_tx_er,
      gmii_txd(7 downto 0) => axis_subset_converter_3_m_axis_tdata(7 downto 0),
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
util_vector_logic_0: component design_2_util_vector_logic_0_1
     port map (
      Op1(0) => tx_reset_1,
      Res(0) => util_vector_logic_0_Res1(0)
    );
util_vector_logic_1: component design_2_util_vector_logic_0_2
     port map (
      Op1(0) => rx_reset_1,
      Res(0) => util_vector_logic_1_Res(0)
    );
end STRUCTURE;
