onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib gmii_to_rgmii_0_opt

do {wave.do}

view wave
view structure
view signals

do {gmii_to_rgmii_0.udo}

run -all

quit -force
