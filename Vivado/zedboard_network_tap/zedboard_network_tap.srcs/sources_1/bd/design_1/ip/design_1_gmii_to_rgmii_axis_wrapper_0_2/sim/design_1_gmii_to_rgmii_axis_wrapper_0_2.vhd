-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:gmii_to_rgmii_axis_wrapper:1.2
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_gmii_to_rgmii_axis_wrapper_0_2 IS
  PORT (
    M_AXIS_GMII0_RX_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXIS_GMII0_RX_tready : IN STD_LOGIC;
    M_AXIS_GMII0_RX_tvalid : OUT STD_LOGIC;
    M_AXIS_GMII1_RX_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXIS_GMII1_RX_tready : IN STD_LOGIC;
    M_AXIS_GMII1_RX_tvalid : OUT STD_LOGIC;
    RGMII_0_rd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    RGMII_0_rx_ctl : IN STD_LOGIC;
    RGMII_0_rxc : IN STD_LOGIC;
    RGMII_0_td : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    RGMII_0_tx_ctl : OUT STD_LOGIC;
    RGMII_0_txc : OUT STD_LOGIC;
    RGMII_1_rd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    RGMII_1_rx_ctl : IN STD_LOGIC;
    RGMII_1_rxc : IN STD_LOGIC;
    RGMII_1_td : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    RGMII_1_tx_ctl : OUT STD_LOGIC;
    RGMII_1_txc : OUT STD_LOGIC;
    S_AXIS_GMII0_TX_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXIS_GMII0_TX_tready : OUT STD_LOGIC;
    S_AXIS_GMII0_TX_tvalid : IN STD_LOGIC;
    S_AXIS_GMII1_TX_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXIS_GMII1_TX_tready : OUT STD_LOGIC;
    S_AXIS_GMII1_TX_tvalid : IN STD_LOGIC;
    clkin : IN STD_LOGIC;
    gmii_0_rx_clk : OUT STD_LOGIC;
    gmii_0_rx_er : OUT STD_LOGIC;
    gmii_0_tx_clk : OUT STD_LOGIC;
    gmii_0_tx_er : IN STD_LOGIC;
    gmii_1_rx_clk : OUT STD_LOGIC;
    gmii_1_tx_clk : OUT STD_LOGIC;
    gmii_1_rx_er : OUT STD_LOGIC;
    gmii_1_tx_er : IN STD_LOGIC;
    link_status_AND : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    mdio_gem_i : OUT STD_LOGIC;
    mdio_gem_mdc : IN STD_LOGIC;
    mdio_gem_o : IN STD_LOGIC;
    mdio_gem_t : IN STD_LOGIC;
    rx_reset : IN STD_LOGIC;
    tx_reset : IN STD_LOGIC
  );
END design_1_gmii_to_rgmii_axis_wrapper_0_2;

ARCHITECTURE design_1_gmii_to_rgmii_axis_wrapper_0_2_arch OF design_1_gmii_to_rgmii_axis_wrapper_0_2 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_gmii_to_rgmii_axis_wrapper_0_2_arch: ARCHITECTURE IS "yes";
  COMPONENT design_2 IS
    PORT (
      M_AXIS_GMII0_RX_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_GMII0_RX_tready : IN STD_LOGIC;
      M_AXIS_GMII0_RX_tvalid : OUT STD_LOGIC;
      M_AXIS_GMII1_RX_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_GMII1_RX_tready : IN STD_LOGIC;
      M_AXIS_GMII1_RX_tvalid : OUT STD_LOGIC;
      RGMII_0_rd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      RGMII_0_rx_ctl : IN STD_LOGIC;
      RGMII_0_rxc : IN STD_LOGIC;
      RGMII_0_td : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      RGMII_0_tx_ctl : OUT STD_LOGIC;
      RGMII_0_txc : OUT STD_LOGIC;
      RGMII_1_rd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      RGMII_1_rx_ctl : IN STD_LOGIC;
      RGMII_1_rxc : IN STD_LOGIC;
      RGMII_1_td : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      RGMII_1_tx_ctl : OUT STD_LOGIC;
      RGMII_1_txc : OUT STD_LOGIC;
      S_AXIS_GMII0_TX_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_GMII0_TX_tready : OUT STD_LOGIC;
      S_AXIS_GMII0_TX_tvalid : IN STD_LOGIC;
      S_AXIS_GMII1_TX_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_GMII1_TX_tready : OUT STD_LOGIC;
      S_AXIS_GMII1_TX_tvalid : IN STD_LOGIC;
      clkin : IN STD_LOGIC;
      gmii_0_rx_clk : OUT STD_LOGIC;
      gmii_0_rx_er : OUT STD_LOGIC;
      gmii_0_tx_clk : OUT STD_LOGIC;
      gmii_0_tx_er : IN STD_LOGIC;
      gmii_1_rx_clk : OUT STD_LOGIC;
      gmii_1_tx_clk : OUT STD_LOGIC;
      gmii_1_rx_er : OUT STD_LOGIC;
      gmii_1_tx_er : IN STD_LOGIC;
      link_status_AND : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      mdio_gem_i : OUT STD_LOGIC;
      mdio_gem_mdc : IN STD_LOGIC;
      mdio_gem_o : IN STD_LOGIC;
      mdio_gem_t : IN STD_LOGIC;
      rx_reset : IN STD_LOGIC;
      tx_reset : IN STD_LOGIC
    );
  END COMPONENT design_2;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_GMII0_RX_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_GMII0_RX TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_GMII0_RX_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_GMII0_RX TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_GMII0_RX_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_GMII0_RX TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_GMII1_RX_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_GMII1_RX TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_GMII1_RX_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_GMII1_RX TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_GMII1_RX_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_GMII1_RX TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_0_rd: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_0 RD";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_0_rx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_0 RX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_0_rxc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_0 RXC";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_0_td: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_0 TD";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_0_tx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_0 TX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_0_txc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_0 TXC";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_1_rd: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_1 RD";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_1_rx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_1 RX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_1_rxc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_1 RXC";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_1_td: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_1 TD";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_1_tx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_1 TX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF RGMII_1_txc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII_1 TXC";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_GMII0_TX_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_GMII0_TX TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_GMII0_TX_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_GMII0_TX TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_GMII0_TX_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_GMII0_TX TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_GMII1_TX_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_GMII1_TX TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_GMII1_TX_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_GMII1_TX TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_GMII1_TX_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_GMII1_TX TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF clkin: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.CLKIN CLK";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_i: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDIO_I";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_mdc: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDC";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_o: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDIO_O";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_t: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDIO_T";
  ATTRIBUTE X_INTERFACE_INFO OF rx_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.RX_RESET RST";
  ATTRIBUTE X_INTERFACE_INFO OF tx_reset: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.TX_RESET RST";
