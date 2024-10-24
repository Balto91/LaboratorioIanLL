transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Yo/Documents/Lab Ian/LaboratorioIanLL/ParteA buena/combinacional.vhd}

vcom -93 -work work {C:/Users/Yo/Documents/Lab Ian/LaboratorioIanLL/ParteA buena/TestbenchA2.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  TestbenchA2

add wave *
view structure
view signals
run 10 ms
