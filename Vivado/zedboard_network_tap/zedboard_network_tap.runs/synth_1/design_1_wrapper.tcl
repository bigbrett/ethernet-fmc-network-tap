# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.cache/wt [current_project]
set_property parent.project_path /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
add_files /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0/design_1_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_0_0/design_1_fifo_generator_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_0_1/design_1_fifo_generator_0_1/design_1_fifo_generator_0_1_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_0_1/design_1_fifo_generator_0_1/design_1_fifo_generator_0_1.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_0_1/design_1_fifo_generator_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_1_0/design_1_fifo_generator_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_axis_read_0/ila_v6_1/constraints/ila.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_axis_read_0/design_1_axis_read_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_vio_0_0/design_1_vio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_vio_0_0/design_1_vio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_2_0/design_1_fifo_generator_2_0/design_1_fifo_generator_2_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_2_0/design_1_fifo_generator_2_0/design_1_fifo_generator_2_0.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/ip/design_1_fifo_generator_2_0/design_1_fifo_generator_2_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/bd/design_1/design_1.bd]

read_vhdl -library xil_defaultlib /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/zedboard_network_tap/zedboard_network_tap.srcs/sources_1/imports/hdl/design_1_wrapper.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/src/constraints/zedboard.xdc
set_property used_in_implementation false [get_files /home/brett/workspace/Vivado_WS/ethernet-fmc-network-tap-2/Vivado/src/constraints/zedboard.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xc7z020clg484-1


write_checkpoint -force -noxdef design_1_wrapper.dcp

catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
