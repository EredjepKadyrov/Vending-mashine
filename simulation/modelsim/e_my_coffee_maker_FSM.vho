-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "07/27/2020 21:16:08"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	e_my_coffee_maker_FSM IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(0 TO 6);
	HEX1 : BUFFER std_logic_vector(0 TO 6);
	HEX2 : BUFFER std_logic_vector(0 TO 6);
	HEX3 : BUFFER std_logic_vector(0 TO 6);
	HEX4 : BUFFER std_logic_vector(0 TO 6);
	HEX5 : BUFFER std_logic_vector(0 TO 6)
	);
END e_my_coffee_maker_FSM;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_AJ1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AG2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AJ2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AK3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AK2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AG5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF e_my_coffee_maker_FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX1 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX2 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX3 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX4 : std_logic_vector(0 TO 6);
SIGNAL ww_HEX5 : std_logic_vector(0 TO 6);
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \I_count6|Add0~69_sumout\ : std_logic;
SIGNAL \I_count3|Add0~5_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[8]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~38\ : std_logic;
SIGNAL \I_count3|Add0~1_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[27]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~2\ : std_logic;
SIGNAL \I_count3|Add0~109_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[9]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~110\ : std_logic;
SIGNAL \I_count3|Add0~57_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~58\ : std_logic;
SIGNAL \I_count3|Add0~53_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~54\ : std_logic;
SIGNAL \I_count3|Add0~49_sumout\ : std_logic;
SIGNAL \I_count3|Add0~50\ : std_logic;
SIGNAL \I_count3|Add0~45_sumout\ : std_logic;
SIGNAL \I_count3|Add0~46\ : std_logic;
SIGNAL \I_count3|Add0~41_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[14]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~42\ : std_logic;
SIGNAL \I_count3|Add0~105_sumout\ : std_logic;
SIGNAL \I_count3|Add0~106\ : std_logic;
SIGNAL \I_count3|Add0~101_sumout\ : std_logic;
SIGNAL \I_count3|Add0~102\ : std_logic;
SIGNAL \I_count3|Add0~97_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[17]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~98\ : std_logic;
SIGNAL \I_count3|Add0~93_sumout\ : std_logic;
SIGNAL \I_count3|Add0~94\ : std_logic;
SIGNAL \I_count3|Add0~89_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[19]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~90\ : std_logic;
SIGNAL \I_count3|Add0~85_sumout\ : std_logic;
SIGNAL \I_count3|Add0~86\ : std_logic;
SIGNAL \I_count3|Add0~81_sumout\ : std_logic;
SIGNAL \I_count3|Add0~82\ : std_logic;
SIGNAL \I_count3|Add0~77_sumout\ : std_logic;
SIGNAL \I_count3|Add0~78\ : std_logic;
SIGNAL \I_count3|Add0~73_sumout\ : std_logic;
SIGNAL \I_count3|Add0~74\ : std_logic;
SIGNAL \I_count3|Add0~69_sumout\ : std_logic;
SIGNAL \I_count3|Add0~70\ : std_logic;
SIGNAL \I_count3|Add0~65_sumout\ : std_logic;
SIGNAL \I_count3|Add0~66\ : std_logic;
SIGNAL \I_count3|Add0~13_sumout\ : std_logic;
SIGNAL \I_count3|Add0~14\ : std_logic;
SIGNAL \I_count3|Add0~9_sumout\ : std_logic;
SIGNAL \I_count3|Equal0~0_combout\ : std_logic;
SIGNAL \I_count3|Equal0~3_combout\ : std_logic;
SIGNAL \I_count3|Equal0~2_combout\ : std_logic;
SIGNAL \I_count3|u_counter_int[16]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|u_counter_int[15]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Equal0~4_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \sl_hot_chocolate_int~0_combout\ : std_logic;
SIGNAL \sl_hot_chocolate_int~1_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \sl_hot_chocolate_int~q\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \sl_coffee_int~0_combout\ : std_logic;
SIGNAL \sl_coffee_int~1_combout\ : std_logic;
SIGNAL \sl_coffee_int~q\ : std_logic;
SIGNAL \sl_cappuccino_int~0_combout\ : std_logic;
SIGNAL \sl_cappuccino_int~1_combout\ : std_logic;
SIGNAL \sl_cappuccino_int~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \I_count6|Add0~66\ : std_logic;
SIGNAL \I_count6|Add0~113_sumout\ : std_logic;
SIGNAL \I_count6|Add0~114\ : std_logic;
SIGNAL \I_count6|Add0~109_sumout\ : std_logic;
SIGNAL \I_count6|Add0~110\ : std_logic;
SIGNAL \I_count6|Add0~105_sumout\ : std_logic;
SIGNAL \I_count6|Add0~106\ : std_logic;
SIGNAL \I_count6|Add0~101_sumout\ : std_logic;
SIGNAL \I_count6|Add0~102\ : std_logic;
SIGNAL \I_count6|Add0~97_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~98\ : std_logic;
SIGNAL \I_count6|Add0~93_sumout\ : std_logic;
SIGNAL \I_count6|Add0~94\ : std_logic;
SIGNAL \I_count6|Add0~89_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[13]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~90\ : std_logic;
SIGNAL \I_count6|Add0~85_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[14]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~86\ : std_logic;
SIGNAL \I_count6|Add0~81_sumout\ : std_logic;
SIGNAL \I_count6|Add0~82\ : std_logic;
SIGNAL \I_count6|Add0~77_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[16]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~78\ : std_logic;
SIGNAL \I_count6|Add0~73_sumout\ : std_logic;
SIGNAL \I_count6|Add0~74\ : std_logic;
SIGNAL \I_count6|Add0~21_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[18]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~22\ : std_logic;
SIGNAL \I_count6|Add0~17_sumout\ : std_logic;
SIGNAL \I_count6|Add0~18\ : std_logic;
SIGNAL \I_count6|Add0~13_sumout\ : std_logic;
SIGNAL \I_count6|Add0~14\ : std_logic;
SIGNAL \I_count6|Add0~9_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[21]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~10\ : std_logic;
SIGNAL \I_count6|Add0~5_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[22]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~6\ : std_logic;
SIGNAL \I_count6|Add0~45_sumout\ : std_logic;
SIGNAL \I_count6|Add0~46\ : std_logic;
SIGNAL \I_count6|Add0~41_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[24]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~42\ : std_logic;
SIGNAL \I_count6|Add0~37_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[25]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~38\ : std_logic;
SIGNAL \I_count6|Add0~33_sumout\ : std_logic;
SIGNAL \I_count6|Add0~34\ : std_logic;
SIGNAL \I_count6|Add0~29_sumout\ : std_logic;
SIGNAL \I_count6|Add0~30\ : std_logic;
SIGNAL \I_count6|Add0~25_sumout\ : std_logic;
SIGNAL \I_count6|Equal0~1_combout\ : std_logic;
SIGNAL \I_count6|Equal0~0_combout\ : std_logic;
SIGNAL \I_count6|Equal0~3_combout\ : std_logic;
SIGNAL \HEX2~4_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \sl_1_Euro~0_combout\ : std_logic;
SIGNAL \sl_1_Euro~1_combout\ : std_logic;
SIGNAL \sl_1_Euro~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_MENU1~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_GRIND~q\ : std_logic;
SIGNAL \Selector6~6_combout\ : std_logic;
SIGNAL \I_count6|Equal0~4_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~7_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_BREW~q\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_CHOC_POWDER~q\ : std_logic;
SIGNAL \Selector8~4_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_PUMP_WATER~q\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~3_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ : std_logic;
SIGNAL \Selector6~5_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_DONE~q\ : std_logic;
SIGNAL \Selector0~11_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \Selector9~1_combout\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_PUMP_MILK~q\ : std_logic;
SIGNAL \Selector0~8_combout\ : std_logic;
SIGNAL \Selector0~9_combout\ : std_logic;
SIGNAL \Selector0~10_combout\ : std_logic;
SIGNAL \sl_reset3n_int~q\ : std_logic;
SIGNAL \I_count3|Add0~6\ : std_logic;
SIGNAL \I_count3|Add0~61_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[1]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~62\ : std_logic;
SIGNAL \I_count3|Add0~17_sumout\ : std_logic;
SIGNAL \I_count3|Add0~18\ : std_logic;
SIGNAL \I_count3|Add0~21_sumout\ : std_logic;
SIGNAL \I_count3|Add0~22\ : std_logic;
SIGNAL \I_count3|Add0~25_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[4]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~26\ : std_logic;
SIGNAL \I_count3|Add0~29_sumout\ : std_logic;
SIGNAL \I_count3|Add0~30\ : std_logic;
SIGNAL \I_count3|Add0~33_sumout\ : std_logic;
SIGNAL \I_count3|Add0~34\ : std_logic;
SIGNAL \I_count3|Add0~37_sumout\ : std_logic;
SIGNAL \I_count3|Equal0~1_combout\ : std_logic;
SIGNAL \I_count3|Equal0~5_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_IDLE~q\ : std_logic;
SIGNAL \sl_fsm_ready_int~combout\ : std_logic;
SIGNAL \sl_2_Euro~0_combout\ : std_logic;
SIGNAL \sl_2_Euro~1_combout\ : std_logic;
SIGNAL \sl_2_Euro~q\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \coffee_maker_state~23_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \Selector1~7_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~8_combout\ : std_logic;
SIGNAL \sl_reset6n_int~q\ : std_logic;
SIGNAL \I_count6|u_counter_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~70\ : std_logic;
SIGNAL \I_count6|Add0~61_sumout\ : std_logic;
SIGNAL \I_count6|Add0~62\ : std_logic;
SIGNAL \I_count6|Add0~57_sumout\ : std_logic;
SIGNAL \I_count6|Add0~58\ : std_logic;
SIGNAL \I_count6|Add0~53_sumout\ : std_logic;
SIGNAL \I_count6|Add0~54\ : std_logic;
SIGNAL \I_count6|Add0~49_sumout\ : std_logic;
SIGNAL \I_count6|Add0~50\ : std_logic;
SIGNAL \I_count6|Add0~1_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[5]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~2\ : std_logic;
SIGNAL \I_count6|Add0~65_sumout\ : std_logic;
SIGNAL \I_count6|Equal0~2_combout\ : std_logic;
SIGNAL \I_count6|Equal0~5_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_DONE~DUPLICATE_q\ : std_logic;
SIGNAL \sl_fsm_done_int~combout\ : std_logic;
SIGNAL \sl_espresso_int~0_combout\ : std_logic;
SIGNAL \sl_espresso_int~1_combout\ : std_logic;
SIGNAL \sl_espresso_int~q\ : std_logic;
SIGNAL \coffee_maker_state~22_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_MENU2~q\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \LEDR~1_combout\ : std_logic;
SIGNAL \LEDR~2_combout\ : std_logic;
SIGNAL \LEDR~3_combout\ : std_logic;
SIGNAL \LEDR~4_combout\ : std_logic;
SIGNAL \LEDR~5_combout\ : std_logic;
SIGNAL \LEDR~6_combout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\ : std_logic;
SIGNAL \i0_hex7seg|Mux6~0_combout\ : std_logic;
SIGNAL \i0_hex7seg|Mux5~0_combout\ : std_logic;
SIGNAL \i0_hex7seg|Mux4~0_combout\ : std_logic;
SIGNAL \i0_hex7seg|Mux3~0_combout\ : std_logic;
SIGNAL \i0_hex7seg|Mux2~0_combout\ : std_logic;
SIGNAL \i0_hex7seg|Mux1~0_combout\ : std_logic;
SIGNAL \i0_hex7seg|Mux0~0_combout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~sumout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~sumout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6~sumout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita7~sumout\ : std_logic;
SIGNAL \i1_hex7seg|Mux6~0_combout\ : std_logic;
SIGNAL \i1_hex7seg|Mux5~0_combout\ : std_logic;
SIGNAL \i1_hex7seg|Mux4~0_combout\ : std_logic;
SIGNAL \i1_hex7seg|Mux3~0_combout\ : std_logic;
SIGNAL \i1_hex7seg|Mux2~0_combout\ : std_logic;
SIGNAL \i1_hex7seg|Mux1~0_combout\ : std_logic;
SIGNAL \i1_hex7seg|Mux0~0_combout\ : std_logic;
SIGNAL \HEX2~0_combout\ : std_logic;
SIGNAL \HEX5~0_combout\ : std_logic;
SIGNAL \HEX2~1_combout\ : std_logic;
SIGNAL \HEX2~2_combout\ : std_logic;
SIGNAL \HEX2~3_combout\ : std_logic;
SIGNAL \HEX4~0_combout\ : std_logic;
SIGNAL \HEX4~1_combout\ : std_logic;
SIGNAL \HEX4~2_combout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I_count6|u_counter_int\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \I_count3|u_counter_int\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_coffee_maker_state.S_IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_DONE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[13]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[14]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[16]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[0]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[24]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[25]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[18]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[21]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[22]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[5]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[9]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[15]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[16]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[17]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[19]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[1]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[14]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[4]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[27]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_sl_fsm_ready_int~combout\ : std_logic;
SIGNAL \ALT_INV_sl_fsm_done_int~combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~11_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state~23_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector9~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~5_combout\ : std_logic;
SIGNAL \ALT_INV_sl_reset6n_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_2_Euro~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_reset3n_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_1_Euro~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_hot_chocolate_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_espresso_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_cappuccino_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_coffee_int~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector7~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I_count6|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX2~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state~22_combout\ : std_logic;
SIGNAL \ALT_INV_sl_2_Euro~q\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_1_Euro~q\ : std_logic;
SIGNAL \ALT_INV_HEX2~3_combout\ : std_logic;
SIGNAL \ALT_INV_sl_hot_chocolate_int~q\ : std_logic;
SIGNAL \ALT_INV_HEX5~0_combout\ : std_logic;
SIGNAL \ALT_INV_HEX2~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_espresso_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_cappuccino_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_coffee_int~q\ : std_logic;
SIGNAL \i1_hex7seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i0_hex7seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_IDLE~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_DONE~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_BREW~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_GRIND~q\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_MENU2~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_MENU1~q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \I_count3|ALT_INV_u_counter_int\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_coffee_maker_state.S_IDLE~DUPLICATE_q\ <= NOT \coffee_maker_state.S_IDLE~DUPLICATE_q\;
\ALT_INV_coffee_maker_state.S_DONE~DUPLICATE_q\ <= NOT \coffee_maker_state.S_DONE~DUPLICATE_q\;
\ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ <= NOT \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[11]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[11]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[13]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[13]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[14]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[14]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[16]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[16]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[0]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[0]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[24]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[24]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[25]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[25]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[18]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[18]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[21]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[21]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[22]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[22]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[5]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[5]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[9]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[9]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[15]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[15]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[16]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[16]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[17]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[17]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[19]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[19]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[1]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[1]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[10]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[10]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[11]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[11]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[14]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[14]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[4]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[4]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[27]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[27]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[8]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[8]~DUPLICATE_q\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_sl_fsm_ready_int~combout\ <= NOT \sl_fsm_ready_int~combout\;
\ALT_INV_sl_fsm_done_int~combout\ <= NOT \sl_fsm_done_int~combout\;
\ALT_INV_Selector0~11_combout\ <= NOT \Selector0~11_combout\;
\ALT_INV_Selector8~4_combout\ <= NOT \Selector8~4_combout\;
\ALT_INV_Selector6~7_combout\ <= NOT \Selector6~7_combout\;
\ALT_INV_Selector6~6_combout\ <= NOT \Selector6~6_combout\;
\ALT_INV_Selector10~2_combout\ <= NOT \Selector10~2_combout\;
\ALT_INV_Selector10~1_combout\ <= NOT \Selector10~1_combout\;
\ALT_INV_Selector1~7_combout\ <= NOT \Selector1~7_combout\;
\ALT_INV_Selector1~6_combout\ <= NOT \Selector1~6_combout\;
\ALT_INV_Selector1~5_combout\ <= NOT \Selector1~5_combout\;
\ALT_INV_Selector1~4_combout\ <= NOT \Selector1~4_combout\;
\ALT_INV_Selector1~3_combout\ <= NOT \Selector1~3_combout\;
\ALT_INV_Selector1~2_combout\ <= NOT \Selector1~2_combout\;
\ALT_INV_Selector1~1_combout\ <= NOT \Selector1~1_combout\;
\ALT_INV_coffee_maker_state~23_combout\ <= NOT \coffee_maker_state~23_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Selector4~2_combout\ <= NOT \Selector4~2_combout\;
\ALT_INV_Selector0~9_combout\ <= NOT \Selector0~9_combout\;
\ALT_INV_Selector0~8_combout\ <= NOT \Selector0~8_combout\;
\ALT_INV_Selector0~7_combout\ <= NOT \Selector0~7_combout\;
\ALT_INV_Selector9~1_combout\ <= NOT \Selector9~1_combout\;
\ALT_INV_Selector0~6_combout\ <= NOT \Selector0~6_combout\;
\ALT_INV_Selector0~5_combout\ <= NOT \Selector0~5_combout\;
\ALT_INV_Selector0~4_combout\ <= NOT \Selector0~4_combout\;
\ALT_INV_Selector0~3_combout\ <= NOT \Selector0~3_combout\;
\ALT_INV_Selector0~2_combout\ <= NOT \Selector0~2_combout\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Selector6~5_combout\ <= NOT \Selector6~5_combout\;
\ALT_INV_sl_reset6n_int~q\ <= NOT \sl_reset6n_int~q\;
\ALT_INV_sl_2_Euro~0_combout\ <= NOT \sl_2_Euro~0_combout\;
\ALT_INV_sl_reset3n_int~q\ <= NOT \sl_reset3n_int~q\;
\ALT_INV_sl_1_Euro~0_combout\ <= NOT \sl_1_Euro~0_combout\;
\ALT_INV_sl_hot_chocolate_int~0_combout\ <= NOT \sl_hot_chocolate_int~0_combout\;
\ALT_INV_sl_espresso_int~0_combout\ <= NOT \sl_espresso_int~0_combout\;
\ALT_INV_sl_cappuccino_int~0_combout\ <= NOT \sl_cappuccino_int~0_combout\;
\ALT_INV_sl_coffee_int~0_combout\ <= NOT \sl_coffee_int~0_combout\;
\ALT_INV_Selector8~2_combout\ <= NOT \Selector8~2_combout\;
\ALT_INV_Selector8~1_combout\ <= NOT \Selector8~1_combout\;
\ALT_INV_Selector7~0_combout\ <= NOT \Selector7~0_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\ALT_INV_Selector6~3_combout\ <= NOT \Selector6~3_combout\;
\ALT_INV_Selector6~2_combout\ <= NOT \Selector6~2_combout\;
\ALT_INV_Selector6~1_combout\ <= NOT \Selector6~1_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_Selector5~0_combout\ <= NOT \Selector5~0_combout\;
\I_count6|ALT_INV_Equal0~5_combout\ <= NOT \I_count6|Equal0~5_combout\;
\I_count6|ALT_INV_Equal0~4_combout\ <= NOT \I_count6|Equal0~4_combout\;
\I_count6|ALT_INV_Equal0~3_combout\ <= NOT \I_count6|Equal0~3_combout\;
\I_count6|ALT_INV_Equal0~2_combout\ <= NOT \I_count6|Equal0~2_combout\;
\I_count6|ALT_INV_Equal0~1_combout\ <= NOT \I_count6|Equal0~1_combout\;
\I_count6|ALT_INV_Equal0~0_combout\ <= NOT \I_count6|Equal0~0_combout\;
\ALT_INV_HEX2~4_combout\ <= NOT \HEX2~4_combout\;
\ALT_INV_Selector4~0_combout\ <= NOT \Selector4~0_combout\;
\ALT_INV_coffee_maker_state~22_combout\ <= NOT \coffee_maker_state~22_combout\;
\ALT_INV_sl_2_Euro~q\ <= NOT \sl_2_Euro~q\;
\I_count3|ALT_INV_Equal0~5_combout\ <= NOT \I_count3|Equal0~5_combout\;
\I_count3|ALT_INV_Equal0~4_combout\ <= NOT \I_count3|Equal0~4_combout\;
\I_count3|ALT_INV_Equal0~3_combout\ <= NOT \I_count3|Equal0~3_combout\;
\I_count3|ALT_INV_Equal0~2_combout\ <= NOT \I_count3|Equal0~2_combout\;
\I_count3|ALT_INV_Equal0~1_combout\ <= NOT \I_count3|Equal0~1_combout\;
\I_count3|ALT_INV_Equal0~0_combout\ <= NOT \I_count3|Equal0~0_combout\;
\ALT_INV_sl_1_Euro~q\ <= NOT \sl_1_Euro~q\;
\ALT_INV_HEX2~3_combout\ <= NOT \HEX2~3_combout\;
\ALT_INV_sl_hot_chocolate_int~q\ <= NOT \sl_hot_chocolate_int~q\;
\ALT_INV_HEX5~0_combout\ <= NOT \HEX5~0_combout\;
\ALT_INV_HEX2~0_combout\ <= NOT \HEX2~0_combout\;
\ALT_INV_sl_espresso_int~q\ <= NOT \sl_espresso_int~q\;
\ALT_INV_sl_cappuccino_int~q\ <= NOT \sl_cappuccino_int~q\;
\ALT_INV_sl_coffee_int~q\ <= NOT \sl_coffee_int~q\;
\i1_hex7seg|ALT_INV_Mux6~0_combout\ <= NOT \i1_hex7seg|Mux6~0_combout\;
\i0_hex7seg|ALT_INV_Mux6~0_combout\ <= NOT \i0_hex7seg|Mux6~0_combout\;
\ALT_INV_coffee_maker_state.S_IDLE~q\ <= NOT \coffee_maker_state.S_IDLE~q\;
\ALT_INV_coffee_maker_state.S_DONE~q\ <= NOT \coffee_maker_state.S_DONE~q\;
\ALT_INV_coffee_maker_state.S_PUMP_MILK~q\ <= NOT \coffee_maker_state.S_PUMP_MILK~q\;
\ALT_INV_coffee_maker_state.S_PUMP_WATER~q\ <= NOT \coffee_maker_state.S_PUMP_WATER~q\;
\ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\ <= NOT \coffee_maker_state.S_CHOC_POWDER~q\;
\ALT_INV_coffee_maker_state.S_BREW~q\ <= NOT \coffee_maker_state.S_BREW~q\;
\ALT_INV_coffee_maker_state.S_GRIND~q\ <= NOT \coffee_maker_state.S_GRIND~q\;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_coffee_maker_state.S_MENU2~q\ <= NOT \coffee_maker_state.S_MENU2~q\;
\ALT_INV_coffee_maker_state.S_MENU1~q\ <= NOT \coffee_maker_state.S_MENU1~q\;
\I_count6|ALT_INV_u_counter_int\(7) <= NOT \I_count6|u_counter_int\(7);
\I_count6|ALT_INV_u_counter_int\(8) <= NOT \I_count6|u_counter_int\(8);
\I_count6|ALT_INV_u_counter_int\(9) <= NOT \I_count6|u_counter_int\(9);
\I_count6|ALT_INV_u_counter_int\(10) <= NOT \I_count6|u_counter_int\(10);
\I_count6|ALT_INV_u_counter_int\(11) <= NOT \I_count6|u_counter_int\(11);
\I_count6|ALT_INV_u_counter_int\(12) <= NOT \I_count6|u_counter_int\(12);
\I_count6|ALT_INV_u_counter_int\(13) <= NOT \I_count6|u_counter_int\(13);
\I_count6|ALT_INV_u_counter_int\(14) <= NOT \I_count6|u_counter_int\(14);
\I_count6|ALT_INV_u_counter_int\(15) <= NOT \I_count6|u_counter_int\(15);
\I_count6|ALT_INV_u_counter_int\(16) <= NOT \I_count6|u_counter_int\(16);
\I_count6|ALT_INV_u_counter_int\(17) <= NOT \I_count6|u_counter_int\(17);
\I_count6|ALT_INV_u_counter_int\(0) <= NOT \I_count6|u_counter_int\(0);
\I_count6|ALT_INV_u_counter_int\(6) <= NOT \I_count6|u_counter_int\(6);
\I_count6|ALT_INV_u_counter_int\(1) <= NOT \I_count6|u_counter_int\(1);
\I_count6|ALT_INV_u_counter_int\(2) <= NOT \I_count6|u_counter_int\(2);
\I_count6|ALT_INV_u_counter_int\(3) <= NOT \I_count6|u_counter_int\(3);
\I_count6|ALT_INV_u_counter_int\(4) <= NOT \I_count6|u_counter_int\(4);
\I_count6|ALT_INV_u_counter_int\(23) <= NOT \I_count6|u_counter_int\(23);
\I_count6|ALT_INV_u_counter_int\(24) <= NOT \I_count6|u_counter_int\(24);
\I_count6|ALT_INV_u_counter_int\(25) <= NOT \I_count6|u_counter_int\(25);
\I_count6|ALT_INV_u_counter_int\(26) <= NOT \I_count6|u_counter_int\(26);
\I_count6|ALT_INV_u_counter_int\(27) <= NOT \I_count6|u_counter_int\(27);
\I_count6|ALT_INV_u_counter_int\(28) <= NOT \I_count6|u_counter_int\(28);
\I_count6|ALT_INV_u_counter_int\(18) <= NOT \I_count6|u_counter_int\(18);
\I_count6|ALT_INV_u_counter_int\(19) <= NOT \I_count6|u_counter_int\(19);
\I_count6|ALT_INV_u_counter_int\(20) <= NOT \I_count6|u_counter_int\(20);
\I_count6|ALT_INV_u_counter_int\(21) <= NOT \I_count6|u_counter_int\(21);
\I_count6|ALT_INV_u_counter_int\(22) <= NOT \I_count6|u_counter_int\(22);
\I_count6|ALT_INV_u_counter_int\(5) <= NOT \I_count6|u_counter_int\(5);
\I_count3|ALT_INV_u_counter_int\(9) <= NOT \I_count3|u_counter_int\(9);
\I_count3|ALT_INV_u_counter_int\(15) <= NOT \I_count3|u_counter_int\(15);
\I_count3|ALT_INV_u_counter_int\(16) <= NOT \I_count3|u_counter_int\(16);
\I_count3|ALT_INV_u_counter_int\(17) <= NOT \I_count3|u_counter_int\(17);
\I_count3|ALT_INV_u_counter_int\(18) <= NOT \I_count3|u_counter_int\(18);
\I_count3|ALT_INV_u_counter_int\(19) <= NOT \I_count3|u_counter_int\(19);
\I_count3|ALT_INV_u_counter_int\(20) <= NOT \I_count3|u_counter_int\(20);
\I_count3|ALT_INV_u_counter_int\(21) <= NOT \I_count3|u_counter_int\(21);
\I_count3|ALT_INV_u_counter_int\(22) <= NOT \I_count3|u_counter_int\(22);
\I_count3|ALT_INV_u_counter_int\(23) <= NOT \I_count3|u_counter_int\(23);
\I_count3|ALT_INV_u_counter_int\(24) <= NOT \I_count3|u_counter_int\(24);
\I_count3|ALT_INV_u_counter_int\(25) <= NOT \I_count3|u_counter_int\(25);
\I_count3|ALT_INV_u_counter_int\(1) <= NOT \I_count3|u_counter_int\(1);
\I_count3|ALT_INV_u_counter_int\(10) <= NOT \I_count3|u_counter_int\(10);
\I_count3|ALT_INV_u_counter_int\(11) <= NOT \I_count3|u_counter_int\(11);
\I_count3|ALT_INV_u_counter_int\(12) <= NOT \I_count3|u_counter_int\(12);
\I_count3|ALT_INV_u_counter_int\(13) <= NOT \I_count3|u_counter_int\(13);
\I_count3|ALT_INV_u_counter_int\(14) <= NOT \I_count3|u_counter_int\(14);
\I_count3|ALT_INV_u_counter_int\(7) <= NOT \I_count3|u_counter_int\(7);
\I_count3|ALT_INV_u_counter_int\(6) <= NOT \I_count3|u_counter_int\(6);
\I_count3|ALT_INV_u_counter_int\(5) <= NOT \I_count3|u_counter_int\(5);
\I_count3|ALT_INV_u_counter_int\(4) <= NOT \I_count3|u_counter_int\(4);
\I_count3|ALT_INV_u_counter_int\(3) <= NOT \I_count3|u_counter_int\(3);
\I_count3|ALT_INV_u_counter_int\(2) <= NOT \I_count3|u_counter_int\(2);
\I_count3|ALT_INV_u_counter_int\(26) <= NOT \I_count3|u_counter_int\(26);
\I_count3|ALT_INV_u_counter_int\(27) <= NOT \I_count3|u_counter_int\(27);
\I_count3|ALT_INV_u_counter_int\(0) <= NOT \I_count3|u_counter_int\(0);
\I_count3|ALT_INV_u_counter_int\(8) <= NOT \I_count3|u_counter_int\(8);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0);

