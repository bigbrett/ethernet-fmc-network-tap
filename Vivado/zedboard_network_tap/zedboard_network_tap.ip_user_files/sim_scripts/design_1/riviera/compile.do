vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/processing_system7_bfm_v2_0_5
vlib riviera/util_vector_logic_v2_0
vlib riviera/gmii_to_rgmii_v4_0_3
vlib riviera/util_reduced_logic_v2_0
vlib riviera/fifo_generator_v13_1_1
vlib riviera/axis_protocol_checker_v1_1_9

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap processing_system7_bfm_v2_0_5 riviera/processing_system7_bfm_v2_0_5
vmap util_vector_logic_v2_0 riviera/util_vector_logic_v2_0
vmap gmii_to_rgmii_v4_0_3 riviera/gmii_to_rgmii_v4_0_3
vmap util_reduced_logic_v2_0 riviera/util_reduced_logic_v2_0
vmap fifo_generator_v13_1_1 riviera/fifo_generator_v13_1_1
vmap axis_protocol_checker_v1_1_9 riviera/axis_protocol_checker_v1_1_9

vlog -work xil_defaultlib -v2k5 -sv "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work processing_system7_bfm_v2_0_5 -v2k5 "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_wr_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_rd_4.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp2_3.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_arb_hp0_1.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ssw_hp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_sparse_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_reg_map.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocm_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_wr_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_intr_rd_mem.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_fmsw_gp.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_regc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ocmc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_interconnect_model.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_reset.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_gen_clock.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_ddrc.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_axi_master.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_afi_slave.v" \
"../../../ipstatic/processing_system7_bfm_v2_0/hdl/processing_system7_bfm_v2_0_processing_system7_bfm.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work util_vector_logic_v2_0 -93 \
"../../../bd/design_1/ipshared/xilinx.com/util_vector_logic_v2_0/hdl/util_vector_logic.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_clocking.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_resets.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_support.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_reset_sync.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_block.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/design_1_gmii_to_rgmii_0_0/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_0_3 -93 \
"../../../ipstatic/gmii_to_rgmii_v4_0/hdl/gmii_to_rgmii_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/example_design/support/design_1_gmii_to_rgmii_1_0_clocking.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/example_design/support/design_1_gmii_to_rgmii_1_0_support.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_block.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/design_1_gmii_to_rgmii_1_0/simulation/demo_tb.vhd" \
"../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0.vhd" \

vcom -work util_reduced_logic_v2_0 -93 \
"../../../bd/design_1/ipshared/xilinx.com/util_reduced_logic_v2_0/hdl/util_reduced_logic.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_util_reduced_logic_0_0/sim/design_1_util_reduced_logic_0_0.vhd" \
"../../../bd/design_1/ip/design_1_util_reduced_logic_1_0/sim/design_1_util_reduced_logic_1_0.vhd" \
"../../../bd/design_1/ipshared/xilinx.com/xlconstant_v1_1/xlconstant.vhd" \
"../../../bd/design_1/ip/design_1_ref_clk_oe_0/sim/design_1_ref_clk_oe_0.vhd" \
"../../../bd/design_1/ip/design_1_ref_clk_fsel_0/sim/design_1_ref_clk_fsel_0.vhd" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/fifo_generator_v13_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_1 -93 \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_1 -v2k5 "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/design_1/ip/design_1_fifo_generator_0_0/sim/design_1_fifo_generator_0_0.v" \
"../../../bd/design_1/ip/design_1_fifo_generator_1_0/sim/design_1_fifo_generator_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_link_status_and_gate_0/sim/design_1_link_status_and_gate_0.vhd" \
"../../../bd/design_1/ip/design_1_or_gate_wr_en_fifo_0_0/sim/design_1_or_gate_wr_en_fifo_0_0.vhd" \
"../../../bd/design_1/ip/design_1_or_gate_wr_en_fifo_1_0/sim/design_1_or_gate_wr_en_fifo_1_0.vhd" \
"../../../bd/design_1/ip/design_1_not_gate_full_fifo_0_0/sim/design_1_not_gate_full_fifo_0_0.vhd" \
"../../../bd/design_1/ip/design_1_not_gate_full_fifo_1_0/sim/design_1_not_gate_full_fifo_1_0.vhd" \
"../../../bd/design_1/hdl/design_1.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/design_1/ip/design_1_fifo_generator_1_1/sim/design_1_fifo_generator_1_1.v" \
"../../../bd/design_1/ip/design_1_fifo_generator_1_2/sim/design_1_fifo_generator_1_2.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_1/sim/design_1_util_vector_logic_0_1.vhd" \
"../../../bd/design_1/ip/design_1_util_vector_logic_1_0/sim/design_1_util_vector_logic_1_0.vhd" \

vlog -work axis_protocol_checker_v1_1_9 -v2k5 "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../ipstatic/axis_protocol_checker_v1_1/hdl/verilog/axis_protocol_checker_v1_1_asr_inline.v" \
"../../../ipstatic/axis_protocol_checker_v1_1/hdl/verilog/axis_protocol_checker_v1_1_reporter.v" \
"../../../ipstatic/axis_protocol_checker_v1_1/hdl/verilog/axis_protocol_checker_v1_1_top.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" "+incdir+../../../ipstatic/processing_system7_bfm_v2_0/hdl" \
"../../../bd/design_1/ip/design_1_axis_protocol_checker_0_0/sim/design_1_axis_protocol_checker_0_0.v" \

vlog -work xil_defaultlib "glbl.v"
