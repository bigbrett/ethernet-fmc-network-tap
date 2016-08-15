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

-- IP VLNV: user.org:user:gmii_to_rgmii_axis:1.0
-- IP Revision: 9

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_gmii_to_rgmii_axis_0_0 IS
  PORT (
    FCLK_RESET0_N : IN STD_LOGIC;
    M_AXIS_gmii_0_rx_fifo_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXIS_gmii_0_rx_fifo_tready : IN STD_LOGIC;
    M_AXIS_gmii_0_rx_fifo_tuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXIS_gmii_0_rx_fifo_tvalid : OUT STD_LOGIC;
    M_AXIS_gmii_1_rx_fifo_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXIS_gmii_1_rx_fifo_tready : IN STD_LOGIC;
    M_AXIS_gmii_1_rx_fifo_tuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXIS_gmii_1_rx_fifo_tvalid : OUT STD_LOGIC;
    S_AXIS_gmii_0_tx_fifo_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXIS_gmii_0_tx_fifo_tready : OUT STD_LOGIC;
    S_AXIS_gmii_0_tx_fifo_tuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXIS_gmii_0_tx_fifo_tvalid : IN STD_LOGIC;
    S_AXIS_gmii_1_tx_fifo_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXIS_gmii_1_tx_fifo_tready : OUT STD_LOGIC;
    S_AXIS_gmii_1_tx_fifo_tuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S_AXIS_gmii_1_tx_fifo_tvalid : IN STD_LOGIC;
    clkin200 : IN STD_LOGIC;
    gmii_0_rx_fifo_prog_empty : OUT STD_LOGIC;
    gmii_1_rx_fifo_prog_empty : OUT STD_LOGIC;
    m_aclk_gmii_0_rx_fifo : IN STD_LOGIC;
    m_aclk_gmii_1_rx_fifo : IN STD_LOGIC;
    mdio_gem_i : OUT STD_LOGIC;
    mdio_gem_mdc : IN STD_LOGIC;
    mdio_gem_o : IN STD_LOGIC;
    mdio_gem_t : IN STD_LOGIC;
    rgmii_port_0_rd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rgmii_port_0_rx_ctl : IN STD_LOGIC;
    rgmii_port_0_rxc : IN STD_LOGIC;
    rgmii_port_0_td : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rgmii_port_0_tx_ctl : OUT STD_LOGIC;
    rgmii_port_0_txc : OUT STD_LOGIC;
    rgmii_port_1_rd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rgmii_port_1_rx_ctl : IN STD_LOGIC;
    rgmii_port_1_rxc : IN STD_LOGIC;
    rgmii_port_1_td : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rgmii_port_1_tx_ctl : OUT STD_LOGIC;
    rgmii_port_1_txc : OUT STD_LOGIC;
    s_aclk_gmii_0_tx_fifo : IN STD_LOGIC;
    s_aclk_gmii_1_tx_fifo : IN STD_LOGIC;
    led_dbg_0 : OUT STD_LOGIC
  );
END design_1_gmii_to_rgmii_axis_0_0;

