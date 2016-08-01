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

-- IP VLNV: user.org:user:gmii2axis:1.0
-- IP Revision: 12

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_gmii2axis_0_0 IS
  PORT (
    I_clk200 : IN STD_LOGIC;
    mdio_gem_mdc : IN STD_LOGIC;
    mdio_gem_i : OUT STD_LOGIC;
    mdio_gem_o : IN STD_LOGIC;
    mdio_gem_t : IN STD_LOGIC;
    Q_link_status : OUT STD_LOGIC;
    Q_clock_speed : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    Q_speed_mode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    Q_duplex_status : OUT STD_LOGIC;
    Q_rgmii_txd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    Q_rgmii_tx_ctl : OUT STD_LOGIC;
    Q_rgmii_txc : OUT STD_LOGIC;
    I_rgmii_rxd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    I_rgmii_rx_ctl : IN STD_LOGIC;
    I_rgmii_rxc : IN STD_LOGIC;
    mdio_phy_mdc : OUT STD_LOGIC;
    mdio_phy_i : IN STD_LOGIC;
    mdio_phy_o : OUT STD_LOGIC;
    mdio_phy_t : OUT STD_LOGIC;
    Q_mmcm_locked : OUT STD_LOGIC;
    I_gmii_tx_er : IN STD_LOGIC;
    Q_gmii_rx_er : OUT STD_LOGIC;
    Q_gmii_clk_125m_out : OUT STD_LOGIC;
    Q_gmii_clk_25m_out : OUT STD_LOGIC;
    Q_gmii_clk_2_5m_out : OUT STD_LOGIC;
    Q_ref_clk_out : OUT STD_LOGIC;
    m00_axis_aclk_OUT : OUT STD_LOGIC;
    m00_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m00_axis_tstrb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m00_axis_tlast : OUT STD_LOGIC;
    m00_axis_tvalid : OUT STD_LOGIC;
    m00_axis_tready : IN STD_LOGIC;
    s00_axis_aclk_OUT : OUT STD_LOGIC;
    s00_axis_aresetn : IN STD_LOGIC;
    s00_axis_tvalid : IN STD_LOGIC;
    s00_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axis_tstrb : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axis_tlast : IN STD_LOGIC;
    s00_axis_tready : OUT STD_LOGIC;
    m00_axis_aresetn : IN STD_LOGIC
  );
END design_1_gmii2axis_0_0;

ARCHITECTURE design_1_gmii2axis_0_0_arch OF design_1_gmii2axis_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_gmii2axis_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT gmii2axis_v1_0 IS
    GENERIC (
      C_M00_AXIS_TDATA_WIDTH : INTEGER; -- Width of S_AXIS address bus. The slave accepts the read and write addresses of width C_M_AXIS_TDATA_WIDTH.
      C_M00_AXIS_START_COUNT : INTEGER; -- Start count is the numeber of clock cycles the master will wait before initiating/issuing any transaction.
      C_S00_AXIS_TDATA_WIDTH : INTEGER;
      C_S00_AXIS_START_COUNT : INTEGER
    );
    PORT (
      I_clk200 : IN STD_LOGIC;
      mdio_gem_mdc : IN STD_LOGIC;
      mdio_gem_i : OUT STD_LOGIC;
      mdio_gem_o : IN STD_LOGIC;
      mdio_gem_t : IN STD_LOGIC;
      Q_link_status : OUT STD_LOGIC;
      Q_clock_speed : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      Q_speed_mode : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      Q_duplex_status : OUT STD_LOGIC;
      Q_rgmii_txd : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      Q_rgmii_tx_ctl : OUT STD_LOGIC;
      Q_rgmii_txc : OUT STD_LOGIC;
      I_rgmii_rxd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      I_rgmii_rx_ctl : IN STD_LOGIC;
      I_rgmii_rxc : IN STD_LOGIC;
      mdio_phy_mdc : OUT STD_LOGIC;
      mdio_phy_i : IN STD_LOGIC;
      mdio_phy_o : OUT STD_LOGIC;
      mdio_phy_t : OUT STD_LOGIC;
      Q_mmcm_locked : OUT STD_LOGIC;
      I_gmii_tx_er : IN STD_LOGIC;
      Q_gmii_rx_er : OUT STD_LOGIC;
      Q_gmii_clk_125m_out : OUT STD_LOGIC;
      Q_gmii_clk_25m_out : OUT STD_LOGIC;
      Q_gmii_clk_2_5m_out : OUT STD_LOGIC;
      Q_ref_clk_out : OUT STD_LOGIC;
      m00_axis_aclk_OUT : OUT STD_LOGIC;
      m00_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m00_axis_tstrb : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m00_axis_tlast : OUT STD_LOGIC;
      m00_axis_tvalid : OUT STD_LOGIC;
      m00_axis_tready : IN STD_LOGIC;
      s00_axis_aclk_OUT : OUT STD_LOGIC;
      s00_axis_aresetn : IN STD_LOGIC;
      s00_axis_tvalid : IN STD_LOGIC;
      s00_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s00_axis_tstrb : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s00_axis_tlast : IN STD_LOGIC;
      s00_axis_tready : OUT STD_LOGIC;
      m00_axis_aresetn : IN STD_LOGIC
    );
  END COMPONENT gmii2axis_v1_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_gmii2axis_0_0_arch: ARCHITECTURE IS "gmii2axis_v1_0,Vivado 2016.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_gmii2axis_0_0_arch : ARCHITECTURE IS "design_1_gmii2axis_0_0,gmii2axis_v1_0,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_mdc: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDC";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_i: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDIO_I";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_o: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDIO_O";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_gem_t: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_GEM MDIO_T";
  ATTRIBUTE X_INTERFACE_INFO OF Q_rgmii_txd: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII TD";
  ATTRIBUTE X_INTERFACE_INFO OF Q_rgmii_tx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII TX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF Q_rgmii_txc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII TXC";
  ATTRIBUTE X_INTERFACE_INFO OF I_rgmii_rxd: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII RD";
  ATTRIBUTE X_INTERFACE_INFO OF I_rgmii_rx_ctl: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII RX_CTL";
  ATTRIBUTE X_INTERFACE_INFO OF I_rgmii_rxc: SIGNAL IS "xilinx.com:interface:rgmii:1.0 RGMII RXC";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_phy_mdc: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_PHY MDC";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_phy_i: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_PHY MDIO_I";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_phy_o: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_PHY MDIO_O";
  ATTRIBUTE X_INTERFACE_INFO OF mdio_phy_t: SIGNAL IS "xilinx.com:interface:mdio:1.0 MDIO_PHY MDIO_T";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_aclk_OUT: SIGNAL IS "xilinx.com:signal:clock:1.0 m00_axis_aclk_OUT CLK";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_aclk_OUT: SIGNAL IS "xilinx.com:signal:clock:1.0 s00_axis_aclk_OUT CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 s00_axis_aresetn RST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tstrb: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s00_axis_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S00_AXIS TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m00_axis_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 M00_AXIS_RST RST, xilinx.com:signal:reset:1.0 m00_axis_aresetn RST";
