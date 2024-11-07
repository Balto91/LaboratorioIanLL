onerror {quit -f}
vlib work
vlog -work work ParteF.vo
vlog -work work ParteF.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Divisor_vlg_vec_tst
vcd file -direction ParteF.msim.vcd
vcd add -internal Divisor_vlg_vec_tst/*
vcd add -internal Divisor_vlg_vec_tst/i1/*
add wave /*
run -all