ARCHITECTURE design_1_gmii_to_rgmii_axis_0_0_arch OF design_1_gmii_to_rgmii_axis_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_gmii_to_rgmii_axis_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT gmii_to_rgmii_axis IS
    PORT (
      FCLK_RESET0_N : IN STD_LOGIC;
      M_AXIS_gmii_0_rx_fifo_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_gmii_0_rx_fifo_tready : IN STD_LOGIC;
      M_AXIS_gmii_0_rx_fifo_tuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXIS_gmii_0_rx_fifo_tvalid : OUT STD_LOGIC;
      M_AXIS_gmii_1_rx_fifo_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXIS_gmii_1_rx_fifo_tready : IN STD_LOGIC;
      M_AXIS_gmii_1_rx_fifo_tuser : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXIS_gmii_1_rx_fifo_tvalid : OUT STD_LOGIC;
      S_AXIS_gmii_0_tx_fifo_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_gmii_0_tx_fifo_tready : OUT STD_LOGIC;
      S_AXIS_gmii_0_tx_fifo_tuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S_AXIS_gmii_0_tx_fifo_tvalid : IN STD_LOGIC;
      S_AXIS_gmii_1_tx_fifo_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_gmii_1_tx_fifo_tready : OUT STD_LOGIC;
      S_AXIS_gmii_1_tx_fifo_tuser : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S_AXIS_gmii_1_tx_fifo_tvalid : IN STD_LOGIC;
      clkin200 : IN STD_LOGIC;
      gmii_0_rx_fifo_prog_empty : OUT STD_LOGIC;
      gmii_1_rx_fifo_prog_empty : OUT STD_LOGIC;
      m_aclk_gmii_0_rx_fifo : IN STD_LOGIC;
      m_aclk_gmii_1_rx_fifo : IN STD_LOGIC;
      mdio_gem_i : OUT STD_LOGIC;
      mdio_gem_mdc : IN STD_LOGIC;
      mdio_gem_o : IN STD_LOGIC;
      mdio_gem_t : IN STD_LOGIC;
      rgmii_port_0_rd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      rgmii_port_0_rx_ctl : IN STD_LOGIC;
      rgmii_port_0_rxc : IN STD_LOGIC;
      rgmii_port_0_td : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rgmii_port_0_tx_ctl : OUT STD_LOGIC;
      rgmii_port_0_txc : OUT STD_LOGIC;
      rgmii_port_1_rd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      rgmii_port_1_rx_ctl : IN STD_LOGIC;
      rgmii_port_1_rxc : IN STD_LOGIC;
      rgmii_port_1_td : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rgmii_port_1_tx_ctl : OUT STD_LOGIC;
      rgmii_port_1_txc : OUT STD_LOGIC;
      s_aclk_gmii_0_tx_fifo : IN STD_LOGIC;
      s_aclk_gmii_1_tx_fifo : IN STD_LOGIC;
      led_dbg_0 : OUT STD_LOGIC
    );
  END COMPONENT gmii_to_rgmii_axis;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF FCLK_RESET0_N: SIGNAL IS "xilinx.com:signal:reset:1.0 RST.FCLK_RESET0_N RST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_gmii_0_rx_fifo_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_gmii_0_rx_fifo TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_gmii_0_rx_fifo_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_gmii_0_rx_fifo TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_gmii_0_rx_fifo_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_gmii_0_rx_fifo TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_gmii_0_rx_fifo_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_gmii_0_rx_fifo TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_gmii_1_rx_fifo_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_gmii_1_rx_fifo TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_gmii_1_rx_fifo_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_gmii_1_rx_fifo TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_gmii_1_rx_fifo_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_gmii_1_rx_fifo TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_gmii_1_rx_fifo_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS_gmii_1_rx_fifo TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_gmii_0_tx_fifo_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_gmii_0_tx_fifo TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_gmii_0_tx_fifo_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_gmii_0_tx_fifo TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_gmii_0_tx_fifo_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_gmii_0_tx_fifo TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_gmii_0_tx_fifo_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_gmii_0_tx_fifo TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_gmii_1_tx_fifo_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_gmii_1_tx_fifo TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_gmii_1_tx_fifo_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_gmii_1_tx_fifo TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_gmii_1_tx_fifo_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_gmii_1_tx_fifo TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_gmii_1_tx_fifo_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_gmii_1_tx_fifo TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF clkin200: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.CLKIN200 CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_aclk_gmii_0_rx_fifo: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.M_ACLK_GMII_0_RX_FIFO CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m_aclk_gmii_1_rx_fifo: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.M_ACLK_GMII_1_RX_FIFO CLK";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_i: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDIO_I";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_mdc: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDC";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_o: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDIO_O";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_t: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDIO_T";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_0_rd: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_0 RD";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_0_rx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_0 RX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_0_rxc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_0 RXC";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_0_td: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_0 TD";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_0_tx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_0 TX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_0_txc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_0 TXC";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_1_rd: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_1 RD";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_1_rx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_1 RX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_1_rxc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_1 RXC";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_1_td: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_1 TD";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_1_tx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_1 TX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF rgmii_port_1_txc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 rgmii_port_1 TXC";
  ATTRIBUTE X_INTERFACE_INFO OF s_aclk_gmii_0_tx_fifo: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.S_ACLK_GMII_0_TX_FIFO CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_aclk_gmii_1_tx_fifo: SIGNAL IS "xilinx.com:signal:clock:1.0 CLK.S_ACLK_GMII_1_TX_FIFO CLK";
