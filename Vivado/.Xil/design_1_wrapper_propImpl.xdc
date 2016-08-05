set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc rfile:../zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc id:1 order:EARLY scoped_inst:design_1_i/processing_system7_0/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_clocks.xdc rfile:../zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_clocks.xdc id:2 order:LATE scoped_inst:design_1_i/gmii_to_rgmii_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_clocks.xdc rfile:../zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_clocks.xdc id:3 order:LATE scoped_inst:design_1_i/gmii_to_rgmii_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0_clocks.xdc rfile:../zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0_clocks.xdc id:4 order:LATE scoped_inst:design_1_i/fifo_generator_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0_clocks.xdc rfile:../zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0_clocks.xdc id:5 order:LATE scoped_inst:design_1_i/fifo_generator_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0.xdc rfile:../zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0.xdc id:6 order:EARLY scoped_inst:design_1_i/gmii_to_rgmii_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0.xdc rfile:../zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0.xdc id:7 order:EARLY scoped_inst:design_1_i/gmii_to_rgmii_1/U0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_1 0.15
set_property src_info {type:SCOPED_XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.3
set_property src_info {type:SCOPED_XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks design_1_gmii_to_rgmii_0_0_rgmii_rx_clk] -rise_to [get_clocks [get_clocks -of_objects [get_ports rgmii_port_0_rxc]]] -hold
set_property src_info {type:SCOPED_XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks design_1_gmii_to_rgmii_0_0_rgmii_rx_clk] -fall_to [get_clocks -of_objects [get_ports rgmii_port_0_rxc]] -hold
set_property src_info {type:SCOPED_XDC file:2 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks -of_objects [get_pins design_1_i/gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks -of_objects [get_pins design_1_i/gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:3 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks design_1_gmii_to_rgmii_1_0_rgmii_rx_clk] -rise_to [get_clocks [get_clocks -of_objects [get_ports rgmii_port_1_rxc]]] -hold
set_property src_info {type:SCOPED_XDC file:3 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks design_1_gmii_to_rgmii_1_0_rgmii_rx_clk] -fall_to [get_clocks -of_objects [get_ports rgmii_port_1_rxc]] -hold
set_property src_info {type:SCOPED_XDC file:3 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks -of_objects [get_pins design_1_i/gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:3 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks -of_objects [get_pins design_1_i/gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:4 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins design_1_i/fifo_generator_0/U0/m_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins design_1_i/fifo_generator_0/U0/s_aclk]]]
set_property src_info {type:SCOPED_XDC file:5 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins design_1_i/fifo_generator_1/U0/rd_clk]]]
set_property src_info {type:SCOPED_XDC file:5 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins design_1_i/fifo_generator_1/U0/wr_clk]]]
set_property src_info {type:SCOPED_XDC file:6 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins design_1_i/gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/CE0]
set_property src_info {type:SCOPED_XDC file:6 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins design_1_i/gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/S0]
set_property src_info {type:SCOPED_XDC file:6 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins design_1_i/gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/CE1]
set_property src_info {type:SCOPED_XDC file:6 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins design_1_i/gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/S1]
set_property src_info {type:SCOPED_XDC file:7 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins design_1_i/gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/CE0]
set_property src_info {type:SCOPED_XDC file:7 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins design_1_i/gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/S0]
set_property src_info {type:SCOPED_XDC file:7 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins design_1_i/gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/CE1]
set_property src_info {type:SCOPED_XDC file:7 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins design_1_i/gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/S1]
