vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/gmii_to_rgmii_v4_0_3

vmap xil_defaultlib riviera/xil_defaultlib
vmap gmii_to_rgmii_v4_0_3 riviera/gmii_to_rgmii_v4_0_3

vcom -work xil_defaultlib -93 \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_clocking.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_resets.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_support.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_reset_sync.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_block.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/gmii_to_rgmii_0_resets.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/gmii_to_rgmii_0_support.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/gmii_to_rgmii_0/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_0_3 -93 \
"../../../ipstatic/gmii_to_rgmii_v4_0_3/hdl/gmii_to_rgmii_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0.vhd" \

