--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Tue Aug  2 18:10:17 2016
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
end design_2_wrapper;

architecture STRUCTURE of design_2_wrapper is
  component design_2 is
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
    tx_reset : in STD_LOGIC;
    rx_reset : in STD_LOGIC;
    clkin : in STD_LOGIC;
    link_status_AND : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mdio_gem_mdc : in STD_LOGIC;
    mdio_gem_i : out STD_LOGIC;
    mdio_gem_o : in STD_LOGIC;
    mdio_gem_t : in STD_LOGIC
  );
  end component design_2;
begin
design_2_i: component design_2
     port map (
      GMII_0_col => GMII_0_col,
      GMII_0_crs => GMII_0_crs,
      GMII_0_rx_clk => GMII_0_rx_clk,
      GMII_0_rx_dv => GMII_0_rx_dv,
      GMII_0_rx_er => GMII_0_rx_er,
      GMII_0_rxd(7 downto 0) => GMII_0_rxd(7 downto 0),
      GMII_0_tx_clk => GMII_0_tx_clk,
      GMII_0_tx_en => GMII_0_tx_en,
      GMII_0_tx_er => GMII_0_tx_er,
      GMII_0_txd(7 downto 0) => GMII_0_txd(7 downto 0),
      GMII_1_col => GMII_1_col,
      GMII_1_crs => GMII_1_crs,
      GMII_1_rx_clk => GMII_1_rx_clk,
      GMII_1_rx_dv => GMII_1_rx_dv,
      GMII_1_rx_er => GMII_1_rx_er,
      GMII_1_rxd(7 downto 0) => GMII_1_rxd(7 downto 0),
      GMII_1_tx_clk => GMII_1_tx_clk,
      GMII_1_tx_en => GMII_1_tx_en,
      GMII_1_tx_er => GMII_1_tx_er,
      GMII_1_txd(7 downto 0) => GMII_1_txd(7 downto 0),
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
      clkin => clkin,
      link_status_AND(7 downto 0) => link_status_AND(7 downto 0),
      mdio_gem_i => mdio_gem_i,
      mdio_gem_mdc => mdio_gem_mdc,
      mdio_gem_o => mdio_gem_o,
      mdio_gem_t => mdio_gem_t,
      rx_reset => rx_reset,
      tx_reset => tx_reset
    );
end STRUCTURE;
