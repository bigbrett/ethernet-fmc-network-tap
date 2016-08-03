
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
  set GMII_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:gmii_rtl:1.0 GMII_0 ]
  set GMII_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:gmii_rtl:1.0 GMII_1 ]
  set RGMII_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 RGMII_0 ]
  set RGMII_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:rgmii_rtl:1.0 RGMII_1 ]

  # Create ports
  set clkin [ create_bd_port -dir I -type clk clkin ]
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

  # Create interface connections
  connect_bd_intf_net -intf_net GMII_1 [get_bd_intf_ports GMII_0] [get_bd_intf_pins gmii_to_rgmii_0/GMII]
  connect_bd_intf_net -intf_net GMII_2 [get_bd_intf_ports GMII_1] [get_bd_intf_pins gmii_to_rgmii_1/GMII]
  connect_bd_intf_net -intf_net gmii_to_rgmii_0_RGMII [get_bd_intf_ports RGMII_0] [get_bd_intf_pins gmii_to_rgmii_0/RGMII]
  connect_bd_intf_net -intf_net gmii_to_rgmii_1_MDIO_PHY [get_bd_intf_pins gmii_to_rgmii_0/MDIO_GEM] [get_bd_intf_pins gmii_to_rgmii_1/MDIO_PHY]
  connect_bd_intf_net -intf_net gmii_to_rgmii_1_RGMII [get_bd_intf_ports RGMII_1] [get_bd_intf_pins gmii_to_rgmii_1/RGMII]

  # Create port connections
  connect_bd_net -net clkin_1 [get_bd_ports clkin] [get_bd_pins gmii_to_rgmii_0/clkin]
  connect_bd_net -net gmii_to_rgmii_0_gmii_clk_125m_out [get_bd_pins gmii_to_rgmii_0/gmii_clk_125m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_125m_in]
  connect_bd_net -net gmii_to_rgmii_0_gmii_clk_25m_out [get_bd_pins gmii_to_rgmii_0/gmii_clk_25m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_25m_in]
  connect_bd_net -net gmii_to_rgmii_0_gmii_clk_2_5m_out [get_bd_pins gmii_to_rgmii_0/gmii_clk_2_5m_out] [get_bd_pins gmii_to_rgmii_1/gmii_clk_2_5m_in]
  connect_bd_net -net gmii_to_rgmii_0_link_status [get_bd_pins gmii_to_rgmii_0/link_status] [get_bd_pins link_status_and_gate/Op1]
  connect_bd_net -net gmii_to_rgmii_0_mmcm_locked_out [get_bd_pins gmii_to_rgmii_0/mmcm_locked_out] [get_bd_pins gmii_to_rgmii_1/mmcm_locked_in]
  connect_bd_net -net gmii_to_rgmii_0_ref_clk_out [get_bd_pins gmii_to_rgmii_0/ref_clk_out] [get_bd_pins gmii_to_rgmii_1/ref_clk_in]
  connect_bd_net -net gmii_to_rgmii_1_link_status [get_bd_pins gmii_to_rgmii_1/link_status] [get_bd_pins link_status_and_gate/Op2]
  connect_bd_net -net gmii_to_rgmii_1_mdio_gem_i [get_bd_ports mdio_gem_i] [get_bd_pins gmii_to_rgmii_1/mdio_gem_i]
  connect_bd_net -net mdio_gem_mdc_1 [get_bd_ports mdio_gem_mdc] [get_bd_pins gmii_to_rgmii_1/mdio_gem_mdc]
  connect_bd_net -net mdio_gem_o_1 [get_bd_ports mdio_gem_o] [get_bd_pins gmii_to_rgmii_1/mdio_gem_o]
  connect_bd_net -net mdio_gem_t_1 [get_bd_ports mdio_gem_t] [get_bd_pins gmii_to_rgmii_1/mdio_gem_t]
  connect_bd_net -net rx_reset_1 [get_bd_ports rx_reset] [get_bd_pins gmii_to_rgmii_0/rx_reset] [get_bd_pins gmii_to_rgmii_1/rx_reset]
  connect_bd_net -net tx_reset_1 [get_bd_ports tx_reset] [get_bd_pins gmii_to_rgmii_0/tx_reset] [get_bd_pins gmii_to_rgmii_1/tx_reset]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_ports link_status_AND] [get_bd_pins link_status_and_gate/Res]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.12  2016-01-29 bk=1.3547 VDI=39 GEI=35 GUI=JA:1.6
#  -string -flagsOSRD
preplace port clkin -pg 1 -y -120 -defaultsOSRD
preplace port tx_reset -pg 1 -y -180 -defaultsOSRD
preplace port rx_reset -pg 1 -y -140 -defaultsOSRD
preplace port mdio_gem_o -pg 1 -y 130 -defaultsOSRD
preplace port GMII_0 -pg 1 -y -200 -defaultsOSRD
preplace port mdio_gem_mdc -pg 1 -y 90 -defaultsOSRD
preplace port GMII_1 -pg 1 -y 60 -defaultsOSRD
preplace port mdio_gem_t -pg 1 -y 150 -defaultsOSRD
preplace port RGMII_0 -pg 1 -y -240 -defaultsOSRD
preplace port RGMII_1 -pg 1 -y 130 -defaultsOSRD
preplace port mdio_gem_i -pg 1 -y 110 -defaultsOSRD
preplace portBus link_status_AND -pg 1 -y 20 -defaultsOSRD
preplace inst link_status_and_gate -pg 1 -lvl 2 -y 20 -defaultsOSRD
preplace inst gmii_to_rgmii_0 -pg 1 -lvl 1 -y -170 -defaultsOSRD
preplace inst gmii_to_rgmii_1 -pg 1 -lvl 1 -y 190 -defaultsOSRD
preplace netloc gmii_to_rgmii_0_gmii_clk_125m_out 1 0 2 -30 -10 510
preplace netloc mdio_gem_o_1 1 0 1 NJ
preplace netloc mdio_gem_mdc_1 1 0 1 NJ
preplace netloc gmii_to_rgmii_0_gmii_clk_2_5m_out 1 0 2 -40 -20 500
preplace netloc tx_reset_1 1 0 1 NJ
preplace netloc clkin_1 1 0 1 -40
preplace netloc gmii_to_rgmii_0_ref_clk_out 1 0 2 0 10 550
preplace netloc util_vector_logic_0_Res 1 2 1 N
preplace netloc gmii_to_rgmii_0_mmcm_locked_out 1 0 2 -10 0 520
preplace netloc gmii_to_rgmii_0_RGMII 1 1 2 N -250 880
preplace netloc GMII_1 1 0 1 -60
preplace netloc mdio_gem_t_1 1 0 1 NJ
preplace netloc gmii_to_rgmii_1_RGMII 1 1 2 550 130 N
preplace netloc GMII_2 1 0 1 -70
preplace netloc gmii_to_rgmii_1_MDIO_PHY 1 0 2 -20 20 500
preplace netloc gmii_to_rgmii_1_link_status 1 1 1 540
preplace netloc gmii_to_rgmii_0_link_status 1 1 1 560
preplace netloc rx_reset_1 1 0 1 NJ
preplace netloc gmii_to_rgmii_0_gmii_clk_25m_out 1 0 2 0 360 530
preplace netloc gmii_to_rgmii_1_mdio_gem_i 1 0 3 -20 370 NJ 110 NJ
levelinfo -pg 1 -90 350 760 900 -top -320 -bot 380
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


