--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Fri Aug  5 08:34:40 2016
--Host        : wintermute running 64-bit Ubuntu 14.04.4 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
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
    gmii_0_rx_fifo_prog_empty : out STD_LOGIC;
    gmii_1_rx_fifo_prog_empty : out STD_LOGIC;
    m_aclk_gmii_0_rx_fifo : in STD_LOGIC;
    m_aclk_gmii_1_rx_fifo : in STD_LOGIC;
    pc_asserted : out STD_LOGIC;
    pc_status : out STD_LOGIC_VECTOR ( 10 downto 0 );
    ref_clk_fsel : out STD_LOGIC_VECTOR ( 0 to 0 );
    ref_clk_oe : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_port_0 : out STD_LOGIC;
    reset_port_1 : out STD_LOGIC;
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
    s_aclk_gmii_1_tx_fifo : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=20,numReposBlks=20,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=Global}";
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
  component design_1_gmii_to_rgmii_0_0 is
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
  end component design_1_gmii_to_rgmii_0_0;
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
  end component design_1_fifo_generator_0_0;
  component design_1_fifo_generator_1_0 is
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
  end component design_1_fifo_generator_1_0;
  component design_1_link_status_and_gate_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_link_status_and_gate_0;
  component design_1_or_gate_wr_en_fifo_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_or_gate_wr_en_fifo_0_0;
  component design_1_or_gate_wr_en_fifo_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Op2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_or_gate_wr_en_fifo_1_0;
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
  component design_1_fifo_generator_1_1 is
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
  end component design_1_fifo_generator_1_1;
  component design_1_fifo_generator_1_2 is
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
  end component design_1_fifo_generator_1_2;
  component design_1_util_vector_logic_0_1 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_0_1;
  component design_1_util_vector_logic_1_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_vector_logic_1_0;
  component design_1_axis_protocol_checker_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    pc_axis_tvalid : in STD_LOGIC;
    pc_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pc_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pc_asserted : out STD_LOGIC;
    pc_status : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  end component design_1_axis_protocol_checker_0_0;
  signal S_AXIS_1_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_1_TREADY : STD_LOGIC;
  signal S_AXIS_1_TUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXIS_1_TVALID : STD_LOGIC;
  signal S_AXIS_2_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal S_AXIS_2_TREADY : STD_LOGIC;
  signal S_AXIS_2_TUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal S_AXIS_2_TVALID : STD_LOGIC;
  signal axis_protocol_checker_0_pc_asserted : STD_LOGIC;
  signal axis_protocol_checker_0_pc_status : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal fifo_generator_0_M_AXIS_TDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal fifo_generator_0_M_AXIS_TREADY : STD_LOGIC;
  signal fifo_generator_0_M_AXIS_TUSER : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fifo_generator_0_M_AXIS_TVALID : STD_LOGIC;
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
  signal link_status_and_gate_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_aclk_1 : STD_LOGIC;
  signal m_aclk_2 : STD_LOGIC;
  signal not_gate_full_fifo_0_Res : STD_LOGIC_VECTOR ( 0 to 0 );
  signal not_gate_full_fifo_1_Res : STD_LOGIC_VECTOR ( 0 to 0 );
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
  signal ref_clk_fsel_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal ref_clk_oe_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_aclk_1 : STD_LOGIC;
  signal s_aclk_2 : STD_LOGIC;
  signal util_reduced_logic_0_Res : STD_LOGIC;
  signal util_reduced_logic_1_Res : STD_LOGIC;
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
  signal NLW_gmii_0_rx_fifo_s_axis_tready_UNCONNECTED : STD_LOGIC;
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
  signal NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE0_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE1_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_TTC0_WAVE2_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_USB0_VBUS_PWRSELECT_UNCONNECTED : STD_LOGIC;
  signal NLW_processing_system7_0_ENET1_GMII_TXD_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_processing_system7_0_ENET1_GMII_TX_EN_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_ENET1_GMII_TX_ER_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_processing_system7_0_USB0_PORT_INDCTL_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  M_AXIS_gmii_0_rx_fifo_tdata(7 downto 0) <= fifo_generator_0_M_AXIS_TDATA(7 downto 0);
  M_AXIS_gmii_0_rx_fifo_tuser(3 downto 0) <= fifo_generator_0_M_AXIS_TUSER(3 downto 0);
  M_AXIS_gmii_0_rx_fifo_tvalid <= fifo_generator_0_M_AXIS_TVALID;
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
  fifo_generator_0_M_AXIS_TREADY <= M_AXIS_gmii_0_rx_fifo_tready;
  fifo_generator_1_M_AXIS_TREADY <= M_AXIS_gmii_1_rx_fifo_tready;
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
  pc_asserted <= axis_protocol_checker_0_pc_asserted;
  pc_status(10 downto 0) <= axis_protocol_checker_0_pc_status(10 downto 0);
  ref_clk_fsel(0) <= ref_clk_fsel_dout(0);
  ref_clk_oe(0) <= ref_clk_oe_dout(0);
  reset_port_0 <= util_reduced_logic_0_Res;
  reset_port_1 <= util_reduced_logic_1_Res;
  rgmii_port_0_td(3 downto 0) <= gmii_to_rgmii_0_RGMII_TD(3 downto 0);
  rgmii_port_0_tx_ctl <= gmii_to_rgmii_0_RGMII_TX_CTL;
  rgmii_port_0_txc <= gmii_to_rgmii_0_RGMII_TXC;
  rgmii_port_1_td(3 downto 0) <= gmii_to_rgmii_1_RGMII_TD(3 downto 0);
  rgmii_port_1_tx_ctl <= gmii_to_rgmii_1_RGMII_TX_CTL;
  rgmii_port_1_txc <= gmii_to_rgmii_1_RGMII_TXC;
  s_aclk_1 <= s_aclk_gmii_0_tx_fifo;
  s_aclk_2 <= s_aclk_gmii_1_tx_fifo;
