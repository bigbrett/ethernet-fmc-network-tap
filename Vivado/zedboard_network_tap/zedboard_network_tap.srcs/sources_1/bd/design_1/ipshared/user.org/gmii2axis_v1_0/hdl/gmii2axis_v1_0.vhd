library ieee;
use ieee.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity gmii2axis_v1_0 is
	generic (
		-- Parameters of Axi Master Bus Interface M00_AXIS
		C_M00_AXIS_TDATA_WIDTH	: integer	:= 8;
		C_M00_AXIS_START_COUNT	: integer	:= 8;
    C_S00_AXIS_TDATA_WIDTH	: integer	:= 8;
		C_S00_AXIS_START_COUNT	: integer	:= 8

	);
	port (
    I_clk200                        : in    STD_LOGIC;
    -- MDIO Ports in from PS 
    mdio_gem_mdc                    : in    STD_LOGIC;-- MDIO clock i/p from GEM
    mdio_gem_i                      : out   STD_LOGIC;-- Connect this to the MDIO_I port of GEM 
    mdio_gem_o                      : in    STD_LOGIC;-- Connect this to the MDIO_O Port of GEM 
    mdio_gem_t                      : in    STD_LOGIC;-- Connect this to the MDIO_O Port of GEM 
    Q_link_status                   : out   STD_LOGIC;
    Q_clock_speed                   : out   STD_LOGIC_VECTOR(1 downto 0);
    Q_speed_mode                    : out   STD_LOGIC_VECTOR(1 downto 0);
    Q_duplex_status                 : out   STD_LOGIC;
    Q_rgmii_txd                     : out   STD_LOGIC_VECTOR(3 downto 0);
    Q_rgmii_tx_ctl                  : out   STD_LOGIC;
    Q_rgmii_txc                     : out   STD_LOGIC;
    I_rgmii_rxd                     : in    STD_LOGIC_VECTOR(3 downto 0);
    I_rgmii_rx_ctl                  : in    STD_LOGIC;
    I_rgmii_rxc                     : in    STD_LOGIC;
    -- MDIO Interface to External PHY
    mdio_phy_mdc                    : out   STD_LOGIC;-- MDIO clock i/p from GEM
    mdio_phy_i                      : in    STD_LOGIC;-- Connect this to the MDIO_I port of GEM
    mdio_phy_o                      : out   STD_LOGIC;-- Connect this to the MDIO_O Port of GEM
    mdio_phy_t                      : out   STD_LOGIC;-- Connect this to the MDIO_O Port of GEM
    Q_mmcm_locked                     : out   STD_LOGIC;-- Connect this to the MDIO_O Port of GEM

    I_gmii_tx_er                    : IN  STD_LOGIC;
    Q_gmii_rx_er                    : OUT STD_LOGIC;

    Q_gmii_clk_125m_out             : OUT STD_LOGIC; 
    Q_gmii_clk_25m_out             : OUT STD_LOGIC; 
    Q_gmii_clk_2_5m_out             : OUT STD_LOGIC; 
    
    Q_ref_clk_out                   : OUT STD_LOGIC;
		-- Ports of Axi Stream Master Bus Interface M00_AXIS
		m00_axis_aclk_OUT	: out STD_LOGIC;
		m00_axis_aresetn	: in  STD_LOGIC;
		m00_axis_tvalid	  : out STD_LOGIC;
		m00_axis_tdata	  : out STD_LOGIC_VECTOR(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		m00_axis_tstrb	  : out STD_LOGIC_VECTOR((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		m00_axis_tlast	  : out STD_LOGIC;
		m00_axis_tready	  : in  STD_LOGIC;

		-- Ports of Axi Stream Slave Bus Interface M00_AXIS
    s00_axis_aclk_OUT : out STD_LOGIC;
		s00_axis_aresetn	: in  STD_LOGIC;
		s00_axis_tvalid	  : in  STD_LOGIC;
		s00_axis_tdata	  : in  STD_LOGIC_VECTOR(C_M00_AXIS_TDATA_WIDTH-1 downto 0);
		s00_axis_tstrb	  : in  STD_LOGIC_VECTOR((C_M00_AXIS_TDATA_WIDTH/8)-1 downto 0);
		s00_axis_tlast	  : in  STD_LOGIC;
		s00_axis_tready	  : out STD_LOGIC
	);
end gmii2axis_v1_0;
-------------------------------------------------------------------------------------------
architecture arch_imp of gmii2axis_v1_0 is

  component GMII_TO_RGMII_0
    port (
      tx_reset              : IN  STD_LOGIC;
      rx_reset              : IN  STD_LOGIC;
      clkin                 : IN  STD_LOGIC;
      ref_clk_out           : OUT STD_LOGIC;
      mmcm_locked_out       : OUT STD_LOGIC;
      gmii_clk_125m_out     : OUT STD_LOGIC;
      gmii_clk_25m_out      : OUT STD_LOGIC;
      gmii_clk_2_5m_out     : OUT STD_LOGIC;
      rgmii_txd             : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rgmii_tx_ctl          : OUT STD_LOGIC;
      rgmii_txc             : OUT STD_LOGIC;
      rgmii_rxd             : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
      rgmii_rx_ctl          : IN  STD_LOGIC;
      rgmii_rxc             : IN  STD_LOGIC;
      link_status           : OUT STD_LOGIC;
      clock_speed           : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      duplex_status         : OUT STD_LOGIC;
      mdio_gem_mdc          : IN  STD_LOGIC;
      mdio_gem_i            : OUT STD_LOGIC;
      mdio_gem_o            : IN  STD_LOGIC;
      mdio_gem_t            : IN  STD_LOGIC;
      mdio_phy_mdc          : OUT STD_LOGIC;
      mdio_phy_i            : IN  STD_LOGIC;
      mdio_phy_o            : OUT STD_LOGIC;
      mdio_phy_t            : OUT STD_LOGIC;
      gmii_txd              : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
      gmii_tx_en            : IN  STD_LOGIC;
      gmii_tx_er            : IN  STD_LOGIC;
      gmii_tx_clk           : OUT STD_LOGIC;
      gmii_crs              : OUT STD_LOGIC;
      gmii_col              : OUT STD_LOGIC;
      gmii_rxd              : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      gmii_rx_dv            : OUT STD_LOGIC;
      gmii_rx_er            : OUT STD_LOGIC;
      gmii_rx_clk           : OUT STD_LOGIC;
      speed_mode            : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
    );
  end component;
  

  -- OPEN PORT SIGNALS 
  --signal L_ref_clk           : STD_LOGIC := '0';  
  --signal L_gmii_clk_125m     : STD_LOGIC := '0';              
  --signal L_gmii_clk_25m      : STD_LOGIC := '0';             
  --signal L_gmii_clk_2_5m     : STD_LOGIC := '0';             
  --signal L_speed_mode        : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
  --signal L_gmii_crs          : STD_LOGIC := '0';      
  --signal L_gmii_col          : STD_LOGIC := '0';      

  signal L_gmii_tx_reset     : STD_LOGIC := '0';        
  signal L_gmii_rx_reset     : STD_LOGIC := '0';        

begin ----------------------------------------------------------------------------------

-- AXIS resets are active low, GMII resets are active HIGH
--L_gmii_tx_reset <= NOT s00_axis_aresetn;
--L_gmii_rx_reset <= NOT m00_axis_aresetn;

gmii_to_rgmii: gmii_to_rgmii_0
port map(
    tx_reset           => L_gmii_tx_reset,
    rx_reset           => L_gmii_rx_reset,
    clkin              => I_clk200,
    ref_clk_out        => Q_ref_clk_out,
    mmcm_locked_out    => Q_mmcm_locked,
    gmii_clk_125m_out  => Q_gmii_clk_125m_out,
    gmii_clk_25m_out   => Q_gmii_clk_25m_out,
    gmii_clk_2_5m_out  => Q_gmii_clk_2_5m_out,
    speed_mode         => Q_speed_mode,
    gmii_tx_clk        => s00_axis_aclk_OUT,--L_gmii_tx_clk,
    gmii_tx_en         => s00_axis_tvalid, 
    gmii_txd           => s00_axis_tdata, 
    gmii_tx_er         => I_gmii_tx_er, 
    gmii_crs           => open,--L_gmii_crs, 
    gmii_col           => open,--L_gmii_col, 
    gmii_rx_clk        => m00_axis_aclk_OUT,--L_gmii_rx_clk
    gmii_rx_dv         => m00_axis_tvalid,--L_gmii_rx_dv, 
    gmii_rxd           => m00_axis_tdata,--L_gmii_rxd, 
    gmii_rx_er         => Q_gmii_rx_er, 
    mdio_gem_mdc       => mdio_gem_mdc, 
    mdio_gem_i         => mdio_gem_i, 
    mdio_gem_o         => mdio_gem_o, 
    mdio_gem_t         => mdio_gem_t, 
    link_status        => Q_link_status, 
    clock_speed        => Q_clock_speed, 
    duplex_status      => Q_duplex_status, 
    rgmii_txc          => Q_rgmii_txc, 
    rgmii_tx_ctl       => Q_rgmii_tx_ctl, 
    rgmii_txd          => Q_rgmii_txd, 
    rgmii_rxc          => I_rgmii_rxc, 
    rgmii_rx_ctl       => I_rgmii_rx_ctl, 
    rgmii_rxd          => I_rgmii_rxd, 
    mdio_phy_mdc       => mdio_phy_mdc, 
    mdio_phy_i         => mdio_phy_i, 
    mdio_phy_o         => mdio_phy_o, 
    mdio_phy_t         => mdio_phy_t 
  );


end arch_imp;
