
# Set the select line for the clock muxes so that the timing analysis is done on the fastest clock
set_case_analysis 0 [get_pins -hier -filter {name =~ *i_bufgmux_gmii_clk/CE0}]
set_case_analysis 0 [get_pins -hier -filter {name =~ *i_bufgmux_gmii_clk/S0}]
set_case_analysis 1 [get_pins -hier -filter {name =~ *i_bufgmux_gmii_clk/CE1}]
set_case_analysis 1 [get_pins -hier -filter {name =~ *i_bufgmux_gmii_clk/S1}]

# False path constraints to async inputs coming directly to synchronizer
set_false_path -to [get_pins -of [get_cells -hier -filter { name =~ *i_MANAGEMENT/SYNC_*/data_sync* } ]  -filter { name =~ *D } ]
set_false_path -to [get_pins -hier -filter {name =~ *reset_sync*/PRE }]

# False path constraints from Control Register outputs
set_false_path -from [get_pins -hier -filter {name =~ *i_MANAGEMENT/DUPLEX_MODE_REG*/C }]
set_false_path -from [get_pins -hier -filter {name =~ *i_MANAGEMENT/SPEED_SELECTION_REG*/C }]


#-------------------------------------------------------------------
# To Adjust GMII Rx Input Setup/Hold Timing                        -
# Please verify whether the IDELAY Tap values suit your design     -
#-------------------------------------------------------------------
set_property IDELAY_VALUE  "16"   [get_cells -hier -filter {name =~ *design_2_gmii_to_rgmii_1_0_core/*delay_rgmii_rx_ctl          }]
set_property IDELAY_VALUE  "16"   [get_cells -hier -filter {name =~ *design_2_gmii_to_rgmii_1_0_core/*delay_rgmii_rxd*            }]
set_property IODELAY_GROUP "gpr1" [get_cells -hier -filter {name =~ *design_2_gmii_to_rgmii_1_0_core/*delay_rgmii_rx_ctl          }]
set_property IODELAY_GROUP "gpr1" [get_cells -hier -filter {name =~ *design_2_gmii_to_rgmii_1_0_core/*delay_rgmii_rxd*            }]
