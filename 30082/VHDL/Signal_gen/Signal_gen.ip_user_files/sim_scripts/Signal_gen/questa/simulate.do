onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib sinusLUT_opt

do {wave.do}

view wave
view structure
view signals

do {sinusLUT.udo}

run -all

quit -force
