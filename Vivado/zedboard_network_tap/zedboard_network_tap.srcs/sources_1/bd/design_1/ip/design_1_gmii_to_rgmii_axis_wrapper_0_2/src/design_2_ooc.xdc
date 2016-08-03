################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name clkin -period 5 [get_ports clkin]
create_clock -name RGMII_0_rxc -period 10 [get_ports RGMII_0_rxc]
create_clock -name RGMII_1_rxc -period 10 [get_ports RGMII_1_rxc]

################################################################################