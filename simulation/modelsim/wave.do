onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/CLOCK_50
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/HEX0
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/HEX1
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/HEX2
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/HEX3
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/HEX4
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/HEX5
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/KEY
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/LEDR
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/SW
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_A
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_C
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_E
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_F
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_H
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_O
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_P
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_R
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_S
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_U
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_blank
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/c_dash
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/k3
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/k6
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/n3
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/n6
add wave -noupdate -divider {Select Money}
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_Clock_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_1_Euro
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_2_Euro
add wave -noupdate -divider {Select Coffee}
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_cappuccino_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_coffee_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_hot_chocolate_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_espresso_int
add wave -noupdate -divider {New Divider}
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/coffee_maker_state
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_done3_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_done6_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_fsm_done_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_fsm_ready_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_reset3n_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_reset6n_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/sl_resetn_int
add wave -noupdate /e_my_coffee_maker_fsm_vhd_tst/i1/slv_selection_int
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 370
configure wave -valuecolwidth 39
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {5729984 ps}
