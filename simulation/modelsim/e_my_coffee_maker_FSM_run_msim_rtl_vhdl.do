transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/eredj/Downloads/Exercise_Sheet_07_Task_05-20200724/e_my_coffee_maker_FSM.vhd}
vcom -93 -work work {C:/Users/eredj/Downloads/Exercise_Sheet_07_Task_05-20200724/e_modulo_counter.vhd}
vcom -93 -work work {C:/Users/eredj/Downloads/Exercise_Sheet_07_Task_05-20200724/e_ram32x4.vhd}
vcom -93 -work work {C:/Users/eredj/Downloads/Exercise_Sheet_07_Task_05-20200724/e_add_two_numbers.vhd}
vcom -93 -work work {C:/Users/eredj/Downloads/Exercise_Sheet_07_Task_05-20200724/e_lmp_count.vhd}
vcom -93 -work work {C:/Users/eredj/Downloads/Exercise_Sheet_07_Task_05-20200724/e_hex7seg.vhd}

