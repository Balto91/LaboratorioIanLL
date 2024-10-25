transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Documents/facultad/LaboratorioIanLL/ParteB/FFD.vhd}
vcom -93 -work work {D:/Documents/facultad/LaboratorioIanLL/ParteB/Restador.vhd}

vcom -93 -work work {D:/Documents/facultad/LaboratorioIanLL/ParteB/testbenchB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  testbenchB

add wave *
view structure
view signals
run -all
