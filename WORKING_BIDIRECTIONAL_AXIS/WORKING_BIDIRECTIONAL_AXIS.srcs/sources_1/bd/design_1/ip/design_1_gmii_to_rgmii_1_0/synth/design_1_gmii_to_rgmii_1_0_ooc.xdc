
#-----------------------------------------------------------
# Clock Period Constraints                                 -
#-----------------------------------------------------------
# 200 MHz clock used as reference clock for IDELAY_CTRL and also to clock the Management modules
create_clock -add -name clkin -period 5.000 [get_ports ref_clk_in]
create_clock -add -name gmii_clk_125m_in  -period 8.000 [get_ports gmii_clk_125m_in]
create_clock -add -name gmii_clk_25m_in   -period 40.000 [get_ports gmii_clk_25m_in]
create_clock -add -name igmii_clk_2_5m_in -period 400.000 [get_ports gmii_clk_2_5m_in]


# RGMII recovered clock from PHY
create_clock -add -name rgmii_rxc -period 8.000 [get_ports rgmii_rxc]
