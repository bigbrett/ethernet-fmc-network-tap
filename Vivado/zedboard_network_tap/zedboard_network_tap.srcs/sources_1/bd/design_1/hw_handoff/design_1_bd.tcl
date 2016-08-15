
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2016.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DDR [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR ]
  set FIXED_IO [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_processing_system7:fixedio_rtl:1.0 FIXED_IO ]
  set rgmii_port_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii_port_0 ]
  set rgmii_port_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 rgmii_port_1 ]

  # Create ports
  set ref_clk_fsel [ create_bd_port -dir O -from 0 -to 0 ref_clk_fsel ]
  set ref_clk_oe [ create_bd_port -dir O -from 0 -to 0 ref_clk_oe ]
  set reset_port_0 [ create_bd_port -dir O reset_port_0 ]
  set reset_port_1 [ create_bd_port -dir O reset_port_1 ]

  # Create instance: both_data, and set properties
  set both_data [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.1 both_data ]
  set_property -dict [ list \
CONFIG.ALL_PROBE_SAME_MU_CNT {2} \
CONFIG.C_ADV_TRIGGER {true} \
CONFIG.C_ENABLE_ILA_AXI_MON {false} \
CONFIG.C_EN_STRG_QUAL {1} \
CONFIG.C_MONITOR_TYPE {Native} \
CONFIG.C_NUM_OF_PROBES {16} \
CONFIG.C_PROBE0_MU_CNT {2} \
CONFIG.C_PROBE0_WIDTH {10} \
CONFIG.C_PROBE10_MU_CNT {2} \
CONFIG.C_PROBE11_MU_CNT {2} \
CONFIG.C_PROBE12_MU_CNT {2} \
CONFIG.C_PROBE13_MU_CNT {2} \
CONFIG.C_PROBE14_MU_CNT {2} \
CONFIG.C_PROBE15_MU_CNT {2} \
CONFIG.C_PROBE16_MU_CNT {2} \
CONFIG.C_PROBE17_MU_CNT {2} \
CONFIG.C_PROBE18_MU_CNT {2} \
CONFIG.C_PROBE19_MU_CNT {2} \
CONFIG.C_PROBE1_MU_CNT {2} \
CONFIG.C_PROBE1_WIDTH {11} \
CONFIG.C_PROBE20_MU_CNT {2} \
CONFIG.C_PROBE21_MU_CNT {2} \
CONFIG.C_PROBE22_MU_CNT {2} \
CONFIG.C_PROBE23_MU_CNT {2} \
CONFIG.C_PROBE24_MU_CNT {2} \
CONFIG.C_PROBE25_MU_CNT {2} \
CONFIG.C_PROBE26_MU_CNT {2} \
CONFIG.C_PROBE27_MU_CNT {2} \
CONFIG.C_PROBE28_MU_CNT {2} \
CONFIG.C_PROBE29_MU_CNT {2} \
CONFIG.C_PROBE2_MU_CNT {2} \
CONFIG.C_PROBE2_WIDTH {11} \
CONFIG.C_PROBE30_MU_CNT {2} \
CONFIG.C_PROBE31_MU_CNT {2} \
CONFIG.C_PROBE32_MU_CNT {2} \
CONFIG.C_PROBE33_MU_CNT {2} \
CONFIG.C_PROBE34_MU_CNT {2} \
CONFIG.C_PROBE35_MU_CNT {2} \
CONFIG.C_PROBE36_MU_CNT {2} \
CONFIG.C_PROBE37_MU_CNT {2} \
CONFIG.C_PROBE38_MU_CNT {2} \
CONFIG.C_PROBE39_MU_CNT {2} \
CONFIG.C_PROBE3_MU_CNT {2} \
CONFIG.C_PROBE3_WIDTH {10} \
CONFIG.C_PROBE40_MU_CNT {2} \
CONFIG.C_PROBE41_MU_CNT {2} \
CONFIG.C_PROBE42_MU_CNT {2} \
CONFIG.C_PROBE43_MU_CNT {2} \
CONFIG.C_PROBE44_MU_CNT {2} \
CONFIG.C_PROBE45_MU_CNT {2} \
CONFIG.C_PROBE46_MU_CNT {2} \
CONFIG.C_PROBE47_MU_CNT {2} \
CONFIG.C_PROBE48_MU_CNT {2} \
CONFIG.C_PROBE49_MU_CNT {2} \
CONFIG.C_PROBE4_MU_CNT {2} \
CONFIG.C_PROBE4_WIDTH {10} \
CONFIG.C_PROBE50_MU_CNT {2} \
CONFIG.C_PROBE51_MU_CNT {2} \
CONFIG.C_PROBE52_MU_CNT {2} \
CONFIG.C_PROBE53_MU_CNT {2} \
CONFIG.C_PROBE54_MU_CNT {2} \
CONFIG.C_PROBE55_MU_CNT {2} \
CONFIG.C_PROBE56_MU_CNT {2} \
CONFIG.C_PROBE5_MU_CNT {2} \
CONFIG.C_PROBE5_WIDTH {10} \
CONFIG.C_PROBE6_MU_CNT {2} \
CONFIG.C_PROBE7_MU_CNT {2} \
CONFIG.C_PROBE8_MU_CNT {2} \
CONFIG.C_PROBE9_MU_CNT {2} \
CONFIG.C_TRIGOUT_EN {false} \
 ] $both_data

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_0 ]
  set_property -dict [ list \
CONFIG.Empty_Threshold_Assert_Value {4} \
CONFIG.Empty_Threshold_Negate_Value {5} \
CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {1023} \
CONFIG.Full_Threshold_Negate_Value {1022} \
CONFIG.Input_Data_Width {10} \
CONFIG.Output_Data_Width {10} \
CONFIG.Performance_Options {First_Word_Fall_Through} \
CONFIG.Programmable_Empty_Type {Single_Programmable_Empty_Threshold_Constant} \
CONFIG.Programmable_Full_Type {Single_Programmable_Full_Threshold_Constant} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Valid_Flag {true} \
CONFIG.Write_Acknowledge_Flag {false} \
 ] $fifo_generator_0

  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_1 ]
  set_property -dict [ list \
CONFIG.Empty_Threshold_Assert_Value {400} \
CONFIG.Empty_Threshold_Negate_Value {401} \
CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {600} \
CONFIG.Full_Threshold_Negate_Value {599} \
CONFIG.Input_Data_Width {10} \
CONFIG.Output_Data_Width {10} \
CONFIG.Performance_Options {First_Word_Fall_Through} \
CONFIG.Programmable_Empty_Type {Single_Programmable_Empty_Threshold_Constant} \
CONFIG.Programmable_Full_Type {Single_Programmable_Full_Threshold_Constant} \
CONFIG.Read_Data_Count {true} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.Valid_Flag {true} \
CONFIG.Write_Acknowledge_Flag {false} \
CONFIG.Write_Data_Count {true} \
 ] $fifo_generator_1

  # Create instance: fifo_generator_2, and set properties
  set fifo_generator_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_2 ]
  set_property -dict [ list \
CONFIG.Clock_Type_AXI {Independent_Clock} \
CONFIG.Empty_Threshold_Assert_Value {2} \
CONFIG.Empty_Threshold_Assert_Value_axis {400} \
CONFIG.Empty_Threshold_Assert_Value_rach {13} \
CONFIG.Empty_Threshold_Assert_Value_rdch {1021} \
CONFIG.Empty_Threshold_Assert_Value_wach {13} \
CONFIG.Empty_Threshold_Assert_Value_wdch {1021} \
CONFIG.Empty_Threshold_Assert_Value_wrch {13} \
CONFIG.Empty_Threshold_Negate_Value {3} \
CONFIG.Enable_Data_Counts_axis {true} \
CONFIG.FIFO_Implementation_axis {Independent_Clocks_Block_RAM} \
CONFIG.FIFO_Implementation_rach {Independent_Clocks_Distributed_RAM} \
CONFIG.FIFO_Implementation_rdch {Independent_Clocks_Block_RAM} \
CONFIG.FIFO_Implementation_wach {Independent_Clocks_Distributed_RAM} \
CONFIG.FIFO_Implementation_wdch {Independent_Clocks_Block_RAM} \
CONFIG.FIFO_Implementation_wrch {Independent_Clocks_Distributed_RAM} \
CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {1021} \
CONFIG.Full_Threshold_Assert_Value_axis {600} \
CONFIG.Full_Threshold_Assert_Value_rach {15} \
CONFIG.Full_Threshold_Assert_Value_wach {15} \
CONFIG.Full_Threshold_Assert_Value_wrch {15} \
CONFIG.Full_Threshold_Negate_Value {1020} \
CONFIG.INTERFACE_TYPE {AXI_STREAM} \
CONFIG.Input_Data_Width {10} \
CONFIG.Output_Data_Width {10} \
CONFIG.Programmable_Empty_Type {No_Programmable_Empty_Threshold} \
CONFIG.Programmable_Empty_Type_axis {Single_Programmable_Empty_Threshold_Constant} \
CONFIG.Programmable_Full_Type {No_Programmable_Full_Threshold} \
CONFIG.Programmable_Full_Type_axis {Single_Programmable_Full_Threshold_Constant} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.TDATA_NUM_BYTES {2} \
CONFIG.TKEEP_WIDTH {2} \
CONFIG.TSTRB_WIDTH {2} \
CONFIG.Valid_Flag {true} \
CONFIG.Write_Acknowledge_Flag {false} \
 ] $fifo_generator_2

  # Create instance: fifo_generator_3, and set properties
  set fifo_generator_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_3 ]
  set_property -dict [ list \
CONFIG.Clock_Type_AXI {Independent_Clock} \
CONFIG.Empty_Threshold_Assert_Value {2} \
CONFIG.Empty_Threshold_Assert_Value_axis {400} \
CONFIG.Empty_Threshold_Assert_Value_rach {13} \
CONFIG.Empty_Threshold_Assert_Value_rdch {1021} \
CONFIG.Empty_Threshold_Assert_Value_wach {13} \
CONFIG.Empty_Threshold_Assert_Value_wdch {1021} \
CONFIG.Empty_Threshold_Assert_Value_wrch {13} \
CONFIG.Empty_Threshold_Negate_Value {3} \
CONFIG.Enable_Data_Counts_axis {true} \
CONFIG.FIFO_Implementation_axis {Independent_Clocks_Block_RAM} \
CONFIG.FIFO_Implementation_rach {Independent_Clocks_Distributed_RAM} \
CONFIG.FIFO_Implementation_rdch {Independent_Clocks_Block_RAM} \
CONFIG.FIFO_Implementation_wach {Independent_Clocks_Distributed_RAM} \
CONFIG.FIFO_Implementation_wdch {Independent_Clocks_Block_RAM} \
CONFIG.FIFO_Implementation_wrch {Independent_Clocks_Distributed_RAM} \
CONFIG.Fifo_Implementation {Independent_Clocks_Block_RAM} \
CONFIG.Full_Flags_Reset_Value {1} \
CONFIG.Full_Threshold_Assert_Value {1021} \
CONFIG.Full_Threshold_Assert_Value_axis {600} \
CONFIG.Full_Threshold_Assert_Value_rach {15} \
CONFIG.Full_Threshold_Assert_Value_wach {15} \
CONFIG.Full_Threshold_Assert_Value_wrch {15} \
CONFIG.Full_Threshold_Negate_Value {1020} \
CONFIG.INTERFACE_TYPE {AXI_STREAM} \
CONFIG.Input_Data_Width {10} \
CONFIG.Output_Data_Width {10} \
CONFIG.Programmable_Empty_Type {No_Programmable_Empty_Threshold} \
CONFIG.Programmable_Empty_Type_axis {Single_Programmable_Empty_Threshold_Constant} \
CONFIG.Programmable_Full_Type {No_Programmable_Full_Threshold} \
CONFIG.Programmable_Full_Type_axis {Single_Programmable_Full_Threshold_Constant} \
CONFIG.Reset_Type {Asynchronous_Reset} \
CONFIG.TDATA_NUM_BYTES {2} \
CONFIG.TKEEP_WIDTH {2} \
CONFIG.TSTRB_WIDTH {2} \
CONFIG.Valid_Flag {true} \
CONFIG.Write_Acknowledge_Flag {false} \
 ] $fifo_generator_3

  # Create instance: gmii_to_rgmii_0, and set properties
  set gmii_to_rgmii_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gmii_to_rgmii:4.0 gmii_to_rgmii_0 ]
  set_property -dict [ list \
CONFIG.C_PHYADDR {7} \
CONFIG.SupportLevel {Include_Shared_Logic_in_Core} \
 ] $gmii_to_rgmii_0

  # Create instance: gmii_to_rgmii_1, and set properties
  set gmii_to_rgmii_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gmii_to_rgmii:4.0 gmii_to_rgmii_1 ]
  set_property -dict [ list \
CONFIG.C_PHYADDR {8} \
CONFIG.C_USE_IDELAY_CTRL {false} \
 ] $gmii_to_rgmii_1

  # Create instance: link_status_and_gate, and set properties
  set link_status_and_gate [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 link_status_and_gate ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $link_status_and_gate

  # Create instance: link_status_not_gate, and set properties
  set link_status_not_gate [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 link_status_not_gate ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $link_status_not_gate

  # Create instance: link_status_not_gate1, and set properties
  set link_status_not_gate1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 link_status_not_gate1 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $link_status_not_gate1

  # Create instance: mux_and, and set properties
  set mux_and [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 mux_and ]
  set_property -dict [ list \
CONFIG.C_SIZE {11} \
 ] $mux_and

  # Create instance: mux_and_2, and set properties
  set mux_and_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 mux_and_2 ]
  set_property -dict [ list \
CONFIG.C_SIZE {11} \
 ] $mux_and_2

  # Create instance: mux_not, and set properties
  set mux_not [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 mux_not ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {11} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $mux_not

  # Create instance: mux_or, and set properties
  set mux_or [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 mux_or ]
  set_property -dict [ list \
CONFIG.C_OPERATION {or} \
CONFIG.C_SIZE {11} \
CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $mux_or

  # Create instance: not_gate_empty_fifo_0, and set properties
  set not_gate_empty_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 not_gate_empty_fifo_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $not_gate_empty_fifo_0

  # Create instance: not_gate_empty_fifo_1, and set properties
  set not_gate_empty_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 not_gate_empty_fifo_1 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $not_gate_empty_fifo_1

  # Create instance: not_gate_full_fifo_0, and set properties
  set not_gate_full_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 not_gate_full_fifo_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $not_gate_full_fifo_0

  # Create instance: not_gate_full_fifo_1, and set properties
  set not_gate_full_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 not_gate_full_fifo_1 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $not_gate_full_fifo_1

  # Create instance: or_gate_rd_en_fifo_0, and set properties
  set or_gate_rd_en_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 or_gate_rd_en_fifo_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {or} \
CONFIG.C_SIZE {1} \
 ] $or_gate_rd_en_fifo_0

  # Create instance: or_gate_rd_en_fifo_1, and set properties
  set or_gate_rd_en_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 or_gate_rd_en_fifo_1 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {or} \
CONFIG.C_SIZE {1} \
 ] $or_gate_rd_en_fifo_1

  # Create instance: or_gate_wr_en_fifo_0, and set properties
  set or_gate_wr_en_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 or_gate_wr_en_fifo_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {or} \
CONFIG.C_SIZE {1} \
 ] $or_gate_wr_en_fifo_0

  # Create instance: or_gate_wr_en_fifo_1, and set properties
  set or_gate_wr_en_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 or_gate_wr_en_fifo_1 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {or} \
