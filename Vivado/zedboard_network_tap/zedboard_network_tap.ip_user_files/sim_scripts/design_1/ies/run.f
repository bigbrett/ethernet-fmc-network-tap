-makelib ies/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \
-endlib
-makelib ies/xpm \
  "/opt/Xilinx/Vivado/2016.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/processing_system7_bfm_v2_0_5 \
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
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \
-endlib
-makelib ies/util_vector_logic_v2_0 \
  "../../../bd/design_1/ipshared/xilinx.com/util_vector_logic_v2_0/hdl/util_vector_logic.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_clocking.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_resets.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_support.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_reset_sync.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0_block.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/design_1_gmii_to_rgmii_0_0/simulation/demo_tb.vhd" \
-endlib
-makelib ies/gmii_to_rgmii_v4_0_3 \
  "../../../ipstatic/gmii_to_rgmii_v4_0/hdl/gmii_to_rgmii_v4_0_vh_rfs.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_0_0/synth/design_1_gmii_to_rgmii_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/example_design/support/design_1_gmii_to_rgmii_1_0_clocking.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/example_design/support/design_1_gmii_to_rgmii_1_0_support.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0_block.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/design_1_gmii_to_rgmii_1_0/simulation/demo_tb.vhd" \
  "../../../bd/design_1/ip/design_1_gmii_to_rgmii_1_0/synth/design_1_gmii_to_rgmii_1_0.vhd" \
-endlib
-makelib ies/util_reduced_logic_v2_0 \
  "../../../bd/design_1/ipshared/xilinx.com/util_reduced_logic_v2_0/hdl/util_reduced_logic.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_util_reduced_logic_0_0/sim/design_1_util_reduced_logic_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_util_reduced_logic_1_0/sim/design_1_util_reduced_logic_1_0.vhd" \
  "../../../bd/design_1/ipshared/xilinx.com/xlconstant_v1_1/xlconstant.vhd" \
  "../../../bd/design_1/ip/design_1_ref_clk_oe_0/sim/design_1_ref_clk_oe_0.vhd" \
  "../../../bd/design_1/ip/design_1_ref_clk_fsel_0/sim/design_1_ref_clk_fsel_0.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_1 \
  "../../../ipstatic/fifo_generator_v13_1/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies/fifo_generator_v13_1_1 \
  "../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.vhd" \
-endlib
-makelib ies/fifo_generator_v13_1_1 \
  "../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_fifo_generator_0_0/sim/design_1_fifo_generator_0_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_link_status_and_gate_0/sim/design_1_link_status_and_gate_0.vhd" \
  "../../../bd/design_1/ip/design_1_link_status_not_gate_0/sim/design_1_link_status_not_gate_0.vhd" \
  "../../../bd/design_1/ipshared/xilinx.com/xlconcat_v2_1/xlconcat.vhd" \
  "../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_xlconcat_1_0/sim/design_1_xlconcat_1_0.vhd" \
  "../../../bd/design_1/ipshared/xilinx.com/xlslice_v1_0/xlslice.vhd" \
  "../../../bd/design_1/ip/design_1_xlslice_data_0_0/sim/design_1_xlslice_data_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_xlslice_error_0_0/sim/design_1_xlslice_error_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_xlslice_valid_0_0/sim/design_1_xlslice_valid_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_xlslice_data_1_0/sim/design_1_xlslice_data_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_xlslice_error_1_0/sim/design_1_xlslice_error_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_xlslice_valid_1_0/sim/design_1_xlslice_valid_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_or_gate_wr_en_fifo_0_0/sim/design_1_or_gate_wr_en_fifo_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_or_gate_rd_en_fifo_0_0/sim/design_1_or_gate_rd_en_fifo_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_or_gate_wr_en_fifo_1_0/sim/design_1_or_gate_wr_en_fifo_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_or_gate_rd_en_fifo_1_0/sim/design_1_or_gate_rd_en_fifo_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_not_gate_full_fifo_0_0/sim/design_1_not_gate_full_fifo_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_not_gate_full_fifo_1_0/sim/design_1_not_gate_full_fifo_1_0.vhd" \
  "../../../bd/design_1/ip/design_1_not_gate_empty_fifo_0_0/sim/design_1_not_gate_empty_fifo_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_not_gate_empty_fifo_1_0/sim/design_1_not_gate_empty_fifo_1_0.vhd" \
  "../../../bd/design_1/hdl/design_1.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_fifo_generator_0_1/sim/design_1_fifo_generator_0_1.v" \
  "../../../bd/design_1/ip/design_1_fifo_generator_1_0/sim/design_1_fifo_generator_1_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_axis_read_0/sim/design_1_axis_read_0.vhd" \
  "../../../bd/design_1/ip/design_1_vio_0_0/sim/design_1_vio_0_0.vhd" \
  "../../../bd/design_1/ip/design_1_link_status_not_gate_1/sim/design_1_link_status_not_gate_1.vhd" \
  "../../../bd/design_1/ip/design_1_util_vector_logic_1_2/sim/design_1_util_vector_logic_1_2.vhd" \
  "../../../bd/design_1/ip/design_1_util_vector_logic_1_3/sim/design_1_util_vector_logic_1_3.vhd" \
  "../../../bd/design_1/ip/design_1_util_vector_logic_1_4/sim/design_1_util_vector_logic_1_4.vhd" \
  "../../../bd/design_1/ip/design_1_util_vector_logic_3_0/sim/design_1_util_vector_logic_3_0.vhd" \
  "../../../bd/design_1/ip/design_1_xlconcat_2_0/sim/design_1_xlconcat_2_0.vhd" \
  "../../../bd/design_1/ip/design_1_xlconcat_2_1/sim/design_1_xlconcat_2_1.vhd" \
  "../../../bd/design_1/ip/design_1_xlslice_0_0/sim/design_1_xlslice_0_0.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_fifo_generator_2_0/sim/design_1_fifo_generator_2_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

