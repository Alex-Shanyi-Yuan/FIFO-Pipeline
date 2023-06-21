onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_w256_1024_r64_4096_ib_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {fifo_w256_1024_r64_4096_ib.udo}

run -all

quit -force
