onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+fifo_w32_1024_r256_128 -L xpm -L fifo_generator_v13_2_7 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.fifo_w32_1024_r256_128 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {fifo_w32_1024_r256_128.udo}

run -all

endsim

quit -force
