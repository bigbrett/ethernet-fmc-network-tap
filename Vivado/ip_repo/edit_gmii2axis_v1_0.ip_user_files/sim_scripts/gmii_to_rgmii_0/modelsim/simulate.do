onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L secureip -L xil_defaultlib -L gmii_to_rgmii_v4_0_3 -lib xil_defaultlib xil_defaultlib.gmii_to_rgmii_0

do {wave.do}

view wave
view structure
view signals

do {gmii_to_rgmii_0.udo}

run -all

quit -force
