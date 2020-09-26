transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/FPGA/Project/e_my_coffee_maker_FSM.vhd}
vcom -93 -work work {C:/FPGA/Project/e_modulo_counter.vhd}
vcom -93 -work work {C:/FPGA/Project/e_add_two_numbers.vhd}
vcom -93 -work work {C:/FPGA/Project/e_ram32x4.vhd}
vcom -93 -work work {C:/FPGA/Project/e_fsmdisplay.vhd}
vcom -93 -work work {C:/FPGA/Project/e_lmp_count.vhd}
vcom -93 -work work {C:/FPGA/Project/e_hex7seg.vhd}