axis_protocol_checker_0: component design_1_axis_protocol_checker_0_0
     port map (
      aclk => m_aclk_1,
      aresetn => link_status_and_gate_Res(0),
      pc_asserted => axis_protocol_checker_0_pc_asserted,
      pc_axis_tdata(7 downto 0) => fifo_generator_0_M_AXIS_TDATA(7 downto 0),
      pc_axis_tuser(3 downto 0) => fifo_generator_0_M_AXIS_TUSER(3 downto 0),
      pc_axis_tvalid => fifo_generator_0_M_AXIS_TVALID,
      pc_status(10 downto 0) => axis_protocol_checker_0_pc_status(10 downto 0)
    );
fifo_generator_1: component design_1_fifo_generator_1_0
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
fifo_generator_2: component design_1_fifo_generator_1_1
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
fifo_generator_3: component design_1_fifo_generator_1_2
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
gmii_0_rx_fifo: component design_1_fifo_generator_0_0
     port map (
      axis_prog_empty => fifo_generator_0_axis_prog_empty,
      axis_prog_full => fifo_generator_0_axis_prog_full,
      axis_rd_data_count(12 downto 0) => NLW_gmii_0_rx_fifo_axis_rd_data_count_UNCONNECTED(12 downto 0),
      axis_wr_data_count(12 downto 0) => NLW_gmii_0_rx_fifo_axis_wr_data_count_UNCONNECTED(12 downto 0),
      m_aclk => m_aclk_1,
      m_axis_tdata(7 downto 0) => fifo_generator_0_M_AXIS_TDATA(7 downto 0),
      m_axis_tready => fifo_generator_0_M_AXIS_TREADY,
      m_axis_tuser(3 downto 0) => fifo_generator_0_M_AXIS_TUSER(3 downto 0),
      m_axis_tvalid => fifo_generator_0_M_AXIS_TVALID,
      s_aclk => gmii_to_rgmii_0_gmii_rx_clk,
      s_aresetn => link_status_and_gate_Res(0),
      s_axis_tdata(7 downto 0) => gmii_to_rgmii_0_gmii_rxd(7 downto 0),
      s_axis_tready => NLW_gmii_0_rx_fifo_s_axis_tready_UNCONNECTED,
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => or_gate_wr_en_fifo_0_Res(0)
    );