BEGIN
  U0 : design_2
    PORT MAP (
      M_AXIS_GMII0_RX_tdata => M_AXIS_GMII0_RX_tdata,
      M_AXIS_GMII0_RX_tready => M_AXIS_GMII0_RX_tready,
      M_AXIS_GMII0_RX_tvalid => M_AXIS_GMII0_RX_tvalid,
      M_AXIS_GMII1_RX_tdata => M_AXIS_GMII1_RX_tdata,
      M_AXIS_GMII1_RX_tready => M_AXIS_GMII1_RX_tready,
      M_AXIS_GMII1_RX_tvalid => M_AXIS_GMII1_RX_tvalid,
      RGMII_0_rd => RGMII_0_rd,
      RGMII_0_rx_ctl => RGMII_0_rx_ctl,
      RGMII_0_rxc => RGMII_0_rxc,
      RGMII_0_td => RGMII_0_td,
      RGMII_0_tx_ctl => RGMII_0_tx_ctl,
      RGMII_0_txc => RGMII_0_txc,
      RGMII_1_rd => RGMII_1_rd,
      RGMII_1_rx_ctl => RGMII_1_rx_ctl,
      RGMII_1_rxc => RGMII_1_rxc,
      RGMII_1_td => RGMII_1_td,
      RGMII_1_tx_ctl => RGMII_1_tx_ctl,
      RGMII_1_txc => RGMII_1_txc,
      S_AXIS_GMII0_TX_tdata => S_AXIS_GMII0_TX_tdata,
      S_AXIS_GMII0_TX_tready => S_AXIS_GMII0_TX_tready,
      S_AXIS_GMII0_TX_tvalid => S_AXIS_GMII0_TX_tvalid,
      S_AXIS_GMII1_TX_tdata => S_AXIS_GMII1_TX_tdata,
      S_AXIS_GMII1_TX_tready => S_AXIS_GMII1_TX_tready,
      S_AXIS_GMII1_TX_tvalid => S_AXIS_GMII1_TX_tvalid,
      clkin => clkin,
      gmii_0_rx_clk => gmii_0_rx_clk,
      gmii_0_rx_er => gmii_0_rx_er,
      gmii_0_tx_clk => gmii_0_tx_clk,
      gmii_0_tx_er => gmii_0_tx_er,
      gmii_1_rx_clk => gmii_1_rx_clk,
      gmii_1_tx_clk => gmii_1_tx_clk,
      gmii_1_rx_er => gmii_1_rx_er,
      gmii_1_tx_er => gmii_1_tx_er,
      link_status_AND => link_status_AND,
      mdio_gem_i => mdio_gem_i,
      mdio_gem_mdc => mdio_gem_mdc,
      mdio_gem_o => mdio_gem_o,
      mdio_gem_t => mdio_gem_t,
      rx_reset => rx_reset,
      tx_reset => tx_reset
    );
END design_1_gmii_to_rgmii_axis_wrapper_0_2_arch;