BEGIN
  U0 : gmii_to_rgmii_axis
    PORT MAP (
      FCLK_RESET0_N => FCLK_RESET0_N,
      M_AXIS_gmii_0_rx_fifo_tdata => M_AXIS_gmii_0_rx_fifo_tdata,
      M_AXIS_gmii_0_rx_fifo_tready => M_AXIS_gmii_0_rx_fifo_tready,
      M_AXIS_gmii_0_rx_fifo_tuser => M_AXIS_gmii_0_rx_fifo_tuser,
      M_AXIS_gmii_0_rx_fifo_tvalid => M_AXIS_gmii_0_rx_fifo_tvalid,
      M_AXIS_gmii_1_rx_fifo_tdata => M_AXIS_gmii_1_rx_fifo_tdata,
      M_AXIS_gmii_1_rx_fifo_tready => M_AXIS_gmii_1_rx_fifo_tready,
      M_AXIS_gmii_1_rx_fifo_tuser => M_AXIS_gmii_1_rx_fifo_tuser,
      M_AXIS_gmii_1_rx_fifo_tvalid => M_AXIS_gmii_1_rx_fifo_tvalid,
      S_AXIS_gmii_0_tx_fifo_tdata => S_AXIS_gmii_0_tx_fifo_tdata,
      S_AXIS_gmii_0_tx_fifo_tready => S_AXIS_gmii_0_tx_fifo_tready,
      S_AXIS_gmii_0_tx_fifo_tuser => S_AXIS_gmii_0_tx_fifo_tuser,
      S_AXIS_gmii_0_tx_fifo_tvalid => S_AXIS_gmii_0_tx_fifo_tvalid,
      S_AXIS_gmii_1_tx_fifo_tdata => S_AXIS_gmii_1_tx_fifo_tdata,
      S_AXIS_gmii_1_tx_fifo_tready => S_AXIS_gmii_1_tx_fifo_tready,
      S_AXIS_gmii_1_tx_fifo_tuser => S_AXIS_gmii_1_tx_fifo_tuser,
      S_AXIS_gmii_1_tx_fifo_tvalid => S_AXIS_gmii_1_tx_fifo_tvalid,
      clkin200 => clkin200,
      gmii_0_rx_fifo_prog_empty => gmii_0_rx_fifo_prog_empty,
      gmii_1_rx_fifo_prog_empty => gmii_1_rx_fifo_prog_empty,
      m_aclk_gmii_0_rx_fifo => m_aclk_gmii_0_rx_fifo,
      m_aclk_gmii_1_rx_fifo => m_aclk_gmii_1_rx_fifo,
      mdio_gem_i => mdio_gem_i,
      mdio_gem_mdc => mdio_gem_mdc,
      mdio_gem_o => mdio_gem_o,
      mdio_gem_t => mdio_gem_t,
      rgmii_port_0_rd => rgmii_port_0_rd,
      rgmii_port_0_rx_ctl => rgmii_port_0_rx_ctl,
      rgmii_port_0_rxc => rgmii_port_0_rxc,
      rgmii_port_0_td => rgmii_port_0_td,
      rgmii_port_0_tx_ctl => rgmii_port_0_tx_ctl,
      rgmii_port_0_txc => rgmii_port_0_txc,
      rgmii_port_1_rd => rgmii_port_1_rd,
      rgmii_port_1_rx_ctl => rgmii_port_1_rx_ctl,
      rgmii_port_1_rxc => rgmii_port_1_rxc,
      rgmii_port_1_td => rgmii_port_1_td,
      rgmii_port_1_tx_ctl => rgmii_port_1_tx_ctl,
      rgmii_port_1_txc => rgmii_port_1_txc,
      s_aclk_gmii_0_tx_fifo => s_aclk_gmii_0_tx_fifo,
      s_aclk_gmii_1_tx_fifo => s_aclk_gmii_1_tx_fifo,
      led_dbg_0 => led_dbg_0
    );
END design_1_gmii_to_rgmii_axis_0_0_arch;
