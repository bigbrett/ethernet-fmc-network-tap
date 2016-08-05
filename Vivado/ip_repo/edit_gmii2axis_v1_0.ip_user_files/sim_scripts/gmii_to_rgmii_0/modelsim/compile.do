vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/gmii_to_rgmii_v4_0_3

vmap xil_defaultlib msim/xil_defaultlib
vmap gmii_to_rgmii_v4_0_3 msim/gmii_to_rgmii_v4_0_3

vcom -work xil_defaultlib -64 -93 \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_clocking.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_resets.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_support.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_reset_sync.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0_block.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/gmii_to_rgmii_0_resets.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/gmii_to_rgmii_0_support.vhd" \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/gmii_to_rgmii_0/simulation/demo_tb.vhd" \

vcom -work gmii_to_rgmii_v4_0_3 -64 -93 \
"../../../ipstatic/gmii_to_rgmii_v4_0_3/hdl/gmii_to_rgmii_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../../gmii2axis_1.0/src/gmii_to_rgmii_0/synth/gmii_to_rgmii_0.vhd" \