CONFIG.C_SIZE {1} \
 ] $or_gate_wr_en_fifo_1

  # Create instance: processing_system7_0, and set properties
  set processing_system7_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:processing_system7:5.5 processing_system7_0 ]
  set_property -dict [ list \
CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ {10.158730} \
CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ {125.000000} \
CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ {125.000000} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ {10.000000} \
CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ {200.000000} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ {50.000000} \
CONFIG.PCW_APU_CLK_RATIO_ENABLE {6:2:1} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ {666.666667} \
CONFIG.PCW_ARMPLL_CTRL_FBDIV {40} \
CONFIG.PCW_CAN0_CAN0_IO {<Select>} \
CONFIG.PCW_CAN0_GRP_CLK_ENABLE {0} \
CONFIG.PCW_CAN0_GRP_CLK_IO {<Select>} \
CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_CAN1_CAN1_IO {<Select>} \
CONFIG.PCW_CAN1_GRP_CLK_ENABLE {0} \
CONFIG.PCW_CAN1_GRP_CLK_IO {<Select>} \
CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_CAN1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_CAN_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_CLK0_FREQ {100000000} \
CONFIG.PCW_CLK1_FREQ {200000000} \
CONFIG.PCW_CLK2_FREQ {10000000} \
CONFIG.PCW_CLK3_FREQ {10000000} \
CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE {667} \
CONFIG.PCW_CPU_CPU_PLL_FREQMHZ {1333.333} \
CONFIG.PCW_CPU_PERIPHERAL_CLKSRC {ARM PLL} \
CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0 {2} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ {33.333333} \
CONFIG.PCW_DCI_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0 {15} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1 {7} \
CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ {10.159} \
CONFIG.PCW_DDRPLL_CTRL_FBDIV {32} \
CONFIG.PCW_DDR_DDR_PLL_FREQMHZ {1066.667} \
CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION {HPR(0)/LPR(32)} \
CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL {15} \
CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL {2} \
CONFIG.PCW_DDR_PERIPHERAL_CLKSRC {DDR PLL} \
CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0 {2} \
CONFIG.PCW_DDR_PORT0_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT1_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT2_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PORT3_HPR_ENABLE {0} \
CONFIG.PCW_DDR_PRIORITY_READPORT_0 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_1 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_2 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_READPORT_3 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_0 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_1 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_2 {<Select>} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_3 {<Select>} \
CONFIG.PCW_DDR_RAM_HIGHADDR {0x1FFFFFFF} \
CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL {2} \
CONFIG.PCW_ENET0_ENET0_IO {MIO 16 .. 27} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET0_GRP_MDIO_IO {MIO 52 .. 53} \
CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0 {8} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ {1000 Mbps} \
CONFIG.PCW_ENET0_RESET_ENABLE {0} \
CONFIG.PCW_ENET0_RESET_IO {<Select>} \
CONFIG.PCW_ENET1_ENET1_IO {EMIO} \
CONFIG.PCW_ENET1_GRP_MDIO_ENABLE {1} \
CONFIG.PCW_ENET1_GRP_MDIO_IO {EMIO} \
CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_ENET1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ {1000 Mbps} \
CONFIG.PCW_ENET1_RESET_ENABLE {0} \
CONFIG.PCW_ENET1_RESET_IO {<Select>} \
CONFIG.PCW_ENET_RESET_ENABLE {1} \
CONFIG.PCW_ENET_RESET_POLARITY {Active Low} \
CONFIG.PCW_ENET_RESET_SELECT {Share reset pin} \
CONFIG.PCW_EN_4K_TIMER {0} \
CONFIG.PCW_EN_CLK1_PORT {1} \
CONFIG.PCW_EN_EMIO_ENET1 {1} \
CONFIG.PCW_EN_EMIO_TTC0 {1} \
CONFIG.PCW_EN_ENET0 {1} \
CONFIG.PCW_EN_ENET1 {1} \
CONFIG.PCW_EN_QSPI {1} \
CONFIG.PCW_EN_SDIO0 {1} \
CONFIG.PCW_EN_TTC0 {1} \
CONFIG.PCW_EN_UART1 {1} \
CONFIG.PCW_EN_USB0 {1} \
CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1 {2} \
CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1 {1} \
CONFIG.PCW_FCLK_CLK0_BUF {true} \
CONFIG.PCW_FCLK_CLK1_BUF {true} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ {100.000000} \
CONFIG.PCW_FPGA1_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_FPGA_FCLK0_ENABLE {1} \
CONFIG.PCW_FPGA_FCLK1_ENABLE {1} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE {0} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO {<Select>} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE {1} \
CONFIG.PCW_GPIO_MIO_GPIO_IO {MIO} \
CONFIG.PCW_GPIO_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C0_GRP_INT_ENABLE {0} \
CONFIG.PCW_I2C0_GRP_INT_IO {<Select>} \
CONFIG.PCW_I2C0_I2C0_IO {<Select>} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C0_RESET_ENABLE {0} \
CONFIG.PCW_I2C0_RESET_IO {<Select>} \
CONFIG.PCW_I2C1_GRP_INT_ENABLE {0} \
CONFIG.PCW_I2C1_GRP_INT_IO {<Select>} \
CONFIG.PCW_I2C1_I2C1_IO {<Select>} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_I2C1_RESET_ENABLE {0} \
CONFIG.PCW_I2C1_RESET_IO {<Select>} \
CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ {25} \
CONFIG.PCW_I2C_RESET_ENABLE {1} \
CONFIG.PCW_I2C_RESET_POLARITY {Active Low} \
CONFIG.PCW_I2C_RESET_SELECT {<Select>} \
CONFIG.PCW_IOPLL_CTRL_FBDIV {30} \
CONFIG.PCW_IO_IO_PLL_FREQMHZ {1000.000} \
CONFIG.PCW_MIO_0_DIRECTION {inout} \
CONFIG.PCW_MIO_0_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_0_PULLUP {disabled} \
CONFIG.PCW_MIO_0_SLEW {slow} \
CONFIG.PCW_MIO_10_DIRECTION {inout} \
CONFIG.PCW_MIO_10_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_10_PULLUP {disabled} \
CONFIG.PCW_MIO_10_SLEW {slow} \
CONFIG.PCW_MIO_11_DIRECTION {inout} \
CONFIG.PCW_MIO_11_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_11_PULLUP {disabled} \
CONFIG.PCW_MIO_11_SLEW {slow} \
CONFIG.PCW_MIO_12_DIRECTION {inout} \
CONFIG.PCW_MIO_12_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_12_PULLUP {disabled} \
CONFIG.PCW_MIO_12_SLEW {slow} \
CONFIG.PCW_MIO_13_DIRECTION {inout} \
CONFIG.PCW_MIO_13_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_13_PULLUP {disabled} \
CONFIG.PCW_MIO_13_SLEW {slow} \
CONFIG.PCW_MIO_14_DIRECTION {inout} \
CONFIG.PCW_MIO_14_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_14_PULLUP {disabled} \
CONFIG.PCW_MIO_14_SLEW {slow} \
CONFIG.PCW_MIO_15_DIRECTION {inout} \
CONFIG.PCW_MIO_15_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_15_PULLUP {disabled} \
CONFIG.PCW_MIO_15_SLEW {slow} \
CONFIG.PCW_MIO_16_DIRECTION {out} \
CONFIG.PCW_MIO_16_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_16_PULLUP {disabled} \
CONFIG.PCW_MIO_16_SLEW {fast} \
CONFIG.PCW_MIO_17_DIRECTION {out} \
CONFIG.PCW_MIO_17_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_17_PULLUP {disabled} \
CONFIG.PCW_MIO_17_SLEW {fast} \
CONFIG.PCW_MIO_18_DIRECTION {out} \
CONFIG.PCW_MIO_18_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_18_PULLUP {disabled} \
CONFIG.PCW_MIO_18_SLEW {fast} \
CONFIG.PCW_MIO_19_DIRECTION {out} \
CONFIG.PCW_MIO_19_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_19_PULLUP {disabled} \
CONFIG.PCW_MIO_19_SLEW {fast} \
CONFIG.PCW_MIO_1_DIRECTION {out} \
CONFIG.PCW_MIO_1_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_1_PULLUP {disabled} \
CONFIG.PCW_MIO_1_SLEW {fast} \
CONFIG.PCW_MIO_20_DIRECTION {out} \
CONFIG.PCW_MIO_20_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_20_PULLUP {disabled} \
CONFIG.PCW_MIO_20_SLEW {fast} \
CONFIG.PCW_MIO_21_DIRECTION {out} \
CONFIG.PCW_MIO_21_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_21_PULLUP {disabled} \
CONFIG.PCW_MIO_21_SLEW {fast} \
CONFIG.PCW_MIO_22_DIRECTION {in} \
CONFIG.PCW_MIO_22_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_22_PULLUP {disabled} \
CONFIG.PCW_MIO_22_SLEW {fast} \
CONFIG.PCW_MIO_23_DIRECTION {in} \
CONFIG.PCW_MIO_23_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_23_PULLUP {disabled} \
CONFIG.PCW_MIO_23_SLEW {fast} \
CONFIG.PCW_MIO_24_DIRECTION {in} \
CONFIG.PCW_MIO_24_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_24_PULLUP {disabled} \
CONFIG.PCW_MIO_24_SLEW {fast} \
CONFIG.PCW_MIO_25_DIRECTION {in} \
CONFIG.PCW_MIO_25_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_25_PULLUP {disabled} \
CONFIG.PCW_MIO_25_SLEW {fast} \
CONFIG.PCW_MIO_26_DIRECTION {in} \
CONFIG.PCW_MIO_26_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_26_PULLUP {disabled} \
CONFIG.PCW_MIO_26_SLEW {fast} \
CONFIG.PCW_MIO_27_DIRECTION {in} \
CONFIG.PCW_MIO_27_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_27_PULLUP {disabled} \
CONFIG.PCW_MIO_27_SLEW {fast} \
CONFIG.PCW_MIO_28_DIRECTION {inout} \
CONFIG.PCW_MIO_28_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_28_PULLUP {disabled} \
CONFIG.PCW_MIO_28_SLEW {fast} \
CONFIG.PCW_MIO_29_DIRECTION {in} \
CONFIG.PCW_MIO_29_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_29_PULLUP {disabled} \
CONFIG.PCW_MIO_29_SLEW {fast} \
CONFIG.PCW_MIO_2_DIRECTION {inout} \
CONFIG.PCW_MIO_2_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_2_PULLUP {disabled} \
CONFIG.PCW_MIO_2_SLEW {fast} \
CONFIG.PCW_MIO_30_DIRECTION {out} \
CONFIG.PCW_MIO_30_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_30_PULLUP {disabled} \
CONFIG.PCW_MIO_30_SLEW {fast} \
CONFIG.PCW_MIO_31_DIRECTION {in} \
CONFIG.PCW_MIO_31_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_31_PULLUP {disabled} \
CONFIG.PCW_MIO_31_SLEW {fast} \
CONFIG.PCW_MIO_32_DIRECTION {inout} \
CONFIG.PCW_MIO_32_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_32_PULLUP {disabled} \
CONFIG.PCW_MIO_32_SLEW {fast} \
CONFIG.PCW_MIO_33_DIRECTION {inout} \
CONFIG.PCW_MIO_33_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_33_PULLUP {disabled} \
CONFIG.PCW_MIO_33_SLEW {fast} \
CONFIG.PCW_MIO_34_DIRECTION {inout} \
CONFIG.PCW_MIO_34_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_34_PULLUP {disabled} \
CONFIG.PCW_MIO_34_SLEW {fast} \
CONFIG.PCW_MIO_35_DIRECTION {inout} \
CONFIG.PCW_MIO_35_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_35_PULLUP {disabled} \
CONFIG.PCW_MIO_35_SLEW {fast} \
CONFIG.PCW_MIO_36_DIRECTION {in} \
CONFIG.PCW_MIO_36_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_36_PULLUP {disabled} \
CONFIG.PCW_MIO_36_SLEW {fast} \
CONFIG.PCW_MIO_37_DIRECTION {inout} \
CONFIG.PCW_MIO_37_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_37_PULLUP {disabled} \
CONFIG.PCW_MIO_37_SLEW {fast} \
CONFIG.PCW_MIO_38_DIRECTION {inout} \
CONFIG.PCW_MIO_38_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_38_PULLUP {disabled} \
CONFIG.PCW_MIO_38_SLEW {fast} \
CONFIG.PCW_MIO_39_DIRECTION {inout} \
CONFIG.PCW_MIO_39_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_39_PULLUP {disabled} \
CONFIG.PCW_MIO_39_SLEW {fast} \
CONFIG.PCW_MIO_3_DIRECTION {inout} \
CONFIG.PCW_MIO_3_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_3_PULLUP {disabled} \
CONFIG.PCW_MIO_3_SLEW {fast} \
CONFIG.PCW_MIO_40_DIRECTION {inout} \
CONFIG.PCW_MIO_40_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_40_PULLUP {disabled} \
CONFIG.PCW_MIO_40_SLEW {fast} \
CONFIG.PCW_MIO_41_DIRECTION {inout} \
CONFIG.PCW_MIO_41_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_41_PULLUP {disabled} \
CONFIG.PCW_MIO_41_SLEW {fast} \
CONFIG.PCW_MIO_42_DIRECTION {inout} \
CONFIG.PCW_MIO_42_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_42_PULLUP {disabled} \
CONFIG.PCW_MIO_42_SLEW {fast} \
CONFIG.PCW_MIO_43_DIRECTION {inout} \
CONFIG.PCW_MIO_43_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_43_PULLUP {disabled} \
CONFIG.PCW_MIO_43_SLEW {fast} \
CONFIG.PCW_MIO_44_DIRECTION {inout} \
CONFIG.PCW_MIO_44_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_44_PULLUP {disabled} \
CONFIG.PCW_MIO_44_SLEW {fast} \
CONFIG.PCW_MIO_45_DIRECTION {inout} \
CONFIG.PCW_MIO_45_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_45_PULLUP {disabled} \
CONFIG.PCW_MIO_45_SLEW {fast} \
CONFIG.PCW_MIO_46_DIRECTION {in} \
CONFIG.PCW_MIO_46_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_46_PULLUP {disabled} \
CONFIG.PCW_MIO_46_SLEW {slow} \
CONFIG.PCW_MIO_47_DIRECTION {in} \
CONFIG.PCW_MIO_47_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_47_PULLUP {disabled} \
CONFIG.PCW_MIO_47_SLEW {slow} \
CONFIG.PCW_MIO_48_DIRECTION {out} \
CONFIG.PCW_MIO_48_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_48_PULLUP {disabled} \
CONFIG.PCW_MIO_48_SLEW {slow} \
CONFIG.PCW_MIO_49_DIRECTION {in} \
CONFIG.PCW_MIO_49_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_49_PULLUP {disabled} \
CONFIG.PCW_MIO_49_SLEW {slow} \
CONFIG.PCW_MIO_4_DIRECTION {inout} \
CONFIG.PCW_MIO_4_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_4_PULLUP {disabled} \
CONFIG.PCW_MIO_4_SLEW {fast} \
CONFIG.PCW_MIO_50_DIRECTION {inout} \
CONFIG.PCW_MIO_50_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_50_PULLUP {disabled} \
CONFIG.PCW_MIO_50_SLEW {slow} \
CONFIG.PCW_MIO_51_DIRECTION {inout} \
CONFIG.PCW_MIO_51_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_51_PULLUP {disabled} \
CONFIG.PCW_MIO_51_SLEW {slow} \
CONFIG.PCW_MIO_52_DIRECTION {out} \
CONFIG.PCW_MIO_52_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_52_PULLUP {disabled} \
CONFIG.PCW_MIO_52_SLEW {slow} \
CONFIG.PCW_MIO_53_DIRECTION {inout} \
CONFIG.PCW_MIO_53_IOTYPE {LVCMOS 1.8V} \
CONFIG.PCW_MIO_53_PULLUP {disabled} \
CONFIG.PCW_MIO_53_SLEW {slow} \
CONFIG.PCW_MIO_5_DIRECTION {inout} \
CONFIG.PCW_MIO_5_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_5_PULLUP {disabled} \
CONFIG.PCW_MIO_5_SLEW {fast} \
CONFIG.PCW_MIO_6_DIRECTION {out} \
CONFIG.PCW_MIO_6_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_6_PULLUP {disabled} \
CONFIG.PCW_MIO_6_SLEW {fast} \
CONFIG.PCW_MIO_7_DIRECTION {out} \
CONFIG.PCW_MIO_7_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_7_PULLUP {disabled} \
CONFIG.PCW_MIO_7_SLEW {slow} \
CONFIG.PCW_MIO_8_DIRECTION {out} \
CONFIG.PCW_MIO_8_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_8_PULLUP {disabled} \
CONFIG.PCW_MIO_8_SLEW {fast} \
CONFIG.PCW_MIO_9_DIRECTION {inout} \
CONFIG.PCW_MIO_9_IOTYPE {LVCMOS 3.3V} \
CONFIG.PCW_MIO_9_PULLUP {disabled} \
CONFIG.PCW_MIO_9_SLEW {slow} \
CONFIG.PCW_MIO_TREE_PERIPHERALS {GPIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#GPIO#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#Enet 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#UART 1#UART 1#GPIO#GPIO#Enet 0#Enet 0} \
CONFIG.PCW_MIO_TREE_SIGNALS {gpio[0]#qspi0_ss_b#qspi0_io[0]#qspi0_io[1]#qspi0_io[2]#qspi0_io[3]#qspi0_sclk#gpio[7]#gpio[8]#gpio[9]#gpio[10]#gpio[11]#gpio[12]#gpio[13]#gpio[14]#gpio[15]#tx_clk#txd[0]#txd[1]#txd[2]#txd[3]#tx_ctl#rx_clk#rxd[0]#rxd[1]#rxd[2]#rxd[3]#rx_ctl#data[4]#dir#stp#nxt#data[0]#data[1]#data[2]#data[3]#clk#data[5]#data[6]#data[7]#clk#cmd#data[0]#data[1]#data[2]#data[3]#wp#cd#tx#rx#gpio[50]#gpio[51]#mdc#mdio} \
CONFIG.PCW_NAND_CYCLES_T_AR {1} \
CONFIG.PCW_NAND_CYCLES_T_CLR {1} \
CONFIG.PCW_NAND_CYCLES_T_RC {11} \
CONFIG.PCW_NAND_CYCLES_T_REA {1} \
CONFIG.PCW_NAND_CYCLES_T_RR {1} \
CONFIG.PCW_NAND_CYCLES_T_WC {11} \
CONFIG.PCW_NAND_CYCLES_T_WP {1} \
CONFIG.PCW_NAND_GRP_D8_ENABLE {0} \
CONFIG.PCW_NAND_GRP_D8_IO {<Select>} \
CONFIG.PCW_NAND_NAND_IO {<Select>} \
CONFIG.PCW_NAND_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_CS0_T_PC {1} \
CONFIG.PCW_NOR_CS0_T_RC {11} \
CONFIG.PCW_NOR_CS0_T_TR {1} \
CONFIG.PCW_NOR_CS0_T_WC {11} \
CONFIG.PCW_NOR_CS0_T_WP {1} \
CONFIG.PCW_NOR_CS0_WE_TIME {0} \
CONFIG.PCW_NOR_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_CS1_T_PC {1} \
CONFIG.PCW_NOR_CS1_T_RC {11} \
CONFIG.PCW_NOR_CS1_T_TR {1} \
CONFIG.PCW_NOR_CS1_T_WC {11} \
CONFIG.PCW_NOR_CS1_T_WP {1} \
CONFIG.PCW_NOR_CS1_WE_TIME {0} \
CONFIG.PCW_NOR_GRP_A25_ENABLE {0} \
CONFIG.PCW_NOR_GRP_A25_IO {<Select>} \
CONFIG.PCW_NOR_GRP_CS0_ENABLE {0} \
CONFIG.PCW_NOR_GRP_CS0_IO {<Select>} \
CONFIG.PCW_NOR_GRP_CS1_ENABLE {0} \
CONFIG.PCW_NOR_GRP_CS1_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_IO {<Select>} \
CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE {0} \
CONFIG.PCW_NOR_GRP_SRAM_INT_IO {<Select>} \
CONFIG.PCW_NOR_NOR_IO {<Select>} \
CONFIG.PCW_NOR_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_NOR_SRAM_CS0_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_RC {11} \
CONFIG.PCW_NOR_SRAM_CS0_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS0_T_WC {11} \
CONFIG.PCW_NOR_SRAM_CS0_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS0_WE_TIME {0} \
CONFIG.PCW_NOR_SRAM_CS1_T_CEOE {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_PC {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_RC {11} \
CONFIG.PCW_NOR_SRAM_CS1_T_TR {1} \
CONFIG.PCW_NOR_SRAM_CS1_T_WC {11} \
CONFIG.PCW_NOR_SRAM_CS1_T_WP {1} \
CONFIG.PCW_NOR_SRAM_CS1_WE_TIME {0} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0 {0.063} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1 {0.062} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2 {0.065} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3 {0.083} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0 {-0.007} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1 {-0.010} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2 {-0.006} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3 {-0.048} \
CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_PERIPHERAL_BOARD_PRESET {part0} \
CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_PJTAG_PJTAG_IO {<Select>} \
CONFIG.PCW_PLL_BYPASSMODE_ENABLE {0} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE {LVCMOS 3.3V} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE {LVCMOS 1.8V} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_FBCLK_IO {<Select>} \
CONFIG.PCW_QSPI_GRP_IO1_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_IO1_IO {<Select>} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_ENABLE {1} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO {MIO 1 .. 6} \
CONFIG.PCW_QSPI_GRP_SS1_ENABLE {0} \
CONFIG.PCW_QSPI_GRP_SS1_IO {<Select>} \
CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0 {5} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_QSPI_QSPI_IO {MIO 1 .. 6} \
CONFIG.PCW_SD0_GRP_CD_ENABLE {1} \
CONFIG.PCW_SD0_GRP_CD_IO {MIO 47} \
CONFIG.PCW_SD0_GRP_POW_ENABLE {0} \
CONFIG.PCW_SD0_GRP_POW_IO {<Select>} \
CONFIG.PCW_SD0_GRP_WP_ENABLE {1} \
CONFIG.PCW_SD0_GRP_WP_IO {MIO 46} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_SD0_SD0_IO {MIO 40 .. 45} \
CONFIG.PCW_SD1_GRP_CD_ENABLE {0} \
CONFIG.PCW_SD1_GRP_CD_IO {<Select>} \
CONFIG.PCW_SD1_GRP_POW_ENABLE {0} \
CONFIG.PCW_SD1_GRP_POW_IO {<Select>} \
CONFIG.PCW_SD1_GRP_WP_ENABLE {0} \
CONFIG.PCW_SD1_GRP_WP_IO {<Select>} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SD1_SD1_IO {<Select>} \
CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0 {20} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_SDIO_PERIPHERAL_VALID {1} \
CONFIG.PCW_SMC_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ {100} \
CONFIG.PCW_SPI0_GRP_SS0_ENABLE {0} \
CONFIG.PCW_SPI0_GRP_SS0_IO {<Select>} \
CONFIG.PCW_SPI0_GRP_SS1_ENABLE {0} \
CONFIG.PCW_SPI0_GRP_SS1_IO {<Select>} \
CONFIG.PCW_SPI0_GRP_SS2_ENABLE {0} \
CONFIG.PCW_SPI0_GRP_SS2_IO {<Select>} \
CONFIG.PCW_SPI0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SPI0_SPI0_IO {<Select>} \
CONFIG.PCW_SPI1_GRP_SS0_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS0_IO {<Select>} \
CONFIG.PCW_SPI1_GRP_SS1_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS1_IO {<Select>} \
CONFIG.PCW_SPI1_GRP_SS2_ENABLE {0} \
CONFIG.PCW_SPI1_GRP_SS2_IO {<Select>} \
CONFIG.PCW_SPI1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_SPI1_SPI1_IO {<Select>} \
CONFIG.PCW_SPI_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ {166.666666} \
CONFIG.PCW_S_AXI_HP0_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP1_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP2_DATA_WIDTH {64} \
CONFIG.PCW_S_AXI_HP3_DATA_WIDTH {64} \
CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC {External} \
CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ {200} \
CONFIG.PCW_TRACE_GRP_16BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_16BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_2BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_2BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_32BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_32BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_4BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_4BIT_IO {<Select>} \
CONFIG.PCW_TRACE_GRP_8BIT_ENABLE {0} \
CONFIG.PCW_TRACE_GRP_8BIT_IO {<Select>} \
CONFIG.PCW_TRACE_INTERNAL_WIDTH {2} \
CONFIG.PCW_TRACE_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TRACE_TRACE_IO {<Select>} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_TTC0_TTC0_IO {EMIO} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_TTC1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_TTC1_TTC1_IO {<Select>} \
CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_UART0_BAUD_RATE {115200} \
CONFIG.PCW_UART0_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART0_GRP_FULL_IO {<Select>} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_UART0_UART0_IO {<Select>} \
CONFIG.PCW_UART1_BAUD_RATE {115200} \
CONFIG.PCW_UART1_GRP_FULL_ENABLE {0} \
CONFIG.PCW_UART1_GRP_FULL_IO {<Select>} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_UART1_UART1_IO {MIO 48 .. 49} \
CONFIG.PCW_UART_PERIPHERAL_CLKSRC {IO PLL} \
CONFIG.PCW_UART_PERIPHERAL_DIVISOR0 {20} \
CONFIG.PCW_UART_PERIPHERAL_FREQMHZ {50} \
CONFIG.PCW_UART_PERIPHERAL_VALID {1} \
CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE {0} \
CONFIG.PCW_UIPARAM_DDR_AL {0} \
CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT {3} \
CONFIG.PCW_UIPARAM_DDR_BL {8} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0 {0.41} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1 {0.411} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2 {0.341} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3 {0.358} \
CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH {32 Bit} \
CONFIG.PCW_UIPARAM_DDR_CL {7} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH {61.0905} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN {0} \
CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT {10} \
CONFIG.PCW_UIPARAM_DDR_CWL {6} \
CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY {2048 MBits} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH {68.4725} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH {71.086} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH {66.794} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH {108.7385} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0 {0.025} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1 {0.028} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2 {-0.009} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3 {-0.061} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH {64.1705} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH {63.686} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH {68.46} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM {0} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH {105.4895} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY {160} \
CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH {16 Bits} \
CONFIG.PCW_UIPARAM_DDR_ECC {Disabled} \
CONFIG.PCW_UIPARAM_DDR_ENABLE {1} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ {533.333313} \
CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP {Normal (0-85)} \
CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE {DDR 3} \
CONFIG.PCW_UIPARAM_DDR_PARTNO {MT41J128M16 HA-15E} \
CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT {14} \
CONFIG.PCW_UIPARAM_DDR_SPEED_BIN {DDR3_1066F} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE {1} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL {1} \
CONFIG.PCW_UIPARAM_DDR_T_FAW {45.0} \
CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN {36.0} \
CONFIG.PCW_UIPARAM_DDR_T_RC {49.5} \
CONFIG.PCW_UIPARAM_DDR_T_RCD {7} \
CONFIG.PCW_UIPARAM_DDR_T_RP {7} \
CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF {1} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE {1} \
CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_USB0_RESET_ENABLE {0} \
CONFIG.PCW_USB0_RESET_IO {<Select>} \
CONFIG.PCW_USB0_USB0_IO {MIO 28 .. 39} \
CONFIG.PCW_USB1_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ {60} \
CONFIG.PCW_USB1_RESET_ENABLE {0} \
CONFIG.PCW_USB1_RESET_IO {<Select>} \
CONFIG.PCW_USB1_USB1_IO {<Select>} \
CONFIG.PCW_USB_RESET_ENABLE {1} \
CONFIG.PCW_USB_RESET_POLARITY {Active Low} \
CONFIG.PCW_USB_RESET_SELECT {Share reset pin} \
CONFIG.PCW_USE_CROSS_TRIGGER {0} \
CONFIG.PCW_WDT_PERIPHERAL_CLKSRC {CPU_1X} \
CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0 {1} \
CONFIG.PCW_WDT_PERIPHERAL_ENABLE {0} \
CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ {133.333333} \
CONFIG.PCW_WDT_WDT_IO {<Select>} \
CONFIG.preset {ZedBoard} \
 ] $processing_system7_0

  # Need to retain value_src of defaults
  set_property -dict [ list \
CONFIG.PCW_ACT_CAN_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_DCI_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_ENET0_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_ENET1_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_FPGA0_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_FPGA1_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_FPGA2_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_FPGA3_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_PCAP_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_QSPI_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_SDIO_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_SMC_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_SPI_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_TPIU_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ACT_UART_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_APU_CLK_RATIO_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_APU_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ARMPLL_CTRL_FBDIV.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN0_CAN0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN0_GRP_CLK_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN0_GRP_CLK_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN0_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN0_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN1_CAN1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN1_GRP_CLK_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN1_GRP_CLK_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN1_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN1_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN_PERIPHERAL_DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CAN_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CLK0_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CLK1_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CLK2_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CLK3_FREQ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CPU_CPU_6X4X_MAX_RANGE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CPU_CPU_PLL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CPU_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CPU_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_CRYSTAL_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DCI_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DCI_PERIPHERAL_DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DCI_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDRPLL_CTRL_FBDIV.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_DDR_PLL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_HPRLPR_QUEUE_PARTITION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_HPR_TO_CRITICAL_PRIORITY_LEVEL.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_LPR_TO_CRITICAL_PRIORITY_LEVEL.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PORT0_HPR_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PORT1_HPR_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PORT2_HPR_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PORT3_HPR_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PRIORITY_READPORT_0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PRIORITY_READPORT_1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PRIORITY_READPORT_2.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PRIORITY_READPORT_3.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_2.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_PRIORITY_WRITEPORT_3.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_RAM_HIGHADDR.VALUE_SRC {DEFAULT} \
CONFIG.PCW_DDR_WRITE_TO_CRITICAL_PRIORITY_LEVEL.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_ENET0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_GRP_MDIO_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_GRP_MDIO_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_PERIPHERAL_DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_RESET_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET0_RESET_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET1_ENET1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET1_GRP_MDIO_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET1_GRP_MDIO_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET1_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET1_PERIPHERAL_DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET1_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET1_RESET_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET1_RESET_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET_RESET_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET_RESET_POLARITY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_ENET_RESET_SELECT.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_4K_TIMER.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_EMIO_ENET1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_EMIO_TTC0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_ENET0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_ENET1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_QSPI.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_SDIO0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_TTC0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_UART1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_EN_USB0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK0_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK0_PERIPHERAL_DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK1_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK1_PERIPHERAL_DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK2_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK2_PERIPHERAL_DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK3_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK3_PERIPHERAL_DIVISOR1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK_CLK0_BUF.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FCLK_CLK1_BUF.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FPGA0_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FPGA2_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FPGA3_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FPGA_FCLK0_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_FPGA_FCLK1_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_GPIO_EMIO_GPIO_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_GPIO_EMIO_GPIO_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_GPIO_MIO_GPIO_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_GPIO_MIO_GPIO_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_GPIO_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C0_GRP_INT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C0_GRP_INT_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C0_I2C0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C0_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C0_RESET_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C0_RESET_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C1_GRP_INT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C1_GRP_INT_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C1_I2C1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C1_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C1_RESET_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C1_RESET_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C_RESET_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C_RESET_POLARITY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_I2C_RESET_SELECT.VALUE_SRC {DEFAULT} \
CONFIG.PCW_IOPLL_CTRL_FBDIV.VALUE_SRC {DEFAULT} \
CONFIG.PCW_IO_IO_PLL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_0_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_0_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_0_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_0_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_10_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_10_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_10_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_10_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_11_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_11_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_11_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_11_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_12_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_12_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_12_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_12_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_13_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_13_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_13_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_13_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_14_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_14_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_14_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_14_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_15_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_15_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_15_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_15_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_16_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_16_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_16_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_16_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_17_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_17_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_17_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_17_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_18_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_18_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_18_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_18_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_19_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_19_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_19_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_19_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_1_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_1_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_1_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_1_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_20_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_20_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_20_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_20_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_21_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_21_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_21_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_21_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_22_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_22_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_22_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_22_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_23_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_23_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_23_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_23_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_24_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_24_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_24_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_24_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_25_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_25_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_25_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_25_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_26_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_26_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_26_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_26_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_27_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_27_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_27_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_27_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_28_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_28_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_28_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_28_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_29_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_29_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_29_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_29_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_2_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_2_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_2_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_2_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_30_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_30_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_30_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_30_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_31_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_31_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_31_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_31_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_32_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_32_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_32_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_32_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_33_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_33_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_33_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_33_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_34_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_34_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_34_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_34_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_35_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_35_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_35_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_35_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_36_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_36_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_36_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_36_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_37_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_37_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_37_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_37_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_38_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_38_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_38_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_38_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_39_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_39_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_39_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_39_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_3_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_3_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_3_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_3_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_40_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_40_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_40_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_40_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_41_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_41_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_41_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_41_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_42_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_42_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_42_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_42_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_43_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_43_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_43_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_43_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_44_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_44_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_44_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_44_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_45_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_45_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_45_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_45_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_46_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_46_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_46_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_46_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_47_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_47_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_47_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_47_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_48_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_48_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_48_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_48_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_49_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_49_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_49_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_49_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_4_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_4_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_4_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_4_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_50_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_50_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_50_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_50_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_51_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_51_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_51_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_51_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_52_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_52_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_52_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_52_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_53_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_53_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_53_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_53_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_5_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_5_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_5_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_5_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_6_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_6_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_6_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_6_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_7_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_7_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_7_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_7_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_8_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_8_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_8_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_8_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_9_DIRECTION.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_9_IOTYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_9_PULLUP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_9_SLEW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_TREE_PERIPHERALS.VALUE_SRC {DEFAULT} \
CONFIG.PCW_MIO_TREE_SIGNALS.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_CYCLES_T_AR.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_CYCLES_T_CLR.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_CYCLES_T_RC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_CYCLES_T_REA.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_CYCLES_T_RR.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_CYCLES_T_WC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_CYCLES_T_WP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_GRP_D8_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_GRP_D8_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_NAND_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NAND_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS0_T_CEOE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS0_T_PC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS0_T_RC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS0_T_TR.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS0_T_WC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS0_T_WP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS0_WE_TIME.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS1_T_CEOE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS1_T_PC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS1_T_RC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS1_T_TR.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS1_T_WC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS1_T_WP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_CS1_WE_TIME.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_A25_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_A25_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_CS0_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_CS0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_CS1_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_CS1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_SRAM_CS0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_SRAM_CS1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_SRAM_INT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_GRP_SRAM_INT_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_NOR_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS0_T_CEOE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS0_T_PC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS0_T_RC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS0_T_TR.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS0_T_WC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS0_T_WP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS0_WE_TIME.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS1_T_CEOE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS1_T_PC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS1_T_RC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS1_T_TR.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS1_T_WC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS1_T_WP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_NOR_SRAM_CS1_WE_TIME.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY2.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PACKAGE_DDR_BOARD_DELAY3.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_2.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PACKAGE_DDR_DQS_TO_CLK_DELAY_3.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PCAP_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PCAP_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PCAP_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PERIPHERAL_BOARD_PRESET.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PJTAG_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PJTAG_PJTAG_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PLL_BYPASSMODE_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PRESET_BANK0_VOLTAGE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_PRESET_BANK1_VOLTAGE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_GRP_FBCLK_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_GRP_FBCLK_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_GRP_IO1_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_GRP_IO1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_GRP_SINGLE_SS_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_GRP_SS1_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_GRP_SS1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_QSPI_QSPI_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD0_GRP_CD_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD0_GRP_CD_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD0_GRP_POW_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD0_GRP_POW_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD0_GRP_WP_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD0_GRP_WP_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD0_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD0_SD0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD1_GRP_CD_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD1_GRP_CD_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD1_GRP_POW_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD1_GRP_POW_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD1_GRP_WP_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD1_GRP_WP_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD1_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SD1_SD1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SDIO_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SDIO_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SDIO_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SDIO_PERIPHERAL_VALID.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SMC_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SMC_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SMC_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI0_GRP_SS0_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI0_GRP_SS0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI0_GRP_SS1_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI0_GRP_SS1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI0_GRP_SS2_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI0_GRP_SS2_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI0_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI0_SPI0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI1_GRP_SS0_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI1_GRP_SS0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI1_GRP_SS1_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI1_GRP_SS1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI1_GRP_SS2_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI1_GRP_SS2_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI1_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI1_SPI1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_SPI_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_S_AXI_HP0_DATA_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_S_AXI_HP1_DATA_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_S_AXI_HP2_DATA_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_S_AXI_HP3_DATA_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TPIU_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TPIU_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TPIU_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_16BIT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_16BIT_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_2BIT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_2BIT_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_32BIT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_32BIT_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_4BIT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_4BIT_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_8BIT_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_GRP_8BIT_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_INTERNAL_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TRACE_TRACE_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_CLK0_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_CLK1_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_CLK2_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC0_TTC0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_CLK0_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_CLK1_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_CLK2_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC1_TTC1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_TTC_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART0_BAUD_RATE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART0_GRP_FULL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART0_GRP_FULL_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART0_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART0_UART0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART1_BAUD_RATE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART1_GRP_FULL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART1_GRP_FULL_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART1_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART1_UART1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UART_PERIPHERAL_VALID.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_ADV_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_AL.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_BANK_ADDR_COUNT.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_BL.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY2.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_BOARD_DELAY3.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_BUS_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CL.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_0_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_1_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_2_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_3_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CLOCK_STOP_EN.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_COL_ADDR_COUNT.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_CWL.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DEVICE_CAPACITY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_0_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_1_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_2_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_3_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_1.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_2.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQS_TO_CLK_DELAY_3.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_0_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_1_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_2_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_LENGTH_MM.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PACKAGE_LENGTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DQ_3_PROPOGATION_DELAY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_DRAM_WIDTH.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_ECC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_FREQ_MHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_HIGH_TEMP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_MEMORY_TYPE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_PARTNO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_ROW_ADDR_COUNT.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_SPEED_BIN.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_DATA_EYE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_READ_GATE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_TRAIN_WRITE_LEVEL.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_T_FAW.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_T_RAS_MIN.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_T_RC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_T_RCD.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_T_RP.VALUE_SRC {DEFAULT} \
CONFIG.PCW_UIPARAM_DDR_USE_INTERNAL_VREF.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB0_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB0_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB0_RESET_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB0_RESET_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB0_USB0_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB1_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB1_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB1_RESET_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB1_RESET_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB1_USB1_IO.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB_RESET_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB_RESET_POLARITY.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USB_RESET_SELECT.VALUE_SRC {DEFAULT} \
CONFIG.PCW_USE_CROSS_TRIGGER.VALUE_SRC {DEFAULT} \
CONFIG.PCW_WDT_PERIPHERAL_CLKSRC.VALUE_SRC {DEFAULT} \
CONFIG.PCW_WDT_PERIPHERAL_DIVISOR0.VALUE_SRC {DEFAULT} \
CONFIG.PCW_WDT_PERIPHERAL_ENABLE.VALUE_SRC {DEFAULT} \
CONFIG.PCW_WDT_PERIPHERAL_FREQMHZ.VALUE_SRC {DEFAULT} \
CONFIG.PCW_WDT_WDT_IO.VALUE_SRC {DEFAULT} \
 ] $processing_system7_0

  # Create instance: ref_clk_fsel, and set properties
  set ref_clk_fsel [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 ref_clk_fsel ]

  # Create instance: ref_clk_oe, and set properties
  set ref_clk_oe [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 ref_clk_oe ]

  # Create instance: util_reduced_logic_0, and set properties
  set util_reduced_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_0 ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $util_reduced_logic_0

  # Create instance: util_reduced_logic_1, and set properties
  set util_reduced_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_reduced_logic:2.0 util_reduced_logic_1 ]
  set_property -dict [ list \
CONFIG.C_SIZE {1} \
 ] $util_reduced_logic_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
CONFIG.C_NUM_PROBE_OUT {2} \
CONFIG.C_PROBE_OUT1_WIDTH {11} \
 ] $vio_0

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {8} \
CONFIG.IN1_WIDTH {1} \
CONFIG.NUM_PORTS {3} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {8} \
CONFIG.IN1_WIDTH {1} \
CONFIG.NUM_PORTS {3} \
 ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {10} \
CONFIG.IN1_WIDTH {1} \
 ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {10} \
CONFIG.IN1_WIDTH {1} \
 ] $xlconcat_3

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {10} \
CONFIG.DIN_TO {10} \
CONFIG.DIN_WIDTH {11} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_0

  # Create instance: xlslice_data_0, and set properties
  set xlslice_data_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_data_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {7} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {10} \
CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_data_0

  # Create instance: xlslice_data_1, and set properties
  set xlslice_data_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_data_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {7} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {16} \
CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_data_1

  # Create instance: xlslice_error_0, and set properties
  set xlslice_error_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_error_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {8} \
CONFIG.DIN_TO {8} \
CONFIG.DIN_WIDTH {10} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_error_0

  # Create instance: xlslice_error_1, and set properties
  set xlslice_error_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_error_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {8} \
CONFIG.DIN_TO {8} \
CONFIG.DIN_WIDTH {16} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_error_1

  # Create instance: xlslice_valid_0, and set properties
  set xlslice_valid_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_valid_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {9} \
CONFIG.DIN_TO {9} \
CONFIG.DIN_WIDTH {10} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_valid_0

  # Create instance: xlslice_valid_1, and set properties
  set xlslice_valid_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_valid_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {9} \
CONFIG.DIN_TO {9} \
CONFIG.DIN_WIDTH {16} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_valid_1

  # Create interface connections
  connect_bd_intf_net -intf_net gmii_to_rgmii_0_RGMII [get_bd_intf_ports rgmii_port_0] [get_bd_intf_pins gmii_to_rgmii_0/RGMII]
  connect_bd_intf_net -intf_net gmii_to_rgmii_1_MDIO_PHY [get_bd_intf_pins gmii_to_rgmii_0/MDIO_GEM] [get_bd_intf_pins gmii_to_rgmii_1/MDIO_PHY]
  connect_bd_intf_net -intf_net gmii_to_rgmii_1_RGMII [get_bd_intf_ports rgmii_port_1] [get_bd_intf_pins gmii_to_rgmii_1/RGMII]
  connect_bd_intf_net -intf_net processing_system7_0_DDR [get_bd_intf_ports DDR] [get_bd_intf_pins processing_system7_0/DDR]
  connect_bd_intf_net -intf_net processing_system7_0_FIXED_IO [get_bd_intf_ports FIXED_IO] [get_bd_intf_pins processing_system7_0/FIXED_IO]
  connect_bd_intf_net -intf_net processing_system7_0_MDIO_ETHERNET_1 [get_bd_intf_pins gmii_to_rgmii_1/MDIO_GEM] [get_bd_intf_pins processing_system7_0/MDIO_ETHERNET_1]

  # Create port connections
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_generator_3/m_axis_tdata] [get_bd_pins xlslice_data_0/Din] [get_bd_pins xlslice_error_0/Din] [get_bd_pins xlslice_valid_0/Din]
  connect_bd_net -net fifo_generator_1_dout [get_bd_pins both_data/probe14] [get_bd_pins mux_or/Res] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_data_1/Din] [get_bd_pins xlslice_error_1/Din] [get_bd_pins xlslice_valid_1/Din]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_1_dout]
  connect_bd_net -net fifo_generator_1_dout1 [get_bd_pins both_data/probe3] [get_bd_pins fifo_generator_1/dout] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net fifo_generator_1_rd_data_count [get_bd_pins both_data/probe5] [get_bd_pins fifo_generator_1/rd_data_count]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_1_rd_data_count]
  connect_bd_net -net fifo_generator_1_wr_data_count [get_bd_pins both_data/probe4] [get_bd_pins fifo_generator_1/wr_data_count]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_1_wr_data_count]
  connect_bd_net -net fifo_generator_2_axis_prog_empty [get_bd_pins both_data/probe9] [get_bd_pins both_data/probe13] [get_bd_pins fifo_generator_2/axis_prog_empty] [get_bd_pins not_gate_empty_fifo_1/Op1]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_2_axis_prog_empty]
  connect_bd_net -net fifo_generator_2_axis_prog_full [get_bd_pins both_data/probe12] [get_bd_pins fifo_generator_2/axis_prog_full] [get_bd_pins xlconcat_3/In1]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_2_axis_prog_full]
  connect_bd_net -net fifo_generator_2_axis_rd_data_count [get_bd_pins both_data/probe2] [get_bd_pins fifo_generator_2/axis_rd_data_count]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_2_axis_rd_data_count]
  connect_bd_net -net fifo_generator_2_axis_wr_data_count [get_bd_pins both_data/probe1] [get_bd_pins fifo_generator_2/axis_wr_data_count]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_2_axis_wr_data_count]
  connect_bd_net -net fifo_generator_2_m_axis_tdata [get_bd_pins both_data/probe0] [get_bd_pins fifo_generator_2/m_axis_tdata] [get_bd_pins xlconcat_3/In0]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_2_m_axis_tdata]
  connect_bd_net -net fifo_generator_2_prog_full [get_bd_pins both_data/probe8] [get_bd_pins fifo_generator_1/prog_full] [get_bd_pins xlconcat_2/In1]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_2_prog_full]
  connect_bd_net -net fifo_generator_2_s_axis_tready [get_bd_pins both_data/probe11] [get_bd_pins fifo_generator_2/s_axis_tready]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets fifo_generator_2_s_axis_tready]
  connect_bd_net -net fifo_generator_3_axis_prog_empty [get_bd_pins fifo_generator_3/axis_prog_empty] [get_bd_pins not_gate_empty_fifo_0/Op1]
  connect_bd_net -net fifo_generator_3_axis_prog_full [get_bd_pins fifo_generator_3/axis_prog_full] [get_bd_pins not_gate_full_fifo_0/Op1]
  connect_bd_net -net gmii_clk_125m_out [get_bd_pins gmii_to_rgmii_0/gmii_clk_125m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_125m_in]
  connect_bd_net -net gmii_to_rgmii_0_gmii_clk_25m_out [get_bd_pins gmii_to_rgmii_0/gmii_clk_25m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_25m_in]
  connect_bd_net -net gmii_to_rgmii_0_gmii_clk_2_5m_out [get_bd_pins gmii_to_rgmii_0/gmii_clk_2_5m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_2_5m_in]
  connect_bd_net -net gmii_to_rgmii_0_gmii_rx_clk [get_bd_pins fifo_generator_0/wr_clk] [get_bd_pins fifo_generator_3/s_aclk] [get_bd_pins gmii_to_rgmii_0/gmii_rx_clk] [get_bd_pins vio_0/clk]
  connect_bd_net -net gmii_to_rgmii_0_gmii_rx_dv [get_bd_pins gmii_to_rgmii_0/gmii_rx_dv] [get_bd_pins or_gate_wr_en_fifo_0/Op2] [get_bd_pins xlconcat_0/In2]
  connect_bd_net -net gmii_to_rgmii_0_gmii_rx_er [get_bd_pins gmii_to_rgmii_0/gmii_rx_er] [get_bd_pins xlconcat_0/In1]
  connect_bd_net -net gmii_to_rgmii_0_gmii_rxd [get_bd_pins gmii_to_rgmii_0/gmii_rxd] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net gmii_to_rgmii_0_gmii_tx_clk [get_bd_pins both_data/clk] [get_bd_pins fifo_generator_1/rd_clk] [get_bd_pins fifo_generator_2/m_aclk] [get_bd_pins gmii_to_rgmii_0/gmii_tx_clk]
  connect_bd_net -net gmii_to_rgmii_0_link_status [get_bd_pins gmii_to_rgmii_0/link_status] [get_bd_pins link_status_and_gate/Op1]
  connect_bd_net -net gmii_to_rgmii_0_mmcm_locked_out [get_bd_pins gmii_to_rgmii_0/mmcm_locked_out] [get_bd_pins gmii_to_rgmii_1/mmcm_locked_in]
  connect_bd_net -net gmii_to_rgmii_0_ref_clk_out [get_bd_pins gmii_to_rgmii_0/ref_clk_out] [get_bd_pins gmii_to_rgmii_1/ref_clk_in]
  connect_bd_net -net gmii_to_rgmii_1_gmii_rx_clk [get_bd_pins fifo_generator_1/wr_clk] [get_bd_pins fifo_generator_2/s_aclk] [get_bd_pins gmii_to_rgmii_1/gmii_rx_clk]
  connect_bd_net -net gmii_to_rgmii_1_gmii_rx_dv [get_bd_pins gmii_to_rgmii_1/gmii_rx_dv] [get_bd_pins or_gate_wr_en_fifo_1/Op2] [get_bd_pins xlconcat_1/In2]
  connect_bd_net -net gmii_to_rgmii_1_gmii_rx_er [get_bd_pins gmii_to_rgmii_1/gmii_rx_er] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net gmii_to_rgmii_1_gmii_rxd [get_bd_pins gmii_to_rgmii_1/gmii_rxd] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net gmii_to_rgmii_1_gmii_tx_clk [get_bd_pins fifo_generator_0/rd_clk] [get_bd_pins fifo_generator_3/m_aclk] [get_bd_pins gmii_to_rgmii_1/gmii_tx_clk]
  connect_bd_net -net gmii_to_rgmii_1_link_status [get_bd_pins gmii_to_rgmii_1/link_status] [get_bd_pins link_status_and_gate/Op2]
  connect_bd_net -net link_status_and_gate_Res [get_bd_pins link_status_and_gate/Res] [get_bd_pins link_status_not_gate/Op1]
  connect_bd_net -net link_status_not_gate1_Res [get_bd_pins fifo_generator_2/s_aresetn] [get_bd_pins fifo_generator_3/s_aresetn] [get_bd_pins link_status_not_gate1/Res]
  connect_bd_net -net link_status_not_gate_Res [get_bd_pins link_status_not_gate/Res] [get_bd_pins vio_0/probe_in0]
  connect_bd_net -net mux_not_Res [get_bd_pins mux_and/Op1] [get_bd_pins mux_not/Res]
  connect_bd_net -net not_gate_empty_fifo_0_Res [get_bd_pins not_gate_empty_fifo_0/Res] [get_bd_pins or_gate_rd_en_fifo_0/Op1]
  connect_bd_net -net not_gate_empty_fifo_1_Res [get_bd_pins not_gate_empty_fifo_1/Res] [get_bd_pins or_gate_rd_en_fifo_1/Op1]
  connect_bd_net -net not_gate_full_fifo_0_Res [get_bd_pins not_gate_full_fifo_0/Res] [get_bd_pins or_gate_wr_en_fifo_0/Op1]
  connect_bd_net -net not_gate_full_fifo_1_Res [get_bd_pins not_gate_full_fifo_1/Res] [get_bd_pins or_gate_wr_en_fifo_1/Op1]
  connect_bd_net -net or_gate_rd_en_fifo_0_Res [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins fifo_generator_3/m_axis_tready] [get_bd_pins or_gate_rd_en_fifo_0/Res]
  connect_bd_net -net or_gate_rd_en_fifo_1_Res [get_bd_pins both_data/probe6] [get_bd_pins fifo_generator_1/rd_en] [get_bd_pins fifo_generator_2/m_axis_tready] [get_bd_pins or_gate_rd_en_fifo_1/Res]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets or_gate_rd_en_fifo_1_Res]
  connect_bd_net -net or_gate_wr_en_fifo_0_Res [get_bd_pins fifo_generator_0/wr_en] [get_bd_pins fifo_generator_3/s_axis_tvalid] [get_bd_pins or_gate_wr_en_fifo_0/Res]
  connect_bd_net -net or_gate_wr_en_fifo_1_Res [get_bd_pins both_data/probe7] [get_bd_pins fifo_generator_1/wr_en] [get_bd_pins fifo_generator_2/s_axis_tvalid] [get_bd_pins or_gate_wr_en_fifo_1/Res]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets or_gate_wr_en_fifo_1_Res]
  connect_bd_net -net processing_system7_0_FCLK_CLK0 [get_bd_pins processing_system7_0/FCLK_CLK0] [get_bd_pins processing_system7_0/M_AXI_GP0_ACLK]
  connect_bd_net -net processing_system7_0_FCLK_CLK1 [get_bd_pins gmii_to_rgmii_0/clkin] [get_bd_pins processing_system7_0/FCLK_CLK1]
  connect_bd_net -net processing_system7_0_FCLK_RESET0_N [get_bd_pins processing_system7_0/FCLK_RESET0_N] [get_bd_pins util_reduced_logic_0/Op1] [get_bd_pins util_reduced_logic_1/Op1] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net ref_clk_fsel_dout [get_bd_ports ref_clk_fsel] [get_bd_pins ref_clk_fsel/dout]
  connect_bd_net -net ref_clk_oe_dout [get_bd_ports ref_clk_oe] [get_bd_pins ref_clk_oe/dout]
  connect_bd_net -net util_reduced_logic_0_Res [get_bd_ports reset_port_0] [get_bd_pins util_reduced_logic_0/Res]
  connect_bd_net -net util_reduced_logic_1_Res [get_bd_ports reset_port_1] [get_bd_pins util_reduced_logic_1/Res]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins gmii_to_rgmii_0/rx_reset] [get_bd_pins gmii_to_rgmii_0/tx_reset] [get_bd_pins gmii_to_rgmii_1/rx_reset] [get_bd_pins gmii_to_rgmii_1/tx_reset] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins mux_and_2/Res] [get_bd_pins mux_or/Op1]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins mux_and/Res] [get_bd_pins mux_or/Op2]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins both_data/probe10] [get_bd_pins fifo_generator_0/rst] [get_bd_pins fifo_generator_1/rst] [get_bd_pins link_status_not_gate1/Op1] [get_bd_pins vio_0/probe_out0]
  connect_bd_net -net vio_0_probe_out1 [get_bd_pins mux_and_2/Op2] [get_bd_pins mux_not/Op1] [get_bd_pins vio_0/probe_out1]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets vio_0_probe_out1]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins fifo_generator_0/din] [get_bd_pins fifo_generator_3/s_axis_tdata] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins fifo_generator_1/din] [get_bd_pins fifo_generator_2/s_axis_tdata] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins mux_and/Op2] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconcat_3_dout [get_bd_pins mux_and_2/Op1] [get_bd_pins xlconcat_3/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins both_data/probe15] [get_bd_pins not_gate_full_fifo_1/Op1] [get_bd_pins xlslice_0/Dout]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
 ] [get_bd_nets xlslice_0_Dout]
  connect_bd_net -net xlslice_data_0_Dout [get_bd_pins gmii_to_rgmii_1/gmii_txd] [get_bd_pins xlslice_data_0/Dout]
  connect_bd_net -net xlslice_data_1_Dout [get_bd_pins gmii_to_rgmii_0/gmii_txd] [get_bd_pins xlslice_data_1/Dout]
  connect_bd_net -net xlslice_error_0_Dout [get_bd_pins gmii_to_rgmii_1/gmii_tx_er] [get_bd_pins xlslice_error_0/Dout]
  connect_bd_net -net xlslice_error_1_Dout [get_bd_pins gmii_to_rgmii_0/gmii_tx_er] [get_bd_pins xlslice_error_1/Dout]
  connect_bd_net -net xlslice_valid_0_Dout [get_bd_pins gmii_to_rgmii_1/gmii_tx_en] [get_bd_pins or_gate_rd_en_fifo_0/Op2] [get_bd_pins xlslice_valid_0/Dout]
  connect_bd_net -net xlslice_valid_1_Dout [get_bd_pins gmii_to_rgmii_0/gmii_tx_en] [get_bd_pins or_gate_rd_en_fifo_1/Op2] [get_bd_pins xlslice_valid_1/Dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port DDR -pg 1 -y 840 -defaultsOSRD
preplace port rgmii_port_0 -pg 1 -y 800 -defaultsOSRD
preplace port rgmii_port_1 -pg 1 -y 820 -defaultsOSRD
preplace port reset_port_0 -pg 1 -y 1010 -defaultsOSRD
preplace port FIXED_IO -pg 1 -y 960 -defaultsOSRD
preplace port reset_port_1 -pg 1 -y 1100 -defaultsOSRD
preplace portBus ref_clk_fsel -pg 1 -y 1190 -defaultsOSRD
preplace portBus ref_clk_oe -pg 1 -y 1280 -defaultsOSRD
preplace inst fifo_generator_3 -pg 1 -lvl 10 -y 250 -defaultsOSRD
preplace inst vio_0 -pg 1 -lvl 10 -y 530 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 3 -y 1140 -defaultsOSRD
preplace inst xlslice_data_0 -pg 1 -lvl 1 -y 310 -defaultsOSRD
preplace inst not_gate_full_fifo_0 -pg 1 -lvl 8 -y 210 -defaultsOSRD
preplace inst xlslice_data_1 -pg 1 -lvl 2 -y 810 -defaultsOSRD
preplace inst not_gate_full_fifo_1 -pg 1 -lvl 8 -y 580 -defaultsOSRD
preplace inst or_gate_rd_en_fifo_0 -pg 1 -lvl 9 -y 720 -defaultsOSRD
preplace inst or_gate_wr_en_fifo_0 -pg 1 -lvl 9 -y 120 -defaultsOSRD
preplace inst link_status_not_gate1 -pg 1 -lvl 10 -y 430 -defaultsOSRD
preplace inst both_data -pg 1 -lvl 10 -y 1430 -defaultsOSRD
preplace inst or_gate_rd_en_fifo_1 -pg 1 -lvl 9 -y 930 -defaultsOSRD
preplace inst or_gate_wr_en_fifo_1 -pg 1 -lvl 9 -y 580 -defaultsOSRD
preplace inst ref_clk_fsel -pg 1 -lvl 10 -y 2630 -defaultsOSRD
preplace inst ref_clk_oe -pg 1 -lvl 10 -y 2720 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 9 -y -60 -defaultsOSRD
preplace inst link_status_not_gate -pg 1 -lvl 9 -y 320 -defaultsOSRD
preplace inst util_vector_logic_0 -pg 1 -lvl 1 -y 1210 -defaultsOSRD
preplace inst xlconcat_1 -pg 1 -lvl 9 -y 440 -defaultsOSRD
preplace inst xlconcat_2 -pg 1 -lvl 6 -y 1130 -defaultsOSRD -orient R180
preplace inst util_reduced_logic_0 -pg 1 -lvl 10 -y 2450 -defaultsOSRD
preplace inst xlconcat_3 -pg 1 -lvl 5 -y 1430 -defaultsOSRD -orient R180
preplace inst xlslice_valid_0 -pg 1 -lvl 1 -y 1120 -defaultsOSRD
preplace inst util_reduced_logic_1 -pg 1 -lvl 10 -y 2540 -defaultsOSRD
preplace inst mux_or -pg 1 -lvl 3 -y 1250 -defaultsOSRD -orient R180
preplace inst mux_and -pg 1 -lvl 4 -y 1220 -defaultsOSRD -orient R180
preplace inst not_gate_empty_fifo_0 -pg 1 -lvl 8 -y 730 -defaultsOSRD
preplace inst xlslice_valid_1 -pg 1 -lvl 2 -y 540 -defaultsOSRD
preplace inst xlslice_error_0 -pg 1 -lvl 1 -y 220 -defaultsOSRD
preplace inst link_status_and_gate -pg 1 -lvl 8 -y 460 -defaultsOSRD
preplace inst mux_and_2 -pg 1 -lvl 4 -y 1340 -defaultsOSRD -orient R180
preplace inst not_gate_empty_fifo_1 -pg 1 -lvl 8 -y 890 -defaultsOSRD
preplace inst xlslice_error_1 -pg 1 -lvl 2 -y 720 -defaultsOSRD
preplace inst fifo_generator_0 -pg 1 -lvl 10 -y -30 -defaultsOSRD
preplace inst gmii_to_rgmii_0 -pg 1 -lvl 4 -y 590 -defaultsOSRD
preplace inst fifo_generator_1 -pg 1 -lvl 10 -y 970 -defaultsOSRD
preplace inst gmii_to_rgmii_1 -pg 1 -lvl 2 -y 20 -defaultsOSRD
preplace inst mux_not -pg 1 -lvl 7 -y 1290 -defaultsOSRD -orient R180
preplace inst fifo_generator_2 -pg 1 -lvl 10 -y 690 -defaultsOSRD
preplace inst processing_system7_0 -pg 1 -lvl 1 -y 910 -defaultsOSRD
preplace netloc link_status_not_gate_Res 1 9 1 2920
preplace netloc gmii_to_rgmii_1_link_status 1 2 6 NJ 10 NJ 10 NJ 10 NJ 10 NJ 10 NJ
preplace netloc fifo_generator_2_axis_prog_full 1 5 6 NJ 1420 NJ 1420 NJ 1420 NJ 1420 2830 1640 3540
preplace netloc or_gate_wr_en_fifo_0_Res 1 9 1 2930
preplace netloc not_gate_full_fifo_0_Res 1 8 1 NJ
preplace netloc util_vector_logic_0_Res 1 1 3 440 650 NJ 650 1150
preplace netloc processing_system7_0_FIXED_IO 1 1 10 NJ 1090 NJ 1090 NJ 1090 NJ 1090 NJ 1190 NJ 1190 NJ 1190 NJ 1190 NJ 1190 NJ
preplace netloc util_reduced_logic_1_Res 1 10 1 NJ
preplace netloc xlslice_valid_0_Dout 1 1 8 410 890 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ 790 NJ
preplace netloc xlconcat_2_dout 1 4 2 1560 1130 NJ
preplace netloc fifo_generator_2_axis_rd_data_count 1 9 2 2980 820 3520
preplace netloc gmii_to_rgmii_1_MDIO_PHY 1 2 2 NJ -30 1170
preplace netloc fifo_generator_3_axis_prog_full 1 7 4 2280 -150 NJ -150 NJ -150 3520
preplace netloc vio_0_probe_out0 1 9 2 2950 110 3540
preplace netloc ref_clk_fsel_dout 1 10 1 NJ
preplace netloc not_gate_full_fifo_1_Res 1 8 1 NJ
preplace netloc vio_0_probe_out1 1 4 7 NJ 1330 NJ 1330 NJ 1340 2270 1340 NJ 1340 NJ 1660 3560
preplace netloc ref_clk_oe_dout 1 10 1 NJ
preplace netloc xlconcat_1_dout 1 9 1 2910
preplace netloc gmii_to_rgmii_1_gmii_rx_er 1 1 8 NJ 410 NJ 410 NJ 410 NJ 520 NJ 520 NJ 520 NJ 520 NJ
preplace netloc fifo_generator_1_dout 1 1 9 NJ 900 NJ 1070 NJ 1070 NJ 1070 NJ 1070 NJ 1070 NJ 1070 NJ 1070 2860
preplace netloc or_gate_rd_en_fifo_1_Res 1 9 2 NJ 1100 3530
preplace netloc xlslice_data_0_Dout 1 1 1 NJ
preplace netloc xlconcat_0_dout 1 9 1 2920
preplace netloc xlslice_valid_1_Dout 1 2 7 NJ 540 NJ 800 NJ 800 NJ 800 NJ 800 NJ 800 NJ
preplace netloc processing_system7_0_MDIO_ETHERNET_1 1 1 1 380
preplace netloc gmii_to_rgmii_0_gmii_clk_25m_out 1 1 4 NJ -190 NJ -190 NJ -190 1550
preplace netloc processing_system7_0_DDR 1 1 10 NJ 860 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ 840 NJ
preplace netloc fifo_generator_2_prog_full 1 6 5 NJ 1120 NJ 1120 NJ 1120 2890 1120 3500
preplace netloc fifo_generator_3_axis_prog_empty 1 7 4 2270 -160 NJ -160 NJ -160 3580
preplace netloc xlslice_error_0_Dout 1 1 1 NJ
preplace netloc xlslice_error_1_Dout 1 2 2 NJ 630 NJ
preplace netloc fifo_generator_0_dout 1 0 11 NJ -200 NJ -200 NJ -200 NJ -200 NJ -200 NJ -200 NJ -200 NJ -200 NJ -200 NJ -200 3530
preplace netloc fifo_generator_2_axis_prog_empty 1 7 4 2280 810 NJ 810 2900 810 3500
preplace netloc processing_system7_0_FCLK_RESET0_N 1 0 10 -240 1260 390 1190 NJ 1190 NJ 1160 NJ 1160 NJ 1200 NJ 1200 NJ 1200 NJ 1200 2840
preplace netloc or_gate_wr_en_fifo_1_Res 1 9 1 2880
preplace netloc gmii_to_rgmii_0_gmii_tx_clk 1 3 7 NJ 780 NJ 780 NJ 780 NJ 780 NJ 780 NJ 780 2920
preplace netloc util_reduced_logic_0_Res 1 10 1 NJ
preplace netloc xlslice_0_Dout 1 3 7 NJ 1140 NJ 1140 NJ 1210 NJ 1210 NJ 1210 NJ 1210 NJ
preplace netloc gmii_to_rgmii_0_ref_clk_out 1 1 4 NJ 350 NJ 350 NJ 350 1530
preplace netloc gmii_to_rgmii_0_RGMII 1 4 7 NJ 370 NJ 370 NJ 370 NJ 370 NJ 370 NJ 380 NJ
preplace netloc processing_system7_0_FCLK_CLK0 1 0 2 -240 1070 380
preplace netloc xlslice_data_1_Dout 1 2 2 NJ 660 NJ
preplace netloc processing_system7_0_FCLK_CLK1 1 1 3 NJ 670 NJ 670 NJ
preplace netloc not_gate_empty_fifo_0_Res 1 8 1 NJ
preplace netloc link_status_and_gate_Res 1 8 1 NJ
preplace netloc or_gate_rd_en_fifo_0_Res 1 9 2 2870 100 3500
preplace netloc gmii_to_rgmii_1_gmii_rx_clk 1 1 9 NJ 870 NJ 830 NJ 830 NJ 830 NJ 830 NJ 830 NJ 830 NJ 830 2940
preplace netloc mux_not_Res 1 4 3 NJ 1230 NJ 1230 NJ
preplace netloc gmii_to_rgmii_0_gmii_rx_dv 1 3 6 NJ 130 NJ 130 NJ 130 NJ 130 NJ 130 2540
preplace netloc link_status_not_gate1_Res 1 9 2 2980 120 3510
preplace netloc gmii_to_rgmii_0_gmii_clk_2_5m_out 1 1 4 NJ 400 NJ 400 NJ 400 1540
preplace netloc fifo_generator_2_s_axis_tready 1 9 1 2960
preplace netloc util_vector_logic_1_Res 1 3 1 1180
preplace netloc fifo_generator_2_axis_wr_data_count 1 9 2 2970 800 3510
preplace netloc gmii_to_rgmii_0_link_status 1 4 4 1600 450 NJ 450 NJ 450 NJ
preplace netloc fifo_generator_1_wr_data_count 1 9 2 2990 1110 3510
preplace netloc gmii_to_rgmii_0_gmii_rx_clk 1 3 7 NJ 60 NJ 60 NJ 60 NJ 60 NJ 60 NJ 60 NJ
preplace netloc not_gate_empty_fifo_1_Res 1 8 1 NJ
preplace netloc fifo_generator_1_dout1 1 6 4 NJ 1140 NJ 1140 NJ 1140 NJ
preplace netloc util_vector_logic_2_Res 1 3 1 1170
preplace netloc xlconcat_3_dout 1 4 1 1560
preplace netloc fifo_generator_2_m_axis_tdata 1 5 6 NJ 1440 NJ 1440 NJ 1440 NJ 1440 2910 1650 3550
preplace netloc gmii_to_rgmii_1_gmii_rx_dv 1 1 8 NJ 370 NJ 370 NJ 370 NJ 380 NJ 380 NJ 380 NJ 380 2550
preplace netloc gmii_to_rgmii_0_gmii_rx_er 1 3 6 NJ -60 NJ -60 NJ -60 NJ -60 NJ -60 NJ
preplace netloc fifo_generator_1_rd_data_count 1 9 2 3000 1130 3520
preplace netloc gmii_to_rgmii_0_mmcm_locked_out 1 1 4 NJ 880 NJ 880 NJ 880 1530
preplace netloc gmii_to_rgmii_1_gmii_tx_clk 1 1 9 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ 260 NJ
preplace netloc gmii_to_rgmii_1_gmii_rxd 1 1 8 NJ 420 NJ 420 NJ 420 NJ 400 NJ 400 NJ 400 NJ 400 NJ
preplace netloc gmii_to_rgmii_0_gmii_rxd 1 3 6 NJ -80 NJ -80 NJ -80 NJ -80 NJ -80 NJ
preplace netloc gmii_to_rgmii_1_RGMII 1 2 9 NJ -10 NJ -10 NJ -10 NJ -10 NJ -10 NJ -10 NJ 10 NJ 90 NJ
preplace netloc gmii_clk_125m_out 1 1 4 NJ 390 NJ 390 NJ 390 1520
levelinfo -pg 1 -270 170 680 1010 1370 1690 1890 2130 2410 2690 3270 3630 -top -210 -bot 2770
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


