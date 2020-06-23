onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+blk_mem_gen_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.blk_mem_gen_0

do {wave.do}

view wave
view structure

do {blk_mem_gen_0.udo}

run -all

endsim

quit -force
