set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/network-tap-no-ps7/ip_repo/src/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_clocks.xdc rfile:../../../../../../../../network-tap-no-ps7/ip_repo/src/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_clocks.xdc id:1 order:LATE scoped_inst:gmii_to_rgmii_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/network-tap-no-ps7/ip_repo/src/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_clocks.xdc rfile:../../../../../../../../network-tap-no-ps7/ip_repo/src/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_clocks.xdc id:2 order:LATE scoped_inst:gmii_to_rgmii_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/network-tap-no-ps7/ip_repo/src/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0_clocks.xdc rfile:../../../../../../../../network-tap-no-ps7/ip_repo/src/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0_clocks.xdc id:3 order:LATE scoped_inst:gmii_0_rx_fifo/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/network-tap-no-ps7/ip_repo/src/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0_clocks.xdc rfile:../../../../../../../../network-tap-no-ps7/ip_repo/src/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0_clocks.xdc id:4 order:LATE scoped_inst:fifo_generator_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/network-tap-no-ps7/ip_repo/src/design_1_fifo_generator_1_1/design_1_fifo_generator_1_1/design_1_fifo_generator_1_1_clocks.xdc rfile:../../../../../../../../network-tap-no-ps7/ip_repo/src/design_1_fifo_generator_1_1/design_1_fifo_generator_1_1/design_1_fifo_generator_1_1_clocks.xdc id:5 order:LATE scoped_inst:fifo_generator_2/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/network-tap-no-ps7/ip_repo/src/design_1_fifo_generator_1_2/design_1_fifo_generator_1_2/design_1_fifo_generator_1_2_clocks.xdc rfile:../../../../../../../../network-tap-no-ps7/ip_repo/src/design_1_fifo_generator_1_2/design_1_fifo_generator_1_2/design_1_fifo_generator_1_2_clocks.xdc id:6 order:LATE scoped_inst:fifo_generator_3/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/network-tap-no-ps7/ip_repo/src/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0.xdc rfile:../../../../../../../../network-tap-no-ps7/ip_repo/src/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0.xdc id:7 order:EARLY scoped_inst:gmii_to_rgmii_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/home/brett/workspace/Vivado_WS/network-tap-no-ps7/ip_repo/src/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0.xdc rfile:../../../../../../../../network-tap-no-ps7/ip_repo/src/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0.xdc id:8 order:EARLY scoped_inst:gmii_to_rgmii_1/U0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks design_1_gmii_to_rgmii_0_0_rgmii_rx_clk] -fall_to [get_clocks -of_objects [get_ports rgmii_port_0_rxc]] -setup
set_property src_info {type:SCOPED_XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks design_1_gmii_to_rgmii_0_0_rgmii_rx_clk] -rise_to [get_clocks -of_objects [get_ports rgmii_port_0_rxc]] -setup
set_property src_info {type:SCOPED_XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks design_1_gmii_to_rgmii_0_0_rgmii_rx_clk] -rise_to [get_clocks [get_clocks -of_objects [get_ports rgmii_port_0_rxc]]] -hold
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks design_1_gmii_to_rgmii_0_0_rgmii_rx_clk] -fall_to [get_clocks -of_objects [get_ports rgmii_port_0_rxc]] -hold
set_property src_info {type:SCOPED_XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_clocks design_1_gmii_to_rgmii_0_0_rgmii_rx_clk] -to [get_clocks -of_objects [get_ports rgmii_port_0_rxc]] -setup 0
set_property src_info {type:SCOPED_XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_clocks design_1_gmii_to_rgmii_0_0_rgmii_rx_clk] -to [get_clocks -of_objects [get_ports rgmii_port_0_rxc]] -hold -1
set_property src_info {type:SCOPED_XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -add -name rgmii_tx_clk -divide_by 1 -source [get_pins -of [get_cells -hier -filter {name =~ *rgmii_txc_out}] -filter {name =~ *C}] -master_clock [get_clocks gmii_clk_125m*] [get_ports rgmii_txc]
set_property src_info {type:SCOPED_XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks -of_objects [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk] -setup
set_property src_info {type:SCOPED_XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks -of_objects [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk] -setup
set_property src_info {type:SCOPED_XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks -of_objects [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks -of_objects [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -max -1.0 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_property src_info {type:SCOPED_XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -min -2.6 [get_ports {rgmii_txd[*] rgmii_tx_ctl}] -add_delay
set_property src_info {type:SCOPED_XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -clock_fall -max -1.0 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_property src_info {type:SCOPED_XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -clock_fall -min -2.6 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_property src_info {type:SCOPED_XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 0 -setup -end -rise_from [get_clocks -of_objects [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk]
set_property src_info {type:SCOPED_XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 0 -setup -end -fall_from [get_clocks -of_objects [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk]
set_property src_info {type:SCOPED_XDC file:2 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks design_1_gmii_to_rgmii_1_0_rgmii_rx_clk] -fall_to [get_clocks -of_objects [get_ports rgmii_port_1_rxc]] -setup
set_property src_info {type:SCOPED_XDC file:2 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks design_1_gmii_to_rgmii_1_0_rgmii_rx_clk] -rise_to [get_clocks -of_objects [get_ports rgmii_port_1_rxc]] -setup
set_property src_info {type:SCOPED_XDC file:2 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks design_1_gmii_to_rgmii_1_0_rgmii_rx_clk] -rise_to [get_clocks [get_clocks -of_objects [get_ports rgmii_port_1_rxc]]] -hold
set_property src_info {type:SCOPED_XDC file:2 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks design_1_gmii_to_rgmii_1_0_rgmii_rx_clk] -fall_to [get_clocks -of_objects [get_ports rgmii_port_1_rxc]] -hold
set_property src_info {type:SCOPED_XDC file:2 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_clocks design_1_gmii_to_rgmii_1_0_rgmii_rx_clk] -to [get_clocks -of_objects [get_ports rgmii_port_1_rxc]] -setup 0
set_property src_info {type:SCOPED_XDC file:2 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_clocks design_1_gmii_to_rgmii_1_0_rgmii_rx_clk] -to [get_clocks -of_objects [get_ports rgmii_port_1_rxc]] -hold -1
set_property src_info {type:SCOPED_XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
create_generated_clock -add -name rgmii_tx_clk -divide_by 1 -source [get_pins -of [get_cells -hier -filter {name =~ *rgmii_txc_out}] -filter {name =~ *C}] -master_clock [get_clocks gmii_clk_125m*] [get_ports rgmii_txc]
set_property src_info {type:SCOPED_XDC file:2 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks -of_objects [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk] -setup
set_property src_info {type:SCOPED_XDC file:2 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks -of_objects [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk] -setup
set_property src_info {type:SCOPED_XDC file:2 line:32 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -fall_from [get_clocks -of_objects [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:2 line:33 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -rise_from [get_clocks -of_objects [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk] -hold
set_property src_info {type:SCOPED_XDC file:2 line:35 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -max -1.0 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_property src_info {type:SCOPED_XDC file:2 line:36 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -min -2.6 [get_ports {rgmii_txd[*] rgmii_tx_ctl}] -add_delay
set_property src_info {type:SCOPED_XDC file:2 line:37 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -clock_fall -max -1.0 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_property src_info {type:SCOPED_XDC file:2 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock [get_clocks rgmii_tx_clk] -clock_fall -min -2.6 [get_ports {rgmii_txd[*] rgmii_tx_ctl}]
set_property src_info {type:SCOPED_XDC file:2 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 0 -setup -end -rise_from [get_clocks -of_objects [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/O]] -rise_to [get_clocks rgmii_tx_clk]
set_property src_info {type:SCOPED_XDC file:2 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path 0 -setup -end -fall_from [get_clocks -of_objects [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/O]] -fall_to [get_clocks rgmii_tx_clk]
set_property src_info {type:SCOPED_XDC file:3 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_ports m_aclk_gmii_0_rx_fifo]]]
set_property src_info {type:SCOPED_XDC file:3 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins gmii_0_rx_fifo/U0/s_aclk]]]
set_property src_info {type:SCOPED_XDC file:4 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_ports m_aclk_gmii_1_rx_fifo]]]
set_property src_info {type:SCOPED_XDC file:4 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins fifo_generator_1/U0/s_aclk]]]
set_property src_info {type:SCOPED_XDC file:5 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins fifo_generator_2/U0/m_aclk]]]
set_property src_info {type:SCOPED_XDC file:5 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_ports s_aclk_gmii_0_tx_fifo]]]
set_property src_info {type:SCOPED_XDC file:6 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_pins fifo_generator_3/U0/m_aclk]]]
set_property src_info {type:SCOPED_XDC file:6 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_ports s_aclk_gmii_1_tx_fifo]]]
set_property src_info {type:SCOPED_XDC file:7 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/CE0]
set_property src_info {type:SCOPED_XDC file:7 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/S0]
set_property src_info {type:SCOPED_XDC file:7 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/CE1]
set_property src_info {type:SCOPED_XDC file:7 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins gmii_to_rgmii_0/U0/i_gmii_to_rgmii_block/i_bufgmux_gmii_clk/S1]
set_property src_info {type:SCOPED_XDC file:8 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/CE0]
set_property src_info {type:SCOPED_XDC file:8 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 0 [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/S0]
set_property src_info {type:SCOPED_XDC file:8 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/CE1]
set_property src_info {type:SCOPED_XDC file:8 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_case_analysis 1 [get_pins gmii_to_rgmii_1/U0/i_bufgmux_gmii_clk/S1]
