
################################################################
# This is a generated script based on design: design_2
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
# source design_2_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg484-1
   set_property BOARD_PART em.avnet.com:zed:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_2

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
  set M_AXIS_GMII0_RX [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_GMII0_RX ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {200000000} \
 ] $M_AXIS_GMII0_RX
  set M_AXIS_GMII1_RX [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 M_AXIS_GMII1_RX ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {200000000} \
 ] $M_AXIS_GMII1_RX
  set RGMII_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 RGMII_0 ]
  set RGMII_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 RGMII_1 ]
  set S_AXIS_GMII0_TX [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_GMII0_TX ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {200000000} \
CONFIG.HAS_TKEEP {0} \
CONFIG.HAS_TLAST {0} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {0} \
CONFIG.LAYERED_METADATA {undef} \
CONFIG.TDATA_NUM_BYTES {1} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {0} \
 ] $S_AXIS_GMII0_TX
  set S_AXIS_GMII1_TX [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 S_AXIS_GMII1_TX ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {200000000} \
CONFIG.HAS_TKEEP {0} \
CONFIG.HAS_TLAST {0} \
CONFIG.HAS_TREADY {1} \
CONFIG.HAS_TSTRB {0} \
CONFIG.LAYERED_METADATA {undef} \
CONFIG.TDATA_NUM_BYTES {1} \
CONFIG.TDEST_WIDTH {0} \
CONFIG.TID_WIDTH {0} \
CONFIG.TUSER_WIDTH {0} \
 ] $S_AXIS_GMII1_TX

  # Create ports
  set clkin [ create_bd_port -dir I -type clk clkin ]
  set_property -dict [ list \
CONFIG.ASSOCIATED_BUSIF {S_AXIS_GMII0_TX:M_AXIS_GMII0_RX} \
CONFIG.FREQ_HZ {200000000} \
 ] $clkin
  set gmii_0_rx_clk [ create_bd_port -dir O gmii_0_rx_clk ]
  set gmii_0_rx_er [ create_bd_port -dir O gmii_0_rx_er ]
  set gmii_0_tx_clk [ create_bd_port -dir O gmii_0_tx_clk ]
  set gmii_0_tx_er [ create_bd_port -dir I gmii_0_tx_er ]
  set gmii_1_rx_clk [ create_bd_port -dir O gmii_1_rx_clk ]
  set gmii_1_tx_clk [ create_bd_port -dir O gmii_1_tx_clk ]
  set link_status_AND [ create_bd_port -dir O -from 7 -to 0 link_status_AND ]
  set mdio_gem_i [ create_bd_port -dir O mdio_gem_i ]
  set mdio_gem_mdc [ create_bd_port -dir I mdio_gem_mdc ]
  set mdio_gem_o [ create_bd_port -dir I mdio_gem_o ]
  set mdio_gem_t [ create_bd_port -dir I mdio_gem_t ]
  set rx_reset [ create_bd_port -dir I -type rst rx_reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rx_reset
  set tx_reset [ create_bd_port -dir I -type rst tx_reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $tx_reset

  # Create instance: axis_data_fifo_0, and set properties
  set axis_data_fifo_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_0 ]
  set_property -dict [ list \
CONFIG.IS_ACLK_ASYNC {1} \
 ] $axis_data_fifo_0

  # Create instance: axis_data_fifo_1, and set properties
  set axis_data_fifo_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_1 ]
  set_property -dict [ list \
CONFIG.IS_ACLK_ASYNC {1} \
 ] $axis_data_fifo_1

  # Create instance: axis_data_fifo_2, and set properties
  set axis_data_fifo_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_2 ]
  set_property -dict [ list \
CONFIG.IS_ACLK_ASYNC {1} \
 ] $axis_data_fifo_2

  # Create instance: axis_data_fifo_3, and set properties
  set axis_data_fifo_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_data_fifo:1.1 axis_data_fifo_3 ]
  set_property -dict [ list \
CONFIG.IS_ACLK_ASYNC {1} \
 ] $axis_data_fifo_3

  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]

  # Create instance: axis_subset_converter_1, and set properties
  set axis_subset_converter_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_1 ]

  # Create instance: axis_subset_converter_2, and set properties
  set axis_subset_converter_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_2 ]

  # Create instance: axis_subset_converter_3, and set properties
  set axis_subset_converter_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_3 ]

  # Create instance: gmii_to_rgmii_0, and set properties
  set gmii_to_rgmii_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gmii_to_rgmii:4.0 gmii_to_rgmii_0 ]
  set_property -dict [ list \
CONFIG.C_PHYADDR {7} \
CONFIG.SupportLevel {Include_Shared_Logic_in_Core} \
 ] $gmii_to_rgmii_0

  # Create instance: gmii_to_rgmii_1, and set properties
  set gmii_to_rgmii_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gmii_to_rgmii:4.0 gmii_to_rgmii_1 ]
  set_property -dict [ list \
CONFIG.C_USE_IDELAY_CTRL {false} \
CONFIG.SupportLevel {Include_Shared_Logic_in_Example_Design} \
 ] $gmii_to_rgmii_1

  # Create instance: link_status_and_gate, and set properties
  set link_status_and_gate [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 link_status_and_gate ]

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_1

  # Create interface connections
  connect_bd_intf_net -intf_net S_AXIS_1 [get_bd_intf_ports S_AXIS_GMII0_TX] [get_bd_intf_pins axis_data_fifo_0/S_AXIS]
  connect_bd_intf_net -intf_net S_AXIS_2 [get_bd_intf_ports S_AXIS_GMII1_TX] [get_bd_intf_pins axis_data_fifo_3/S_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_0_M_AXIS [get_bd_intf_pins axis_data_fifo_0/M_AXIS] [get_bd_intf_pins axis_subset_converter_0/S_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_1_M_AXIS [get_bd_intf_pins axis_data_fifo_1/M_AXIS] [get_bd_intf_pins axis_subset_converter_1/S_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_2_M_AXIS [get_bd_intf_pins axis_data_fifo_2/M_AXIS] [get_bd_intf_pins axis_subset_converter_2/S_AXIS]
  connect_bd_intf_net -intf_net axis_data_fifo_3_M_AXIS [get_bd_intf_pins axis_data_fifo_3/M_AXIS] [get_bd_intf_pins axis_subset_converter_3/S_AXIS]
  connect_bd_intf_net -intf_net axis_subset_converter_1_M_AXIS [get_bd_intf_ports M_AXIS_GMII0_RX] [get_bd_intf_pins axis_subset_converter_1/M_AXIS]
  connect_bd_intf_net -intf_net axis_subset_converter_2_M_AXIS [get_bd_intf_ports M_AXIS_GMII1_RX] [get_bd_intf_pins axis_subset_converter_2/M_AXIS]
  connect_bd_intf_net -intf_net gmii_to_rgmii_0_RGMII [get_bd_intf_ports RGMII_0] [get_bd_intf_pins gmii_to_rgmii_0/RGMII]
  connect_bd_intf_net -intf_net gmii_to_rgmii_1_MDIO_PHY [get_bd_intf_pins gmii_to_rgmii_0/MDIO_GEM] [get_bd_intf_pins gmii_to_rgmii_1/MDIO_PHY]
  connect_bd_intf_net -intf_net gmii_to_rgmii_1_RGMII [get_bd_intf_ports RGMII_1] [get_bd_intf_pins gmii_to_rgmii_1/RGMII]

  # Create port connections
  connect_bd_net -net axis_subset_converter_0_m_axis_tdata [get_bd_pins axis_subset_converter_0/m_axis_tdata] [get_bd_pins gmii_to_rgmii_0/gmii_txd]
  connect_bd_net -net axis_subset_converter_0_m_axis_tvalid [get_bd_pins axis_subset_converter_0/m_axis_tvalid] [get_bd_pins gmii_to_rgmii_0/gmii_tx_en]
  connect_bd_net -net axis_subset_converter_3_m_axis_tdata [get_bd_pins axis_subset_converter_3/m_axis_tdata] [get_bd_pins gmii_to_rgmii_1/gmii_txd]
  connect_bd_net -net axis_subset_converter_3_m_axis_tvalid [get_bd_pins axis_subset_converter_3/m_axis_tvalid] [get_bd_pins gmii_to_rgmii_1/gmii_tx_en]
  connect_bd_net -net clkin_1 [get_bd_ports clkin] [get_bd_pins axis_data_fifo_0/s_axis_aclk] [get_bd_pins axis_data_fifo_1/m_axis_aclk] [get_bd_pins axis_subset_converter_1/aclk] [get_bd_pins gmii_to_rgmii_0/clkin]
  connect_bd_net -net gmii_to_rgmii_0_gmii_clk_125m_out [get_bd_pins gmii_to_rgmii_0/gmii_clk_125m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_125m_in]
  connect_bd_net -net gmii_to_rgmii_0_gmii_clk_25m_out [get_bd_pins gmii_to_rgmii_0/gmii_clk_25m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_25m_in]
  connect_bd_net -net gmii_to_rgmii_0_gmii_clk_2_5m_out [get_bd_pins gmii_to_rgmii_0/gmii_clk_2_5m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_2_5m_in]
  connect_bd_net -net gmii_to_rgmii_0_gmii_rx_clk [get_bd_ports gmii_0_rx_clk] [get_bd_pins axis_data_fifo_1/s_axis_aclk] [get_bd_pins gmii_to_rgmii_0/gmii_rx_clk]
  connect_bd_net -net gmii_to_rgmii_0_gmii_rx_dv [get_bd_pins axis_data_fifo_1/s_axis_tvalid] [get_bd_pins gmii_to_rgmii_0/gmii_rx_dv]
  connect_bd_net -net gmii_to_rgmii_0_gmii_rx_er [get_bd_ports gmii_0_rx_er] [get_bd_pins gmii_to_rgmii_0/gmii_rx_er]
  connect_bd_net -net gmii_to_rgmii_0_gmii_rxd [get_bd_pins axis_data_fifo_1/s_axis_tdata] [get_bd_pins gmii_to_rgmii_0/gmii_rxd]
  connect_bd_net -net gmii_to_rgmii_0_gmii_tx_clk [get_bd_ports gmii_0_tx_clk] [get_bd_pins axis_data_fifo_0/m_axis_aclk] [get_bd_pins axis_subset_converter_0/aclk] [get_bd_pins gmii_to_rgmii_0/gmii_tx_clk]
  connect_bd_net -net gmii_to_rgmii_0_link_status [get_bd_pins gmii_to_rgmii_0/link_status] [get_bd_pins link_status_and_gate/Op1]
  connect_bd_net -net gmii_to_rgmii_0_mmcm_locked_out [get_bd_pins gmii_to_rgmii_0/mmcm_locked_out] [get_bd_pins gmii_to_rgmii_1/mmcm_locked_in]
  connect_bd_net -net gmii_to_rgmii_0_ref_clk_out [get_bd_pins axis_data_fifo_2/m_axis_aclk] [get_bd_pins axis_data_fifo_3/s_axis_aclk] [get_bd_pins axis_subset_converter_2/aclk] [get_bd_pins gmii_to_rgmii_0/ref_clk_out] [get_bd_pins gmii_to_rgmii_1/ref_clk_in]
  connect_bd_net -net gmii_to_rgmii_1_gmii_rx_clk [get_bd_ports gmii_1_rx_clk] [get_bd_pins axis_data_fifo_2/s_axis_aclk] [get_bd_pins gmii_to_rgmii_1/gmii_rx_clk]
  connect_bd_net -net gmii_to_rgmii_1_gmii_rx_dv [get_bd_pins axis_data_fifo_2/s_axis_tvalid] [get_bd_pins gmii_to_rgmii_1/gmii_rx_dv]
  connect_bd_net -net gmii_to_rgmii_1_gmii_rxd [get_bd_pins axis_data_fifo_2/s_axis_tdata] [get_bd_pins gmii_to_rgmii_1/gmii_rxd]
  connect_bd_net -net gmii_to_rgmii_1_gmii_tx_clk [get_bd_ports gmii_1_tx_clk] [get_bd_pins axis_data_fifo_3/m_axis_aclk] [get_bd_pins axis_subset_converter_3/aclk] [get_bd_pins gmii_to_rgmii_1/gmii_tx_clk]
  connect_bd_net -net gmii_to_rgmii_1_link_status [get_bd_pins gmii_to_rgmii_1/link_status] [get_bd_pins link_status_and_gate/Op2]
  connect_bd_net -net gmii_to_rgmii_1_mdio_gem_i [get_bd_ports mdio_gem_i] [get_bd_pins gmii_to_rgmii_1/mdio_gem_i]
  connect_bd_net -net gmii_tx_er_1 [get_bd_ports gmii_0_tx_er] [get_bd_pins gmii_to_rgmii_0/gmii_tx_er]
  connect_bd_net -net mdio_gem_mdc_1 [get_bd_ports mdio_gem_mdc] [get_bd_pins gmii_to_rgmii_1/mdio_gem_mdc]
  connect_bd_net -net mdio_gem_o_1 [get_bd_ports mdio_gem_o] [get_bd_pins gmii_to_rgmii_1/mdio_gem_o]
  connect_bd_net -net mdio_gem_t_1 [get_bd_ports mdio_gem_t] [get_bd_pins gmii_to_rgmii_1/mdio_gem_t]
  connect_bd_net -net rx_reset_1 [get_bd_ports rx_reset] [get_bd_pins gmii_to_rgmii_0/rx_reset] [get_bd_pins gmii_to_rgmii_1/rx_reset] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net tx_reset_1 [get_bd_ports tx_reset] [get_bd_pins gmii_to_rgmii_0/tx_reset] [get_bd_pins gmii_to_rgmii_1/tx_reset] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_ports link_status_AND] [get_bd_pins link_status_and_gate/Res]
  connect_bd_net -net util_vector_logic_0_Res1 [get_bd_pins axis_data_fifo_0/m_axis_aresetn] [get_bd_pins axis_data_fifo_0/s_axis_aresetn] [get_bd_pins axis_data_fifo_3/m_axis_aresetn] [get_bd_pins axis_data_fifo_3/s_axis_aresetn] [get_bd_pins axis_subset_converter_0/aresetn] [get_bd_pins axis_subset_converter_3/aresetn] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins axis_data_fifo_1/m_axis_aresetn] [get_bd_pins axis_data_fifo_1/s_axis_aresetn] [get_bd_pins axis_data_fifo_2/m_axis_aresetn] [get_bd_pins axis_data_fifo_2/s_axis_aresetn] [get_bd_pins axis_subset_converter_1/aresetn] [get_bd_pins axis_subset_converter_2/aresetn] [get_bd_pins util_vector_logic_1/Res]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port gmii_0_tx_er -pg 1 -y 500 -defaultsOSRD
preplace port gmii_0_tx_clk -pg 1 -y 460 -defaultsOSRD
preplace port clkin -pg 1 -y 70 -defaultsOSRD
preplace port gmii_1_rx_clk -pg 1 -y 1100 -defaultsOSRD
preplace port gmii_1_tx_clk -pg 1 -y 1180 -defaultsOSRD
preplace port tx_reset -pg 1 -y 870 -defaultsOSRD
preplace port rx_reset -pg 1 -y 890 -defaultsOSRD
preplace port S_AXIS_GMII1_TX -pg 1 -y 920 -defaultsOSRD
preplace port gmii_0_rx_er -pg 1 -y 420 -defaultsOSRD
preplace port mdio_gem_o -pg 1 -y 790 -defaultsOSRD
preplace port S_AXIS_GMII0_TX -pg 1 -y 20 -defaultsOSRD
preplace port mdio_gem_mdc -pg 1 -y 750 -defaultsOSRD
preplace port M_AXIS_GMII0_RX -pg 1 -y -10 -defaultsOSRD -left
preplace port M_AXIS_GMII1_RX -pg 1 -y 780 -defaultsOSRD
preplace port mdio_gem_t -pg 1 -y 810 -defaultsOSRD
preplace port RGMII_0 -pg 1 -y 300 -defaultsOSRD
preplace port RGMII_1 -pg 1 -y 820 -defaultsOSRD
preplace port gmii_0_rx_clk -pg 1 -y 380 -defaultsOSRD
preplace port mdio_gem_i -pg 1 -y 670 -defaultsOSRD
preplace portBus link_status_AND -pg 1 -y 550 -defaultsOSRD
preplace inst axis_data_fifo_1 -pg 1 -lvl 3 -y 230 -defaultsOSRD -orient R180
preplace inst axis_data_fifo_2 -pg 1 -lvl 3 -y 840 -defaultsOSRD -orient R180
preplace inst axis_data_fifo_3 -pg 1 -lvl 2 -y 1000 -defaultsOSRD
preplace inst util_vector_logic_0 -pg 1 -lvl 1 -y 620 -defaultsOSRD
preplace inst util_vector_logic_1 -pg 1 -lvl 1 -y 320 -defaultsOSRD
preplace inst axis_subset_converter_0 -pg 1 -lvl 3 -y 470 -defaultsOSRD
preplace inst axis_subset_converter_1 -pg 1 -lvl 2 -y 240 -defaultsOSRD -orient R180
preplace inst axis_subset_converter_2 -pg 1 -lvl 2 -y 800 -defaultsOSRD -orient R180
preplace inst link_status_and_gate -pg 1 -lvl 5 -y 550 -defaultsOSRD
preplace inst axis_subset_converter_3 -pg 1 -lvl 3 -y 1100 -defaultsOSRD
preplace inst gmii_to_rgmii_0 -pg 1 -lvl 4 -y 440 -defaultsOSRD
preplace inst gmii_to_rgmii_1 -pg 1 -lvl 4 -y 1160 -defaultsOSRD
preplace inst axis_data_fifo_0 -pg 1 -lvl 2 -y 430 -defaultsOSRD
preplace netloc axis_subset_converter_1_M_AXIS 1 0 2 NJ -10 NJ
preplace netloc axis_subset_converter_3_m_axis_tvalid 1 3 1 2030
preplace netloc gmii_to_rgmii_1_gmii_tx_clk 1 1 5 910 1130 1560 1200 2020 1440 NJ 1180 NJ
preplace netloc gmii_to_rgmii_0_gmii_clk_125m_out 1 3 2 NJ 700 2530
preplace netloc mdio_gem_o_1 1 0 4 NJ 790 NJ 890 NJ 990 2090
preplace netloc mdio_gem_mdc_1 1 0 4 NJ 750 NJ 880 NJ 960 N
preplace netloc gmii_to_rgmii_0_gmii_clk_2_5m_out 1 3 2 NJ 690 2510
preplace netloc gmii_to_rgmii_1_gmii_rx_dv 1 3 1 2070
preplace netloc tx_reset_1 1 0 4 NJ 680 NJ 680 NJ 680 NJ
preplace netloc gmii_to_rgmii_0_gmii_rx_clk 1 3 3 2160 220 NJ 220 2860
preplace netloc gmii_to_rgmii_0_gmii_rxd 1 3 1 2150
preplace netloc clkin_1 1 0 4 NJ 70 NJ 90 NJ 90 2130
preplace netloc gmii_to_rgmii_0_ref_clk_out 1 1 4 880 1110 1550 970 NJ 770 2550
preplace netloc axis_subset_converter_0_m_axis_tdata 1 3 1 2030
preplace netloc util_vector_logic_0_Res 1 5 1 NJ
preplace netloc gmii_to_rgmii_0_mmcm_locked_out 1 3 2 NJ 710 2540
preplace netloc axis_subset_converter_3_m_axis_tdata 1 3 1 2040
preplace netloc gmii_to_rgmii_0_RGMII 1 4 2 NJ 300 NJ
preplace netloc mdio_gem_t_1 1 0 4 NJ 810 NJ 1120 NJ 1000 2060
preplace netloc gmii_to_rgmii_1_RGMII 1 4 2 NJ 820 NJ
preplace netloc gmii_to_rgmii_0_gmii_rx_dv 1 3 1 2140
preplace netloc gmii_to_rgmii_1_MDIO_PHY 1 3 2 2170 230 2560
preplace netloc axis_subset_converter_0_m_axis_tvalid 1 3 1 2040
preplace netloc gmii_to_rgmii_1_link_status 1 4 1 NJ
preplace netloc gmii_to_rgmii_0_link_status 1 4 1 N
preplace netloc S_AXIS_1 1 0 2 NJ 20 NJ
preplace netloc rx_reset_1 1 0 4 NJ 670 NJ 670 NJ 670 NJ
preplace netloc gmii_to_rgmii_0_gmii_clk_25m_out 1 3 2 NJ 680 2520
preplace netloc S_AXIS_2 1 0 2 NJ 920 NJ
preplace netloc axis_data_fifo_1_M_AXIS 1 2 1 N
preplace netloc axis_data_fifo_0_M_AXIS 1 2 1 1590
preplace netloc gmii_tx_er_1 1 0 4 NJ 500 NJ 520 NJ 350 NJ
preplace netloc util_vector_logic_1_Res 1 1 3 N 320 NJ 110 2020
preplace netloc axis_data_fifo_2_M_AXIS 1 2 1 1580
preplace netloc axis_subset_converter_2_M_AXIS 1 1 5 910 720 NJ 720 NJ 720 NJ 720 NJ
preplace netloc axis_data_fifo_3_M_AXIS 1 2 1 1540
preplace netloc gmii_to_rgmii_1_gmii_rxd 1 3 1 2080
preplace netloc util_vector_logic_0_Res1 1 1 2 890 540 1590
preplace netloc gmii_to_rgmii_1_mdio_gem_i 1 3 3 NJ 670 NJ 670 NJ
preplace netloc gmii_to_rgmii_1_gmii_rx_clk 1 3 3 2050 1430 NJ 1100 NJ
preplace netloc gmii_to_rgmii_0_gmii_rx_er 1 3 3 2170 650 NJ 420 NJ
preplace netloc gmii_to_rgmii_0_gmii_tx_clk 1 1 5 910 530 1580 370 NJ 660 NJ 460 NJ
levelinfo -pg 1 -10 740 1370 1820 2360 2740 2880 -top -30 -bot 1460
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


