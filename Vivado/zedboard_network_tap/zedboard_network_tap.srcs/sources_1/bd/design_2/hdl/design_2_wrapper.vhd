--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Wed Aug  3 12:19:30 2016
--Host        : wintermute running 64-bit Ubuntu 14.04.4 LTS
--Command     : generate_target design_2_wrapper.bd
--Design      : design_2_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_2_wrapper is
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
    link_status_AND : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mdio_gem_i : out STD_LOGIC;
    mdio_gem_mdc : in STD_LOGIC;
    mdio_gem_o : in STD_LOGIC;
    mdio_gem_t : in STD_LOGIC;
    rx_reset : in STD_LOGIC;
    tx_reset : in STD_LOGIC
  );
end design_2_wrapper;

architecture STRUCTURE of design_2_wrapper is
  component design_2 is
  port (
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
    tx_reset : in STD_LOGIC;
    rx_reset : in STD_LOGIC;
    clkin : in STD_LOGIC;
    link_status_AND : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mdio_gem_mdc : in STD_LOGIC;
    mdio_gem_i : out STD_LOGIC;
    mdio_gem_o : in STD_LOGIC;
    mdio_gem_t : in STD_LOGIC;
    M_AXIS_GMII0_RX_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_GMII0_RX_tready : in STD_LOGIC;
    M_AXIS_GMII0_RX_tvalid : out STD_LOGIC;
    S_AXIS_GMII0_TX_tvalid : in STD_LOGIC;
    S_AXIS_GMII0_TX_tready : out STD_LOGIC;
    S_AXIS_GMII0_TX_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_0_rx_clk : out STD_LOGIC;
    gmii_0_tx_clk : out STD_LOGIC;
    gmii_0_tx_er : in STD_LOGIC;
    gmii_0_rx_er : out STD_LOGIC;
    M_AXIS_GMII1_RX_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_GMII1_RX_tready : in STD_LOGIC;
    M_AXIS_GMII1_RX_tvalid : out STD_LOGIC;
    S_AXIS_GMII1_TX_tvalid : in STD_LOGIC;
    S_AXIS_GMII1_TX_tready : out STD_LOGIC;
    S_AXIS_GMII1_TX_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_1_tx_clk : out STD_LOGIC;
    gmii_1_rx_clk : out STD_LOGIC
  );
  end component design_2;
begin
design_2_i: component design_2
     port map (
      M_AXIS_GMII0_RX_tdata(7 downto 0) => M_AXIS_GMII0_RX_tdata(7 downto 0),
      M_AXIS_GMII0_RX_tready => M_AXIS_GMII0_RX_tready,
      M_AXIS_GMII0_RX_tvalid => M_AXIS_GMII0_RX_tvalid,
      M_AXIS_GMII1_RX_tdata(7 downto 0) => M_AXIS_GMII1_RX_tdata(7 downto 0),
      M_AXIS_GMII1_RX_tready => M_AXIS_GMII1_RX_tready,
      M_AXIS_GMII1_RX_tvalid => M_AXIS_GMII1_RX_tvalid,
      RGMII_0_rd(3 downto 0) => RGMII_0_rd(3 downto 0),
      RGMII_0_rx_ctl => RGMII_0_rx_ctl,
      RGMII_0_rxc => RGMII_0_rxc,
      RGMII_0_td(3 downto 0) => RGMII_0_td(3 downto 0),
      RGMII_0_tx_ctl => RGMII_0_tx_ctl,
      RGMII_0_txc => RGMII_0_txc,
      RGMII_1_rd(3 downto 0) => RGMII_1_rd(3 downto 0),
      RGMII_1_rx_ctl => RGMII_1_rx_ctl,
      RGMII_1_rxc => RGMII_1_rxc,
      RGMII_1_td(3 downto 0) => RGMII_1_td(3 downto 0),
      RGMII_1_tx_ctl => RGMII_1_tx_ctl,
      RGMII_1_txc => RGMII_1_txc,
      S_AXIS_GMII0_TX_tdata(7 downto 0) => S_AXIS_GMII0_TX_tdata(7 downto 0),
      S_AXIS_GMII0_TX_tready => S_AXIS_GMII0_TX_tready,
      S_AXIS_GMII0_TX_tvalid => S_AXIS_GMII0_TX_tvalid,
      S_AXIS_GMII1_TX_tdata(7 downto 0) => S_AXIS_GMII1_TX_tdata(7 downto 0),
      S_AXIS_GMII1_TX_tready => S_AXIS_GMII1_TX_tready,
      S_AXIS_GMII1_TX_tvalid => S_AXIS_GMII1_TX_tvalid,
      clkin => clkin,
      gmii_0_rx_clk => gmii_0_rx_clk,
      gmii_0_rx_er => gmii_0_rx_er,
      gmii_0_tx_clk => gmii_0_tx_clk,
      gmii_0_tx_er => gmii_0_tx_er,
      gmii_1_rx_clk => gmii_1_rx_clk,
      gmii_1_tx_clk => gmii_1_tx_clk,
      link_status_AND(7 downto 0) => link_status_AND(7 downto 0),
      mdio_gem_i => mdio_gem_i,
      mdio_gem_mdc => mdio_gem_mdc,
      mdio_gem_o => mdio_gem_o,
      mdio_gem_t => mdio_gem_t,
      rx_reset => rx_reset,
      tx_reset => tx_reset
    );
end STRUCTURE;
