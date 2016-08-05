onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+gmii_to_rgmii_0 -L secureip -L xil_defaultlib -L gmii_to_rgmii_v4_0_3 -O5 xil_defaultlib.gmii_to_rgmii_0

do {wave.do}

view wave
view structure
view signals

do {gmii_to_rgmii_0.udo}

run -all

endsim

quit -force
