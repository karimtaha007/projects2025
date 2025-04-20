onerror {exit -code 1}
vlib work
vlog -work work orga_assgiment_Q2_v1.vo
vlog -work work logic_circuit.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.logic_circuit_vlg_vec_tst -voptargs="+acc"
vcd file -direction orga_assgiment_Q2_v1.msim.vcd
vcd add -internal logic_circuit_vlg_vec_tst/*
vcd add -internal logic_circuit_vlg_vec_tst/i1/*
run -all
quit -f