-- Location: IOOBUF_X12_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X12_Y0_N53
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X14_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y0_N53
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X8_Y0_N36
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X6_Y0_N36
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~3_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X10_Y0_N76
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X16_Y0_N36
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~5_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X12_Y0_N36
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr0~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X14_Y0_N19
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X24_Y0_N19
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0_hex7seg|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X26_Y0_N76
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0_hex7seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X20_Y0_N19
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0_hex7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X24_Y0_N53
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0_hex7seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X24_Y0_N36
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0_hex7seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X24_Y0_N2
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0_hex7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X26_Y0_N42
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i0_hex7seg|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X22_Y0_N19
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i1_hex7seg|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X20_Y0_N2
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i1_hex7seg|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X20_Y0_N53
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i1_hex7seg|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X22_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i1_hex7seg|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X22_Y0_N2
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i1_hex7seg|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X22_Y0_N53
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i1_hex7seg|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X20_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i1_hex7seg|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X18_Y0_N42
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X32_Y0_N19
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X12_Y81_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X18_Y0_N93
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X6_Y0_N53
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X8_Y0_N53
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X30_Y0_N2
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X18_Y0_N76
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X14_Y81_N53
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X24_Y81_N19
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X26_Y0_N59
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X26_Y0_N93
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X6_Y0_N2
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y9_N22
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X6_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y6_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X28_Y0_N19
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X8_Y0_N2
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X32_Y81_N2
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X32_Y0_N53
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X8_Y0_N19
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX4~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X30_Y0_N53
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y13_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y6_N39
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X6_Y81_N2
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X64_Y0_N2
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X16_Y81_N36
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[9]~input_o\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOIBUF_X89_Y25_N21
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X10_Y4_N30
\I_count6|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~69_sumout\ = SUM(( \I_count6|u_counter_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \I_count6|Add0~70\ = CARRY(( \I_count6|u_counter_int[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \I_count6|Add0~69_sumout\,
	cout => \I_count6|Add0~70\);

-- Location: LABCELL_X12_Y4_N30
\I_count3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~5_sumout\ = SUM(( \I_count3|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))
-- \I_count3|Add0~6\ = CARRY(( \I_count3|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(0),
	cin => GND,
	sumout => \I_count3|Add0~5_sumout\,
	cout => \I_count3|Add0~6\);

-- Location: FF_X12_Y4_N56
\I_count3|u_counter_int[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~1_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[8]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N51
\I_count3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~37_sumout\ = SUM(( \I_count3|u_counter_int\(7) ) + ( GND ) + ( \I_count3|Add0~34\ ))
-- \I_count3|Add0~38\ = CARRY(( \I_count3|u_counter_int\(7) ) + ( GND ) + ( \I_count3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(7),
	cin => \I_count3|Add0~34\,
	sumout => \I_count3|Add0~37_sumout\,
	cout => \I_count3|Add0~38\);

-- Location: LABCELL_X12_Y4_N54
\I_count3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~1_sumout\ = SUM(( \I_count3|u_counter_int[8]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~38\ ))
-- \I_count3|Add0~2\ = CARRY(( \I_count3|u_counter_int[8]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int[8]~DUPLICATE_q\,
	cin => \I_count3|Add0~38\,
	sumout => \I_count3|Add0~1_sumout\,
	cout => \I_count3|Add0~2\);

-- Location: FF_X12_Y4_N55
\I_count3|u_counter_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~1_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(8));

-- Location: FF_X12_Y3_N53
\I_count3|u_counter_int[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~9_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[27]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N57
\I_count3|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~109_sumout\ = SUM(( \I_count3|u_counter_int[9]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~2\ ))
-- \I_count3|Add0~110\ = CARRY(( \I_count3|u_counter_int[9]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int[9]~DUPLICATE_q\,
	cin => \I_count3|Add0~2\,
	sumout => \I_count3|Add0~109_sumout\,
	cout => \I_count3|Add0~110\);

-- Location: FF_X12_Y4_N59
\I_count3|u_counter_int[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~109_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[9]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N0
\I_count3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~57_sumout\ = SUM(( \I_count3|u_counter_int[10]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~110\ ))
-- \I_count3|Add0~58\ = CARRY(( \I_count3|u_counter_int[10]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int[10]~DUPLICATE_q\,
	cin => \I_count3|Add0~110\,
	sumout => \I_count3|Add0~57_sumout\,
	cout => \I_count3|Add0~58\);

-- Location: FF_X12_Y3_N2
\I_count3|u_counter_int[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~57_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[10]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N3
\I_count3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~53_sumout\ = SUM(( \I_count3|u_counter_int[11]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~58\ ))
-- \I_count3|Add0~54\ = CARRY(( \I_count3|u_counter_int[11]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int[11]~DUPLICATE_q\,
	cin => \I_count3|Add0~58\,
	sumout => \I_count3|Add0~53_sumout\,
	cout => \I_count3|Add0~54\);

-- Location: FF_X13_Y4_N28
\I_count3|u_counter_int[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \I_count3|Add0~53_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[11]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N6
\I_count3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~49_sumout\ = SUM(( \I_count3|u_counter_int\(12) ) + ( GND ) + ( \I_count3|Add0~54\ ))
-- \I_count3|Add0~50\ = CARRY(( \I_count3|u_counter_int\(12) ) + ( GND ) + ( \I_count3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(12),
	cin => \I_count3|Add0~54\,
	sumout => \I_count3|Add0~49_sumout\,
	cout => \I_count3|Add0~50\);

-- Location: FF_X13_Y4_N8
\I_count3|u_counter_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \I_count3|Add0~49_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(12));

-- Location: LABCELL_X12_Y3_N9
\I_count3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~45_sumout\ = SUM(( \I_count3|u_counter_int\(13) ) + ( GND ) + ( \I_count3|Add0~50\ ))
-- \I_count3|Add0~46\ = CARRY(( \I_count3|u_counter_int\(13) ) + ( GND ) + ( \I_count3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(13),
	cin => \I_count3|Add0~50\,
	sumout => \I_count3|Add0~45_sumout\,
	cout => \I_count3|Add0~46\);

-- Location: FF_X13_Y4_N56
\I_count3|u_counter_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \I_count3|Add0~45_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(13));

-- Location: LABCELL_X12_Y3_N12
\I_count3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~41_sumout\ = SUM(( \I_count3|u_counter_int[14]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~46\ ))
-- \I_count3|Add0~42\ = CARRY(( \I_count3|u_counter_int[14]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int[14]~DUPLICATE_q\,
	cin => \I_count3|Add0~46\,
	sumout => \I_count3|Add0~41_sumout\,
	cout => \I_count3|Add0~42\);

-- Location: FF_X12_Y3_N14
\I_count3|u_counter_int[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~41_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[14]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N15
\I_count3|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~105_sumout\ = SUM(( \I_count3|u_counter_int\(15) ) + ( GND ) + ( \I_count3|Add0~42\ ))
-- \I_count3|Add0~106\ = CARRY(( \I_count3|u_counter_int\(15) ) + ( GND ) + ( \I_count3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(15),
	cin => \I_count3|Add0~42\,
	sumout => \I_count3|Add0~105_sumout\,
	cout => \I_count3|Add0~106\);

-- Location: FF_X12_Y3_N17
\I_count3|u_counter_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~105_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(15));

-- Location: LABCELL_X12_Y3_N18
\I_count3|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~101_sumout\ = SUM(( \I_count3|u_counter_int\(16) ) + ( GND ) + ( \I_count3|Add0~106\ ))
-- \I_count3|Add0~102\ = CARRY(( \I_count3|u_counter_int\(16) ) + ( GND ) + ( \I_count3|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(16),
	cin => \I_count3|Add0~106\,
	sumout => \I_count3|Add0~101_sumout\,
	cout => \I_count3|Add0~102\);

-- Location: FF_X12_Y3_N20
\I_count3|u_counter_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~101_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(16));

-- Location: LABCELL_X12_Y3_N21
\I_count3|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~97_sumout\ = SUM(( \I_count3|u_counter_int[17]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~102\ ))
-- \I_count3|Add0~98\ = CARRY(( \I_count3|u_counter_int[17]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int[17]~DUPLICATE_q\,
	cin => \I_count3|Add0~102\,
	sumout => \I_count3|Add0~97_sumout\,
	cout => \I_count3|Add0~98\);

-- Location: FF_X12_Y3_N22
\I_count3|u_counter_int[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~97_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[17]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N24
\I_count3|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~93_sumout\ = SUM(( \I_count3|u_counter_int\(18) ) + ( GND ) + ( \I_count3|Add0~98\ ))
-- \I_count3|Add0~94\ = CARRY(( \I_count3|u_counter_int\(18) ) + ( GND ) + ( \I_count3|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(18),
	cin => \I_count3|Add0~98\,
	sumout => \I_count3|Add0~93_sumout\,
	cout => \I_count3|Add0~94\);

-- Location: FF_X12_Y3_N26
\I_count3|u_counter_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~93_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(18));

-- Location: LABCELL_X12_Y3_N27
\I_count3|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~89_sumout\ = SUM(( \I_count3|u_counter_int[19]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~94\ ))
-- \I_count3|Add0~90\ = CARRY(( \I_count3|u_counter_int[19]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int[19]~DUPLICATE_q\,
	cin => \I_count3|Add0~94\,
	sumout => \I_count3|Add0~89_sumout\,
	cout => \I_count3|Add0~90\);

-- Location: FF_X12_Y3_N29
\I_count3|u_counter_int[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~89_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[19]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y3_N30
\I_count3|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~85_sumout\ = SUM(( \I_count3|u_counter_int\(20) ) + ( GND ) + ( \I_count3|Add0~90\ ))
-- \I_count3|Add0~86\ = CARRY(( \I_count3|u_counter_int\(20) ) + ( GND ) + ( \I_count3|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(20),
	cin => \I_count3|Add0~90\,
	sumout => \I_count3|Add0~85_sumout\,
	cout => \I_count3|Add0~86\);

-- Location: FF_X12_Y3_N32
\I_count3|u_counter_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~85_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(20));

-- Location: LABCELL_X12_Y3_N33
\I_count3|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~81_sumout\ = SUM(( \I_count3|u_counter_int\(21) ) + ( GND ) + ( \I_count3|Add0~86\ ))
-- \I_count3|Add0~82\ = CARRY(( \I_count3|u_counter_int\(21) ) + ( GND ) + ( \I_count3|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(21),
	cin => \I_count3|Add0~86\,
	sumout => \I_count3|Add0~81_sumout\,
	cout => \I_count3|Add0~82\);

-- Location: FF_X12_Y3_N35
\I_count3|u_counter_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~81_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(21));

-- Location: LABCELL_X12_Y3_N36
\I_count3|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~77_sumout\ = SUM(( \I_count3|u_counter_int\(22) ) + ( GND ) + ( \I_count3|Add0~82\ ))
-- \I_count3|Add0~78\ = CARRY(( \I_count3|u_counter_int\(22) ) + ( GND ) + ( \I_count3|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(22),
	cin => \I_count3|Add0~82\,
	sumout => \I_count3|Add0~77_sumout\,
	cout => \I_count3|Add0~78\);

-- Location: FF_X12_Y3_N38
\I_count3|u_counter_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~77_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(22));

-- Location: LABCELL_X12_Y3_N39
\I_count3|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~73_sumout\ = SUM(( \I_count3|u_counter_int\(23) ) + ( GND ) + ( \I_count3|Add0~78\ ))
-- \I_count3|Add0~74\ = CARRY(( \I_count3|u_counter_int\(23) ) + ( GND ) + ( \I_count3|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(23),
	cin => \I_count3|Add0~78\,
	sumout => \I_count3|Add0~73_sumout\,
	cout => \I_count3|Add0~74\);

-- Location: FF_X12_Y3_N41
\I_count3|u_counter_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~73_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(23));

-- Location: LABCELL_X12_Y3_N42
\I_count3|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~69_sumout\ = SUM(( \I_count3|u_counter_int\(24) ) + ( GND ) + ( \I_count3|Add0~74\ ))
-- \I_count3|Add0~70\ = CARRY(( \I_count3|u_counter_int\(24) ) + ( GND ) + ( \I_count3|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(24),
	cin => \I_count3|Add0~74\,
	sumout => \I_count3|Add0~69_sumout\,
	cout => \I_count3|Add0~70\);

-- Location: FF_X12_Y3_N44
\I_count3|u_counter_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~69_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(24));

-- Location: LABCELL_X12_Y3_N45
\I_count3|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~65_sumout\ = SUM(( \I_count3|u_counter_int\(25) ) + ( GND ) + ( \I_count3|Add0~70\ ))
-- \I_count3|Add0~66\ = CARRY(( \I_count3|u_counter_int\(25) ) + ( GND ) + ( \I_count3|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(25),
	cin => \I_count3|Add0~70\,
	sumout => \I_count3|Add0~65_sumout\,
	cout => \I_count3|Add0~66\);

-- Location: FF_X12_Y3_N47
\I_count3|u_counter_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~65_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(25));

-- Location: LABCELL_X12_Y3_N48
\I_count3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~13_sumout\ = SUM(( \I_count3|u_counter_int\(26) ) + ( GND ) + ( \I_count3|Add0~66\ ))
-- \I_count3|Add0~14\ = CARRY(( \I_count3|u_counter_int\(26) ) + ( GND ) + ( \I_count3|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(26),
	cin => \I_count3|Add0~66\,
	sumout => \I_count3|Add0~13_sumout\,
	cout => \I_count3|Add0~14\);

-- Location: FF_X12_Y3_N50
\I_count3|u_counter_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~13_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(26));

-- Location: LABCELL_X12_Y3_N51
\I_count3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~9_sumout\ = SUM(( \I_count3|u_counter_int[27]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int[27]~DUPLICATE_q\,
	cin => \I_count3|Add0~14\,
	sumout => \I_count3|Add0~9_sumout\);

-- Location: FF_X12_Y3_N52
\I_count3|u_counter_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~9_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(27));

-- Location: LABCELL_X13_Y4_N36
\I_count3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~0_combout\ = ( !\I_count3|u_counter_int\(26) & ( (\I_count3|u_counter_int\(0) & (\I_count3|u_counter_int\(8) & \I_count3|u_counter_int\(27))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(0),
	datac => \I_count3|ALT_INV_u_counter_int\(8),
	datad => \I_count3|ALT_INV_u_counter_int\(27),
	dataf => \I_count3|ALT_INV_u_counter_int\(26),
	combout => \I_count3|Equal0~0_combout\);

-- Location: LABCELL_X12_Y3_N54
\I_count3|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~3_combout\ = ( !\I_count3|u_counter_int\(25) & ( !\I_count3|u_counter_int\(24) & ( (\I_count3|u_counter_int\(22) & (\I_count3|u_counter_int\(20) & (\I_count3|u_counter_int\(21) & \I_count3|u_counter_int\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(22),
	datab => \I_count3|ALT_INV_u_counter_int\(20),
	datac => \I_count3|ALT_INV_u_counter_int\(21),
	datad => \I_count3|ALT_INV_u_counter_int\(23),
	datae => \I_count3|ALT_INV_u_counter_int\(25),
	dataf => \I_count3|ALT_INV_u_counter_int\(24),
	combout => \I_count3|Equal0~3_combout\);

-- Location: FF_X12_Y3_N1
\I_count3|u_counter_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~57_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(10));

-- Location: FF_X12_Y4_N34
\I_count3|u_counter_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~61_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(1));

-- Location: FF_X13_Y4_N29
\I_count3|u_counter_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \I_count3|Add0~53_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(11));

-- Location: FF_X12_Y3_N13
\I_count3|u_counter_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~41_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(14));

-- Location: LABCELL_X13_Y4_N9
\I_count3|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~2_combout\ = ( !\I_count3|u_counter_int\(13) & ( \I_count3|u_counter_int\(14) & ( (!\I_count3|u_counter_int\(10) & (\I_count3|u_counter_int\(12) & (\I_count3|u_counter_int\(1) & !\I_count3|u_counter_int\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(10),
	datab => \I_count3|ALT_INV_u_counter_int\(12),
	datac => \I_count3|ALT_INV_u_counter_int\(1),
	datad => \I_count3|ALT_INV_u_counter_int\(11),
	datae => \I_count3|ALT_INV_u_counter_int\(13),
	dataf => \I_count3|ALT_INV_u_counter_int\(14),
	combout => \I_count3|Equal0~2_combout\);

-- Location: FF_X12_Y3_N19
\I_count3|u_counter_int[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~101_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[16]~DUPLICATE_q\);

-- Location: FF_X12_Y4_N58
\I_count3|u_counter_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~109_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(9));

-- Location: FF_X12_Y3_N16
\I_count3|u_counter_int[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~105_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[15]~DUPLICATE_q\);

-- Location: FF_X12_Y3_N23
\I_count3|u_counter_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~97_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(17));

-- Location: FF_X12_Y3_N28
\I_count3|u_counter_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~89_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(19));

-- Location: LABCELL_X13_Y4_N0
\I_count3|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~4_combout\ = ( !\I_count3|u_counter_int\(19) & ( !\I_count3|u_counter_int\(18) & ( (!\I_count3|u_counter_int[16]~DUPLICATE_q\ & (!\I_count3|u_counter_int\(9) & (\I_count3|u_counter_int[15]~DUPLICATE_q\ & !\I_count3|u_counter_int\(17)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int[16]~DUPLICATE_q\,
	datab => \I_count3|ALT_INV_u_counter_int\(9),
	datac => \I_count3|ALT_INV_u_counter_int[15]~DUPLICATE_q\,
	datad => \I_count3|ALT_INV_u_counter_int\(17),
	datae => \I_count3|ALT_INV_u_counter_int\(19),
	dataf => \I_count3|ALT_INV_u_counter_int\(18),
	combout => \I_count3|Equal0~4_combout\);

-- Location: IOIBUF_X10_Y0_N58
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X11_Y1_N15
\sl_hot_chocolate_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_hot_chocolate_int~0_combout\ = ( !\KEY[3]~input_o\ & ( \KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	datae => \ALT_INV_KEY[3]~input_o\,
	combout => \sl_hot_chocolate_int~0_combout\);

-- Location: LABCELL_X11_Y3_N27
\sl_hot_chocolate_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_hot_chocolate_int~1_combout\ = ( \sl_hot_chocolate_int~q\ & ( \sl_hot_chocolate_int~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) ) # ( !\sl_hot_chocolate_int~q\ & ( \sl_hot_chocolate_int~0_combout\ & ( (!\sl_fsm_done_int~combout\ & 
-- (\sl_fsm_ready_int~combout\ & (\KEY[1]~input_o\ & \KEY[2]~input_o\))) ) ) ) # ( \sl_hot_chocolate_int~q\ & ( !\sl_hot_chocolate_int~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_fsm_done_int~combout\,
	datab => \ALT_INV_sl_fsm_ready_int~combout\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_KEY[2]~input_o\,
	datae => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_sl_hot_chocolate_int~0_combout\,
	combout => \sl_hot_chocolate_int~1_combout\);

-- Location: IOIBUF_X89_Y9_N4
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X11_Y3_N29
sl_hot_chocolate_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_hot_chocolate_int~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_hot_chocolate_int~q\);

-- Location: LABCELL_X12_Y4_N27
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \I_count3|Equal0~4_combout\ & ( \sl_hot_chocolate_int~q\ & ( (\I_count3|Equal0~1_combout\ & (\I_count3|Equal0~0_combout\ & (\I_count3|Equal0~3_combout\ & \I_count3|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~1_combout\,
	datab => \I_count3|ALT_INV_Equal0~0_combout\,
	datac => \I_count3|ALT_INV_Equal0~3_combout\,
	datad => \I_count3|ALT_INV_Equal0~2_combout\,
	datae => \I_count3|ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X11_Y3_N18
\sl_coffee_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_coffee_int~0_combout\ = ( !\KEY[0]~input_o\ & ( \KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \sl_coffee_int~0_combout\);

-- Location: LABCELL_X11_Y3_N24
\sl_coffee_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_coffee_int~1_combout\ = ( \sl_coffee_int~q\ & ( \sl_coffee_int~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) ) # ( !\sl_coffee_int~q\ & ( \sl_coffee_int~0_combout\ & ( (!\sl_fsm_done_int~combout\ & (\sl_fsm_ready_int~combout\ & (\KEY[2]~input_o\ & 
-- \KEY[1]~input_o\))) ) ) ) # ( \sl_coffee_int~q\ & ( !\sl_coffee_int~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_fsm_done_int~combout\,
	datab => \ALT_INV_sl_fsm_ready_int~combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \ALT_INV_KEY[1]~input_o\,
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_sl_coffee_int~0_combout\,
	combout => \sl_coffee_int~1_combout\);

-- Location: FF_X11_Y3_N26
sl_coffee_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_coffee_int~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_coffee_int~q\);

-- Location: LABCELL_X11_Y1_N3
\sl_cappuccino_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_cappuccino_int~0_combout\ = ( !\KEY[1]~input_o\ & ( \KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \sl_cappuccino_int~0_combout\);

-- Location: LABCELL_X11_Y3_N30
\sl_cappuccino_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_cappuccino_int~1_combout\ = ( \sl_cappuccino_int~q\ & ( \sl_cappuccino_int~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) ) # ( !\sl_cappuccino_int~q\ & ( \sl_cappuccino_int~0_combout\ & ( (\KEY[3]~input_o\ & (!\sl_fsm_done_int~combout\ & 
-- (\KEY[0]~input_o\ & \sl_fsm_ready_int~combout\))) ) ) ) # ( \sl_cappuccino_int~q\ & ( !\sl_cappuccino_int~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_sl_fsm_done_int~combout\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_sl_fsm_ready_int~combout\,
	datae => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~0_combout\,
	combout => \sl_cappuccino_int~1_combout\);

-- Location: FF_X11_Y3_N32
sl_cappuccino_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_cappuccino_int~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_cappuccino_int~q\);

-- Location: LABCELL_X10_Y4_N3
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \sl_hot_chocolate_int~q\ & ( (!\sl_coffee_int~q\ & (!\sl_espresso_int~q\ & !\sl_cappuccino_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \Selector7~0_combout\);

-- Location: LABCELL_X10_Y4_N48
\I_count6|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~65_sumout\ = SUM(( \I_count6|u_counter_int\(6) ) + ( GND ) + ( \I_count6|Add0~2\ ))
-- \I_count6|Add0~66\ = CARRY(( \I_count6|u_counter_int\(6) ) + ( GND ) + ( \I_count6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(6),
	cin => \I_count6|Add0~2\,
	sumout => \I_count6|Add0~65_sumout\,
	cout => \I_count6|Add0~66\);

-- Location: LABCELL_X10_Y4_N51
\I_count6|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~113_sumout\ = SUM(( \I_count6|u_counter_int\(7) ) + ( GND ) + ( \I_count6|Add0~66\ ))
-- \I_count6|Add0~114\ = CARRY(( \I_count6|u_counter_int\(7) ) + ( GND ) + ( \I_count6|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(7),
	cin => \I_count6|Add0~66\,
	sumout => \I_count6|Add0~113_sumout\,
	cout => \I_count6|Add0~114\);

-- Location: FF_X10_Y4_N52
\I_count6|u_counter_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~113_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(7));

-- Location: LABCELL_X10_Y4_N54
\I_count6|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~109_sumout\ = SUM(( \I_count6|u_counter_int\(8) ) + ( GND ) + ( \I_count6|Add0~114\ ))
-- \I_count6|Add0~110\ = CARRY(( \I_count6|u_counter_int\(8) ) + ( GND ) + ( \I_count6|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(8),
	cin => \I_count6|Add0~114\,
	sumout => \I_count6|Add0~109_sumout\,
	cout => \I_count6|Add0~110\);

-- Location: FF_X10_Y4_N56
\I_count6|u_counter_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~109_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(8));

-- Location: LABCELL_X10_Y4_N57
\I_count6|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~105_sumout\ = SUM(( \I_count6|u_counter_int\(9) ) + ( GND ) + ( \I_count6|Add0~110\ ))
-- \I_count6|Add0~106\ = CARRY(( \I_count6|u_counter_int\(9) ) + ( GND ) + ( \I_count6|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(9),
	cin => \I_count6|Add0~110\,
	sumout => \I_count6|Add0~105_sumout\,
	cout => \I_count6|Add0~106\);

-- Location: FF_X10_Y4_N59
\I_count6|u_counter_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~105_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(9));

-- Location: LABCELL_X10_Y3_N0
\I_count6|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~101_sumout\ = SUM(( \I_count6|u_counter_int\(10) ) + ( GND ) + ( \I_count6|Add0~106\ ))
-- \I_count6|Add0~102\ = CARRY(( \I_count6|u_counter_int\(10) ) + ( GND ) + ( \I_count6|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(10),
	cin => \I_count6|Add0~106\,
	sumout => \I_count6|Add0~101_sumout\,
	cout => \I_count6|Add0~102\);

-- Location: FF_X10_Y3_N2
\I_count6|u_counter_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~101_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(10));

-- Location: LABCELL_X10_Y3_N3
\I_count6|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~97_sumout\ = SUM(( \I_count6|u_counter_int[11]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~102\ ))
-- \I_count6|Add0~98\ = CARRY(( \I_count6|u_counter_int[11]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int[11]~DUPLICATE_q\,
	cin => \I_count6|Add0~102\,
	sumout => \I_count6|Add0~97_sumout\,
	cout => \I_count6|Add0~98\);

-- Location: FF_X10_Y3_N5
\I_count6|u_counter_int[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~97_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[11]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N6
\I_count6|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~93_sumout\ = SUM(( \I_count6|u_counter_int\(12) ) + ( GND ) + ( \I_count6|Add0~98\ ))
-- \I_count6|Add0~94\ = CARRY(( \I_count6|u_counter_int\(12) ) + ( GND ) + ( \I_count6|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(12),
	cin => \I_count6|Add0~98\,
	sumout => \I_count6|Add0~93_sumout\,
	cout => \I_count6|Add0~94\);

-- Location: FF_X10_Y3_N7
\I_count6|u_counter_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~93_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(12));

-- Location: LABCELL_X10_Y3_N9
\I_count6|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~89_sumout\ = SUM(( \I_count6|u_counter_int[13]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~94\ ))
-- \I_count6|Add0~90\ = CARRY(( \I_count6|u_counter_int[13]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[13]~DUPLICATE_q\,
	cin => \I_count6|Add0~94\,
	sumout => \I_count6|Add0~89_sumout\,
	cout => \I_count6|Add0~90\);

-- Location: FF_X10_Y3_N11
\I_count6|u_counter_int[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~89_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[13]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N12
\I_count6|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~85_sumout\ = SUM(( \I_count6|u_counter_int[14]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~90\ ))
-- \I_count6|Add0~86\ = CARRY(( \I_count6|u_counter_int[14]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int[14]~DUPLICATE_q\,
	cin => \I_count6|Add0~90\,
	sumout => \I_count6|Add0~85_sumout\,
	cout => \I_count6|Add0~86\);

-- Location: FF_X10_Y3_N14
\I_count6|u_counter_int[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~85_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[14]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N15
\I_count6|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~81_sumout\ = SUM(( \I_count6|u_counter_int\(15) ) + ( GND ) + ( \I_count6|Add0~86\ ))
-- \I_count6|Add0~82\ = CARRY(( \I_count6|u_counter_int\(15) ) + ( GND ) + ( \I_count6|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(15),
	cin => \I_count6|Add0~86\,
	sumout => \I_count6|Add0~81_sumout\,
	cout => \I_count6|Add0~82\);

-- Location: FF_X10_Y3_N16
\I_count6|u_counter_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~81_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(15));

-- Location: LABCELL_X10_Y3_N18
\I_count6|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~77_sumout\ = SUM(( \I_count6|u_counter_int[16]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~82\ ))
-- \I_count6|Add0~78\ = CARRY(( \I_count6|u_counter_int[16]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[16]~DUPLICATE_q\,
	cin => \I_count6|Add0~82\,
	sumout => \I_count6|Add0~77_sumout\,
	cout => \I_count6|Add0~78\);

-- Location: FF_X10_Y3_N20
\I_count6|u_counter_int[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~77_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[16]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N21
\I_count6|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~73_sumout\ = SUM(( \I_count6|u_counter_int\(17) ) + ( GND ) + ( \I_count6|Add0~78\ ))
-- \I_count6|Add0~74\ = CARRY(( \I_count6|u_counter_int\(17) ) + ( GND ) + ( \I_count6|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(17),
	cin => \I_count6|Add0~78\,
	sumout => \I_count6|Add0~73_sumout\,
	cout => \I_count6|Add0~74\);

-- Location: FF_X10_Y3_N22
\I_count6|u_counter_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~73_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(17));

-- Location: LABCELL_X10_Y3_N24
\I_count6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~21_sumout\ = SUM(( \I_count6|u_counter_int[18]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~74\ ))
-- \I_count6|Add0~22\ = CARRY(( \I_count6|u_counter_int[18]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[18]~DUPLICATE_q\,
	cin => \I_count6|Add0~74\,
	sumout => \I_count6|Add0~21_sumout\,
	cout => \I_count6|Add0~22\);

-- Location: FF_X10_Y3_N26
\I_count6|u_counter_int[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~21_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[18]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N27
\I_count6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~17_sumout\ = SUM(( \I_count6|u_counter_int\(19) ) + ( GND ) + ( \I_count6|Add0~22\ ))
-- \I_count6|Add0~18\ = CARRY(( \I_count6|u_counter_int\(19) ) + ( GND ) + ( \I_count6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(19),
	cin => \I_count6|Add0~22\,
	sumout => \I_count6|Add0~17_sumout\,
	cout => \I_count6|Add0~18\);

-- Location: FF_X10_Y3_N28
\I_count6|u_counter_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~17_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(19));

-- Location: LABCELL_X10_Y3_N30
\I_count6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~13_sumout\ = SUM(( \I_count6|u_counter_int\(20) ) + ( GND ) + ( \I_count6|Add0~18\ ))
-- \I_count6|Add0~14\ = CARRY(( \I_count6|u_counter_int\(20) ) + ( GND ) + ( \I_count6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(20),
	cin => \I_count6|Add0~18\,
	sumout => \I_count6|Add0~13_sumout\,
	cout => \I_count6|Add0~14\);

-- Location: FF_X10_Y3_N31
\I_count6|u_counter_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~13_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(20));

-- Location: LABCELL_X10_Y3_N33
\I_count6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~9_sumout\ = SUM(( \I_count6|u_counter_int[21]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~14\ ))
-- \I_count6|Add0~10\ = CARRY(( \I_count6|u_counter_int[21]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int[21]~DUPLICATE_q\,
	cin => \I_count6|Add0~14\,
	sumout => \I_count6|Add0~9_sumout\,
	cout => \I_count6|Add0~10\);

-- Location: FF_X10_Y3_N35
\I_count6|u_counter_int[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~9_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[21]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N36
\I_count6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~5_sumout\ = SUM(( \I_count6|u_counter_int[22]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~10\ ))
-- \I_count6|Add0~6\ = CARRY(( \I_count6|u_counter_int[22]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[22]~DUPLICATE_q\,
	cin => \I_count6|Add0~10\,
	sumout => \I_count6|Add0~5_sumout\,
	cout => \I_count6|Add0~6\);

-- Location: FF_X10_Y3_N38
\I_count6|u_counter_int[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~5_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[22]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N39
\I_count6|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~45_sumout\ = SUM(( \I_count6|u_counter_int\(23) ) + ( GND ) + ( \I_count6|Add0~6\ ))
-- \I_count6|Add0~46\ = CARRY(( \I_count6|u_counter_int\(23) ) + ( GND ) + ( \I_count6|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(23),
	cin => \I_count6|Add0~6\,
	sumout => \I_count6|Add0~45_sumout\,
	cout => \I_count6|Add0~46\);

-- Location: FF_X10_Y3_N40
\I_count6|u_counter_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~45_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(23));

-- Location: LABCELL_X10_Y3_N42
\I_count6|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~41_sumout\ = SUM(( \I_count6|u_counter_int[24]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~46\ ))
-- \I_count6|Add0~42\ = CARRY(( \I_count6|u_counter_int[24]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int[24]~DUPLICATE_q\,
	cin => \I_count6|Add0~46\,
	sumout => \I_count6|Add0~41_sumout\,
	cout => \I_count6|Add0~42\);

-- Location: FF_X10_Y3_N43
\I_count6|u_counter_int[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~41_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[24]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N45
\I_count6|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~37_sumout\ = SUM(( \I_count6|u_counter_int[25]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~42\ ))
-- \I_count6|Add0~38\ = CARRY(( \I_count6|u_counter_int[25]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[25]~DUPLICATE_q\,
	cin => \I_count6|Add0~42\,
	sumout => \I_count6|Add0~37_sumout\,
	cout => \I_count6|Add0~38\);

-- Location: FF_X10_Y3_N47
\I_count6|u_counter_int[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~37_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[25]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y3_N48
\I_count6|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~33_sumout\ = SUM(( \I_count6|u_counter_int\(26) ) + ( GND ) + ( \I_count6|Add0~38\ ))
-- \I_count6|Add0~34\ = CARRY(( \I_count6|u_counter_int\(26) ) + ( GND ) + ( \I_count6|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(26),
	cin => \I_count6|Add0~38\,
	sumout => \I_count6|Add0~33_sumout\,
	cout => \I_count6|Add0~34\);

-- Location: FF_X10_Y3_N50
\I_count6|u_counter_int[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~33_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(26));

-- Location: LABCELL_X10_Y3_N51
\I_count6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~29_sumout\ = SUM(( \I_count6|u_counter_int\(27) ) + ( GND ) + ( \I_count6|Add0~34\ ))
-- \I_count6|Add0~30\ = CARRY(( \I_count6|u_counter_int\(27) ) + ( GND ) + ( \I_count6|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(27),
	cin => \I_count6|Add0~34\,
	sumout => \I_count6|Add0~29_sumout\,
	cout => \I_count6|Add0~30\);

-- Location: FF_X10_Y3_N52
\I_count6|u_counter_int[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~29_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(27));

-- Location: LABCELL_X10_Y3_N54
\I_count6|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~25_sumout\ = SUM(( \I_count6|u_counter_int\(28) ) + ( GND ) + ( \I_count6|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(28),
	cin => \I_count6|Add0~30\,
	sumout => \I_count6|Add0~25_sumout\);

-- Location: FF_X10_Y3_N56
\I_count6|u_counter_int[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~25_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(28));

-- Location: FF_X10_Y3_N46
\I_count6|u_counter_int[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~37_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(25));

-- Location: FF_X10_Y3_N44
\I_count6|u_counter_int[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~41_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(24));

-- Location: LABCELL_X10_Y4_N18
\I_count6|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~1_combout\ = ( \I_count6|u_counter_int\(24) & ( !\I_count6|u_counter_int\(27) & ( (\I_count6|u_counter_int\(28) & (\I_count6|u_counter_int\(23) & (!\I_count6|u_counter_int\(25) & !\I_count6|u_counter_int\(26)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(28),
	datab => \I_count6|ALT_INV_u_counter_int\(23),
	datac => \I_count6|ALT_INV_u_counter_int\(25),
	datad => \I_count6|ALT_INV_u_counter_int\(26),
	datae => \I_count6|ALT_INV_u_counter_int\(24),
	dataf => \I_count6|ALT_INV_u_counter_int\(27),
	combout => \I_count6|Equal0~1_combout\);

-- Location: FF_X10_Y3_N25
\I_count6|u_counter_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~21_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(18));

-- Location: FF_X10_Y3_N34
\I_count6|u_counter_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~9_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(21));

-- Location: FF_X10_Y3_N37
\I_count6|u_counter_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~5_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(22));

-- Location: LABCELL_X11_Y3_N42
\I_count6|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~0_combout\ = ( \I_count6|u_counter_int\(22) & ( (!\I_count6|u_counter_int\(19) & (!\I_count6|u_counter_int\(18) & (!\I_count6|u_counter_int\(20) & \I_count6|u_counter_int\(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(19),
	datab => \I_count6|ALT_INV_u_counter_int\(18),
	datac => \I_count6|ALT_INV_u_counter_int\(20),
	datad => \I_count6|ALT_INV_u_counter_int\(21),
	dataf => \I_count6|ALT_INV_u_counter_int\(22),
	combout => \I_count6|Equal0~0_combout\);

-- Location: FF_X10_Y3_N10
\I_count6|u_counter_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~89_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(13));

-- Location: FF_X10_Y3_N13
\I_count6|u_counter_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~85_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(14));

-- Location: FF_X10_Y3_N19
\I_count6|u_counter_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~77_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(16));

-- Location: LABCELL_X11_Y3_N36
\I_count6|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~3_combout\ = ( !\I_count6|u_counter_int\(12) & ( \I_count6|u_counter_int\(15) & ( (!\I_count6|u_counter_int\(17) & (\I_count6|u_counter_int\(13) & (!\I_count6|u_counter_int\(14) & \I_count6|u_counter_int\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(17),
	datab => \I_count6|ALT_INV_u_counter_int\(13),
	datac => \I_count6|ALT_INV_u_counter_int\(14),
	datad => \I_count6|ALT_INV_u_counter_int\(16),
	datae => \I_count6|ALT_INV_u_counter_int\(12),
	dataf => \I_count6|ALT_INV_u_counter_int\(15),
	combout => \I_count6|Equal0~3_combout\);

-- Location: LABCELL_X11_Y4_N12
\HEX2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~4_combout\ = ( !\sl_cappuccino_int~q\ & ( !\sl_espresso_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX2~4_combout\);

-- Location: FF_X13_Y3_N43
\coffee_maker_state.S_IDLE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_IDLE~DUPLICATE_q\);

-- Location: IOIBUF_X16_Y0_N1
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N52
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X13_Y3_N21
\sl_1_Euro~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_1_Euro~0_combout\ = ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \sl_1_Euro~0_combout\);

-- Location: LABCELL_X13_Y3_N54
\sl_1_Euro~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_1_Euro~1_combout\ = ( \sl_1_Euro~q\ & ( \sl_1_Euro~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) ) # ( !\sl_1_Euro~q\ & ( \sl_1_Euro~0_combout\ & ( (\sl_fsm_ready_int~combout\ & (!\sl_fsm_done_int~combout\ & (!\SW[3]~input_o\ & !\SW[2]~input_o\))) ) ) 
-- ) # ( \sl_1_Euro~q\ & ( !\sl_1_Euro~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110001000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_fsm_ready_int~combout\,
	datab => \ALT_INV_sl_fsm_done_int~combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \ALT_INV_sl_1_Euro~q\,
	dataf => \ALT_INV_sl_1_Euro~0_combout\,
	combout => \sl_1_Euro~1_combout\);

-- Location: FF_X13_Y3_N56
sl_1_Euro : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_1_Euro~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_1_Euro~q\);

-- Location: LABCELL_X13_Y3_N6
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \sl_1_Euro~q\ & ( \I_count3|Equal0~5_combout\ & ( (!\coffee_maker_state.S_IDLE~DUPLICATE_q\) # ((!\sl_coffee_int~q\ & (\coffee_maker_state.S_MENU1~q\ & !\sl_cappuccino_int~q\))) ) ) ) # ( !\sl_1_Euro~q\ & ( 
-- \I_count3|Equal0~5_combout\ & ( (!\sl_coffee_int~q\ & (\coffee_maker_state.S_MENU1~q\ & !\sl_cappuccino_int~q\)) ) ) ) # ( \sl_1_Euro~q\ & ( !\I_count3|Equal0~5_combout\ & ( (!\coffee_maker_state.S_IDLE~DUPLICATE_q\) # (\coffee_maker_state.S_MENU1~q\) ) ) 
-- ) # ( !\sl_1_Euro~q\ & ( !\I_count3|Equal0~5_combout\ & ( \coffee_maker_state.S_MENU1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111110011001100100000001000001111111100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	datac => \ALT_INV_sl_cappuccino_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~DUPLICATE_q\,
	datae => \ALT_INV_sl_1_Euro~q\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector3~0_combout\);

-- Location: FF_X13_Y3_N53
\coffee_maker_state.S_MENU1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \Selector3~0_combout\,
	clrn => \SW[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_MENU1~q\);

-- Location: LABCELL_X9_Y4_N12
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \sl_espresso_int~q\ & ( \coffee_maker_state.S_MENU1~q\ & ( (((\sl_2_Euro~q\ & \coffee_maker_state.S_MENU2~q\)) # (\sl_cappuccino_int~q\)) # (\sl_coffee_int~q\) ) ) ) # ( !\sl_espresso_int~q\ & ( \coffee_maker_state.S_MENU1~q\ & ( 
-- (\sl_cappuccino_int~q\) # (\sl_coffee_int~q\) ) ) ) # ( \sl_espresso_int~q\ & ( !\coffee_maker_state.S_MENU1~q\ & ( (\sl_2_Euro~q\ & \coffee_maker_state.S_MENU2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100111111001111110011111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_2_Euro~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_cappuccino_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	datae => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \Selector5~0_combout\);

-- Location: LABCELL_X9_Y4_N51
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \coffee_maker_state.S_GRIND~q\ & ( \Selector5~0_combout\ ) ) # ( !\coffee_maker_state.S_GRIND~q\ & ( \Selector5~0_combout\ & ( \I_count3|Equal0~5_combout\ ) ) ) # ( \coffee_maker_state.S_GRIND~q\ & ( !\Selector5~0_combout\ & ( 
-- (!\sl_coffee_int~q\ & ((!\I_count3|Equal0~5_combout\) # ((\HEX2~4_combout\)))) # (\sl_coffee_int~q\ & (((!\I_count6|Equal0~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101111111000110001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_HEX2~4_combout\,
	datad => \I_count6|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	dataf => \ALT_INV_Selector5~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X9_Y4_N53
\coffee_maker_state.S_GRIND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector5~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_GRIND~q\);

-- Location: FF_X10_Y4_N46
\I_count6|u_counter_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~1_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(5));

-- Location: LABCELL_X11_Y3_N21
\Selector6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~6_combout\ = ( \I_count6|u_counter_int\(5) & ( (\sl_coffee_int~q\ & \coffee_maker_state.S_GRIND~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	dataf => \I_count6|ALT_INV_u_counter_int\(5),
	combout => \Selector6~6_combout\);

-- Location: FF_X10_Y3_N4
\I_count6|u_counter_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~97_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(11));

-- Location: LABCELL_X9_Y4_N0
\I_count6|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~4_combout\ = ( !\I_count6|u_counter_int\(11) & ( (\I_count6|u_counter_int\(7) & (\I_count6|u_counter_int\(9) & (!\I_count6|u_counter_int\(10) & !\I_count6|u_counter_int\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(7),
	datab => \I_count6|ALT_INV_u_counter_int\(9),
	datac => \I_count6|ALT_INV_u_counter_int\(10),
	datad => \I_count6|ALT_INV_u_counter_int\(8),
	dataf => \I_count6|ALT_INV_u_counter_int\(11),
	combout => \I_count6|Equal0~4_combout\);

-- Location: LABCELL_X11_Y3_N57
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( \Selector6~6_combout\ & ( \I_count6|Equal0~4_combout\ & ( (\I_count6|Equal0~1_combout\ & (\I_count6|Equal0~0_combout\ & (\I_count6|Equal0~3_combout\ & \I_count6|Equal0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_Equal0~1_combout\,
	datab => \I_count6|ALT_INV_Equal0~0_combout\,
	datac => \I_count6|ALT_INV_Equal0~3_combout\,
	datad => \I_count6|ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_Selector6~6_combout\,
	dataf => \I_count6|ALT_INV_Equal0~4_combout\,
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X11_Y3_N51
\Selector6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~7_combout\ = ( \I_count6|u_counter_int\(5) & ( (((\sl_hot_chocolate_int~q\) # (\sl_cappuccino_int~q\)) # (\sl_coffee_int~q\)) # (\sl_espresso_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_cappuccino_int~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \I_count6|ALT_INV_u_counter_int\(5),
	combout => \Selector6~7_combout\);

-- Location: LABCELL_X11_Y3_N54
\Selector6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = ( \I_count6|Equal0~4_combout\ & ( \Selector6~7_combout\ & ( (\I_count6|Equal0~1_combout\ & (\I_count6|Equal0~0_combout\ & (\I_count6|Equal0~2_combout\ & \I_count6|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_Equal0~1_combout\,
	datab => \I_count6|ALT_INV_Equal0~0_combout\,
	datac => \I_count6|ALT_INV_Equal0~2_combout\,
	datad => \I_count6|ALT_INV_Equal0~3_combout\,
	datae => \I_count6|ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Selector6~7_combout\,
	combout => \Selector6~3_combout\);

-- Location: LABCELL_X11_Y3_N12
\Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = ( \sl_2_Euro~q\ & ( (!\sl_espresso_int~q\ & (\coffee_maker_state.S_MENU2~q\ & \sl_hot_chocolate_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_sl_2_Euro~q\,
	combout => \Selector6~2_combout\);

-- Location: LABCELL_X11_Y3_N15
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( !\sl_coffee_int~q\ & ( (\coffee_maker_state.S_GRIND~q\ & ((\sl_cappuccino_int~q\) # (\sl_espresso_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \Selector6~1_combout\);

-- Location: LABCELL_X11_Y3_N0
\Selector6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = ( \coffee_maker_state.S_BREW~q\ & ( \Selector6~1_combout\ ) ) # ( !\coffee_maker_state.S_BREW~q\ & ( \Selector6~1_combout\ & ( (\Selector6~0_combout\) # (\I_count3|Equal0~5_combout\) ) ) ) # ( \coffee_maker_state.S_BREW~q\ & ( 
-- !\Selector6~1_combout\ & ( ((!\Selector6~3_combout\) # (\Selector6~2_combout\)) # (\Selector6~0_combout\) ) ) ) # ( !\coffee_maker_state.S_BREW~q\ & ( !\Selector6~1_combout\ & ( ((\I_count3|Equal0~5_combout\ & \Selector6~2_combout\)) # 
-- (\Selector6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110111111100111111111101110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_Selector6~0_combout\,
	datac => \ALT_INV_Selector6~3_combout\,
	datad => \ALT_INV_Selector6~2_combout\,
	datae => \ALT_INV_coffee_maker_state.S_BREW~q\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \Selector6~4_combout\);

-- Location: FF_X11_Y3_N1
\coffee_maker_state.S_BREW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector6~4_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_BREW~q\);

-- Location: LABCELL_X11_Y4_N39
\Selector7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = ( \Selector8~0_combout\ & ( (\I_count6|Equal0~5_combout\ & (\Selector7~0_combout\ & \coffee_maker_state.S_BREW~q\)) ) ) # ( !\Selector8~0_combout\ & ( ((\I_count6|Equal0~5_combout\ & (\Selector7~0_combout\ & 
-- \coffee_maker_state.S_BREW~q\))) # (\coffee_maker_state.S_CHOC_POWDER~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111111000000011111111100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_Selector7~0_combout\,
	datac => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datad => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: FF_X11_Y4_N40
\coffee_maker_state.S_CHOC_POWDER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector7~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_CHOC_POWDER~q\);

-- Location: LABCELL_X11_Y3_N6
\Selector8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~4_combout\ = ( \I_count6|u_counter_int\(5) & ( (\coffee_maker_state.S_BREW~q\ & (((\sl_coffee_int~q\) # (\sl_cappuccino_int~q\)) # (\sl_espresso_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000011111110000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_BREW~q\,
	dataf => \I_count6|ALT_INV_u_counter_int\(5),
	combout => \Selector8~4_combout\);

-- Location: LABCELL_X10_Y4_N9
\Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = ( \Selector8~4_combout\ & ( \I_count6|Equal0~4_combout\ & ( (\I_count6|Equal0~2_combout\ & (\I_count6|Equal0~1_combout\ & (\I_count6|Equal0~0_combout\ & \I_count6|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_Equal0~2_combout\,
	datab => \I_count6|ALT_INV_Equal0~1_combout\,
	datac => \I_count6|ALT_INV_Equal0~0_combout\,
	datad => \I_count6|ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Selector8~4_combout\,
	dataf => \I_count6|ALT_INV_Equal0~4_combout\,
	combout => \Selector8~2_combout\);

-- Location: FF_X9_Y4_N38
\coffee_maker_state.S_PUMP_WATER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector8~3_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_PUMP_WATER~q\);

-- Location: LABCELL_X9_Y4_N30
\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( \I_count6|Equal0~5_combout\ & ( \I_count3|Equal0~5_combout\ & ( (((\sl_coffee_int~q\) # (\sl_espresso_int~q\)) # (\sl_hot_chocolate_int~q\)) # (\sl_cappuccino_int~q\) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( 
-- \I_count3|Equal0~5_combout\ & ( (!\sl_coffee_int~q\ & ((\sl_espresso_int~q\) # (\sl_cappuccino_int~q\))) ) ) ) # ( \I_count6|Equal0~5_combout\ & ( !\I_count3|Equal0~5_combout\ & ( ((!\sl_cappuccino_int~q\ & (\sl_hot_chocolate_int~q\ & 
-- !\sl_espresso_int~q\))) # (\sl_coffee_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000001111111101011111000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_hot_chocolate_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector8~1_combout\);

-- Location: LABCELL_X9_Y4_N36
\Selector8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~3_combout\ = ( \coffee_maker_state.S_PUMP_WATER~q\ & ( \Selector8~1_combout\ & ( ((\Selector8~0_combout\ & \coffee_maker_state.S_CHOC_POWDER~q\)) # (\Selector8~2_combout\) ) ) ) # ( !\coffee_maker_state.S_PUMP_WATER~q\ & ( \Selector8~1_combout\ 
-- & ( ((\Selector8~0_combout\ & \coffee_maker_state.S_CHOC_POWDER~q\)) # (\Selector8~2_combout\) ) ) ) # ( \coffee_maker_state.S_PUMP_WATER~q\ & ( !\Selector8~1_combout\ ) ) # ( !\coffee_maker_state.S_PUMP_WATER~q\ & ( !\Selector8~1_combout\ & ( 
-- ((\Selector8~0_combout\ & \coffee_maker_state.S_CHOC_POWDER~q\)) # (\Selector8~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100011111111111111111111100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector8~0_combout\,
	datab => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datac => \ALT_INV_Selector8~2_combout\,
	datae => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	dataf => \ALT_INV_Selector8~1_combout\,
	combout => \Selector8~3_combout\);

-- Location: FF_X9_Y4_N37
\coffee_maker_state.S_PUMP_WATER~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector8~3_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\);

-- Location: LABCELL_X11_Y4_N36
\Selector6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~5_combout\ = ( \sl_cappuccino_int~q\ & ( !\sl_coffee_int~q\ ) ) # ( !\sl_cappuccino_int~q\ & ( (\sl_espresso_int~q\ & !\sl_coffee_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \Selector6~5_combout\);

-- Location: LABCELL_X13_Y4_N39
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\sl_coffee_int~q\ & ( ((!\sl_hot_chocolate_int~q\) # (\sl_espresso_int~q\)) # (\sl_cappuccino_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X13_Y4_N12
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( \I_count6|Equal0~5_combout\ & ( \sl_reset3n_int~q\ & ( \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( \sl_reset3n_int~q\ & ( \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ ) ) ) # ( 
-- \I_count6|Equal0~5_combout\ & ( !\sl_reset3n_int~q\ & ( (\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ((!\Selector0~0_combout\) # ((\I_count3|Equal0~5_combout\ & \Selector6~5_combout\)))) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( !\sl_reset3n_int~q\ & 
-- ( (\I_count3|Equal0~5_combout\ & (\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & \Selector6~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001100110000000100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	datac => \ALT_INV_Selector6~5_combout\,
	datad => \ALT_INV_Selector0~0_combout\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_sl_reset3n_int~q\,
	combout => \Selector0~1_combout\);

-- Location: LABCELL_X13_Y4_N24
\Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ( \coffee_maker_state.S_MENU2~q\ & ( \I_count3|Equal0~5_combout\ & ( (!\sl_2_Euro~q\ & (((\sl_reset3n_int~q\)))) # (\sl_2_Euro~q\ & (((!\sl_hot_chocolate_int~q\ & \sl_reset3n_int~q\)) # (\sl_espresso_int~q\))) ) ) ) # ( 
-- \coffee_maker_state.S_MENU2~q\ & ( !\I_count3|Equal0~5_combout\ & ( \sl_reset3n_int~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000001111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_hot_chocolate_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_sl_2_Euro~q\,
	datad => \ALT_INV_sl_reset3n_int~q\,
	datae => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector0~2_combout\);

-- Location: LABCELL_X11_Y4_N27
\Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = ( \sl_espresso_int~q\ & ( (\coffee_maker_state.S_BREW~q\ & \sl_reset3n_int~q\) ) ) # ( !\sl_espresso_int~q\ & ( (\sl_reset3n_int~q\ & (((!\sl_cappuccino_int~q\ & \coffee_maker_state.S_GRIND~q\)) # (\coffee_maker_state.S_BREW~q\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101111000000000010111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datac => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datad => \ALT_INV_sl_reset3n_int~q\,
	dataf => \ALT_INV_sl_espresso_int~q\,
	combout => \Selector0~3_combout\);

-- Location: LABCELL_X11_Y4_N6
\Selector0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = ( \I_count6|Equal0~5_combout\ & ( \HEX2~4_combout\ & ( (!\sl_coffee_int~q\ & (((\sl_hot_chocolate_int~q\ & \coffee_maker_state.S_BREW~q\)) # (\Selector0~3_combout\))) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( \HEX2~4_combout\ & ( 
-- (\Selector0~3_combout\ & !\sl_coffee_int~q\) ) ) ) # ( \I_count6|Equal0~5_combout\ & ( !\HEX2~4_combout\ & ( (!\sl_coffee_int~q\ & ((\Selector0~3_combout\) # (\coffee_maker_state.S_BREW~q\))) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( !\HEX2~4_combout\ & 
-- ( (\Selector0~3_combout\ & !\sl_coffee_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000001111110000000000001111000000000001111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_hot_chocolate_int~q\,
	datab => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datac => \ALT_INV_Selector0~3_combout\,
	datad => \ALT_INV_sl_coffee_int~q\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_HEX2~4_combout\,
	combout => \Selector0~4_combout\);

-- Location: LABCELL_X11_Y4_N3
\Selector0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = ( \coffee_maker_state.S_GRIND~q\ & ( (\sl_reset3n_int~q\ & (!\I_count6|Equal0~5_combout\ & ((\coffee_maker_state.S_BREW~q\) # (\sl_coffee_int~q\)))) ) ) # ( !\coffee_maker_state.S_GRIND~q\ & ( (\sl_reset3n_int~q\ & 
-- (\coffee_maker_state.S_BREW~q\ & !\I_count6|Equal0~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_reset3n_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datad => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	combout => \Selector0~5_combout\);

-- Location: FF_X13_Y4_N31
\coffee_maker_state.S_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector10~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_DONE~q\);

-- Location: LABCELL_X13_Y4_N21
\Selector0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~11_combout\ = ( \sl_coffee_int~q\ & ( (\sl_reset3n_int~q\ & ((\coffee_maker_state.S_MENU1~q\) # (\coffee_maker_state.S_DONE~q\))) ) ) # ( !\sl_coffee_int~q\ & ( (\sl_reset3n_int~q\ & (((\coffee_maker_state.S_GRIND~q\) # 
-- (\coffee_maker_state.S_MENU1~q\)) # (\coffee_maker_state.S_DONE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100001111000001110000111100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_DONE~q\,
	datab => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	datac => \ALT_INV_sl_reset3n_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \Selector0~11_combout\);

-- Location: LABCELL_X13_Y4_N48
\Selector0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = ( \I_count3|Equal0~4_combout\ & ( \Selector0~11_combout\ & ( (!\I_count3|Equal0~3_combout\) # ((!\I_count3|Equal0~1_combout\) # ((!\I_count3|Equal0~0_combout\) # (!\I_count3|Equal0~2_combout\))) ) ) ) # ( 
-- !\I_count3|Equal0~4_combout\ & ( \Selector0~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~3_combout\,
	datab => \I_count3|ALT_INV_Equal0~1_combout\,
	datac => \I_count3|ALT_INV_Equal0~0_combout\,
	datad => \I_count3|ALT_INV_Equal0~2_combout\,
	datae => \I_count3|ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_Selector0~11_combout\,
	combout => \Selector0~6_combout\);

-- Location: LABCELL_X12_Y4_N24
\Selector9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~1_combout\ = ( \I_count3|Equal0~4_combout\ & ( \sl_cappuccino_int~q\ & ( (\I_count3|Equal0~1_combout\ & (\I_count3|Equal0~0_combout\ & (\I_count3|Equal0~2_combout\ & \I_count3|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~1_combout\,
	datab => \I_count3|ALT_INV_Equal0~0_combout\,
	datac => \I_count3|ALT_INV_Equal0~2_combout\,
	datad => \I_count3|ALT_INV_Equal0~3_combout\,
	datae => \I_count3|ALT_INV_Equal0~4_combout\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \Selector9~1_combout\);

-- Location: LABCELL_X13_Y3_N33
\Selector0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = ( \sl_coffee_int~q\ & ( !\coffee_maker_state.S_IDLE~DUPLICATE_q\ ) ) # ( !\sl_coffee_int~q\ & ( (!\coffee_maker_state.S_IDLE~DUPLICATE_q\ & (((\sl_1_Euro~q\) # (\sl_2_Euro~q\)) # (\sl_reset3n_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000011111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_reset3n_int~q\,
	datab => \ALT_INV_sl_2_Euro~q\,
	datac => \ALT_INV_sl_1_Euro~q\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~DUPLICATE_q\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \Selector0~7_combout\);

-- Location: LABCELL_X10_Y4_N0
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( (!\sl_cappuccino_int~q\ & (((\coffee_maker_state.S_PUMP_MILK~q\)))) # (\sl_cappuccino_int~q\ & ((!\I_count3|Equal0~5_combout\ & ((\coffee_maker_state.S_PUMP_MILK~q\))) # 
-- (\I_count3|Equal0~5_combout\ & (!\sl_coffee_int~q\)))) ) ) # ( !\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( (\coffee_maker_state.S_PUMP_MILK~q\ & ((!\sl_cappuccino_int~q\) # (!\I_count3|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101000000100111111100000010011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \I_count3|ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X10_Y4_N1
\coffee_maker_state.S_PUMP_MILK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_PUMP_MILK~q\);

-- Location: LABCELL_X11_Y4_N21
\Selector0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~8_combout\ = ( \coffee_maker_state.S_MENU1~q\ & ( (!\coffee_maker_state.S_PUMP_MILK~q\ & \sl_coffee_int~q\) ) ) # ( !\coffee_maker_state.S_MENU1~q\ & ( !\coffee_maker_state.S_PUMP_MILK~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \Selector0~8_combout\);

-- Location: LABCELL_X12_Y4_N12
\Selector0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~9_combout\ = ( \Selector8~0_combout\ & ( \Selector0~8_combout\ & ( !\Selector0~7_combout\ ) ) ) # ( !\Selector8~0_combout\ & ( \Selector0~8_combout\ & ( (!\Selector0~7_combout\ & ((!\coffee_maker_state.S_CHOC_POWDER~q\) # 
-- (!\sl_reset3n_int~q\))) ) ) ) # ( \Selector8~0_combout\ & ( !\Selector0~8_combout\ & ( (!\Selector9~1_combout\ & (!\Selector0~7_combout\ & !\sl_reset3n_int~q\)) ) ) ) # ( !\Selector8~0_combout\ & ( !\Selector0~8_combout\ & ( (!\Selector9~1_combout\ & 
-- (!\Selector0~7_combout\ & !\sl_reset3n_int~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000011110000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector9~1_combout\,
	datab => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datac => \ALT_INV_Selector0~7_combout\,
	datad => \ALT_INV_sl_reset3n_int~q\,
	datae => \ALT_INV_Selector8~0_combout\,
	dataf => \ALT_INV_Selector0~8_combout\,
	combout => \Selector0~9_combout\);

-- Location: LABCELL_X12_Y4_N6
\Selector0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~10_combout\ = ( \Selector0~6_combout\ & ( \Selector0~9_combout\ ) ) # ( !\Selector0~6_combout\ & ( \Selector0~9_combout\ & ( (((\Selector0~5_combout\) # (\Selector0~4_combout\)) # (\Selector0~2_combout\)) # (\Selector0~1_combout\) ) ) ) # ( 
-- \Selector0~6_combout\ & ( !\Selector0~9_combout\ ) ) # ( !\Selector0~6_combout\ & ( !\Selector0~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~1_combout\,
	datab => \ALT_INV_Selector0~2_combout\,
	datac => \ALT_INV_Selector0~4_combout\,
	datad => \ALT_INV_Selector0~5_combout\,
	datae => \ALT_INV_Selector0~6_combout\,
	dataf => \ALT_INV_Selector0~9_combout\,
	combout => \Selector0~10_combout\);

-- Location: FF_X12_Y4_N8
sl_reset3n_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector0~10_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_reset3n_int~q\);

-- Location: FF_X12_Y4_N31
\I_count3|u_counter_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~5_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(0));

-- Location: LABCELL_X12_Y4_N33
\I_count3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~61_sumout\ = SUM(( \I_count3|u_counter_int[1]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~6\ ))
-- \I_count3|Add0~62\ = CARRY(( \I_count3|u_counter_int[1]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int[1]~DUPLICATE_q\,
	cin => \I_count3|Add0~6\,
	sumout => \I_count3|Add0~61_sumout\,
	cout => \I_count3|Add0~62\);

-- Location: FF_X12_Y4_N35
\I_count3|u_counter_int[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~61_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[1]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N36
\I_count3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~17_sumout\ = SUM(( \I_count3|u_counter_int\(2) ) + ( GND ) + ( \I_count3|Add0~62\ ))
-- \I_count3|Add0~18\ = CARRY(( \I_count3|u_counter_int\(2) ) + ( GND ) + ( \I_count3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(2),
	cin => \I_count3|Add0~62\,
	sumout => \I_count3|Add0~17_sumout\,
	cout => \I_count3|Add0~18\);

-- Location: FF_X12_Y4_N38
\I_count3|u_counter_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~17_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(2));

-- Location: LABCELL_X12_Y4_N39
\I_count3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~21_sumout\ = SUM(( \I_count3|u_counter_int\(3) ) + ( GND ) + ( \I_count3|Add0~18\ ))
-- \I_count3|Add0~22\ = CARRY(( \I_count3|u_counter_int\(3) ) + ( GND ) + ( \I_count3|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(3),
	cin => \I_count3|Add0~18\,
	sumout => \I_count3|Add0~21_sumout\,
	cout => \I_count3|Add0~22\);

-- Location: FF_X12_Y4_N41
\I_count3|u_counter_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~21_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(3));

-- Location: LABCELL_X12_Y4_N42
\I_count3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~25_sumout\ = SUM(( \I_count3|u_counter_int[4]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~22\ ))
-- \I_count3|Add0~26\ = CARRY(( \I_count3|u_counter_int[4]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int[4]~DUPLICATE_q\,
	cin => \I_count3|Add0~22\,
	sumout => \I_count3|Add0~25_sumout\,
	cout => \I_count3|Add0~26\);

-- Location: FF_X12_Y4_N43
\I_count3|u_counter_int[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~25_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[4]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y4_N45
\I_count3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~29_sumout\ = SUM(( \I_count3|u_counter_int\(5) ) + ( GND ) + ( \I_count3|Add0~26\ ))
-- \I_count3|Add0~30\ = CARRY(( \I_count3|u_counter_int\(5) ) + ( GND ) + ( \I_count3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(5),
	cin => \I_count3|Add0~26\,
	sumout => \I_count3|Add0~29_sumout\,
	cout => \I_count3|Add0~30\);

-- Location: FF_X12_Y4_N47
\I_count3|u_counter_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~29_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(5));

-- Location: LABCELL_X12_Y4_N48
\I_count3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~33_sumout\ = SUM(( \I_count3|u_counter_int\(6) ) + ( GND ) + ( \I_count3|Add0~30\ ))
-- \I_count3|Add0~34\ = CARRY(( \I_count3|u_counter_int\(6) ) + ( GND ) + ( \I_count3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(6),
	cin => \I_count3|Add0~30\,
	sumout => \I_count3|Add0~33_sumout\,
	cout => \I_count3|Add0~34\);

-- Location: FF_X12_Y4_N50
\I_count3|u_counter_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~33_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(6));

-- Location: FF_X12_Y4_N53
\I_count3|u_counter_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~37_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(7));

-- Location: FF_X12_Y4_N44
\I_count3|u_counter_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~25_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(4));

-- Location: LABCELL_X12_Y4_N0
\I_count3|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~1_combout\ = ( \I_count3|u_counter_int\(2) & ( \I_count3|u_counter_int\(3) & ( (!\I_count3|u_counter_int\(7) & (\I_count3|u_counter_int\(5) & (\I_count3|u_counter_int\(6) & \I_count3|u_counter_int\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(7),
	datab => \I_count3|ALT_INV_u_counter_int\(5),
	datac => \I_count3|ALT_INV_u_counter_int\(6),
	datad => \I_count3|ALT_INV_u_counter_int\(4),
	datae => \I_count3|ALT_INV_u_counter_int\(2),
	dataf => \I_count3|ALT_INV_u_counter_int\(3),
	combout => \I_count3|Equal0~1_combout\);

-- Location: LABCELL_X13_Y4_N42
\I_count3|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~5_combout\ = ( \I_count3|Equal0~4_combout\ & ( \I_count3|Equal0~2_combout\ & ( (\I_count3|Equal0~1_combout\ & (\I_count3|Equal0~0_combout\ & \I_count3|Equal0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_Equal0~1_combout\,
	datac => \I_count3|ALT_INV_Equal0~0_combout\,
	datad => \I_count3|ALT_INV_Equal0~3_combout\,
	datae => \I_count3|ALT_INV_Equal0~4_combout\,
	dataf => \I_count3|ALT_INV_Equal0~2_combout\,
	combout => \I_count3|Equal0~5_combout\);

-- Location: LABCELL_X13_Y3_N42
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \coffee_maker_state.S_IDLE~q\ & ( \sl_1_Euro~q\ & ( (!\I_count3|Equal0~5_combout\) # (!\coffee_maker_state.S_DONE~q\) ) ) ) # ( !\coffee_maker_state.S_IDLE~q\ & ( \sl_1_Euro~q\ & ( (!\I_count3|Equal0~5_combout\) # 
-- (!\coffee_maker_state.S_DONE~q\) ) ) ) # ( \coffee_maker_state.S_IDLE~q\ & ( !\sl_1_Euro~q\ & ( (!\I_count3|Equal0~5_combout\) # (!\coffee_maker_state.S_DONE~q\) ) ) ) # ( !\coffee_maker_state.S_IDLE~q\ & ( !\sl_1_Euro~q\ & ( (!\I_count3|Equal0~5_combout\ 
-- & (((\sl_coffee_int~q\)) # (\sl_2_Euro~q\))) # (\I_count3|Equal0~5_combout\ & (!\coffee_maker_state.S_DONE~q\ & ((\sl_coffee_int~q\) # (\sl_2_Euro~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100101010111111111010101011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_sl_2_Euro~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_DONE~q\,
	datae => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	dataf => \ALT_INV_sl_1_Euro~q\,
	combout => \Selector2~0_combout\);

-- Location: FF_X13_Y3_N44
\coffee_maker_state.S_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector2~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_IDLE~q\);

-- Location: LABCELL_X13_Y3_N18
sl_fsm_ready_int : cyclonev_lcell_comb
-- Equation(s):
-- \sl_fsm_ready_int~combout\ = ( \coffee_maker_state.S_IDLE~q\ & ( (\WideOr0~combout\ & \sl_fsm_ready_int~combout\) ) ) # ( !\coffee_maker_state.S_IDLE~q\ & ( (!\WideOr0~combout\) # (\sl_fsm_ready_int~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111110011111100111100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_WideOr0~combout\,
	datac => \ALT_INV_sl_fsm_ready_int~combout\,
	dataf => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	combout => \sl_fsm_ready_int~combout\);

-- Location: LABCELL_X13_Y3_N30
\sl_2_Euro~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_2_Euro~0_combout\ = ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \sl_2_Euro~0_combout\);

-- Location: LABCELL_X13_Y3_N57
\sl_2_Euro~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_2_Euro~1_combout\ = ( \sl_2_Euro~q\ & ( \sl_2_Euro~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) ) # ( !\sl_2_Euro~q\ & ( \sl_2_Euro~0_combout\ & ( (\sl_fsm_ready_int~combout\ & (!\sl_fsm_done_int~combout\ & (!\SW[2]~input_o\ & !\SW[3]~input_o\))) ) ) 
-- ) # ( \sl_2_Euro~q\ & ( !\sl_2_Euro~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110001000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_fsm_ready_int~combout\,
	datab => \ALT_INV_sl_fsm_done_int~combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_sl_2_Euro~q\,
	dataf => \ALT_INV_sl_2_Euro~0_combout\,
	combout => \sl_2_Euro~1_combout\);

-- Location: FF_X13_Y3_N59
sl_2_Euro : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_2_Euro~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_2_Euro~q\);

-- Location: LABCELL_X11_Y4_N18
\Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = ( \coffee_maker_state.S_MENU2~q\ & ( (!\sl_2_Euro~q\) # ((!\I_count3|Equal0~5_combout\) # ((!\sl_hot_chocolate_int~q\ & !\sl_espresso_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111110111011101111111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_2_Euro~q\,
	datab => \I_count3|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_sl_hot_chocolate_int~q\,
	datad => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	combout => \Selector4~2_combout\);

-- Location: LABCELL_X10_Y4_N12
\Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = ( !\sl_cappuccino_int~q\ & ( \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( (!\sl_hot_chocolate_int~q\ & (!\sl_espresso_int~q\ & ((!\sl_coffee_int~q\) # (\coffee_maker_state.S_BREW~q\)))) ) ) ) # ( !\sl_cappuccino_int~q\ & ( 
-- !\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( (!\sl_hot_chocolate_int~q\ & (!\sl_espresso_int~q\ & \coffee_maker_state.S_BREW~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000010001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_hot_chocolate_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	combout => \Selector1~2_combout\);

-- Location: LABCELL_X11_Y4_N15
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( (!\coffee_maker_state.S_BREW~q\ & (!\sl_coffee_int~q\ & ((\sl_espresso_int~q\) # (\sl_cappuccino_int~q\)))) ) ) # ( !\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ( 
-- !\coffee_maker_state.S_BREW~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	combout => \Selector1~1_combout\);

-- Location: LABCELL_X11_Y4_N24
\Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = ( \coffee_maker_state.S_MENU1~q\ & ( (\sl_cappuccino_int~q\ & (!\coffee_maker_state.S_GRIND~q\ & !\coffee_maker_state.S_CHOC_POWDER~q\)) ) ) # ( !\coffee_maker_state.S_MENU1~q\ & ( (!\coffee_maker_state.S_GRIND~q\ & 
-- (!\coffee_maker_state.S_CHOC_POWDER~q\ & ((!\coffee_maker_state.S_PUMP_MILK~q\) # (\sl_cappuccino_int~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000000000110001000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	datad => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \Selector1~3_combout\);

-- Location: LABCELL_X13_Y3_N24
\coffee_maker_state~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \coffee_maker_state~23_combout\ = ( !\sl_1_Euro~q\ & ( (!\sl_2_Euro~q\ & (!\sl_coffee_int~q\ & !\coffee_maker_state.S_IDLE~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_2_Euro~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~DUPLICATE_q\,
	dataf => \ALT_INV_sl_1_Euro~q\,
	combout => \coffee_maker_state~23_combout\);

-- Location: LABCELL_X11_Y4_N54
\Selector1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = ( \I_count6|Equal0~5_combout\ & ( (!\Selector1~2_combout\ & (\Selector1~3_combout\ & !\coffee_maker_state~23_combout\)) ) ) # ( !\I_count6|Equal0~5_combout\ & ( (!\Selector1~2_combout\ & (\Selector1~1_combout\ & 
-- (\Selector1~3_combout\ & !\coffee_maker_state~23_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~2_combout\,
	datab => \ALT_INV_Selector1~1_combout\,
	datac => \ALT_INV_Selector1~3_combout\,
	datad => \ALT_INV_coffee_maker_state~23_combout\,
	dataf => \I_count6|ALT_INV_Equal0~5_combout\,
	combout => \Selector1~4_combout\);

-- Location: LABCELL_X11_Y4_N48
\Selector1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = ( \I_count3|Equal0~5_combout\ & ( \Selector6~1_combout\ ) ) # ( \I_count3|Equal0~5_combout\ & ( !\Selector6~1_combout\ & ( (!\coffee_maker_state.S_MENU1~q\ & (((\sl_hot_chocolate_int~q\ & \coffee_maker_state.S_CHOC_POWDER~q\)))) # 
-- (\coffee_maker_state.S_MENU1~q\ & (((\sl_hot_chocolate_int~q\ & \coffee_maker_state.S_CHOC_POWDER~q\)) # (\sl_coffee_int~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100010001111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_hot_chocolate_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datae => \I_count3|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \Selector1~5_combout\);

-- Location: LABCELL_X11_Y4_N57
\Selector1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = ( \coffee_maker_state.S_GRIND~q\ & ( \sl_coffee_int~q\ ) ) # ( !\coffee_maker_state.S_GRIND~q\ & ( (\coffee_maker_state.S_BREW~q\ & \sl_coffee_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	combout => \Selector1~6_combout\);

-- Location: LABCELL_X11_Y4_N30
\Selector1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~7_combout\ = ( \I_count6|Equal0~5_combout\ & ( \coffee_maker_state~22_combout\ & ( ((!\sl_espresso_int~q\ & (\coffee_maker_state.S_MENU2~q\ & \I_count3|Equal0~5_combout\))) # (\Selector1~6_combout\) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( 
-- \coffee_maker_state~22_combout\ & ( (!\sl_espresso_int~q\ & (\coffee_maker_state.S_MENU2~q\ & \I_count3|Equal0~5_combout\)) ) ) ) # ( \I_count6|Equal0~5_combout\ & ( !\coffee_maker_state~22_combout\ & ( \Selector1~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000010100011001100111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_Selector1~6_combout\,
	datac => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	datad => \I_count3|ALT_INV_Equal0~5_combout\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_coffee_maker_state~22_combout\,
	combout => \Selector1~7_combout\);

-- Location: LABCELL_X12_Y4_N21
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\I_count3|Equal0~5_combout\ & ( \coffee_maker_state.S_MENU1~q\ ) ) # ( !\I_count3|Equal0~5_combout\ & ( !\coffee_maker_state.S_MENU1~q\ & ( (((\Selector6~5_combout\ & \coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\)) # 
-- (\coffee_maker_state.S_PUMP_MILK~q\)) # (\coffee_maker_state.S_DONE~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111101111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector6~5_combout\,
	datab => \ALT_INV_coffee_maker_state.S_DONE~q\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	datad => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	datae => \I_count3|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X11_Y4_N42
\Selector1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~8_combout\ = ( \sl_reset6n_int~q\ & ( \Selector1~0_combout\ ) ) # ( !\sl_reset6n_int~q\ & ( \Selector1~0_combout\ & ( (\Selector1~7_combout\) # (\Selector1~5_combout\) ) ) ) # ( \sl_reset6n_int~q\ & ( !\Selector1~0_combout\ & ( 
-- ((!\Selector1~4_combout\) # ((\Selector1~7_combout\) # (\Selector1~5_combout\))) # (\Selector4~2_combout\) ) ) ) # ( !\sl_reset6n_int~q\ & ( !\Selector1~0_combout\ & ( (\Selector1~7_combout\) # (\Selector1~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111110111111111111100001111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector4~2_combout\,
	datab => \ALT_INV_Selector1~4_combout\,
	datac => \ALT_INV_Selector1~5_combout\,
	datad => \ALT_INV_Selector1~7_combout\,
	datae => \ALT_INV_sl_reset6n_int~q\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \Selector1~8_combout\);

-- Location: FF_X11_Y4_N44
sl_reset6n_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector1~8_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_reset6n_int~q\);

-- Location: FF_X10_Y4_N31
\I_count6|u_counter_int[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~69_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[0]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y4_N33
\I_count6|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~61_sumout\ = SUM(( \I_count6|u_counter_int\(1) ) + ( GND ) + ( \I_count6|Add0~70\ ))
-- \I_count6|Add0~62\ = CARRY(( \I_count6|u_counter_int\(1) ) + ( GND ) + ( \I_count6|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(1),
	cin => \I_count6|Add0~70\,
	sumout => \I_count6|Add0~61_sumout\,
	cout => \I_count6|Add0~62\);

-- Location: FF_X10_Y4_N35
\I_count6|u_counter_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~61_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(1));

-- Location: LABCELL_X10_Y4_N36
\I_count6|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~57_sumout\ = SUM(( \I_count6|u_counter_int\(2) ) + ( GND ) + ( \I_count6|Add0~62\ ))
-- \I_count6|Add0~58\ = CARRY(( \I_count6|u_counter_int\(2) ) + ( GND ) + ( \I_count6|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(2),
	cin => \I_count6|Add0~62\,
	sumout => \I_count6|Add0~57_sumout\,
	cout => \I_count6|Add0~58\);

-- Location: FF_X10_Y4_N38
\I_count6|u_counter_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~57_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(2));

-- Location: LABCELL_X10_Y4_N39
\I_count6|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~53_sumout\ = SUM(( \I_count6|u_counter_int\(3) ) + ( GND ) + ( \I_count6|Add0~58\ ))
-- \I_count6|Add0~54\ = CARRY(( \I_count6|u_counter_int\(3) ) + ( GND ) + ( \I_count6|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(3),
	cin => \I_count6|Add0~58\,
	sumout => \I_count6|Add0~53_sumout\,
	cout => \I_count6|Add0~54\);

-- Location: FF_X10_Y4_N41
\I_count6|u_counter_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~53_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(3));

-- Location: LABCELL_X10_Y4_N42
\I_count6|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~49_sumout\ = SUM(( \I_count6|u_counter_int\(4) ) + ( GND ) + ( \I_count6|Add0~54\ ))
-- \I_count6|Add0~50\ = CARRY(( \I_count6|u_counter_int\(4) ) + ( GND ) + ( \I_count6|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int\(4),
	cin => \I_count6|Add0~54\,
	sumout => \I_count6|Add0~49_sumout\,
	cout => \I_count6|Add0~50\);

-- Location: FF_X10_Y4_N44
\I_count6|u_counter_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~49_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(4));

-- Location: LABCELL_X10_Y4_N45
\I_count6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~1_sumout\ = SUM(( \I_count6|u_counter_int[5]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~50\ ))
-- \I_count6|Add0~2\ = CARRY(( \I_count6|u_counter_int[5]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int[5]~DUPLICATE_q\,
	cin => \I_count6|Add0~50\,
	sumout => \I_count6|Add0~1_sumout\,
	cout => \I_count6|Add0~2\);

-- Location: FF_X10_Y4_N47
\I_count6|u_counter_int[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~1_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[5]~DUPLICATE_q\);

-- Location: FF_X10_Y4_N50
\I_count6|u_counter_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~65_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(6));

-- Location: FF_X10_Y4_N32
\I_count6|u_counter_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count6|Add0~69_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(0));

-- Location: LABCELL_X10_Y4_N24
\I_count6|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~2_combout\ = ( \I_count6|u_counter_int\(2) & ( \I_count6|u_counter_int\(4) & ( (\I_count6|u_counter_int\(6) & (\I_count6|u_counter_int\(0) & (\I_count6|u_counter_int\(1) & \I_count6|u_counter_int\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(6),
	datab => \I_count6|ALT_INV_u_counter_int\(0),
	datac => \I_count6|ALT_INV_u_counter_int\(1),
	datad => \I_count6|ALT_INV_u_counter_int\(3),
	datae => \I_count6|ALT_INV_u_counter_int\(2),
	dataf => \I_count6|ALT_INV_u_counter_int\(4),
	combout => \I_count6|Equal0~2_combout\);

-- Location: LABCELL_X10_Y4_N6
\I_count6|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~5_combout\ = ( \I_count6|u_counter_int[5]~DUPLICATE_q\ & ( \I_count6|Equal0~4_combout\ & ( (\I_count6|Equal0~2_combout\ & (\I_count6|Equal0~1_combout\ & (\I_count6|Equal0~3_combout\ & \I_count6|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_Equal0~2_combout\,
	datab => \I_count6|ALT_INV_Equal0~1_combout\,
	datac => \I_count6|ALT_INV_Equal0~3_combout\,
	datad => \I_count6|ALT_INV_Equal0~0_combout\,
	datae => \I_count6|ALT_INV_u_counter_int[5]~DUPLICATE_q\,
	dataf => \I_count6|ALT_INV_Equal0~4_combout\,
	combout => \I_count6|Equal0~5_combout\);

-- Location: LABCELL_X13_Y4_N57
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \sl_hot_chocolate_int~q\ & ( \I_count3|Equal0~5_combout\ & ( (\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & ((!\sl_cappuccino_int~q\) # (\sl_coffee_int~q\))) ) ) ) # ( !\sl_hot_chocolate_int~q\ & ( \I_count3|Equal0~5_combout\ 
-- & ( (\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & (((!\sl_cappuccino_int~q\ & \sl_espresso_int~q\)) # (\sl_coffee_int~q\))) ) ) ) # ( \sl_hot_chocolate_int~q\ & ( !\I_count3|Equal0~5_combout\ & ( (\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & 
-- (((!\sl_cappuccino_int~q\ & !\sl_espresso_int~q\)) # (\sl_coffee_int~q\))) ) ) ) # ( !\sl_hot_chocolate_int~q\ & ( !\I_count3|Equal0~5_combout\ & ( (\coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\ & \sl_coffee_int~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000010000000111100000010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_WATER~DUPLICATE_q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector10~1_combout\);

-- Location: LABCELL_X11_Y4_N0
\Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = ( \sl_cappuccino_int~q\ & ( \coffee_maker_state.S_PUMP_MILK~q\ ) ) # ( !\sl_cappuccino_int~q\ & ( (!\sl_coffee_int~q\ & \sl_espresso_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \Selector10~2_combout\);

-- Location: LABCELL_X13_Y4_N30
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \coffee_maker_state.S_DONE~q\ & ( \sl_cappuccino_int~q\ & ( ((!\I_count3|Equal0~5_combout\) # (\Selector10~2_combout\)) # (\Selector10~1_combout\) ) ) ) # ( !\coffee_maker_state.S_DONE~q\ & ( \sl_cappuccino_int~q\ & ( 
-- (!\I_count6|Equal0~5_combout\ & (((\Selector10~2_combout\ & \I_count3|Equal0~5_combout\)))) # (\I_count6|Equal0~5_combout\ & (((\Selector10~2_combout\ & \I_count3|Equal0~5_combout\)) # (\Selector10~1_combout\))) ) ) ) # ( \coffee_maker_state.S_DONE~q\ & ( 
-- !\sl_cappuccino_int~q\ & ( (!\I_count3|Equal0~5_combout\) # (\Selector10~1_combout\) ) ) ) # ( !\coffee_maker_state.S_DONE~q\ & ( !\sl_cappuccino_int~q\ & ( (\Selector10~1_combout\ & ((\Selector10~2_combout\) # (\I_count6|Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011111111110011001100010001000111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_Selector10~1_combout\,
	datac => \ALT_INV_Selector10~2_combout\,
	datad => \I_count3|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_coffee_maker_state.S_DONE~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X13_Y4_N32
\coffee_maker_state.S_DONE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector10~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_DONE~DUPLICATE_q\);

-- Location: LABCELL_X13_Y4_N18
sl_fsm_done_int : cyclonev_lcell_comb
-- Equation(s):
-- \sl_fsm_done_int~combout\ = ( \coffee_maker_state.S_DONE~DUPLICATE_q\ & ( (!\WideOr0~combout\) # (\sl_fsm_done_int~combout\) ) ) # ( !\coffee_maker_state.S_DONE~DUPLICATE_q\ & ( (\sl_fsm_done_int~combout\ & \WideOr0~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sl_fsm_done_int~combout\,
	datad => \ALT_INV_WideOr0~combout\,
	dataf => \ALT_INV_coffee_maker_state.S_DONE~DUPLICATE_q\,
	combout => \sl_fsm_done_int~combout\);

-- Location: LABCELL_X11_Y1_N30
\sl_espresso_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_espresso_int~0_combout\ = ( \KEY[1]~input_o\ & ( !\KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \sl_espresso_int~0_combout\);

-- Location: LABCELL_X11_Y3_N33
\sl_espresso_int~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_espresso_int~1_combout\ = ( \sl_espresso_int~q\ & ( \sl_espresso_int~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) ) # ( !\sl_espresso_int~q\ & ( \sl_espresso_int~0_combout\ & ( (\KEY[3]~input_o\ & (!\sl_fsm_done_int~combout\ & 
-- (\sl_fsm_ready_int~combout\ & \KEY[0]~input_o\))) ) ) ) # ( \sl_espresso_int~q\ & ( !\sl_espresso_int~0_combout\ & ( !\sl_fsm_done_int~combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_sl_fsm_done_int~combout\,
	datac => \ALT_INV_sl_fsm_ready_int~combout\,
	datad => \ALT_INV_KEY[0]~input_o\,
	datae => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_sl_espresso_int~0_combout\,
	combout => \sl_espresso_int~1_combout\);

-- Location: FF_X11_Y3_N35
sl_espresso_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_espresso_int~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_espresso_int~q\);

-- Location: LABCELL_X11_Y3_N9
\coffee_maker_state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \coffee_maker_state~22_combout\ = ( \sl_2_Euro~q\ & ( (\sl_hot_chocolate_int~q\) # (\sl_espresso_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_sl_2_Euro~q\,
	combout => \coffee_maker_state~22_combout\);

-- Location: LABCELL_X13_Y3_N27
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\sl_1_Euro~q\ & (!\coffee_maker_state.S_IDLE~DUPLICATE_q\ & ((\sl_2_Euro~q\) # (\sl_coffee_int~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000001110000000000000111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_2_Euro~q\,
	datac => \ALT_INV_sl_1_Euro~q\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~DUPLICATE_q\,
	combout => \Selector4~0_combout\);

-- Location: LABCELL_X13_Y3_N36
\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( \Selector4~0_combout\ ) # ( !\Selector4~0_combout\ & ( (\coffee_maker_state.S_MENU2~q\ & ((!\coffee_maker_state~22_combout\) # (!\I_count3|Equal0~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state~22_combout\,
	datac => \I_count3|ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	dataf => \ALT_INV_Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X13_Y3_N38
\coffee_maker_state.S_MENU2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector4~1_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_MENU2~q\);

-- Location: LABCELL_X13_Y3_N12
WideOr0 : cyclonev_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = ( \coffee_maker_state.S_MENU2~q\ & ( \coffee_maker_state.S_MENU1~q\ ) ) # ( !\coffee_maker_state.S_MENU2~q\ & ( \coffee_maker_state.S_MENU1~q\ ) ) # ( \coffee_maker_state.S_MENU2~q\ & ( !\coffee_maker_state.S_MENU1~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \WideOr0~combout\);

-- Location: LABCELL_X13_Y3_N51
\LEDR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = ((\coffee_maker_state.S_MENU1~q\) # (\coffee_maker_state.S_GRIND~q\)) # (\coffee_maker_state.S_MENU2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111111111010111111111111101011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	datac => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datad => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \LEDR~0_combout\);

-- Location: LABCELL_X11_Y3_N45
\LEDR~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~1_combout\ = ( \coffee_maker_state.S_MENU2~q\ ) # ( !\coffee_maker_state.S_MENU2~q\ & ( (\coffee_maker_state.S_BREW~q\) # (\coffee_maker_state.S_MENU1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	datad => \ALT_INV_coffee_maker_state.S_BREW~q\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	combout => \LEDR~1_combout\);

-- Location: LABCELL_X9_Y4_N9
\LEDR~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~2_combout\ = ( \coffee_maker_state.S_MENU2~q\ & ( \coffee_maker_state.S_MENU1~q\ ) ) # ( !\coffee_maker_state.S_MENU2~q\ & ( \coffee_maker_state.S_MENU1~q\ ) ) # ( \coffee_maker_state.S_MENU2~q\ & ( !\coffee_maker_state.S_MENU1~q\ ) ) # ( 
-- !\coffee_maker_state.S_MENU2~q\ & ( !\coffee_maker_state.S_MENU1~q\ & ( \coffee_maker_state.S_CHOC_POWDER~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datae => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \LEDR~2_combout\);

-- Location: LABCELL_X9_Y4_N42
\LEDR~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~3_combout\ = ((\coffee_maker_state.S_MENU1~q\) # (\coffee_maker_state.S_PUMP_WATER~q\)) # (\coffee_maker_state.S_MENU2~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	datad => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \LEDR~3_combout\);

-- Location: LABCELL_X9_Y4_N3
\LEDR~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~4_combout\ = ( \coffee_maker_state.S_PUMP_MILK~q\ ) # ( !\coffee_maker_state.S_PUMP_MILK~q\ & ( (\coffee_maker_state.S_MENU2~q\) # (\coffee_maker_state.S_MENU1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	datad => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	combout => \LEDR~4_combout\);

-- Location: LABCELL_X13_Y3_N39
\LEDR~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~5_combout\ = ( \coffee_maker_state.S_MENU1~q\ ) # ( !\coffee_maker_state.S_MENU1~q\ & ( (\coffee_maker_state.S_DONE~q\) # (\coffee_maker_state.S_MENU2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	datac => \ALT_INV_coffee_maker_state.S_DONE~q\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \LEDR~5_combout\);

-- Location: LABCELL_X13_Y3_N0
\LEDR~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LEDR~6_combout\ = ( \coffee_maker_state.S_MENU2~q\ ) # ( !\coffee_maker_state.S_MENU2~q\ & ( (!\coffee_maker_state.S_IDLE~DUPLICATE_q\) # (\coffee_maker_state.S_MENU1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111111111111111111111001111110011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state.S_IDLE~DUPLICATE_q\,
	datac => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	datae => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	combout => \LEDR~6_combout\);

-- Location: LABCELL_X23_Y2_N0
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\ = SUM(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	cin => GND,
	sumout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\,
	cout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: LABCELL_X23_Y2_N54
\i_lpm_count|LPM_COUNTER_component|auto_generated|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\ = ( \sl_coffee_int~q\ ) # ( !\sl_coffee_int~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X23_Y2_N2
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~sumout\,
	sclr => \SW[9]~input_o\,
	ena => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LABCELL_X23_Y2_N3
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\ = SUM(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ ))
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	cin => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	sumout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\,
	cout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X23_Y2_N5
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~sumout\,
	sclr => \SW[9]~input_o\,
	ena => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LABCELL_X23_Y2_N6
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\ = SUM(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ ))
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	cin => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	sumout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\,
	cout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X23_Y2_N8
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~sumout\,
	sclr => \SW[9]~input_o\,
	ena => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LABCELL_X23_Y2_N9
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\ = SUM(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ ))
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	cin => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	sumout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\,
	cout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X23_Y2_N11
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~sumout\,
	sclr => \SW[9]~input_o\,
	ena => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3));

-- Location: LABCELL_X23_Y2_N39
\i0_hex7seg|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux6~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) ) ) ) # ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) # 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111110101111101011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	combout => \i0_hex7seg|Mux6~0_combout\);

-- Location: LABCELL_X23_Y2_N33
\i0_hex7seg|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux5~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) $ 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000000000000000000000101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	combout => \i0_hex7seg|Mux5~0_combout\);

-- Location: LABCELL_X23_Y2_N48
\i0_hex7seg|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux4~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( ((\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101110101011101010111010101000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	combout => \i0_hex7seg|Mux4~0_combout\);

-- Location: LABCELL_X23_Y2_N42
\i0_hex7seg|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux3~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) ) ) ) 
-- # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110000001100000011000000110000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	combout => \i0_hex7seg|Mux3~0_combout\);

-- Location: LABCELL_X23_Y2_N51
\i0_hex7seg|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux2~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) # 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	combout => \i0_hex7seg|Mux2~0_combout\);

-- Location: LABCELL_X23_Y2_N24
\i0_hex7seg|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux1~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	combout => \i0_hex7seg|Mux1~0_combout\);

-- Location: LABCELL_X23_Y2_N27
\i0_hex7seg|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux0~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	combout => \i0_hex7seg|Mux0~0_combout\);

-- Location: LABCELL_X23_Y2_N12
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~sumout\ = SUM(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ ))
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	cin => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	sumout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~sumout\,
	cout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X23_Y2_N14
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~sumout\,
	sclr => \SW[9]~input_o\,
	ena => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4));

-- Location: LABCELL_X23_Y2_N15
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~sumout\ = SUM(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ ))
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	cin => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	sumout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~sumout\,
	cout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X23_Y2_N17
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~sumout\,
	sclr => \SW[9]~input_o\,
	ena => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5));

-- Location: LABCELL_X23_Y2_N18
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6~sumout\ = SUM(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ ))
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	cin => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	sumout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6~sumout\,
	cout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X23_Y2_N20
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6~sumout\,
	sclr => \SW[9]~input_o\,
	ena => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6));

-- Location: LABCELL_X23_Y2_N21
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita7~sumout\ = SUM(( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) ) + ( GND ) + ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	cin => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	sumout => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita7~sumout\);

-- Location: FF_X23_Y2_N23
\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_comb_bita7~sumout\,
	sclr => \SW[9]~input_o\,
	ena => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7));

-- Location: LABCELL_X22_Y2_N12
\i1_hex7seg|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux6~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) 
-- & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) ) # ( 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) # (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111110011111100111100111100001111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	combout => \i1_hex7seg|Mux6~0_combout\);

-- Location: LABCELL_X22_Y2_N30
\i1_hex7seg|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux5~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011001111110011110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	combout => \i1_hex7seg|Mux5~0_combout\);

-- Location: LABCELL_X22_Y2_N36
\i1_hex7seg|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux4~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) ) ) # ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011111111111111111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	combout => \i1_hex7seg|Mux4~0_combout\);

-- Location: LABCELL_X22_Y2_N21
\i1_hex7seg|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux3~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) $ (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) ) # ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010100000101000010100101101001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	combout => \i1_hex7seg|Mux3~0_combout\);

-- Location: LABCELL_X22_Y2_N48
\i1_hex7seg|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux2~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100001100110011001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	combout => \i1_hex7seg|Mux2~0_combout\);

-- Location: LABCELL_X22_Y2_N57
\i1_hex7seg|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux1~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) ) ) ) 
-- # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000011110000111100001010000010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	combout => \i1_hex7seg|Mux1~0_combout\);

-- Location: LABCELL_X22_Y2_N24
\i1_hex7seg|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux0~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000011000000110000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	combout => \i1_hex7seg|Mux0~0_combout\);

-- Location: LABCELL_X11_Y3_N48
\HEX2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~0_combout\ = ( \sl_cappuccino_int~q\ ) # ( !\sl_cappuccino_int~q\ & ( ((!\SW[9]~input_o\) # (\sl_coffee_int~q\)) # (\sl_espresso_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX2~0_combout\);

-- Location: LABCELL_X13_Y3_N48
\HEX5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX5~0_combout\ = ( \sl_cappuccino_int~q\ & ( \SW[9]~input_o\ ) ) # ( !\sl_cappuccino_int~q\ & ( (\SW[9]~input_o\ & ((!\sl_espresso_int~q\) # (\sl_coffee_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001111000000001100111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX5~0_combout\);

-- Location: LABCELL_X9_Y4_N57
\HEX2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~1_combout\ = ( \sl_hot_chocolate_int~q\ ) # ( !\sl_hot_chocolate_int~q\ & ( (((!\SW[9]~input_o\) # (\sl_espresso_int~q\)) # (\sl_coffee_int~q\)) # (\sl_cappuccino_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \HEX2~1_combout\);

-- Location: LABCELL_X9_Y4_N24
\HEX2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~2_combout\ = ( \sl_cappuccino_int~q\ & ( (!\SW[9]~input_o\) # (\sl_coffee_int~q\) ) ) # ( !\sl_cappuccino_int~q\ & ( ((!\SW[9]~input_o\) # ((\sl_coffee_int~q\) # (\sl_hot_chocolate_int~q\))) # (\sl_espresso_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111110111111111111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_sl_hot_chocolate_int~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX2~2_combout\);

-- Location: LABCELL_X9_Y4_N21
\HEX2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2~3_combout\ = ( !\sl_coffee_int~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \HEX2~3_combout\);

-- Location: LABCELL_X9_Y4_N45
\HEX4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~0_combout\ = ( \SW[9]~input_o\ & ( \sl_coffee_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \HEX4~0_combout\);

-- Location: LABCELL_X9_Y4_N27
\HEX4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~1_combout\ = (!\SW[9]~input_o\) # ((!\sl_coffee_int~q\ & ((!\sl_espresso_int~q\) # (\sl_cappuccino_int~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011111100111011001111110011101100111111001110110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_sl_cappuccino_int~q\,
	combout => \HEX4~1_combout\);

-- Location: LABCELL_X9_Y4_N54
\HEX4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX4~2_combout\ = ( \SW[9]~input_o\ & ( (!\sl_cappuccino_int~q\ & (!\sl_coffee_int~q\ & !\sl_espresso_int~q\)) ) ) # ( !\SW[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \HEX4~2_combout\);

-- Location: IOIBUF_X8_Y81_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X6_Y81_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X28_Y81_N18
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X89_Y16_N21
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X34_Y9_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