BEGIN
  U0 : gmii2axis_v1_0
    GENERIC MAP (
      C_M00_AXIS_TDATA_WIDTH => 8,
      C_M00_AXIS_START_COUNT => 8,
      C_S00_AXIS_TDATA_WIDTH => 8,
      C_S00_AXIS_START_COUNT => 8
    )
    PORT MAP (
      I_clk200 => I_clk200,
      mdio_gem_mdc => mdio_gem_mdc,
      mdio_gem_i => mdio_gem_i,
      mdio_gem_o => mdio_gem_o,
      mdio_gem_t => mdio_gem_t,
      Q_link_status => Q_link_status,
      Q_clock_speed => Q_clock_speed,
      Q_speed_mode => Q_speed_mode,
      Q_duplex_status => Q_duplex_status,
      Q_rgmii_txd => Q_rgmii_txd,
      Q_rgmii_tx_ctl => Q_rgmii_tx_ctl,
      Q_rgmii_txc => Q_rgmii_txc,
      I_rgmii_rxd => I_rgmii_rxd,
      I_rgmii_rx_ctl => I_rgmii_rx_ctl,
      I_rgmii_rxc => I_rgmii_rxc,
      mdio_phy_mdc => mdio_phy_mdc,
      mdio_phy_i => mdio_phy_i,
      mdio_phy_o => mdio_phy_o,
      mdio_phy_t => mdio_phy_t,
      Q_mmcm_locked => Q_mmcm_locked,
      I_gmii_tx_er => I_gmii_tx_er,
      Q_gmii_rx_er => Q_gmii_rx_er,
      Q_gmii_clk_125m_out => Q_gmii_clk_125m_out,
      Q_gmii_clk_25m_out => Q_gmii_clk_25m_out,
      Q_gmii_clk_2_5m_out => Q_gmii_clk_2_5m_out,
      Q_ref_clk_out => Q_ref_clk_out,
      m00_axis_aclk_OUT => m00_axis_aclk_OUT,
      m00_axis_tdata => m00_axis_tdata,
      m00_axis_tstrb => m00_axis_tstrb,
      m00_axis_tlast => m00_axis_tlast,
      m00_axis_tvalid => m00_axis_tvalid,
      m00_axis_tready => m00_axis_tready,
      s00_axis_aclk_OUT => s00_axis_aclk_OUT,
      s00_axis_aresetn => s00_axis_aresetn,
      s00_axis_tvalid => s00_axis_tvalid,
      s00_axis_tdata => s00_axis_tdata,
      s00_axis_tstrb => s00_axis_tstrb,
      s00_axis_tlast => s00_axis_tlast,
      s00_axis_tready => s00_axis_tready,
      m00_axis_aresetn => m00_axis_aresetn
    );
END design_1_gmii2axis_0_0_arch;