gmii_to_rgmii_0: component design_1_gmii_to_rgmii_0_0
     port map (
      clkin => processing_system7_0_FCLK_CLK1,
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
gmii_to_rgmii_1: component design_1_gmii_to_rgmii_1_0
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
      mdio_gem_i => processing_system7_0_MDIO_ETHERNET_1_MDIO_I,
      mdio_gem_mdc => processing_system7_0_MDIO_ETHERNET_1_MDC,
      mdio_gem_o => processing_system7_0_MDIO_ETHERNET_1_MDIO_O,
      mdio_gem_t => processing_system7_0_MDIO_ETHERNET_1_MDIO_T,
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
link_status_and_gate: component design_1_link_status_and_gate_0
     port map (
      Op1(0) => gmii_to_rgmii_0_link_status,
      Op2(0) => gmii_to_rgmii_1_link_status,
      Res(0) => link_status_and_gate_Res(0)
    );
not_gate_full_fifo_0: component design_1_not_gate_full_fifo_0_0
     port map (
      Op1(0) => fifo_generator_0_axis_prog_full,
      Res(0) => not_gate_full_fifo_0_Res(0)
    );
not_gate_full_fifo_1: component design_1_not_gate_full_fifo_1_0
     port map (
      Op1(0) => fifo_generator_1_axis_prog_full,
      Res(0) => not_gate_full_fifo_1_Res(0)
    );
or_gate_wr_en_fifo_0: component design_1_or_gate_wr_en_fifo_0_0
     port map (
      Op1(0) => not_gate_full_fifo_0_Res(0),
      Op2(0) => gmii_to_rgmii_0_gmii_rx_dv,
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
      M_AXI_GP0_ARADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_ARBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_ARLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_ARPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_ARREADY => '0',
      M_AXI_GP0_ARSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_ARSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_ARVALID => NLW_processing_system7_0_M_AXI_GP0_ARVALID_UNCONNECTED,
      M_AXI_GP0_AWADDR(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWADDR_UNCONNECTED(31 downto 0),
      M_AXI_GP0_AWBURST(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWCACHE(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWCACHE_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_AWLEN(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLEN_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWLOCK(1 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWLOCK_UNCONNECTED(1 downto 0),
      M_AXI_GP0_AWPROT(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWPROT_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWQOS(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWQOS_UNCONNECTED(3 downto 0),
      M_AXI_GP0_AWREADY => '0',
      M_AXI_GP0_AWSIZE(2 downto 0) => NLW_processing_system7_0_M_AXI_GP0_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_GP0_AWVALID => NLW_processing_system7_0_M_AXI_GP0_AWVALID_UNCONNECTED,
      M_AXI_GP0_BID(11 downto 0) => B"000000000000",
      M_AXI_GP0_BREADY => NLW_processing_system7_0_M_AXI_GP0_BREADY_UNCONNECTED,
      M_AXI_GP0_BRESP(1 downto 0) => B"00",
      M_AXI_GP0_BVALID => '0',
      M_AXI_GP0_RDATA(31 downto 0) => B"00000000000000000000000000000000",
      M_AXI_GP0_RID(11 downto 0) => B"000000000000",
      M_AXI_GP0_RLAST => '0',
      M_AXI_GP0_RREADY => NLW_processing_system7_0_M_AXI_GP0_RREADY_UNCONNECTED,
      M_AXI_GP0_RRESP(1 downto 0) => B"00",
      M_AXI_GP0_RVALID => '0',
      M_AXI_GP0_WDATA(31 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WDATA_UNCONNECTED(31 downto 0),
      M_AXI_GP0_WID(11 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WID_UNCONNECTED(11 downto 0),
      M_AXI_GP0_WLAST => NLW_processing_system7_0_M_AXI_GP0_WLAST_UNCONNECTED,
      M_AXI_GP0_WREADY => '0',
      M_AXI_GP0_WSTRB(3 downto 0) => NLW_processing_system7_0_M_AXI_GP0_WSTRB_UNCONNECTED(3 downto 0),
      M_AXI_GP0_WVALID => NLW_processing_system7_0_M_AXI_GP0_WVALID_UNCONNECTED,
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
ref_clk_fsel_RnM: component design_1_ref_clk_fsel_0
     port map (
      dout(0) => ref_clk_fsel_dout(0)
    );
ref_clk_oe_RnM: component design_1_ref_clk_oe_0
     port map (
      dout(0) => ref_clk_oe_dout(0)
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
util_vector_logic_1: component design_1_util_vector_logic_0_1
     port map (
      Op1(0) => fifo_generator_2_axis_prog_empty,
      Res(0) => util_vector_logic_1_Res(0)
    );
util_vector_logic_2: component design_1_util_vector_logic_1_0
     port map (
      Op1(0) => fifo_generator_3_axis_prog_empty,
      Res(0) => util_vector_logic_2_Res(0)
    );
end STRUCTURE;
