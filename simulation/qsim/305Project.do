onerror {quit -f}
vlib work
vlog -work work 305Project.vo
vlog -work work 305Project.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.four_bit_lfsr_vlg_vec_tst
vcd file -direction 305Project.msim.vcd
vcd add -internal four_bit_lfsr_vlg_vec_tst/*
vcd add -internal four_bit_lfsr_vlg_vec_tst/i1/*
add wave /*
run -all
