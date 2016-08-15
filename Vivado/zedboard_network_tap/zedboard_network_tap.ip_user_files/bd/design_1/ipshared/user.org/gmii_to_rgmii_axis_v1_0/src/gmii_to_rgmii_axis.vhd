--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Mon Aug  8 16:07:21 2016
--Host        : wintermute running 64-bit Ubuntu 14.04.5 LTS
--Command     : generate_target gmii_to_rgmii_axis.bd
--Design      : gmii_to_rgmii_axis
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity gmii_to_rgmii_axis is
  port (
    FCLK_RESET0_N : in STD_LOGIC;
    M_AXIS_gmii_0_rx_fifo_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_gmii_0_rx_fifo_tready : in STD_LOGIC;
    M_AXIS_gmii_0_rx_fifo_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_gmii_0_rx_fifo_tvalid : out STD_LOGIC;
    M_AXIS_gmii_1_rx_fifo_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_gmii_1_rx_fifo_tready : in STD_LOGIC;
    M_AXIS_gmii_1_rx_fifo_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXIS_gmii_1_rx_fifo_tvalid : out STD_LOGIC;
    S_AXIS_gmii_0_tx_fifo_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_gmii_0_tx_fifo_tready : out STD_LOGIC;
    S_AXIS_gmii_0_tx_fifo_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_gmii_0_tx_fifo_tvalid : in STD_LOGIC;
    S_AXIS_gmii_1_tx_fifo_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_gmii_1_tx_fifo_tready : out STD_LOGIC;
    S_AXIS_gmii_1_tx_fifo_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXIS_gmii_1_tx_fifo_tvalid : in STD_LOGIC;
    clkin200 : in STD_LOGIC;
    gmii_0_rx_fifo_prog_empty : out STD_LOGIC;
    gmii_1_rx_fifo_prog_empty : out STD_LOGIC;
    m_aclk_gmii_0_rx_fifo : in STD_LOGIC;
    m_aclk_gmii_1_rx_fifo : in STD_LOGIC;
    mdio_gem_i : out STD_LOGIC;
    mdio_gem_mdc : in STD_LOGIC;
    mdio_gem_o : in STD_LOGIC;
    mdio_gem_t : in STD_LOGIC;
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
    rgmii_port_1_txc : out STD_LOGIC;
    s_aclk_gmii_0_tx_fifo : in STD_LOGIC;
    s_aclk_gmii_1_tx_fifo : in STD_LOGIC; 
    led_dbg_0 : out STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of gmii_to_rgmii_axis : entity is "gmii_to_rgmii_axis,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=gmii_to_rgmii_axis,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Global}";
  attribute hw_handoff : string;
  attribute hw_handoff of gmii_to_rgmii_axis : entity is "gmii_to_rgmii_axis.hwdef";
end gmii_to_rgmii_axis;

architecture STRUCTURE of gmii_to_rgmii_axis is
  component gmii_to_rgmii_axis_fifo_generator_1_0 is
  port (
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  end component gmii_to_rgmii_axis_fifo_generator_1_0;
  component gmii_to_rgmii_axis_fifo_generator_2_0 is
  port (
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  end component gmii_to_rgmii_axis_fifo_generator_2_0;
  component gmii_to_rgmii_axis_fifo_generator_3_0 is
  port (
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  end component gmii_to_rgmii_axis_fifo_generator_3_0;
  component gmii_to_rgmii_axis_gmii_0_rx_fifo_0 is
  port (
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 12 downto 0 );
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  end component gmii_to_rgmii_axis_gmii_0_rx_fifo_0;
  component gmii_to_rgmii_axis_gmii_to_rgmii_0_0 is
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
  end component gmii_to_rgmii_axis_gmii_to_rgmii_0_0;
  component gmii_to_rgmii_axis_gmii_to_rgmii_1_0 is
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
  end component gmii_to_rgmii_axis_gmii_to_rgmii_1_0;
  component gmii_to_rgmii_axis_link_status_and_gate_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component gmii_to_rgmii_axis_link_status_and_gate_0;
  component gmii_to_rgmii_axis_not_gate_full_fifo_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component gmii_to_rgmii_axis_not_gate_full_fifo_0_0;
  component gmii_to_rgmii_axis_not_gate_full_fifo_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component gmii_to_rgmii_axis_not_gate_full_fifo_1_0;
  component gmii_to_rgmii_axis_or_gate_wr_en_fifo_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component gmii_to_rgmii_axis_or_gate_wr_en_fifo_0_0;
  component gmii_to_rgmii_axis_or_gate_wr_en_fifo_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component gmii_to_rgmii_axis_or_gate_wr_en_fifo_1_0;
  component gmii_to_rgmii_axis_util_vector_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component gmii_to_rgmii_axis_util_vector_logic_0_0;
  component gmii_to_rgmii_axis_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component gmii_to_rgmii_axis_util_vector_logic_1_0;
  component gmii_to_rgmii_axis_util_vector_logic_2_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component gmii_to_rgmii_axis_util_vector_logic_2_0;
  signal FCLK_RESET0_N_1 : STD_LOGIC;
  signal S_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_1_TREADY : STD_LOGIC;
  signal S_AXIS_1_TUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXIS_1_TVALID : STD_LOGIC;
  signal S_AXIS_2_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_2_TREADY : STD_LOGIC;
  signal S_AXIS_2_TUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXIS_2_TVALID : STD_LOGIC;
  signal clkin_1 : STD_LOGIC;
  signal fifo_generator_0_axis_prog_empty : STD_LOGIC;
  signal fifo_generator_0_axis_prog_full : STD_LOGIC;
  signal fifo_generator_1_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_1_M_AXIS_TREADY : STD_LOGIC;
  signal fifo_generator_1_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fifo_generator_1_M_AXIS_TVALID : STD_LOGIC;
  signal fifo_generator_1_axis_prog_empty : STD_LOGIC;
  signal fifo_generator_1_axis_prog_full : STD_LOGIC;
  signal fifo_generator_2_axis_prog_empty : STD_LOGIC;
  signal fifo_generator_2_m_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_2_m_axis_tvalid : STD_LOGIC;
  signal fifo_generator_3_axis_prog_empty : STD_LOGIC;
  signal fifo_generator_3_m_axis_tdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_3_m_axis_tvalid : STD_LOGIC;
  signal gmii_0_rx_fifo_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gmii_0_rx_fifo_M_AXIS_TREADY : STD_LOGIC;
  signal gmii_0_rx_fifo_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_0_rx_fifo_M_AXIS_TVALID : STD_LOGIC;
  signal gmii_clk_125m_out : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_RD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_to_rgmii_0_RGMII_RXC : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_RX_CTL : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_TD : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal gmii_to_rgmii_0_RGMII_TXC : STD_LOGIC;
  signal gmii_to_rgmii_0_RGMII_TX_CTL : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_clk_25m_out : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_clk_2_5m_out : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_rx_clk : STD_LOGIC;
  signal gmii_to_rgmii_0_gmii_rx_dv : STD_LOGIC;
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
  signal gmii_to_rgmii_1_gmii_rxd : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal gmii_to_rgmii_1_gmii_tx_clk : STD_LOGIC;
  signal gmii_to_rgmii_1_link_status : STD_LOGIC;
  signal gmii_to_rgmii_1_mdio_gem_i : STD_LOGIC;
  signal link_status_and_gate_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_aclk_1 : STD_LOGIC;
  signal m_aclk_2 : STD_LOGIC;
  signal mdio_gem_mdc_1 : STD_LOGIC;
  signal mdio_gem_o_1 : STD_LOGIC;
  signal mdio_gem_t_1 : STD_LOGIC;
  signal not_gate_full_fifo_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal not_gate_full_fifo_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal or_gate_wr_en_fifo_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal or_gate_wr_en_fifo_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_aclk_1 : STD_LOGIC;
  signal s_aclk_2 : STD_LOGIC;
  signal util_vector_logic_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal util_vector_logic_2_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_generator_1_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_1_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_fifo_generator_1_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_fifo_generator_2_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_2_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_fifo_generator_2_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_fifo_generator_2_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_generator_3_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_generator_3_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_fifo_generator_3_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_fifo_generator_3_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gmii_0_rx_fifo_s_axis_tready_UNCONNECTED : STD_LOGIC := '1';
  signal NLW_gmii_0_rx_fifo_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_gmii_0_rx_fifo_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal NLW_gmii_to_rgmii_0_duplex_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_gmii_col_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_gmii_crs_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_gmii_rx_er_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mdio_phy_mdc_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mdio_phy_o_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_mdio_phy_t_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_0_clock_speed_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_0_speed_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_1_duplex_status_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_gmii_col_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_gmii_crs_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_gmii_rx_er_UNCONNECTED : STD_LOGIC;
  signal NLW_gmii_to_rgmii_1_clock_speed_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_gmii_to_rgmii_1_speed_mode_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );

begin
  FCLK_RESET0_N_1 <= FCLK_RESET0_N;
  M_AXIS_gmii_0_rx_fifo_tdata(7 downto 0) <= gmii_0_rx_fifo_M_AXIS_TDATA(7 downto 0);
  M_AXIS_gmii_0_rx_fifo_tuser(3 downto 0) <= gmii_0_rx_fifo_M_AXIS_TUSER(3 downto 0);
  M_AXIS_gmii_0_rx_fifo_tvalid <= gmii_0_rx_fifo_M_AXIS_TVALID;
  M_AXIS_gmii_1_rx_fifo_tdata(7 downto 0) <= fifo_generator_1_M_AXIS_TDATA(7 downto 0);
  M_AXIS_gmii_1_rx_fifo_tuser(3 downto 0) <= fifo_generator_1_M_AXIS_TUSER(3 downto 0);
  M_AXIS_gmii_1_rx_fifo_tvalid <= fifo_generator_1_M_AXIS_TVALID;
  S_AXIS_1_TDATA(7 downto 0) <= S_AXIS_gmii_0_tx_fifo_tdata(7 downto 0);
  S_AXIS_1_TUSER(3 downto 0) <= S_AXIS_gmii_0_tx_fifo_tuser(3 downto 0);
  S_AXIS_1_TVALID <= S_AXIS_gmii_0_tx_fifo_tvalid;
  S_AXIS_2_TDATA(7 downto 0) <= S_AXIS_gmii_1_tx_fifo_tdata(7 downto 0);
  S_AXIS_2_TUSER(3 downto 0) <= S_AXIS_gmii_1_tx_fifo_tuser(3 downto 0);
  S_AXIS_2_TVALID <= S_AXIS_gmii_1_tx_fifo_tvalid;
  S_AXIS_gmii_0_tx_fifo_tready <= S_AXIS_1_TREADY;
  S_AXIS_gmii_1_tx_fifo_tready <= S_AXIS_2_TREADY;
  clkin_1 <= clkin200;
  fifo_generator_1_M_AXIS_TREADY <= M_AXIS_gmii_1_rx_fifo_tready;
  gmii_0_rx_fifo_M_AXIS_TREADY <= M_AXIS_gmii_0_rx_fifo_tready;
  gmii_0_rx_fifo_prog_empty <= fifo_generator_0_axis_prog_empty;
  gmii_1_rx_fifo_prog_empty <= fifo_generator_1_axis_prog_empty;
  gmii_to_rgmii_0_RGMII_RD(3 downto 0) <= rgmii_port_0_rd(3 downto 0);
  gmii_to_rgmii_0_RGMII_RXC <= rgmii_port_0_rxc;
  gmii_to_rgmii_0_RGMII_RX_CTL <= rgmii_port_0_rx_ctl;
  gmii_to_rgmii_1_RGMII_RD(3 downto 0) <= rgmii_port_1_rd(3 downto 0);
  gmii_to_rgmii_1_RGMII_RXC <= rgmii_port_1_rxc;
  gmii_to_rgmii_1_RGMII_RX_CTL <= rgmii_port_1_rx_ctl;
  m_aclk_1 <= m_aclk_gmii_0_rx_fifo;
  m_aclk_2 <= m_aclk_gmii_1_rx_fifo;
  mdio_gem_i <= gmii_to_rgmii_1_mdio_gem_i;
  mdio_gem_mdc_1 <= mdio_gem_mdc;
  mdio_gem_o_1 <= mdio_gem_o;
  mdio_gem_t_1 <= mdio_gem_t;
  rgmii_port_0_td(3 downto 0) <= gmii_to_rgmii_0_RGMII_TD(3 downto 0);
  rgmii_port_0_tx_ctl <= gmii_to_rgmii_0_RGMII_TX_CTL;
  rgmii_port_0_txc <= gmii_to_rgmii_0_RGMII_TXC;
  rgmii_port_1_td(3 downto 0) <= gmii_to_rgmii_1_RGMII_TD(3 downto 0);
  rgmii_port_1_tx_ctl <= gmii_to_rgmii_1_RGMII_TX_CTL;
  rgmii_port_1_txc <= gmii_to_rgmii_1_RGMII_TXC;
  s_aclk_1 <= s_aclk_gmii_0_tx_fifo;
  s_aclk_2 <= s_aclk_gmii_1_tx_fifo;
  
  NLW_gmii_0_rx_fifo_s_axis_tready_UNCONNECTED <= '1';

  dbg : process(clkin200)
  begin 
    if rising_edge(clkin200) then 
      led_dbg_0 <= NOT gmii_to_rgmii_0_gmii_rx_dv;
    end if;
  end process;

fifo_generator_1: component gmii_to_rgmii_axis_fifo_generator_1_0
     port map (
      axis_prog_empty => fifo_generator_1_axis_prog_empty,
      axis_prog_full => fifo_generator_1_axis_prog_full,
      axis_rd_data_count(12 downto 0) => NLW_fifo_generator_1_axis_rd_data_count_UNCONNECTED(12 downto 0),
      axis_wr_data_count(12 downto 0) => NLW_fifo_generator_1_axis_wr_data_count_UNCONNECTED(12 downto 0),
      m_aclk => m_aclk_2,
      m_axis_tdata(7 downto 0) => fifo_generator_1_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => fifo_generator_1_M_AXIS_TREADY,
      m_axis_tuser(3 downto 0) => fifo_generator_1_M_AXIS_TUSER(3 downto 0),
      m_axis_tvalid => fifo_generator_1_M_AXIS_TVALID,
      s_aclk => gmii_to_rgmii_1_gmii_rx_clk,
      s_aresetn => link_status_and_gate_Res(0),
      s_axis_tdata(7 downto 0) => gmii_to_rgmii_1_gmii_rxd(7 downto 0),
      s_axis_tready => NLW_fifo_generator_1_s_axis_tready_UNCONNECTED,
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => or_gate_wr_en_fifo_1_Res(0)
    );
fifo_generator_2: component gmii_to_rgmii_axis_fifo_generator_2_0
     port map (
      axis_prog_empty => fifo_generator_2_axis_prog_empty,
      axis_prog_full => NLW_fifo_generator_2_axis_prog_full_UNCONNECTED,
      axis_rd_data_count(12 downto 0) => NLW_fifo_generator_2_axis_rd_data_count_UNCONNECTED(12 downto 0),
      axis_wr_data_count(12 downto 0) => NLW_fifo_generator_2_axis_wr_data_count_UNCONNECTED(12 downto 0),
      m_aclk => gmii_to_rgmii_0_gmii_tx_clk,
      m_axis_tdata(7 downto 0) => fifo_generator_2_m_axis_tdata(7 downto 0),
      m_axis_tready => util_vector_logic_1_Res(0),
      m_axis_tuser(3 downto 0) => NLW_fifo_generator_2_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => fifo_generator_2_m_axis_tvalid,
      s_aclk => s_aclk_1,
      s_aresetn => link_status_and_gate_Res(0),
      s_axis_tdata(7 downto 0) => S_AXIS_1_TDATA(7 downto 0),
      s_axis_tready => S_AXIS_1_TREADY,
      s_axis_tuser(3 downto 0) => S_AXIS_1_TUSER(3 downto 0),
      s_axis_tvalid => S_AXIS_1_TVALID
    );
fifo_generator_3: component gmii_to_rgmii_axis_fifo_generator_3_0
     port map (
      axis_prog_empty => fifo_generator_3_axis_prog_empty,
      axis_prog_full => NLW_fifo_generator_3_axis_prog_full_UNCONNECTED,
      axis_rd_data_count(12 downto 0) => NLW_fifo_generator_3_axis_rd_data_count_UNCONNECTED(12 downto 0),
      axis_wr_data_count(12 downto 0) => NLW_fifo_generator_3_axis_wr_data_count_UNCONNECTED(12 downto 0),
      m_aclk => gmii_to_rgmii_1_gmii_tx_clk,
      m_axis_tdata(7 downto 0) => fifo_generator_3_m_axis_tdata(7 downto 0),
      m_axis_tready => util_vector_logic_2_Res(0),
      m_axis_tuser(3 downto 0) => NLW_fifo_generator_3_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => fifo_generator_3_m_axis_tvalid,
      s_aclk => s_aclk_2,
      s_aresetn => link_status_and_gate_Res(0),
      s_axis_tdata(7 downto 0) => S_AXIS_2_TDATA(7 downto 0),
      s_axis_tready => S_AXIS_2_TREADY,
      s_axis_tuser(3 downto 0) => S_AXIS_2_TUSER(3 downto 0),
      s_axis_tvalid => S_AXIS_2_TVALID
    );
gmii_0_rx_fifo: component gmii_to_rgmii_axis_gmii_0_rx_fifo_0
     port map (
      axis_prog_empty => fifo_generator_0_axis_prog_empty,
      axis_prog_full => fifo_generator_0_axis_prog_full,
      axis_rd_data_count(12 downto 0) => NLW_gmii_0_rx_fifo_axis_rd_data_count_UNCONNECTED(12 downto 0),
      axis_wr_data_count(12 downto 0) => NLW_gmii_0_rx_fifo_axis_wr_data_count_UNCONNECTED(12 downto 0),
      m_aclk => m_aclk_1,
      m_axis_tdata(7 downto 0) => gmii_0_rx_fifo_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => gmii_0_rx_fifo_M_AXIS_TREADY,
      m_axis_tuser(3 downto 0) => gmii_0_rx_fifo_M_AXIS_TUSER(3 downto 0),
      m_axis_tvalid => gmii_0_rx_fifo_M_AXIS_TVALID,
      s_aclk => gmii_to_rgmii_0_gmii_rx_clk,
      s_aresetn => link_status_and_gate_Res(0),
      s_axis_tdata(7 downto 0) => gmii_to_rgmii_0_gmii_rxd(7 downto 0),
      s_axis_tready => NLW_gmii_0_rx_fifo_s_axis_tready_UNCONNECTED,
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => or_gate_wr_en_fifo_0_Res(0)
    );
gmii_to_rgmii_0: component gmii_to_rgmii_axis_gmii_to_rgmii_0_0
     port map (
      clkin => clkin_1,
      clock_speed(1 downto 0) => NLW_gmii_to_rgmii_0_clock_speed_UNCONNECTED(1 downto 0),
      duplex_status => NLW_gmii_to_rgmii_0_duplex_status_UNCONNECTED,
      gmii_clk_125m_out => gmii_clk_125m_out,
      gmii_clk_25m_out => gmii_to_rgmii_0_gmii_clk_25m_out,
      gmii_clk_2_5m_out => gmii_to_rgmii_0_gmii_clk_2_5m_out,
      gmii_col => NLW_gmii_to_rgmii_0_gmii_col_UNCONNECTED,
      gmii_crs => NLW_gmii_to_rgmii_0_gmii_crs_UNCONNECTED,
      gmii_rx_clk => gmii_to_rgmii_0_gmii_rx_clk,
      gmii_rx_dv => gmii_to_rgmii_0_gmii_rx_dv,
      gmii_rx_er => NLW_gmii_to_rgmii_0_gmii_rx_er_UNCONNECTED,
      gmii_rxd(7 downto 0) => gmii_to_rgmii_0_gmii_rxd(7 downto 0),
      gmii_tx_clk => gmii_to_rgmii_0_gmii_tx_clk,
      gmii_tx_en => fifo_generator_2_m_axis_tvalid,
      gmii_tx_er => '0',
      gmii_txd(7 downto 0) => fifo_generator_2_m_axis_tdata(7 downto 0),
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
      rx_reset => util_vector_logic_0_Res(0),
      speed_mode(1 downto 0) => NLW_gmii_to_rgmii_0_speed_mode_UNCONNECTED(1 downto 0),
      tx_reset => util_vector_logic_0_Res(0)
    );
gmii_to_rgmii_1: component gmii_to_rgmii_axis_gmii_to_rgmii_1_0
     port map (
      clock_speed(1 downto 0) => NLW_gmii_to_rgmii_1_clock_speed_UNCONNECTED(1 downto 0),
      duplex_status => NLW_gmii_to_rgmii_1_duplex_status_UNCONNECTED,
      gmii_clk_125m_in => gmii_clk_125m_out,
      gmii_clk_25m_in => gmii_to_rgmii_0_gmii_clk_25m_out,
      gmii_clk_2_5m_in => gmii_to_rgmii_0_gmii_clk_2_5m_out,
      gmii_col => NLW_gmii_to_rgmii_1_gmii_col_UNCONNECTED,
      gmii_crs => NLW_gmii_to_rgmii_1_gmii_crs_UNCONNECTED,
      gmii_rx_clk => gmii_to_rgmii_1_gmii_rx_clk,
      gmii_rx_dv => gmii_to_rgmii_1_gmii_rx_dv,
      gmii_rx_er => NLW_gmii_to_rgmii_1_gmii_rx_er_UNCONNECTED,
      gmii_rxd(7 downto 0) => gmii_to_rgmii_1_gmii_rxd(7 downto 0),
      gmii_tx_clk => gmii_to_rgmii_1_gmii_tx_clk,
      gmii_tx_en => fifo_generator_3_m_axis_tvalid,
      gmii_tx_er => '0',
      gmii_txd(7 downto 0) => fifo_generator_3_m_axis_tdata(7 downto 0),
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
      rx_reset => util_vector_logic_0_Res(0),
      speed_mode(1 downto 0) => NLW_gmii_to_rgmii_1_speed_mode_UNCONNECTED(1 downto 0),
      tx_reset => util_vector_logic_0_Res(0)
    );
link_status_and_gate: component gmii_to_rgmii_axis_link_status_and_gate_0
     port map (
      Op1(0) => gmii_to_rgmii_0_link_status,
      Op2(0) => gmii_to_rgmii_1_link_status,
      Res(0) => link_status_and_gate_Res(0)
    );
not_gate_full_fifo_0: component gmii_to_rgmii_axis_not_gate_full_fifo_0_0
     port map (
      Op1(0) => fifo_generator_0_axis_prog_full,
      Res(0) => not_gate_full_fifo_0_Res(0)
    );
not_gate_full_fifo_1: component gmii_to_rgmii_axis_not_gate_full_fifo_1_0
     port map (
      Op1(0) => fifo_generator_1_axis_prog_full,
      Res(0) => not_gate_full_fifo_1_Res(0)
    );
or_gate_wr_en_fifo_0: component gmii_to_rgmii_axis_or_gate_wr_en_fifo_0_0
     port map (
      Op1(0) => not_gate_full_fifo_0_Res(0),
      Op2(0) => gmii_to_rgmii_0_gmii_rx_dv,
      Res(0) => or_gate_wr_en_fifo_0_Res(0)
    );
or_gate_wr_en_fifo_1: component gmii_to_rgmii_axis_or_gate_wr_en_fifo_1_0
     port map (
      Op1(0) => not_gate_full_fifo_1_Res(0),
      Op2(0) => gmii_to_rgmii_1_gmii_rx_dv,
      Res(0) => or_gate_wr_en_fifo_1_Res(0)
    );
util_vector_logic_0: component gmii_to_rgmii_axis_util_vector_logic_0_0
     port map (
      Op1(0) => FCLK_RESET0_N_1,
      Res(0) => util_vector_logic_0_Res(0)
    );
util_vector_logic_1: component gmii_to_rgmii_axis_util_vector_logic_1_0
     port map (
      Op1(0) => fifo_generator_2_axis_prog_empty,
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_2: component gmii_to_rgmii_axis_util_vector_logic_2_0
     port map (
      Op1(0) => fifo_generator_3_axis_prog_empty,
      Res(0) => util_vector_logic_2_Res(0)
    );
end STRUCTURE;
