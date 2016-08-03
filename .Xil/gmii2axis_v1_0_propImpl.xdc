set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/ip_repo/gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_clocks.xdc rfile:../Vivado/ip_repo/gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_clocks.xdc id:1 order:LATE scoped_inst:gmii_to_rgmii/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/ip_repo/gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0.xdc rfile:../Vivado/ip_repo/gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0.xdc id:2 order:EARLY scoped_inst:gmii_to_rgmii/U0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks gmii_to_rgmii_0_rgmii_rx_clk] -fall_to [get_clocks -of_objects [get_ports I_rgmii_rxc]] -setup
set_property src_info {type:SCOPED_XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks gmii_to_rgmii_0_rgmii_rx_clk] -rise_to [get_clocks -of_objects [get_ports I_rgmii_rxc]] -setup
set_property src_info {type:SCOPED_XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks gmii_to_rgmii_0_rgmii_rx_clk] -rise_to [get_clocks [get_clocks -of_objects [get_ports I_rgmii_rxc]]] -hold
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks gmii_to_rgmii_0_rgmii_rx_clk] -fall_to [get_clocks -of_objects [get_ports I_rgmii_rxc]] -hold
set_property src_info {type:SCOPED_XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_clocks gmii_to_rgmii_0_rgmii_rx_clk] -to [get_clocks -of_objects [get_ports I_rgmii_rxc]] -setup 0
set_property src_info {type:SCOPED_XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_clocks gmii_to_rgmii_0_rgmii_rx_clk] -to [get_clocks -of_objects [get_ports I_rgmii_rxc]] -hold -1
set_property src_info {type:SCOPED_XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -add -name rgmii_tx_clk -divide_by 1 -source [get_pins -of [get_cells -hier -filter {name =~ *rgmii_txc_out}] -filter {name =~ *C}] -master_clock [get_clocks gmii_clk_125m*] [get_ports rgmii_txc]
set_property src_info {type:SCOPED_XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks -of_objects [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk] -setup
set_property src_info {type:SCOPED_XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks -of_objects [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk] -setup
set_property src_info {type:SCOPED_XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks -of_objects [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks -of_objects [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -max -1.0 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_property src_info {type:SCOPED_XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -min -2.6 [get_ports {rgmii_txd[*] rgmii_tx_ctl}] -add_delay
set_property src_info {type:SCOPED_XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -clock_fall -max -1.0 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_property src_info {type:SCOPED_XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -clock_fall -min -2.6 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_property src_info {type:SCOPED_XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 0 -setup -end -rise_from [get_clocks -of_objects [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk]
set_property src_info {type:SCOPED_XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 0 -setup -end -fall_from [get_clocks -of_objects [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk]
set_property src_info {type:SCOPED_XDC file:2 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/CE0]
set_property src_info {type:SCOPED_XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/S0]
set_property src_info {type:SCOPED_XDC file:2 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/CE1]
set_property src_info {type:SCOPED_XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins gmii_to_rgmii/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/S1]
