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

-- DATE "07/27/2020 21:13:40"

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
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6);
	HEX1 : OUT std_logic_vector(0 TO 6);
	HEX2 : OUT std_logic_vector(0 TO 6);
	HEX3 : OUT std_logic_vector(0 TO 6);
	HEX4 : OUT std_logic_vector(0 TO 6);
	HEX5 : OUT std_logic_vector(0 TO 6)
	);
END e_my_coffee_maker_FSM;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \I_count3|Add0~5_sumout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \sl_coffee_int~0_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \sl_coffee_int~q\ : std_logic;
SIGNAL \I_count3|u_counter_int[27]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~78\ : std_logic;
SIGNAL \I_count3|Add0~73_sumout\ : std_logic;
SIGNAL \I_count3|Add0~74\ : std_logic;
SIGNAL \I_count3|Add0~69_sumout\ : std_logic;
SIGNAL \I_count3|Add0~70\ : std_logic;
SIGNAL \I_count3|Add0~65_sumout\ : std_logic;
SIGNAL \I_count3|Add0~66\ : std_logic;
SIGNAL \I_count3|Add0~13_sumout\ : std_logic;
SIGNAL \I_count3|u_counter_int[26]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Add0~14\ : std_logic;
SIGNAL \I_count3|Add0~9_sumout\ : std_logic;
SIGNAL \I_count3|Equal0~0_combout\ : std_logic;
SIGNAL \I_count3|u_counter_int[16]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|u_counter_int[19]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Equal0~4_combout\ : std_logic;
SIGNAL \I_count3|Equal0~1_combout\ : std_logic;
SIGNAL \I_count3|u_counter_int[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|u_counter_int[12]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|Equal0~2_combout\ : std_logic;
SIGNAL \I_count3|Equal0~5_combout\ : std_logic;
SIGNAL \sl_espresso_int~0_combout\ : std_logic;
SIGNAL \sl_espresso_int~q\ : std_logic;
SIGNAL \i_fsmdisplay|svl_H2~5_combout\ : std_logic;
SIGNAL \I_count6|Add0~69_sumout\ : std_logic;
SIGNAL \sl_hot_chocolate_int~0_combout\ : std_logic;
SIGNAL \sl_hot_chocolate_int~q\ : std_logic;
SIGNAL \Selector1~7_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \sl_2_Euro~0_combout\ : std_logic;
SIGNAL \sl_2_Euro~q\ : std_logic;
SIGNAL \coffee_maker_state~24_combout\ : std_logic;
SIGNAL \coffee_maker_state~25_combout\ : std_logic;
SIGNAL \sl_1_Euro~0_combout\ : std_logic;
SIGNAL \sl_1_Euro~q\ : std_logic;
SIGNAL \coffee_maker_state.S_MENU2~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_MENU2~DUPLICATE_q\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \i_fsmdisplay|svl_H2~4_combout\ : std_logic;
SIGNAL \coffee_maker_state~22_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_MENU1~DUPLICATE_q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_GRIND~q\ : std_logic;
SIGNAL \coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_PUMP_MILK~q\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \coffee_maker_state~26_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Selector1~8_combout\ : std_logic;
SIGNAL \Selector1~9_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \Selector1~10_combout\ : std_logic;
SIGNAL \sl_reset6n_int~q\ : std_logic;
SIGNAL \I_count6|Add0~70\ : std_logic;
SIGNAL \I_count6|Add0~61_sumout\ : std_logic;
SIGNAL \I_count6|Add0~62\ : std_logic;
SIGNAL \I_count6|Add0~57_sumout\ : std_logic;
SIGNAL \I_count6|Add0~58\ : std_logic;
SIGNAL \I_count6|Add0~53_sumout\ : std_logic;
SIGNAL \I_count6|Add0~54\ : std_logic;
SIGNAL \I_count6|Add0~49_sumout\ : std_logic;
SIGNAL \I_count6|Add0~50\ : std_logic;
SIGNAL \I_count6|Add0~65_sumout\ : std_logic;
SIGNAL \I_count6|Add0~66\ : std_logic;
SIGNAL \I_count6|Add0~1_sumout\ : std_logic;
SIGNAL \I_count6|Equal0~2_combout\ : std_logic;
SIGNAL \I_count6|u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~2\ : std_logic;
SIGNAL \I_count6|Add0~113_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[7]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~114\ : std_logic;
SIGNAL \I_count6|Add0~109_sumout\ : std_logic;
SIGNAL \I_count6|Add0~110\ : std_logic;
SIGNAL \I_count6|Add0~105_sumout\ : std_logic;
SIGNAL \I_count6|Add0~106\ : std_logic;
SIGNAL \I_count6|Add0~101_sumout\ : std_logic;
SIGNAL \I_count6|u_counter_int[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~102\ : std_logic;
SIGNAL \I_count6|Add0~97_sumout\ : std_logic;
SIGNAL \I_count6|Equal0~4_combout\ : std_logic;
SIGNAL \I_count6|u_counter_int[15]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|Add0~98\ : std_logic;
SIGNAL \I_count6|Add0~93_sumout\ : std_logic;
SIGNAL \I_count6|Add0~94\ : std_logic;
SIGNAL \I_count6|Add0~89_sumout\ : std_logic;
SIGNAL \I_count6|Add0~90\ : std_logic;
SIGNAL \I_count6|Add0~85_sumout\ : std_logic;
SIGNAL \I_count6|Add0~86\ : std_logic;
SIGNAL \I_count6|Add0~81_sumout\ : std_logic;
SIGNAL \I_count6|Add0~82\ : std_logic;
SIGNAL \I_count6|Add0~77_sumout\ : std_logic;
SIGNAL \I_count6|Add0~78\ : std_logic;
SIGNAL \I_count6|Add0~73_sumout\ : std_logic;
SIGNAL \I_count6|Equal0~3_combout\ : std_logic;
SIGNAL \I_count6|Add0~74\ : std_logic;
SIGNAL \I_count6|Add0~21_sumout\ : std_logic;
SIGNAL \I_count6|Add0~22\ : std_logic;
SIGNAL \I_count6|Add0~17_sumout\ : std_logic;
SIGNAL \I_count6|Add0~18\ : std_logic;
SIGNAL \I_count6|Add0~13_sumout\ : std_logic;
SIGNAL \I_count6|Add0~14\ : std_logic;
SIGNAL \I_count6|Add0~9_sumout\ : std_logic;
SIGNAL \I_count6|Add0~10\ : std_logic;
SIGNAL \I_count6|Add0~5_sumout\ : std_logic;
SIGNAL \I_count6|Add0~6\ : std_logic;
SIGNAL \I_count6|Add0~45_sumout\ : std_logic;
SIGNAL \I_count6|Add0~46\ : std_logic;
SIGNAL \I_count6|Add0~41_sumout\ : std_logic;
SIGNAL \I_count6|Add0~42\ : std_logic;
SIGNAL \I_count6|Add0~37_sumout\ : std_logic;
SIGNAL \I_count6|Add0~38\ : std_logic;
SIGNAL \I_count6|Add0~33_sumout\ : std_logic;
SIGNAL \I_count6|Add0~34\ : std_logic;
SIGNAL \I_count6|Add0~29_sumout\ : std_logic;
SIGNAL \I_count6|Add0~30\ : std_logic;
SIGNAL \I_count6|Add0~25_sumout\ : std_logic;
SIGNAL \I_count6|Equal0~1_combout\ : std_logic;
SIGNAL \I_count6|Equal0~0_combout\ : std_logic;
SIGNAL \I_count6|Equal0~5_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_BREW~q\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_CHOC_POWDER~q\ : std_logic;
SIGNAL \Selector8~1_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~2_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_PUMP_WATER~q\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_DONE~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_IDLE~q\ : std_logic;
SIGNAL \sl_cappuccino_int~0_combout\ : std_logic;
SIGNAL \sl_cappuccino_int~q\ : std_logic;
SIGNAL \Selector0~7_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector0~8_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL \Selector0~9_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Selector0~10_combout\ : std_logic;
SIGNAL \Selector0~11_combout\ : std_logic;
SIGNAL \sl_reset3n_int~q\ : std_logic;
SIGNAL \I_count3|Add0~6\ : std_logic;
SIGNAL \I_count3|Add0~61_sumout\ : std_logic;
SIGNAL \I_count3|Add0~62\ : std_logic;
SIGNAL \I_count3|Add0~17_sumout\ : std_logic;
SIGNAL \I_count3|Add0~18\ : std_logic;
SIGNAL \I_count3|Add0~21_sumout\ : std_logic;
SIGNAL \I_count3|Add0~22\ : std_logic;
SIGNAL \I_count3|Add0~25_sumout\ : std_logic;
SIGNAL \I_count3|Add0~26\ : std_logic;
SIGNAL \I_count3|Add0~29_sumout\ : std_logic;
SIGNAL \I_count3|Add0~30\ : std_logic;
SIGNAL \I_count3|Add0~33_sumout\ : std_logic;
SIGNAL \I_count3|Add0~34\ : std_logic;
SIGNAL \I_count3|Add0~37_sumout\ : std_logic;
SIGNAL \I_count3|Add0~38\ : std_logic;
SIGNAL \I_count3|Add0~1_sumout\ : std_logic;
SIGNAL \I_count3|Add0~2\ : std_logic;
SIGNAL \I_count3|Add0~109_sumout\ : std_logic;
SIGNAL \I_count3|Add0~110\ : std_logic;
SIGNAL \I_count3|Add0~57_sumout\ : std_logic;
SIGNAL \I_count3|Add0~58\ : std_logic;
SIGNAL \I_count3|Add0~53_sumout\ : std_logic;
SIGNAL \I_count3|Add0~54\ : std_logic;
SIGNAL \I_count3|Add0~49_sumout\ : std_logic;
SIGNAL \I_count3|Add0~50\ : std_logic;
SIGNAL \I_count3|Add0~45_sumout\ : std_logic;
SIGNAL \I_count3|Add0~46\ : std_logic;
SIGNAL \I_count3|Add0~41_sumout\ : std_logic;
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
SIGNAL \I_count3|Add0~90\ : std_logic;
SIGNAL \I_count3|Add0~85_sumout\ : std_logic;
SIGNAL \I_count3|Add0~86\ : std_logic;
SIGNAL \I_count3|Add0~81_sumout\ : std_logic;
SIGNAL \I_count3|Add0~82\ : std_logic;
SIGNAL \I_count3|Add0~77_sumout\ : std_logic;
SIGNAL \I_count3|Equal0~3_combout\ : std_logic;
SIGNAL \coffee_maker_state~23_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \coffee_maker_state.S_MENU1~q\ : std_logic;
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
SIGNAL \i_fsmdisplay|svl_H2[6]~0_combout\ : std_logic;
SIGNAL \i_fsmdisplay|svl_H5[6]~0_combout\ : std_logic;
SIGNAL \i_fsmdisplay|svl_H2[2]~1_combout\ : std_logic;
SIGNAL \i_fsmdisplay|svl_H2[1]~2_combout\ : std_logic;
SIGNAL \i_fsmdisplay|svl_H2[1]~3_combout\ : std_logic;
SIGNAL \i_fsmdisplay|svl_H4[6]~0_combout\ : std_logic;
SIGNAL \i_fsmdisplay|svl_H4[3]~1_combout\ : std_logic;
SIGNAL \i_fsmdisplay|svl_H4[0]~2_combout\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \I_count6|u_counter_int\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \I_count3|u_counter_int\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \I_count6|ALT_INV_u_counter_int\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \ALT_INV_sl_2_Euro~q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_sl_1_Euro~q\ : std_logic;
SIGNAL \ALT_INV_sl_hot_chocolate_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_cappuccino_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_espresso_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_coffee_int~q\ : std_logic;
SIGNAL \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_MENU2~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_MENU1~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[7]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[11]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count6|ALT_INV_u_counter_int[15]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[16]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[17]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[19]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[10]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[12]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[26]~DUPLICATE_q\ : std_logic;
SIGNAL \I_count3|ALT_INV_u_counter_int[27]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector10~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector10~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~9_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~10_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~9_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~8_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~7_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_sl_reset6n_int~q\ : std_logic;
SIGNAL \ALT_INV_sl_reset3n_int~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state~26_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector8~0_combout\ : std_logic;
SIGNAL \i_fsmdisplay|ALT_INV_svl_H2~5_combout\ : std_logic;
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
SIGNAL \I_count3|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \i_fsmdisplay|ALT_INV_svl_H2~4_combout\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state~25_combout\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state~24_combout\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state~23_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \I_count3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state~22_combout\ : std_logic;
SIGNAL \i_fsmdisplay|ALT_INV_svl_H2[1]~3_combout\ : std_logic;
SIGNAL \i_fsmdisplay|ALT_INV_svl_H5[6]~0_combout\ : std_logic;
SIGNAL \i_fsmdisplay|ALT_INV_svl_H2[6]~0_combout\ : std_logic;
SIGNAL \i1_hex7seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \i0_hex7seg|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_IDLE~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_DONE~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_BREW~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_GRIND~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_MENU2~q\ : std_logic;
SIGNAL \ALT_INV_coffee_maker_state.S_MENU1~q\ : std_logic;

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
\I_count6|ALT_INV_u_counter_int\(6) <= NOT \I_count6|u_counter_int\(6);
\ALT_INV_sl_2_Euro~q\ <= NOT \sl_2_Euro~q\;
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
\ALT_INV_sl_1_Euro~q\ <= NOT \sl_1_Euro~q\;
\ALT_INV_sl_hot_chocolate_int~q\ <= NOT \sl_hot_chocolate_int~q\;
\ALT_INV_sl_cappuccino_int~q\ <= NOT \sl_cappuccino_int~q\;
\ALT_INV_sl_espresso_int~q\ <= NOT \sl_espresso_int~q\;
\ALT_INV_sl_coffee_int~q\ <= NOT \sl_coffee_int~q\;
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1);
\i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0) <= NOT \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0);
\ALT_INV_coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\ <= NOT \coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\;
\ALT_INV_coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\ <= NOT \coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\;
\ALT_INV_coffee_maker_state.S_MENU2~DUPLICATE_q\ <= NOT \coffee_maker_state.S_MENU2~DUPLICATE_q\;
\ALT_INV_coffee_maker_state.S_MENU1~DUPLICATE_q\ <= NOT \coffee_maker_state.S_MENU1~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[7]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[7]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[10]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[10]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[11]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[11]~DUPLICATE_q\;
\I_count6|ALT_INV_u_counter_int[15]~DUPLICATE_q\ <= NOT \I_count6|u_counter_int[15]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[16]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[16]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[17]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[17]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[19]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[19]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[10]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[10]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[12]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[12]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[26]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[26]~DUPLICATE_q\;
\I_count3|ALT_INV_u_counter_int[27]~DUPLICATE_q\ <= NOT \I_count3|u_counter_int[27]~DUPLICATE_q\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_Selector10~2_combout\ <= NOT \Selector10~2_combout\;
\ALT_INV_Selector10~1_combout\ <= NOT \Selector10~1_combout\;
\ALT_INV_Selector1~9_combout\ <= NOT \Selector1~9_combout\;
\ALT_INV_Selector1~8_combout\ <= NOT \Selector1~8_combout\;
\ALT_INV_Selector1~7_combout\ <= NOT \Selector1~7_combout\;
\ALT_INV_Selector1~6_combout\ <= NOT \Selector1~6_combout\;
\ALT_INV_Selector1~5_combout\ <= NOT \Selector1~5_combout\;
\ALT_INV_Selector1~4_combout\ <= NOT \Selector1~4_combout\;
\ALT_INV_Selector1~3_combout\ <= NOT \Selector1~3_combout\;
\ALT_INV_Selector1~2_combout\ <= NOT \Selector1~2_combout\;
\ALT_INV_Selector1~1_combout\ <= NOT \Selector1~1_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Selector4~1_combout\ <= NOT \Selector4~1_combout\;
\ALT_INV_Selector0~10_combout\ <= NOT \Selector0~10_combout\;
\ALT_INV_Selector0~9_combout\ <= NOT \Selector0~9_combout\;
\ALT_INV_Selector0~8_combout\ <= NOT \Selector0~8_combout\;
\ALT_INV_Selector0~7_combout\ <= NOT \Selector0~7_combout\;
\ALT_INV_Selector0~6_combout\ <= NOT \Selector0~6_combout\;
\ALT_INV_Selector0~5_combout\ <= NOT \Selector0~5_combout\;
\ALT_INV_Selector0~4_combout\ <= NOT \Selector0~4_combout\;
\ALT_INV_Selector0~3_combout\ <= NOT \Selector0~3_combout\;
\ALT_INV_Selector0~2_combout\ <= NOT \Selector0~2_combout\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_sl_reset6n_int~q\ <= NOT \sl_reset6n_int~q\;
\ALT_INV_sl_reset3n_int~q\ <= NOT \sl_reset3n_int~q\;
\ALT_INV_coffee_maker_state~26_combout\ <= NOT \coffee_maker_state~26_combout\;
\ALT_INV_Selector8~1_combout\ <= NOT \Selector8~1_combout\;
\ALT_INV_Selector8~0_combout\ <= NOT \Selector8~0_combout\;
\i_fsmdisplay|ALT_INV_svl_H2~5_combout\ <= NOT \i_fsmdisplay|svl_H2~5_combout\;
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
\I_count3|ALT_INV_Equal0~5_combout\ <= NOT \I_count3|Equal0~5_combout\;
\i_fsmdisplay|ALT_INV_svl_H2~4_combout\ <= NOT \i_fsmdisplay|svl_H2~4_combout\;
\ALT_INV_coffee_maker_state~25_combout\ <= NOT \coffee_maker_state~25_combout\;
\ALT_INV_coffee_maker_state~24_combout\ <= NOT \coffee_maker_state~24_combout\;
\ALT_INV_coffee_maker_state~23_combout\ <= NOT \coffee_maker_state~23_combout\;
\I_count3|ALT_INV_Equal0~4_combout\ <= NOT \I_count3|Equal0~4_combout\;
\I_count3|ALT_INV_Equal0~3_combout\ <= NOT \I_count3|Equal0~3_combout\;
\I_count3|ALT_INV_Equal0~2_combout\ <= NOT \I_count3|Equal0~2_combout\;
\I_count3|ALT_INV_Equal0~1_combout\ <= NOT \I_count3|Equal0~1_combout\;
\I_count3|ALT_INV_Equal0~0_combout\ <= NOT \I_count3|Equal0~0_combout\;
\ALT_INV_coffee_maker_state~22_combout\ <= NOT \coffee_maker_state~22_combout\;
\i_fsmdisplay|ALT_INV_svl_H2[1]~3_combout\ <= NOT \i_fsmdisplay|svl_H2[1]~3_combout\;
\i_fsmdisplay|ALT_INV_svl_H5[6]~0_combout\ <= NOT \i_fsmdisplay|svl_H5[6]~0_combout\;
\i_fsmdisplay|ALT_INV_svl_H2[6]~0_combout\ <= NOT \i_fsmdisplay|svl_H2[6]~0_combout\;
\i1_hex7seg|ALT_INV_Mux6~0_combout\ <= NOT \i1_hex7seg|Mux6~0_combout\;
\i0_hex7seg|ALT_INV_Mux6~0_combout\ <= NOT \i0_hex7seg|Mux6~0_combout\;
\ALT_INV_coffee_maker_state.S_IDLE~q\ <= NOT \coffee_maker_state.S_IDLE~q\;
\ALT_INV_coffee_maker_state.S_DONE~q\ <= NOT \coffee_maker_state.S_DONE~q\;
\ALT_INV_coffee_maker_state.S_PUMP_MILK~q\ <= NOT \coffee_maker_state.S_PUMP_MILK~q\;
\ALT_INV_coffee_maker_state.S_PUMP_WATER~q\ <= NOT \coffee_maker_state.S_PUMP_WATER~q\;
\ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\ <= NOT \coffee_maker_state.S_CHOC_POWDER~q\;
\ALT_INV_coffee_maker_state.S_BREW~q\ <= NOT \coffee_maker_state.S_BREW~q\;
\ALT_INV_coffee_maker_state.S_GRIND~q\ <= NOT \coffee_maker_state.S_GRIND~q\;
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
\I_count6|ALT_INV_u_counter_int\(5) <= NOT \I_count6|u_counter_int\(5);
\I_count6|ALT_INV_u_counter_int\(1) <= NOT \I_count6|u_counter_int\(1);
\I_count6|ALT_INV_u_counter_int\(2) <= NOT \I_count6|u_counter_int\(2);
\I_count6|ALT_INV_u_counter_int\(3) <= NOT \I_count6|u_counter_int\(3);
\I_count6|ALT_INV_u_counter_int\(4) <= NOT \I_count6|u_counter_int\(4);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_MENU1~q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_MENU2~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_GRIND~q\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_BREW~q\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_CHOC_POWDER~q\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_PUMP_WATER~q\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \coffee_maker_state.S_DONE~q\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y4_N96
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

-- Location: IOOBUF_X89_Y13_N39
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

-- Location: IOOBUF_X89_Y13_N56
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

-- Location: IOOBUF_X89_Y4_N79
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

-- Location: IOOBUF_X89_Y11_N96
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

-- Location: IOOBUF_X89_Y11_N79
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

-- Location: IOOBUF_X89_Y8_N39
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

-- Location: IOOBUF_X89_Y8_N56
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

-- Location: IOOBUF_X89_Y15_N56
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

-- Location: IOOBUF_X89_Y15_N39
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

-- Location: IOOBUF_X89_Y16_N56
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

-- Location: IOOBUF_X89_Y16_N39
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

-- Location: IOOBUF_X89_Y6_N56
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

-- Location: IOOBUF_X89_Y6_N39
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

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|ALT_INV_svl_H2[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|ALT_INV_svl_H5[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N39
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

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|svl_H2[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|svl_H2[2]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|svl_H2[1]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|ALT_INV_svl_H5[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|ALT_INV_svl_H2[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N62
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

-- Location: IOOBUF_X89_Y21_N39
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

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|svl_H2[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|svl_H2[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|ALT_INV_svl_H2[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y16_N5
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

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|svl_H4[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y15_N5
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

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|ALT_INV_svl_H5[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|svl_H4[3]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y13_N22
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

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|ALT_INV_svl_H5[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|svl_H4[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \i_fsmdisplay|svl_H5[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X89_Y23_N5
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

-- Location: IOOBUF_X89_Y9_N56
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

-- Location: IOOBUF_X89_Y23_N22
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

-- Location: IOOBUF_X89_Y25_N22
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

-- Location: IOOBUF_X89_Y21_N56
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

-- Location: IOOBUF_X89_Y20_N62
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

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
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

-- Location: LABCELL_X81_Y6_N30
\I_count3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~5_sumout\ = SUM(( \I_count3|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))
-- \I_count3|Add0~6\ = CARRY(( \I_count3|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(0),
	cin => GND,
	sumout => \I_count3|Add0~5_sumout\,
	cout => \I_count3|Add0~6\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X79_Y4_N12
\sl_coffee_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_coffee_int~0_combout\ = ( \sl_coffee_int~q\ & ( \KEY[3]~input_o\ ) ) # ( !\sl_coffee_int~q\ & ( \KEY[3]~input_o\ & ( (\KEY[1]~input_o\ & (\KEY[2]~input_o\ & (!\KEY[0]~input_o\ & !\coffee_maker_state.S_IDLE~q\))) ) ) ) # ( \sl_coffee_int~q\ & ( 
-- !\KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100010000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \sl_coffee_int~0_combout\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: FF_X79_Y4_N14
sl_coffee_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_coffee_int~0_combout\,
	clrn => \SW[9]~input_o\,
	sclr => \coffee_maker_state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_coffee_int~q\);

-- Location: FF_X81_Y5_N53
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[27]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N36
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

-- Location: LABCELL_X81_Y5_N39
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

-- Location: FF_X81_Y5_N41
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(23));

-- Location: LABCELL_X81_Y5_N42
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

-- Location: FF_X81_Y5_N44
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(24));

-- Location: LABCELL_X81_Y5_N45
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

-- Location: FF_X81_Y5_N47
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(25));

-- Location: LABCELL_X81_Y5_N48
\I_count3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~13_sumout\ = SUM(( \I_count3|u_counter_int[26]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~66\ ))
-- \I_count3|Add0~14\ = CARRY(( \I_count3|u_counter_int[26]~DUPLICATE_q\ ) + ( GND ) + ( \I_count3|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int[26]~DUPLICATE_q\,
	cin => \I_count3|Add0~66\,
	sumout => \I_count3|Add0~13_sumout\,
	cout => \I_count3|Add0~14\);

-- Location: FF_X81_Y5_N50
\I_count3|u_counter_int[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~13_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[26]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N51
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

-- Location: FF_X81_Y5_N52
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(27));

-- Location: FF_X81_Y5_N49
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(26));

-- Location: LABCELL_X81_Y6_N0
\I_count3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~0_combout\ = ( !\I_count3|u_counter_int\(26) & ( (\I_count3|u_counter_int\(0) & (\I_count3|u_counter_int\(8) & \I_count3|u_counter_int\(27))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(0),
	datac => \I_count3|ALT_INV_u_counter_int\(8),
	datad => \I_count3|ALT_INV_u_counter_int\(27),
	dataf => \I_count3|ALT_INV_u_counter_int\(26),
	combout => \I_count3|Equal0~0_combout\);

-- Location: FF_X81_Y5_N23
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(17));

-- Location: FF_X81_Y5_N19
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[16]~DUPLICATE_q\);

-- Location: FF_X81_Y5_N28
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[19]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N18
\I_count3|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~4_combout\ = ( !\I_count3|u_counter_int[16]~DUPLICATE_q\ & ( !\I_count3|u_counter_int[19]~DUPLICATE_q\ & ( (!\I_count3|u_counter_int\(17) & (!\I_count3|u_counter_int\(9) & (!\I_count3|u_counter_int\(18) & \I_count3|u_counter_int\(15)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(17),
	datab => \I_count3|ALT_INV_u_counter_int\(9),
	datac => \I_count3|ALT_INV_u_counter_int\(18),
	datad => \I_count3|ALT_INV_u_counter_int\(15),
	datae => \I_count3|ALT_INV_u_counter_int[16]~DUPLICATE_q\,
	dataf => \I_count3|ALT_INV_u_counter_int[19]~DUPLICATE_q\,
	combout => \I_count3|Equal0~4_combout\);

-- Location: LABCELL_X81_Y6_N24
\I_count3|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~1_combout\ = ( !\I_count3|u_counter_int\(7) & ( \I_count3|u_counter_int\(4) & ( (\I_count3|u_counter_int\(2) & (\I_count3|u_counter_int\(5) & (\I_count3|u_counter_int\(6) & \I_count3|u_counter_int\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(2),
	datab => \I_count3|ALT_INV_u_counter_int\(5),
	datac => \I_count3|ALT_INV_u_counter_int\(6),
	datad => \I_count3|ALT_INV_u_counter_int\(3),
	datae => \I_count3|ALT_INV_u_counter_int\(7),
	dataf => \I_count3|ALT_INV_u_counter_int\(4),
	combout => \I_count3|Equal0~1_combout\);

-- Location: FF_X81_Y5_N1
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[10]~DUPLICATE_q\);

-- Location: FF_X81_Y5_N7
\I_count3|u_counter_int[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~49_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[12]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y6_N12
\I_count3|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~2_combout\ = ( !\I_count3|u_counter_int\(11) & ( \I_count3|u_counter_int[12]~DUPLICATE_q\ & ( (\I_count3|u_counter_int\(1) & (!\I_count3|u_counter_int[10]~DUPLICATE_q\ & (\I_count3|u_counter_int\(14) & !\I_count3|u_counter_int\(13)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(1),
	datab => \I_count3|ALT_INV_u_counter_int[10]~DUPLICATE_q\,
	datac => \I_count3|ALT_INV_u_counter_int\(14),
	datad => \I_count3|ALT_INV_u_counter_int\(13),
	datae => \I_count3|ALT_INV_u_counter_int\(11),
	dataf => \I_count3|ALT_INV_u_counter_int[12]~DUPLICATE_q\,
	combout => \I_count3|Equal0~2_combout\);

-- Location: LABCELL_X81_Y6_N6
\I_count3|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~5_combout\ = ( \I_count3|Equal0~3_combout\ & ( \I_count3|Equal0~2_combout\ & ( (!\I_count3|Equal0~0_combout\) # ((!\I_count3|Equal0~4_combout\) # (!\I_count3|Equal0~1_combout\)) ) ) ) # ( !\I_count3|Equal0~3_combout\ & ( 
-- \I_count3|Equal0~2_combout\ ) ) # ( \I_count3|Equal0~3_combout\ & ( !\I_count3|Equal0~2_combout\ ) ) # ( !\I_count3|Equal0~3_combout\ & ( !\I_count3|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~0_combout\,
	datac => \I_count3|ALT_INV_Equal0~4_combout\,
	datad => \I_count3|ALT_INV_Equal0~1_combout\,
	datae => \I_count3|ALT_INV_Equal0~3_combout\,
	dataf => \I_count3|ALT_INV_Equal0~2_combout\,
	combout => \I_count3|Equal0~5_combout\);

-- Location: LABCELL_X79_Y4_N18
\sl_espresso_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_espresso_int~0_combout\ = ( \sl_espresso_int~q\ & ( \KEY[3]~input_o\ ) ) # ( !\sl_espresso_int~q\ & ( \KEY[3]~input_o\ & ( (\KEY[1]~input_o\ & (!\KEY[2]~input_o\ & (\KEY[0]~input_o\ & !\coffee_maker_state.S_IDLE~q\))) ) ) ) # ( \sl_espresso_int~q\ & ( 
-- !\KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000100000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datae => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \sl_espresso_int~0_combout\);

-- Location: FF_X79_Y4_N20
sl_espresso_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_espresso_int~0_combout\,
	clrn => \SW[9]~input_o\,
	sclr => \coffee_maker_state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_espresso_int~q\);

-- Location: LABCELL_X79_Y4_N33
\i_fsmdisplay|svl_H2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H2~5_combout\ = ( !\sl_coffee_int~q\ & ( (!\sl_espresso_int~q\ & !\sl_cappuccino_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \i_fsmdisplay|svl_H2~5_combout\);

-- Location: LABCELL_X81_Y4_N30
\I_count6|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~69_sumout\ = SUM(( \I_count6|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))
-- \I_count6|Add0~70\ = CARRY(( \I_count6|u_counter_int\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int\(0),
	cin => GND,
	sumout => \I_count6|Add0~69_sumout\,
	cout => \I_count6|Add0~70\);

-- Location: LABCELL_X79_Y4_N6
\sl_hot_chocolate_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_hot_chocolate_int~0_combout\ = ( \KEY[0]~input_o\ & ( \sl_hot_chocolate_int~q\ ) ) # ( !\KEY[0]~input_o\ & ( \sl_hot_chocolate_int~q\ ) ) # ( \KEY[0]~input_o\ & ( !\sl_hot_chocolate_int~q\ & ( (!\KEY[3]~input_o\ & (\KEY[2]~input_o\ & (\KEY[1]~input_o\ 
-- & !\coffee_maker_state.S_IDLE~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[1]~input_o\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \sl_hot_chocolate_int~0_combout\);

-- Location: FF_X80_Y4_N23
sl_hot_chocolate_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \sl_hot_chocolate_int~0_combout\,
	clrn => \SW[9]~input_o\,
	sclr => \coffee_maker_state.S_DONE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_hot_chocolate_int~q\);

-- Location: LABCELL_X80_Y4_N51
\Selector1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~7_combout\ = ( \i_fsmdisplay|svl_H2~5_combout\ & ( \I_count6|Equal0~5_combout\ & ( (!\sl_hot_chocolate_int~q\ & (\sl_reset6n_int~q\ & ((\coffee_maker_state.S_BREW~q\) # (\coffee_maker_state.S_PUMP_WATER~q\)))) ) ) ) # ( 
-- \i_fsmdisplay|svl_H2~5_combout\ & ( !\I_count6|Equal0~5_combout\ & ( (\sl_reset6n_int~q\ & ((\coffee_maker_state.S_BREW~q\) # (\coffee_maker_state.S_PUMP_WATER~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000111100000000000000000000001000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_hot_chocolate_int~q\,
	datab => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	datac => \ALT_INV_sl_reset6n_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datae => \i_fsmdisplay|ALT_INV_svl_H2~5_combout\,
	dataf => \I_count6|ALT_INV_Equal0~5_combout\,
	combout => \Selector1~7_combout\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: MLABCELL_X82_Y4_N27
\sl_2_Euro~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_2_Euro~0_combout\ = ( \sl_2_Euro~q\ & ( \coffee_maker_state.S_IDLE~q\ ) ) # ( \sl_2_Euro~q\ & ( !\coffee_maker_state.S_IDLE~q\ ) ) # ( !\sl_2_Euro~q\ & ( !\coffee_maker_state.S_IDLE~q\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & (!\SW[2]~input_o\ & 
-- !\SW[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_sl_2_Euro~q\,
	dataf => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	combout => \sl_2_Euro~0_combout\);

-- Location: FF_X80_Y4_N47
sl_2_Euro : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \sl_2_Euro~0_combout\,
	clrn => \SW[9]~input_o\,
	sclr => \coffee_maker_state.S_DONE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_2_Euro~q\);

-- Location: LABCELL_X81_Y4_N0
\coffee_maker_state~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \coffee_maker_state~24_combout\ = ( \sl_espresso_int~q\ & ( \sl_2_Euro~q\ ) ) # ( !\sl_espresso_int~q\ & ( (\sl_2_Euro~q\ & \sl_hot_chocolate_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sl_2_Euro~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_sl_espresso_int~q\,
	combout => \coffee_maker_state~24_combout\);

-- Location: LABCELL_X81_Y4_N24
\coffee_maker_state~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \coffee_maker_state~25_combout\ = ( \I_count3|Equal0~4_combout\ & ( \I_count3|Equal0~0_combout\ & ( (\coffee_maker_state~24_combout\ & (\I_count3|Equal0~1_combout\ & (\I_count3|Equal0~2_combout\ & \I_count3|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state~24_combout\,
	datab => \I_count3|ALT_INV_Equal0~1_combout\,
	datac => \I_count3|ALT_INV_Equal0~2_combout\,
	datad => \I_count3|ALT_INV_Equal0~3_combout\,
	datae => \I_count3|ALT_INV_Equal0~4_combout\,
	dataf => \I_count3|ALT_INV_Equal0~0_combout\,
	combout => \coffee_maker_state~25_combout\);

-- Location: MLABCELL_X82_Y4_N45
\sl_1_Euro~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_1_Euro~0_combout\ = ( \SW[1]~input_o\ & ( \coffee_maker_state.S_IDLE~q\ & ( \sl_1_Euro~q\ ) ) ) # ( !\SW[1]~input_o\ & ( \coffee_maker_state.S_IDLE~q\ & ( \sl_1_Euro~q\ ) ) ) # ( \SW[1]~input_o\ & ( !\coffee_maker_state.S_IDLE~q\ & ( \sl_1_Euro~q\ ) ) 
-- ) # ( !\SW[1]~input_o\ & ( !\coffee_maker_state.S_IDLE~q\ & ( ((!\SW[2]~input_o\ & (\SW[0]~input_o\ & !\SW[3]~input_o\))) # (\sl_1_Euro~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_sl_1_Euro~q\,
	datad => \ALT_INV_SW[3]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	combout => \sl_1_Euro~0_combout\);

-- Location: FF_X79_Y4_N11
sl_1_Euro : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \sl_1_Euro~0_combout\,
	clrn => \SW[9]~input_o\,
	sclr => \coffee_maker_state.S_DONE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_1_Euro~q\);

-- Location: FF_X80_Y5_N14
\coffee_maker_state.S_MENU2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_MENU2~q\);

-- Location: LABCELL_X80_Y5_N12
\Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = ( \coffee_maker_state.S_MENU2~q\ & ( \coffee_maker_state.S_IDLE~q\ & ( !\coffee_maker_state~25_combout\ ) ) ) # ( \coffee_maker_state.S_MENU2~q\ & ( !\coffee_maker_state.S_IDLE~q\ & ( (!\coffee_maker_state~25_combout\) # 
-- ((!\sl_1_Euro~q\ & ((\sl_coffee_int~q\) # (\sl_2_Euro~q\)))) ) ) ) # ( !\coffee_maker_state.S_MENU2~q\ & ( !\coffee_maker_state.S_IDLE~q\ & ( (!\sl_1_Euro~q\ & ((\sl_coffee_int~q\) # (\sl_2_Euro~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100101011101110111000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state~25_combout\,
	datab => \ALT_INV_sl_1_Euro~q\,
	datac => \ALT_INV_sl_2_Euro~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	dataf => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X80_Y5_N13
\coffee_maker_state.S_MENU2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector4~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_MENU2~DUPLICATE_q\);

-- Location: LABCELL_X81_Y4_N12
\Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = ( !\coffee_maker_state~25_combout\ & ( \coffee_maker_state.S_MENU2~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_MENU2~DUPLICATE_q\,
	dataf => \ALT_INV_coffee_maker_state~25_combout\,
	combout => \Selector4~1_combout\);

-- Location: LABCELL_X79_Y4_N30
\i_fsmdisplay|svl_H2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H2~4_combout\ = ( !\sl_espresso_int~q\ & ( !\sl_cappuccino_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_sl_espresso_int~q\,
	combout => \i_fsmdisplay|svl_H2~4_combout\);

-- Location: LABCELL_X79_Y4_N0
\coffee_maker_state~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \coffee_maker_state~22_combout\ = ( \sl_cappuccino_int~q\ & ( \sl_coffee_int~q\ & ( \sl_1_Euro~q\ ) ) ) # ( !\sl_cappuccino_int~q\ & ( \sl_coffee_int~q\ & ( \sl_1_Euro~q\ ) ) ) # ( \sl_cappuccino_int~q\ & ( !\sl_coffee_int~q\ & ( \sl_1_Euro~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_1_Euro~q\,
	datae => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \coffee_maker_state~22_combout\);

-- Location: FF_X80_Y4_N34
\coffee_maker_state.S_MENU1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_MENU1~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y5_N18
\Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = ( \coffee_maker_state.S_MENU1~DUPLICATE_q\ & ( \sl_2_Euro~q\ & ( ((\coffee_maker_state.S_MENU2~DUPLICATE_q\ & \sl_espresso_int~q\)) # (\coffee_maker_state~22_combout\) ) ) ) # ( !\coffee_maker_state.S_MENU1~DUPLICATE_q\ & ( 
-- \sl_2_Euro~q\ & ( (\coffee_maker_state.S_MENU2~DUPLICATE_q\ & \sl_espresso_int~q\) ) ) ) # ( \coffee_maker_state.S_MENU1~DUPLICATE_q\ & ( !\sl_2_Euro~q\ & ( \coffee_maker_state~22_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000011110011001100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state~22_combout\,
	datac => \ALT_INV_coffee_maker_state.S_MENU2~DUPLICATE_q\,
	datad => \ALT_INV_sl_espresso_int~q\,
	datae => \ALT_INV_coffee_maker_state.S_MENU1~DUPLICATE_q\,
	dataf => \ALT_INV_sl_2_Euro~q\,
	combout => \Selector5~0_combout\);

-- Location: MLABCELL_X82_Y5_N30
\Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = ( \coffee_maker_state.S_GRIND~q\ & ( \I_count6|Equal0~5_combout\ & ( ((!\sl_coffee_int~q\ & ((\I_count3|Equal0~5_combout\) # (\i_fsmdisplay|svl_H2~4_combout\)))) # (\Selector5~0_combout\) ) ) ) # ( !\coffee_maker_state.S_GRIND~q\ & 
-- ( \I_count6|Equal0~5_combout\ & ( (\Selector5~0_combout\ & !\I_count3|Equal0~5_combout\) ) ) ) # ( \coffee_maker_state.S_GRIND~q\ & ( !\I_count6|Equal0~5_combout\ & ( (((\I_count3|Equal0~5_combout\) # (\Selector5~0_combout\)) # 
-- (\i_fsmdisplay|svl_H2~4_combout\)) # (\sl_coffee_int~q\) ) ) ) # ( !\coffee_maker_state.S_GRIND~q\ & ( !\I_count6|Equal0~5_combout\ & ( (\Selector5~0_combout\ & !\I_count3|Equal0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000011111111111111100001111000000000010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \i_fsmdisplay|ALT_INV_svl_H2~4_combout\,
	datac => \ALT_INV_Selector5~0_combout\,
	datad => \I_count3|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	dataf => \I_count6|ALT_INV_Equal0~5_combout\,
	combout => \Selector5~1_combout\);

-- Location: FF_X82_Y5_N31
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

-- Location: FF_X80_Y5_N32
\coffee_maker_state.S_CHOC_POWDER~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\);

-- Location: LABCELL_X79_Y4_N57
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \coffee_maker_state.S_PUMP_MILK~q\ & ( \coffee_maker_state.S_PUMP_WATER~q\ & ( ((!\sl_coffee_int~q\) # (!\sl_cappuccino_int~q\)) # (\I_count3|Equal0~5_combout\) ) ) ) # ( !\coffee_maker_state.S_PUMP_MILK~q\ & ( 
-- \coffee_maker_state.S_PUMP_WATER~q\ & ( (!\I_count3|Equal0~5_combout\ & (!\sl_coffee_int~q\ & \sl_cappuccino_int~q\)) ) ) ) # ( \coffee_maker_state.S_PUMP_MILK~q\ & ( !\coffee_maker_state.S_PUMP_WATER~q\ & ( (!\sl_cappuccino_int~q\) # 
-- (\I_count3|Equal0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000101000001111111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_sl_cappuccino_int~q\,
	datae => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X79_Y4_N59
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

-- Location: LABCELL_X80_Y5_N57
\Selector1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = ( \sl_cappuccino_int~q\ & ( \coffee_maker_state.S_PUMP_MILK~q\ & ( (!\coffee_maker_state.S_GRIND~q\ & !\coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\) ) ) ) # ( \sl_cappuccino_int~q\ & ( !\coffee_maker_state.S_PUMP_MILK~q\ & ( 
-- (!\coffee_maker_state.S_GRIND~q\ & !\coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\) ) ) ) # ( !\sl_cappuccino_int~q\ & ( !\coffee_maker_state.S_PUMP_MILK~q\ & ( (!\coffee_maker_state.S_GRIND~q\ & !\coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datac => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\,
	datae => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	combout => \Selector1~3_combout\);

-- Location: LABCELL_X80_Y5_N24
\coffee_maker_state~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \coffee_maker_state~26_combout\ = ( !\sl_1_Euro~q\ & ( (!\sl_coffee_int~q\ & !\sl_2_Euro~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_sl_2_Euro~q\,
	dataf => \ALT_INV_sl_1_Euro~q\,
	combout => \coffee_maker_state~26_combout\);

-- Location: LABCELL_X80_Y5_N9
\Selector1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = ( \coffee_maker_state~26_combout\ & ( (\coffee_maker_state.S_IDLE~q\ & (\Selector1~3_combout\ & ((!\sl_coffee_int~q\) # (!\coffee_maker_state.S_BREW~q\)))) ) ) # ( !\coffee_maker_state~26_combout\ & ( (\Selector1~3_combout\ & 
-- ((!\sl_coffee_int~q\) # (!\coffee_maker_state.S_BREW~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110000000000010101000000000001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datad => \ALT_INV_Selector1~3_combout\,
	dataf => \ALT_INV_coffee_maker_state~26_combout\,
	combout => \Selector1~4_combout\);

-- Location: LABCELL_X80_Y4_N3
\Selector1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = ( \coffee_maker_state.S_PUMP_WATER~q\ & ( (!\sl_coffee_int~q\ & ((!\coffee_maker_state.S_BREW~q\) # ((!\sl_espresso_int~q\ & !\sl_cappuccino_int~q\)))) ) ) # ( !\coffee_maker_state.S_PUMP_WATER~q\ & ( 
-- (!\coffee_maker_state.S_BREW~q\) # ((!\sl_espresso_int~q\ & !\sl_cappuccino_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001000111111111000100011110000100000001111000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_BREW~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	combout => \Selector1~2_combout\);

-- Location: FF_X79_Y4_N58
\coffee_maker_state.S_PUMP_MILK~DUPLICATE\ : dffeas
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
	q => \coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y4_N6
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( \sl_cappuccino_int~q\ & ( !\coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\ & ( (!\coffee_maker_state.S_DONE~q\ & ((!\coffee_maker_state.S_PUMP_WATER~q\) # (\sl_coffee_int~q\))) ) ) ) # ( !\sl_cappuccino_int~q\ & ( 
-- !\coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\ & ( (!\coffee_maker_state.S_DONE~q\ & ((!\coffee_maker_state.S_PUMP_WATER~q\) # ((!\sl_espresso_int~q\) # (\sl_coffee_int~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001010100010101000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_DONE~q\,
	datab => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datad => \ALT_INV_sl_espresso_int~q\,
	datae => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\,
	combout => \Selector1~0_combout\);

-- Location: MLABCELL_X82_Y4_N15
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \I_count3|Equal0~3_combout\ & ( \I_count3|Equal0~4_combout\ & ( (!\Selector1~0_combout\ & ((!\I_count3|Equal0~2_combout\) # ((!\I_count3|Equal0~1_combout\) # (!\I_count3|Equal0~0_combout\)))) ) ) ) # ( 
-- !\I_count3|Equal0~3_combout\ & ( \I_count3|Equal0~4_combout\ & ( !\Selector1~0_combout\ ) ) ) # ( \I_count3|Equal0~3_combout\ & ( !\I_count3|Equal0~4_combout\ & ( !\Selector1~0_combout\ ) ) ) # ( !\I_count3|Equal0~3_combout\ & ( 
-- !\I_count3|Equal0~4_combout\ & ( !\Selector1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~2_combout\,
	datab => \ALT_INV_Selector1~0_combout\,
	datac => \I_count3|ALT_INV_Equal0~1_combout\,
	datad => \I_count3|ALT_INV_Equal0~0_combout\,
	datae => \I_count3|ALT_INV_Equal0~3_combout\,
	dataf => \I_count3|ALT_INV_Equal0~4_combout\,
	combout => \Selector1~1_combout\);

-- Location: LABCELL_X81_Y4_N18
\Selector1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = ( \I_count6|Equal0~5_combout\ & ( \coffee_maker_state.S_MENU1~q\ & ( (\Selector1~4_combout\ & (!\Selector1~1_combout\ & \coffee_maker_state~23_combout\)) ) ) ) # ( !\I_count6|Equal0~5_combout\ & ( \coffee_maker_state.S_MENU1~q\ & ( 
-- (\Selector1~4_combout\ & (\Selector1~2_combout\ & (!\Selector1~1_combout\ & \coffee_maker_state~23_combout\))) ) ) ) # ( \I_count6|Equal0~5_combout\ & ( !\coffee_maker_state.S_MENU1~q\ & ( (\Selector1~4_combout\ & !\Selector1~1_combout\) ) ) ) # ( 
-- !\I_count6|Equal0~5_combout\ & ( !\coffee_maker_state.S_MENU1~q\ & ( (\Selector1~4_combout\ & (\Selector1~2_combout\ & !\Selector1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000010100000101000000000000000100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~4_combout\,
	datab => \ALT_INV_Selector1~2_combout\,
	datac => \ALT_INV_Selector1~1_combout\,
	datad => \ALT_INV_coffee_maker_state~23_combout\,
	datae => \I_count6|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	combout => \Selector1~5_combout\);

-- Location: LABCELL_X80_Y4_N42
\Selector1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~8_combout\ = ( \coffee_maker_state.S_GRIND~q\ & ( \sl_cappuccino_int~q\ & ( (!\sl_coffee_int~q\) # ((\sl_hot_chocolate_int~q\ & \coffee_maker_state.S_CHOC_POWDER~q\)) ) ) ) # ( !\coffee_maker_state.S_GRIND~q\ & ( \sl_cappuccino_int~q\ & ( 
-- (\sl_hot_chocolate_int~q\ & \coffee_maker_state.S_CHOC_POWDER~q\) ) ) ) # ( \coffee_maker_state.S_GRIND~q\ & ( !\sl_cappuccino_int~q\ & ( (!\sl_espresso_int~q\ & (((\sl_hot_chocolate_int~q\ & \coffee_maker_state.S_CHOC_POWDER~q\)))) # (\sl_espresso_int~q\ 
-- & ((!\sl_coffee_int~q\) # ((\sl_hot_chocolate_int~q\ & \coffee_maker_state.S_CHOC_POWDER~q\)))) ) ) ) # ( !\coffee_maker_state.S_GRIND~q\ & ( !\sl_cappuccino_int~q\ & ( (\sl_hot_chocolate_int~q\ & \coffee_maker_state.S_CHOC_POWDER~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111010001000100111100000000000011111100110011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_espresso_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_hot_chocolate_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datae => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \Selector1~8_combout\);

-- Location: LABCELL_X81_Y4_N15
\Selector1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~9_combout\ = ( !\I_count3|Equal0~5_combout\ & ( ((\coffee_maker_state.S_MENU2~DUPLICATE_q\ & (!\sl_espresso_int~q\ & \coffee_maker_state~24_combout\))) # (\Selector1~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_MENU2~DUPLICATE_q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_Selector1~8_combout\,
	datad => \ALT_INV_coffee_maker_state~24_combout\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector1~9_combout\);

-- Location: LABCELL_X80_Y4_N36
\Selector1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = ( \coffee_maker_state.S_BREW~q\ & ( \coffee_maker_state~23_combout\ & ( (\sl_coffee_int~q\ & ((\coffee_maker_state.S_MENU1~q\) # (\I_count6|Equal0~5_combout\))) ) ) ) # ( !\coffee_maker_state.S_BREW~q\ & ( 
-- \coffee_maker_state~23_combout\ & ( (\sl_coffee_int~q\ & (((\I_count6|Equal0~5_combout\ & \coffee_maker_state.S_GRIND~q\)) # (\coffee_maker_state.S_MENU1~q\))) ) ) ) # ( \coffee_maker_state.S_BREW~q\ & ( !\coffee_maker_state~23_combout\ & ( 
-- (\sl_coffee_int~q\ & \I_count6|Equal0~5_combout\) ) ) ) # ( !\coffee_maker_state.S_BREW~q\ & ( !\coffee_maker_state~23_combout\ & ( (\sl_coffee_int~q\ & (\I_count6|Equal0~5_combout\ & \coffee_maker_state.S_GRIND~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000100010001000100000101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \I_count6|ALT_INV_Equal0~5_combout\,
	datac => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	datad => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datae => \ALT_INV_coffee_maker_state.S_BREW~q\,
	dataf => \ALT_INV_coffee_maker_state~23_combout\,
	combout => \Selector1~6_combout\);

-- Location: LABCELL_X81_Y4_N6
\Selector1~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~10_combout\ = ( \sl_reset6n_int~q\ & ( \Selector1~6_combout\ ) ) # ( !\sl_reset6n_int~q\ & ( \Selector1~6_combout\ ) ) # ( \sl_reset6n_int~q\ & ( !\Selector1~6_combout\ & ( (((!\Selector1~5_combout\) # (\Selector1~9_combout\)) # 
-- (\Selector4~1_combout\)) # (\Selector1~7_combout\) ) ) ) # ( !\sl_reset6n_int~q\ & ( !\Selector1~6_combout\ & ( (\Selector1~9_combout\) # (\Selector1~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector1~7_combout\,
	datab => \ALT_INV_Selector4~1_combout\,
	datac => \ALT_INV_Selector1~5_combout\,
	datad => \ALT_INV_Selector1~9_combout\,
	datae => \ALT_INV_sl_reset6n_int~q\,
	dataf => \ALT_INV_Selector1~6_combout\,
	combout => \Selector1~10_combout\);

-- Location: FF_X81_Y4_N8
sl_reset6n_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector1~10_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_reset6n_int~q\);

-- Location: FF_X81_Y4_N32
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

-- Location: LABCELL_X81_Y4_N33
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

-- Location: FF_X81_Y4_N35
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

-- Location: LABCELL_X81_Y4_N36
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

-- Location: FF_X81_Y4_N38
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

-- Location: LABCELL_X81_Y4_N39
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

-- Location: FF_X81_Y4_N41
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

-- Location: LABCELL_X81_Y4_N42
\I_count6|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~49_sumout\ = SUM(( \I_count6|u_counter_int\(4) ) + ( GND ) + ( \I_count6|Add0~54\ ))
-- \I_count6|Add0~50\ = CARRY(( \I_count6|u_counter_int\(4) ) + ( GND ) + ( \I_count6|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(4),
	cin => \I_count6|Add0~54\,
	sumout => \I_count6|Add0~49_sumout\,
	cout => \I_count6|Add0~50\);

-- Location: FF_X81_Y4_N43
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

-- Location: LABCELL_X81_Y4_N45
\I_count6|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~65_sumout\ = SUM(( \I_count6|u_counter_int\(5) ) + ( GND ) + ( \I_count6|Add0~50\ ))
-- \I_count6|Add0~66\ = CARRY(( \I_count6|u_counter_int\(5) ) + ( GND ) + ( \I_count6|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(5),
	cin => \I_count6|Add0~50\,
	sumout => \I_count6|Add0~65_sumout\,
	cout => \I_count6|Add0~66\);

-- Location: FF_X81_Y4_N47
\I_count6|u_counter_int[5]\ : dffeas
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
	q => \I_count6|u_counter_int\(5));

-- Location: LABCELL_X81_Y4_N48
\I_count6|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~1_sumout\ = SUM(( \I_count6|u_counter_int\(6) ) + ( GND ) + ( \I_count6|Add0~66\ ))
-- \I_count6|Add0~2\ = CARRY(( \I_count6|u_counter_int\(6) ) + ( GND ) + ( \I_count6|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(6),
	cin => \I_count6|Add0~66\,
	sumout => \I_count6|Add0~1_sumout\,
	cout => \I_count6|Add0~2\);

-- Location: FF_X81_Y4_N50
\I_count6|u_counter_int[6]\ : dffeas
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
	q => \I_count6|u_counter_int\(6));

-- Location: LABCELL_X80_Y4_N6
\I_count6|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~2_combout\ = ( \I_count6|u_counter_int\(4) & ( \I_count6|u_counter_int\(0) & ( (\I_count6|u_counter_int\(5) & (\I_count6|u_counter_int\(2) & (\I_count6|u_counter_int\(3) & \I_count6|u_counter_int\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(5),
	datab => \I_count6|ALT_INV_u_counter_int\(2),
	datac => \I_count6|ALT_INV_u_counter_int\(3),
	datad => \I_count6|ALT_INV_u_counter_int\(1),
	datae => \I_count6|ALT_INV_u_counter_int\(4),
	dataf => \I_count6|ALT_INV_u_counter_int\(0),
	combout => \I_count6|Equal0~2_combout\);

-- Location: FF_X81_Y4_N28
\I_count6|u_counter_int[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \I_count6|Add0~97_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int[11]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y4_N51
\I_count6|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~113_sumout\ = SUM(( \I_count6|u_counter_int[7]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~2\ ))
-- \I_count6|Add0~114\ = CARRY(( \I_count6|u_counter_int[7]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int[7]~DUPLICATE_q\,
	cin => \I_count6|Add0~2\,
	sumout => \I_count6|Add0~113_sumout\,
	cout => \I_count6|Add0~114\);

-- Location: FF_X81_Y4_N53
\I_count6|u_counter_int[7]~DUPLICATE\ : dffeas
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
	q => \I_count6|u_counter_int[7]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y4_N54
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

-- Location: FF_X81_Y4_N56
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

-- Location: LABCELL_X81_Y4_N57
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

-- Location: FF_X81_Y4_N59
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

-- Location: LABCELL_X81_Y3_N0
\I_count6|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~101_sumout\ = SUM(( \I_count6|u_counter_int[10]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~106\ ))
-- \I_count6|Add0~102\ = CARRY(( \I_count6|u_counter_int[10]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int[10]~DUPLICATE_q\,
	cin => \I_count6|Add0~106\,
	sumout => \I_count6|Add0~101_sumout\,
	cout => \I_count6|Add0~102\);

-- Location: FF_X81_Y3_N2
\I_count6|u_counter_int[10]~DUPLICATE\ : dffeas
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
	q => \I_count6|u_counter_int[10]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y3_N3
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

-- Location: FF_X81_Y4_N29
\I_count6|u_counter_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \I_count6|Add0~97_sumout\,
	clrn => \sl_reset6n_int~q\,
	sclr => \I_count6|Equal0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count6|u_counter_int\(11));

-- Location: FF_X81_Y4_N52
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

-- Location: FF_X81_Y3_N1
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

-- Location: LABCELL_X81_Y4_N3
\I_count6|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~4_combout\ = ( !\I_count6|u_counter_int\(10) & ( (!\I_count6|u_counter_int\(11) & (\I_count6|u_counter_int\(9) & (\I_count6|u_counter_int\(7) & !\I_count6|u_counter_int\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(11),
	datab => \I_count6|ALT_INV_u_counter_int\(9),
	datac => \I_count6|ALT_INV_u_counter_int\(7),
	datad => \I_count6|ALT_INV_u_counter_int\(8),
	dataf => \I_count6|ALT_INV_u_counter_int\(10),
	combout => \I_count6|Equal0~4_combout\);

-- Location: FF_X81_Y3_N16
\I_count6|u_counter_int[15]~DUPLICATE\ : dffeas
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
	q => \I_count6|u_counter_int[15]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y3_N6
\I_count6|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~93_sumout\ = SUM(( \I_count6|u_counter_int\(12) ) + ( GND ) + ( \I_count6|Add0~98\ ))
-- \I_count6|Add0~94\ = CARRY(( \I_count6|u_counter_int\(12) ) + ( GND ) + ( \I_count6|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int\(12),
	cin => \I_count6|Add0~98\,
	sumout => \I_count6|Add0~93_sumout\,
	cout => \I_count6|Add0~94\);

-- Location: FF_X81_Y3_N8
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

-- Location: LABCELL_X81_Y3_N9
\I_count6|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~89_sumout\ = SUM(( \I_count6|u_counter_int\(13) ) + ( GND ) + ( \I_count6|Add0~94\ ))
-- \I_count6|Add0~90\ = CARRY(( \I_count6|u_counter_int\(13) ) + ( GND ) + ( \I_count6|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(13),
	cin => \I_count6|Add0~94\,
	sumout => \I_count6|Add0~89_sumout\,
	cout => \I_count6|Add0~90\);

-- Location: FF_X81_Y3_N11
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

-- Location: LABCELL_X81_Y3_N12
\I_count6|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~85_sumout\ = SUM(( \I_count6|u_counter_int\(14) ) + ( GND ) + ( \I_count6|Add0~90\ ))
-- \I_count6|Add0~86\ = CARRY(( \I_count6|u_counter_int\(14) ) + ( GND ) + ( \I_count6|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int\(14),
	cin => \I_count6|Add0~90\,
	sumout => \I_count6|Add0~85_sumout\,
	cout => \I_count6|Add0~86\);

-- Location: FF_X81_Y3_N14
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

-- Location: LABCELL_X81_Y3_N15
\I_count6|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~81_sumout\ = SUM(( \I_count6|u_counter_int[15]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~86\ ))
-- \I_count6|Add0~82\ = CARRY(( \I_count6|u_counter_int[15]~DUPLICATE_q\ ) + ( GND ) + ( \I_count6|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int[15]~DUPLICATE_q\,
	cin => \I_count6|Add0~86\,
	sumout => \I_count6|Add0~81_sumout\,
	cout => \I_count6|Add0~82\);

-- Location: FF_X81_Y3_N17
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

-- Location: LABCELL_X81_Y3_N18
\I_count6|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~77_sumout\ = SUM(( \I_count6|u_counter_int\(16) ) + ( GND ) + ( \I_count6|Add0~82\ ))
-- \I_count6|Add0~78\ = CARRY(( \I_count6|u_counter_int\(16) ) + ( GND ) + ( \I_count6|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(16),
	cin => \I_count6|Add0~82\,
	sumout => \I_count6|Add0~77_sumout\,
	cout => \I_count6|Add0~78\);

-- Location: FF_X81_Y3_N20
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

-- Location: LABCELL_X81_Y3_N21
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

-- Location: FF_X81_Y3_N22
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

-- Location: LABCELL_X80_Y3_N36
\I_count6|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~3_combout\ = ( \I_count6|u_counter_int\(13) & ( !\I_count6|u_counter_int\(17) & ( (\I_count6|u_counter_int\(15) & (!\I_count6|u_counter_int\(14) & (!\I_count6|u_counter_int\(12) & \I_count6|u_counter_int\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(15),
	datab => \I_count6|ALT_INV_u_counter_int\(14),
	datac => \I_count6|ALT_INV_u_counter_int\(12),
	datad => \I_count6|ALT_INV_u_counter_int\(16),
	datae => \I_count6|ALT_INV_u_counter_int\(13),
	dataf => \I_count6|ALT_INV_u_counter_int\(17),
	combout => \I_count6|Equal0~3_combout\);

-- Location: LABCELL_X81_Y3_N24
\I_count6|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~21_sumout\ = SUM(( \I_count6|u_counter_int\(18) ) + ( GND ) + ( \I_count6|Add0~74\ ))
-- \I_count6|Add0~22\ = CARRY(( \I_count6|u_counter_int\(18) ) + ( GND ) + ( \I_count6|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(18),
	cin => \I_count6|Add0~74\,
	sumout => \I_count6|Add0~21_sumout\,
	cout => \I_count6|Add0~22\);

-- Location: FF_X81_Y3_N26
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

-- Location: LABCELL_X81_Y3_N27
\I_count6|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~17_sumout\ = SUM(( \I_count6|u_counter_int\(19) ) + ( GND ) + ( \I_count6|Add0~22\ ))
-- \I_count6|Add0~18\ = CARRY(( \I_count6|u_counter_int\(19) ) + ( GND ) + ( \I_count6|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count6|ALT_INV_u_counter_int\(19),
	cin => \I_count6|Add0~22\,
	sumout => \I_count6|Add0~17_sumout\,
	cout => \I_count6|Add0~18\);

-- Location: FF_X81_Y3_N29
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

-- Location: LABCELL_X81_Y3_N30
\I_count6|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~13_sumout\ = SUM(( \I_count6|u_counter_int\(20) ) + ( GND ) + ( \I_count6|Add0~18\ ))
-- \I_count6|Add0~14\ = CARRY(( \I_count6|u_counter_int\(20) ) + ( GND ) + ( \I_count6|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int\(20),
	cin => \I_count6|Add0~18\,
	sumout => \I_count6|Add0~13_sumout\,
	cout => \I_count6|Add0~14\);

-- Location: FF_X81_Y3_N32
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

-- Location: LABCELL_X81_Y3_N33
\I_count6|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~9_sumout\ = SUM(( \I_count6|u_counter_int\(21) ) + ( GND ) + ( \I_count6|Add0~14\ ))
-- \I_count6|Add0~10\ = CARRY(( \I_count6|u_counter_int\(21) ) + ( GND ) + ( \I_count6|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(21),
	cin => \I_count6|Add0~14\,
	sumout => \I_count6|Add0~9_sumout\,
	cout => \I_count6|Add0~10\);

-- Location: FF_X81_Y3_N35
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

-- Location: LABCELL_X81_Y3_N36
\I_count6|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~5_sumout\ = SUM(( \I_count6|u_counter_int\(22) ) + ( GND ) + ( \I_count6|Add0~10\ ))
-- \I_count6|Add0~6\ = CARRY(( \I_count6|u_counter_int\(22) ) + ( GND ) + ( \I_count6|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(22),
	cin => \I_count6|Add0~10\,
	sumout => \I_count6|Add0~5_sumout\,
	cout => \I_count6|Add0~6\);

-- Location: FF_X81_Y3_N38
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

-- Location: LABCELL_X81_Y3_N39
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

-- Location: FF_X81_Y3_N41
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

-- Location: LABCELL_X81_Y3_N42
\I_count6|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~41_sumout\ = SUM(( \I_count6|u_counter_int\(24) ) + ( GND ) + ( \I_count6|Add0~46\ ))
-- \I_count6|Add0~42\ = CARRY(( \I_count6|u_counter_int\(24) ) + ( GND ) + ( \I_count6|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int\(24),
	cin => \I_count6|Add0~46\,
	sumout => \I_count6|Add0~41_sumout\,
	cout => \I_count6|Add0~42\);

-- Location: FF_X81_Y3_N44
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

-- Location: LABCELL_X81_Y3_N45
\I_count6|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~37_sumout\ = SUM(( \I_count6|u_counter_int\(25) ) + ( GND ) + ( \I_count6|Add0~42\ ))
-- \I_count6|Add0~38\ = CARRY(( \I_count6|u_counter_int\(25) ) + ( GND ) + ( \I_count6|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count6|ALT_INV_u_counter_int\(25),
	cin => \I_count6|Add0~42\,
	sumout => \I_count6|Add0~37_sumout\,
	cout => \I_count6|Add0~38\);

-- Location: FF_X81_Y3_N47
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

-- Location: LABCELL_X81_Y3_N48
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

-- Location: FF_X81_Y3_N50
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

-- Location: LABCELL_X81_Y3_N51
\I_count6|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Add0~29_sumout\ = SUM(( \I_count6|u_counter_int\(27) ) + ( GND ) + ( \I_count6|Add0~34\ ))
-- \I_count6|Add0~30\ = CARRY(( \I_count6|u_counter_int\(27) ) + ( GND ) + ( \I_count6|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(27),
	cin => \I_count6|Add0~34\,
	sumout => \I_count6|Add0~29_sumout\,
	cout => \I_count6|Add0~30\);

-- Location: FF_X81_Y3_N53
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

-- Location: LABCELL_X81_Y3_N54
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

-- Location: FF_X81_Y3_N56
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

-- Location: LABCELL_X80_Y3_N6
\I_count6|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~1_combout\ = ( \I_count6|u_counter_int\(28) & ( \I_count6|u_counter_int\(23) & ( (!\I_count6|u_counter_int\(27) & (!\I_count6|u_counter_int\(26) & (!\I_count6|u_counter_int\(25) & \I_count6|u_counter_int\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(27),
	datab => \I_count6|ALT_INV_u_counter_int\(26),
	datac => \I_count6|ALT_INV_u_counter_int\(25),
	datad => \I_count6|ALT_INV_u_counter_int\(24),
	datae => \I_count6|ALT_INV_u_counter_int\(28),
	dataf => \I_count6|ALT_INV_u_counter_int\(23),
	combout => \I_count6|Equal0~1_combout\);

-- Location: LABCELL_X80_Y3_N48
\I_count6|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~0_combout\ = ( !\I_count6|u_counter_int\(19) & ( !\I_count6|u_counter_int\(20) & ( (!\I_count6|u_counter_int\(18) & (\I_count6|u_counter_int\(21) & \I_count6|u_counter_int\(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count6|ALT_INV_u_counter_int\(18),
	datac => \I_count6|ALT_INV_u_counter_int\(21),
	datad => \I_count6|ALT_INV_u_counter_int\(22),
	datae => \I_count6|ALT_INV_u_counter_int\(19),
	dataf => \I_count6|ALT_INV_u_counter_int\(20),
	combout => \I_count6|Equal0~0_combout\);

-- Location: LABCELL_X80_Y4_N12
\I_count6|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count6|Equal0~5_combout\ = ( \I_count6|Equal0~1_combout\ & ( \I_count6|Equal0~0_combout\ & ( (\I_count6|u_counter_int\(6) & (\I_count6|Equal0~2_combout\ & (\I_count6|Equal0~4_combout\ & \I_count6|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count6|ALT_INV_u_counter_int\(6),
	datab => \I_count6|ALT_INV_Equal0~2_combout\,
	datac => \I_count6|ALT_INV_Equal0~4_combout\,
	datad => \I_count6|ALT_INV_Equal0~3_combout\,
	datae => \I_count6|ALT_INV_Equal0~1_combout\,
	dataf => \I_count6|ALT_INV_Equal0~0_combout\,
	combout => \I_count6|Equal0~5_combout\);

-- Location: MLABCELL_X82_Y5_N24
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \sl_hot_chocolate_int~q\ & ( !\sl_espresso_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \Selector6~1_combout\);

-- Location: MLABCELL_X82_Y5_N6
\Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = ( \sl_coffee_int~q\ & ( \Selector6~1_combout\ & ( (\coffee_maker_state.S_MENU2~DUPLICATE_q\ & \sl_2_Euro~q\) ) ) ) # ( !\sl_coffee_int~q\ & ( \Selector6~1_combout\ & ( (!\coffee_maker_state.S_GRIND~q\ & 
-- (((\coffee_maker_state.S_MENU2~DUPLICATE_q\ & \sl_2_Euro~q\)))) # (\coffee_maker_state.S_GRIND~q\ & ((!\i_fsmdisplay|svl_H2~4_combout\) # ((\coffee_maker_state.S_MENU2~DUPLICATE_q\ & \sl_2_Euro~q\)))) ) ) ) # ( !\sl_coffee_int~q\ & ( 
-- !\Selector6~1_combout\ & ( (\coffee_maker_state.S_GRIND~q\ & !\i_fsmdisplay|svl_H2~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000001000100010011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datab => \i_fsmdisplay|ALT_INV_svl_H2~4_combout\,
	datac => \ALT_INV_coffee_maker_state.S_MENU2~DUPLICATE_q\,
	datad => \ALT_INV_sl_2_Euro~q\,
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: MLABCELL_X82_Y5_N27
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( !\sl_hot_chocolate_int~q\ & ( (!\sl_cappuccino_int~q\ & (!\sl_espresso_int~q\ & !\sl_coffee_int~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \Selector6~0_combout\);

-- Location: MLABCELL_X82_Y5_N0
\Selector6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = ( !\Selector6~2_combout\ & ( (!\coffee_maker_state.S_BREW~q\ & (\sl_coffee_int~q\ & (((\I_count6|Equal0~5_combout\ & \coffee_maker_state.S_GRIND~q\))))) # (\coffee_maker_state.S_BREW~q\ & (((!\I_count6|Equal0~5_combout\) # 
-- ((\sl_coffee_int~q\ & \coffee_maker_state.S_GRIND~q\))) # (\Selector6~0_combout\))) ) ) # ( \Selector6~2_combout\ & ( ((!\I_count3|Equal0~5_combout\) # ((\sl_coffee_int~q\ & (\I_count6|Equal0~5_combout\ & \coffee_maker_state.S_GRIND~q\)))) # 
-- (\coffee_maker_state.S_BREW~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011001100000011111100111111001100110011010101111111001111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datac => \I_count3|ALT_INV_Equal0~5_combout\,
	datad => \I_count6|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_Selector6~2_combout\,
	dataf => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	datag => \ALT_INV_Selector6~0_combout\,
	combout => \Selector6~3_combout\);

-- Location: FF_X82_Y5_N1
\coffee_maker_state.S_BREW\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector6~3_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_BREW~q\);

-- Location: LABCELL_X80_Y5_N30
\Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ( \coffee_maker_state.S_CHOC_POWDER~q\ & ( \I_count6|Equal0~5_combout\ & ( (!\sl_hot_chocolate_int~q\) # (((\i_fsmdisplay|svl_H2~5_combout\ & \coffee_maker_state.S_BREW~q\)) # (\I_count3|Equal0~5_combout\)) ) ) ) # ( 
-- !\coffee_maker_state.S_CHOC_POWDER~q\ & ( \I_count6|Equal0~5_combout\ & ( (\i_fsmdisplay|svl_H2~5_combout\ & (\coffee_maker_state.S_BREW~q\ & \sl_hot_chocolate_int~q\)) ) ) ) # ( \coffee_maker_state.S_CHOC_POWDER~q\ & ( !\I_count6|Equal0~5_combout\ & ( 
-- (!\sl_hot_chocolate_int~q\) # (\I_count3|Equal0~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111111100000001000000011111000111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_fsmdisplay|ALT_INV_svl_H2~5_combout\,
	datab => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datac => \ALT_INV_sl_hot_chocolate_int~q\,
	datad => \I_count3|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	dataf => \I_count6|ALT_INV_Equal0~5_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X80_Y5_N31
\coffee_maker_state.S_CHOC_POWDER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector7~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_CHOC_POWDER~q\);

-- Location: LABCELL_X79_Y4_N42
\Selector8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~1_combout\ = ( \I_count6|Equal0~5_combout\ & ( (\coffee_maker_state.S_BREW~q\ & !\i_fsmdisplay|svl_H2~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datac => \i_fsmdisplay|ALT_INV_svl_H2~5_combout\,
	dataf => \I_count6|ALT_INV_Equal0~5_combout\,
	combout => \Selector8~1_combout\);

-- Location: LABCELL_X79_Y4_N51
\Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = ( \I_count3|Equal0~5_combout\ & ( \sl_coffee_int~q\ & ( \I_count6|Equal0~5_combout\ ) ) ) # ( !\I_count3|Equal0~5_combout\ & ( \sl_coffee_int~q\ & ( \I_count6|Equal0~5_combout\ ) ) ) # ( \I_count3|Equal0~5_combout\ & ( 
-- !\sl_coffee_int~q\ & ( (\sl_hot_chocolate_int~q\ & (\i_fsmdisplay|svl_H2~4_combout\ & \I_count6|Equal0~5_combout\)) ) ) ) # ( !\I_count3|Equal0~5_combout\ & ( !\sl_coffee_int~q\ & ( (!\i_fsmdisplay|svl_H2~4_combout\) # ((\sl_hot_chocolate_int~q\ & 
-- \I_count6|Equal0~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110111001101000000010000000100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_hot_chocolate_int~q\,
	datab => \i_fsmdisplay|ALT_INV_svl_H2~4_combout\,
	datac => \I_count6|ALT_INV_Equal0~5_combout\,
	datae => \I_count3|ALT_INV_Equal0~5_combout\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \Selector8~0_combout\);

-- Location: LABCELL_X79_Y4_N24
\Selector8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector8~2_combout\ = ( \coffee_maker_state.S_PUMP_WATER~q\ & ( \Selector8~0_combout\ & ( ((!\I_count3|Equal0~5_combout\ & (\coffee_maker_state.S_CHOC_POWDER~q\ & \sl_hot_chocolate_int~q\))) # (\Selector8~1_combout\) ) ) ) # ( 
-- !\coffee_maker_state.S_PUMP_WATER~q\ & ( \Selector8~0_combout\ & ( ((!\I_count3|Equal0~5_combout\ & (\coffee_maker_state.S_CHOC_POWDER~q\ & \sl_hot_chocolate_int~q\))) # (\Selector8~1_combout\) ) ) ) # ( \coffee_maker_state.S_PUMP_WATER~q\ & ( 
-- !\Selector8~0_combout\ ) ) # ( !\coffee_maker_state.S_PUMP_WATER~q\ & ( !\Selector8~0_combout\ & ( ((!\I_count3|Equal0~5_combout\ & (\coffee_maker_state.S_CHOC_POWDER~q\ & \sl_hot_chocolate_int~q\))) # (\Selector8~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111111111111111111100000010111111110000001011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~5_combout\,
	datab => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~q\,
	datac => \ALT_INV_sl_hot_chocolate_int~q\,
	datad => \ALT_INV_Selector8~1_combout\,
	datae => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	dataf => \ALT_INV_Selector8~0_combout\,
	combout => \Selector8~2_combout\);

-- Location: FF_X79_Y4_N25
\coffee_maker_state.S_PUMP_WATER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector8~2_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_PUMP_WATER~q\);

-- Location: MLABCELL_X82_Y4_N30
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \coffee_maker_state.S_PUMP_WATER~q\ & ( (!\sl_cappuccino_int~q\ & (((\sl_espresso_int~q\)) # (\sl_hot_chocolate_int~q\))) # (\sl_cappuccino_int~q\ & (((\coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\)))) ) ) # ( 
-- !\coffee_maker_state.S_PUMP_WATER~q\ & ( (\sl_cappuccino_int~q\ & \coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010001111100111100000011000000110100011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_hot_chocolate_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_MILK~DUPLICATE_q\,
	datad => \ALT_INV_sl_espresso_int~q\,
	datae => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	combout => \Selector10~1_combout\);

-- Location: MLABCELL_X82_Y4_N3
\Selector10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = ( \sl_cappuccino_int~q\ & ( \Selector10~1_combout\ & ( (\sl_coffee_int~q\ & \coffee_maker_state.S_PUMP_WATER~q\) ) ) ) # ( !\sl_cappuccino_int~q\ & ( \Selector10~1_combout\ & ( (!\sl_coffee_int~q\ & ((!\sl_espresso_int~q\))) # 
-- (\sl_coffee_int~q\ & (\coffee_maker_state.S_PUMP_WATER~q\)) ) ) ) # ( \sl_cappuccino_int~q\ & ( !\Selector10~1_combout\ & ( (\sl_coffee_int~q\ & \coffee_maker_state.S_PUMP_WATER~q\) ) ) ) # ( !\sl_cappuccino_int~q\ & ( !\Selector10~1_combout\ & ( 
-- (\sl_coffee_int~q\ & \coffee_maker_state.S_PUMP_WATER~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110110001101100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datae => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_Selector10~1_combout\,
	combout => \Selector10~2_combout\);

-- Location: MLABCELL_X82_Y4_N48
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \coffee_maker_state.S_DONE~q\ & ( \I_count6|Equal0~5_combout\ & ( ((\I_count3|Equal0~5_combout\) # (\Selector10~1_combout\)) # (\Selector10~2_combout\) ) ) ) # ( !\coffee_maker_state.S_DONE~q\ & ( \I_count6|Equal0~5_combout\ & ( 
-- ((\Selector10~1_combout\ & !\I_count3|Equal0~5_combout\)) # (\Selector10~2_combout\) ) ) ) # ( \coffee_maker_state.S_DONE~q\ & ( !\I_count6|Equal0~5_combout\ & ( ((\I_count3|Equal0~5_combout\) # (\Selector10~1_combout\)) # (\Selector10~2_combout\) ) ) ) # 
-- ( !\coffee_maker_state.S_DONE~q\ & ( !\I_count6|Equal0~5_combout\ & ( (\Selector10~1_combout\ & (!\I_count3|Equal0~5_combout\ & ((!\Selector10~2_combout\) # (\sl_cappuccino_int~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110000011111110111111101110101011101010111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector10~2_combout\,
	datab => \ALT_INV_Selector10~1_combout\,
	datac => \I_count3|ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_sl_cappuccino_int~q\,
	datae => \ALT_INV_coffee_maker_state.S_DONE~q\,
	dataf => \I_count6|ALT_INV_Equal0~5_combout\,
	combout => \Selector10~0_combout\);

-- Location: FF_X82_Y4_N50
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

-- Location: LABCELL_X80_Y5_N36
\Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ( \I_count3|Equal0~5_combout\ & ( (!\coffee_maker_state~26_combout\) # (\coffee_maker_state.S_IDLE~q\) ) ) # ( !\I_count3|Equal0~5_combout\ & ( (!\coffee_maker_state.S_DONE~q\ & ((!\coffee_maker_state~26_combout\) # 
-- (\coffee_maker_state.S_IDLE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_coffee_maker_state.S_DONE~q\,
	datac => \ALT_INV_coffee_maker_state~26_combout\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X80_Y5_N37
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

-- Location: LABCELL_X79_Y4_N36
\sl_cappuccino_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sl_cappuccino_int~0_combout\ = ( \sl_cappuccino_int~q\ & ( \KEY[3]~input_o\ ) ) # ( !\sl_cappuccino_int~q\ & ( \KEY[3]~input_o\ & ( (!\KEY[1]~input_o\ & (\KEY[2]~input_o\ & (\KEY[0]~input_o\ & !\coffee_maker_state.S_IDLE~q\))) ) ) ) # ( 
-- \sl_cappuccino_int~q\ & ( !\KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000010000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_KEY[2]~input_o\,
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datae => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \sl_cappuccino_int~0_combout\);

-- Location: FF_X79_Y4_N38
sl_cappuccino_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \sl_cappuccino_int~0_combout\,
	clrn => \SW[9]~input_o\,
	sclr => \coffee_maker_state.S_DONE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_cappuccino_int~q\);

-- Location: LABCELL_X80_Y5_N27
\Selector0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~7_combout\ = ( \coffee_maker_state.S_PUMP_WATER~q\ & ( ((!\sl_cappuccino_int~q\ & (!\sl_espresso_int~q\ & \sl_hot_chocolate_int~q\))) # (\sl_coffee_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011101100110011001110110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	combout => \Selector0~7_combout\);

-- Location: LABCELL_X80_Y5_N39
\Selector0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = ( \sl_coffee_int~q\ & ( (\sl_reset3n_int~q\ & ((\coffee_maker_state.S_GRIND~q\) # (\coffee_maker_state.S_BREW~q\))) ) ) # ( !\sl_coffee_int~q\ & ( (\sl_reset3n_int~q\ & \coffee_maker_state.S_BREW~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_reset3n_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datad => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \Selector0~5_combout\);

-- Location: LABCELL_X80_Y5_N18
\Selector0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~8_combout\ = ( \sl_hot_chocolate_int~q\ & ( \coffee_maker_state~26_combout\ & ( (!\sl_reset3n_int~q\) # ((!\coffee_maker_state.S_PUMP_WATER~q\ & \coffee_maker_state.S_IDLE~q\)) ) ) ) # ( !\sl_hot_chocolate_int~q\ & ( 
-- \coffee_maker_state~26_combout\ & ( (!\sl_reset3n_int~q\) # ((!\coffee_maker_state.S_PUMP_WATER~q\ & (!\coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\ & \coffee_maker_state.S_IDLE~q\))) ) ) ) # ( \sl_hot_chocolate_int~q\ & ( 
-- !\coffee_maker_state~26_combout\ & ( (\coffee_maker_state.S_IDLE~q\ & ((!\coffee_maker_state.S_PUMP_WATER~q\) # (!\sl_reset3n_int~q\))) ) ) ) # ( !\sl_hot_chocolate_int~q\ & ( !\coffee_maker_state~26_combout\ & ( (\coffee_maker_state.S_IDLE~q\ & 
-- ((!\sl_reset3n_int~q\) # ((!\coffee_maker_state.S_PUMP_WATER~q\ & !\coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111000000000001111101011110000111110001111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	datab => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\,
	datac => \ALT_INV_sl_reset3n_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datae => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_coffee_maker_state~26_combout\,
	combout => \Selector0~8_combout\);

-- Location: LABCELL_X80_Y5_N6
\Selector0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = ( \coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\ & ( \sl_reset3n_int~q\ ) ) # ( !\coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\ & ( (\sl_reset3n_int~q\ & \coffee_maker_state.S_DONE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sl_reset3n_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_DONE~q\,
	dataf => \ALT_INV_coffee_maker_state.S_CHOC_POWDER~DUPLICATE_q\,
	combout => \Selector0~6_combout\);

-- Location: LABCELL_X80_Y5_N0
\Selector0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~9_combout\ = ( \I_count3|Equal0~5_combout\ & ( \I_count6|Equal0~5_combout\ & ( (!\Selector0~7_combout\ & (\Selector0~8_combout\ & !\Selector0~6_combout\)) ) ) ) # ( !\I_count3|Equal0~5_combout\ & ( \I_count6|Equal0~5_combout\ & ( 
-- (!\Selector0~7_combout\ & \Selector0~8_combout\) ) ) ) # ( \I_count3|Equal0~5_combout\ & ( !\I_count6|Equal0~5_combout\ & ( (!\Selector0~5_combout\ & (\Selector0~8_combout\ & !\Selector0~6_combout\)) ) ) ) # ( !\I_count3|Equal0~5_combout\ & ( 
-- !\I_count6|Equal0~5_combout\ & ( (!\Selector0~5_combout\ & \Selector0~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000000000001010000010100000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~7_combout\,
	datab => \ALT_INV_Selector0~5_combout\,
	datac => \ALT_INV_Selector0~8_combout\,
	datad => \ALT_INV_Selector0~6_combout\,
	datae => \I_count3|ALT_INV_Equal0~5_combout\,
	dataf => \I_count6|ALT_INV_Equal0~5_combout\,
	combout => \Selector0~9_combout\);

-- Location: LABCELL_X81_Y6_N3
\Selector0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = ( \I_count3|Equal0~5_combout\ & ( (\sl_reset3n_int~q\ & \coffee_maker_state.S_PUMP_MILK~q\) ) ) # ( !\I_count3|Equal0~5_combout\ & ( (\coffee_maker_state.S_PUMP_MILK~q\ & ((\sl_cappuccino_int~q\) # (\sl_reset3n_int~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_reset3n_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_MILK~q\,
	datad => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \I_count3|ALT_INV_Equal0~5_combout\,
	combout => \Selector0~4_combout\);

-- Location: LABCELL_X80_Y4_N0
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( !\sl_cappuccino_int~q\ & ( (!\sl_espresso_int~q\ & !\sl_hot_chocolate_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_sl_hot_chocolate_int~q\,
	dataf => \ALT_INV_sl_cappuccino_int~q\,
	combout => \Selector0~1_combout\);

-- Location: LABCELL_X80_Y4_N24
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( \I_count3|Equal0~2_combout\ & ( \I_count3|Equal0~4_combout\ & ( (!\i_fsmdisplay|svl_H2~4_combout\ & (\I_count3|Equal0~1_combout\ & (\I_count3|Equal0~3_combout\ & \I_count3|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_fsmdisplay|ALT_INV_svl_H2~4_combout\,
	datab => \I_count3|ALT_INV_Equal0~1_combout\,
	datac => \I_count3|ALT_INV_Equal0~3_combout\,
	datad => \I_count3|ALT_INV_Equal0~0_combout\,
	datae => \I_count3|ALT_INV_Equal0~2_combout\,
	dataf => \I_count3|ALT_INV_Equal0~4_combout\,
	combout => \Selector0~0_combout\);

-- Location: LABCELL_X80_Y4_N54
\Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ( \Selector0~1_combout\ & ( \Selector0~0_combout\ & ( ((\coffee_maker_state.S_BREW~q\ & \sl_reset3n_int~q\)) # (\coffee_maker_state.S_PUMP_WATER~q\) ) ) ) # ( !\Selector0~1_combout\ & ( \Selector0~0_combout\ & ( 
-- ((\coffee_maker_state.S_BREW~q\ & ((\I_count6|Equal0~5_combout\) # (\sl_reset3n_int~q\)))) # (\coffee_maker_state.S_PUMP_WATER~q\) ) ) ) # ( \Selector0~1_combout\ & ( !\Selector0~0_combout\ & ( (\coffee_maker_state.S_BREW~q\ & \sl_reset3n_int~q\) ) ) ) # 
-- ( !\Selector0~1_combout\ & ( !\Selector0~0_combout\ & ( (\coffee_maker_state.S_BREW~q\ & ((\I_count6|Equal0~5_combout\) # (\sl_reset3n_int~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010001000100011111010111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_BREW~q\,
	datab => \ALT_INV_sl_reset3n_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_PUMP_WATER~q\,
	datad => \I_count6|ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_Selector0~1_combout\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: LABCELL_X80_Y4_N30
\Selector0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = ( \Selector0~0_combout\ & ( (\coffee_maker_state~23_combout\ & \coffee_maker_state.S_MENU1~q\) ) ) # ( !\Selector0~0_combout\ & ( (!\coffee_maker_state~23_combout\ & (\sl_reset3n_int~q\ & ((\coffee_maker_state.S_GRIND~q\)))) # 
-- (\coffee_maker_state~23_combout\ & (((\sl_reset3n_int~q\ & \coffee_maker_state.S_GRIND~q\)) # (\coffee_maker_state.S_MENU1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state~23_combout\,
	datab => \ALT_INV_sl_reset3n_int~q\,
	datac => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	datad => \ALT_INV_coffee_maker_state.S_GRIND~q\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector0~3_combout\);

-- Location: LABCELL_X80_Y5_N42
\Selector0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~10_combout\ = ( \coffee_maker_state~23_combout\ & ( \coffee_maker_state~25_combout\ & ( (\sl_espresso_int~q\ & \coffee_maker_state.S_MENU2~q\) ) ) ) # ( !\coffee_maker_state~23_combout\ & ( \coffee_maker_state~25_combout\ & ( 
-- (!\coffee_maker_state.S_MENU1~DUPLICATE_q\ & (\sl_espresso_int~q\ & ((\coffee_maker_state.S_MENU2~q\)))) # (\coffee_maker_state.S_MENU1~DUPLICATE_q\ & (((\sl_espresso_int~q\ & \coffee_maker_state.S_MENU2~q\)) # (\sl_reset3n_int~q\))) ) ) ) # ( 
-- \coffee_maker_state~23_combout\ & ( !\coffee_maker_state~25_combout\ & ( (\sl_reset3n_int~q\ & \coffee_maker_state.S_MENU2~q\) ) ) ) # ( !\coffee_maker_state~23_combout\ & ( !\coffee_maker_state~25_combout\ & ( (\sl_reset3n_int~q\ & 
-- ((\coffee_maker_state.S_MENU2~q\) # (\coffee_maker_state.S_MENU1~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000000000000111100000101001101110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state.S_MENU1~DUPLICATE_q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_sl_reset3n_int~q\,
	datad => \ALT_INV_coffee_maker_state.S_MENU2~q\,
	datae => \ALT_INV_coffee_maker_state~23_combout\,
	dataf => \ALT_INV_coffee_maker_state~25_combout\,
	combout => \Selector0~10_combout\);

-- Location: LABCELL_X80_Y5_N48
\Selector0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~11_combout\ = ( \Selector0~3_combout\ & ( \Selector0~10_combout\ ) ) # ( !\Selector0~3_combout\ & ( \Selector0~10_combout\ ) ) # ( \Selector0~3_combout\ & ( !\Selector0~10_combout\ & ( (!\Selector0~9_combout\) # ((!\sl_coffee_int~q\) # 
-- (\Selector0~4_combout\)) ) ) ) # ( !\Selector0~3_combout\ & ( !\Selector0~10_combout\ & ( (!\Selector0~9_combout\) # (((!\sl_coffee_int~q\ & \Selector0~2_combout\)) # (\Selector0~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111111101111111011111110111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector0~9_combout\,
	datab => \ALT_INV_sl_coffee_int~q\,
	datac => \ALT_INV_Selector0~4_combout\,
	datad => \ALT_INV_Selector0~2_combout\,
	datae => \ALT_INV_Selector0~3_combout\,
	dataf => \ALT_INV_Selector0~10_combout\,
	combout => \Selector0~11_combout\);

-- Location: FF_X80_Y5_N50
sl_reset3n_int : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector0~11_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sl_reset3n_int~q\);

-- Location: FF_X81_Y6_N32
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(0));

-- Location: LABCELL_X81_Y6_N33
\I_count3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~61_sumout\ = SUM(( \I_count3|u_counter_int\(1) ) + ( GND ) + ( \I_count3|Add0~6\ ))
-- \I_count3|Add0~62\ = CARRY(( \I_count3|u_counter_int\(1) ) + ( GND ) + ( \I_count3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(1),
	cin => \I_count3|Add0~6\,
	sumout => \I_count3|Add0~61_sumout\,
	cout => \I_count3|Add0~62\);

-- Location: FF_X81_Y6_N35
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(1));

-- Location: LABCELL_X81_Y6_N36
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

-- Location: FF_X81_Y6_N38
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(2));

-- Location: LABCELL_X81_Y6_N39
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

-- Location: FF_X81_Y6_N41
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(3));

-- Location: LABCELL_X81_Y6_N42
\I_count3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~25_sumout\ = SUM(( \I_count3|u_counter_int\(4) ) + ( GND ) + ( \I_count3|Add0~22\ ))
-- \I_count3|Add0~26\ = CARRY(( \I_count3|u_counter_int\(4) ) + ( GND ) + ( \I_count3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(4),
	cin => \I_count3|Add0~22\,
	sumout => \I_count3|Add0~25_sumout\,
	cout => \I_count3|Add0~26\);

-- Location: FF_X81_Y6_N44
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(4));

-- Location: LABCELL_X81_Y6_N45
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

-- Location: FF_X81_Y6_N47
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(5));

-- Location: LABCELL_X81_Y6_N48
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

-- Location: FF_X81_Y6_N50
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(6));

-- Location: LABCELL_X81_Y6_N51
\I_count3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~37_sumout\ = SUM(( \I_count3|u_counter_int\(7) ) + ( GND ) + ( \I_count3|Add0~34\ ))
-- \I_count3|Add0~38\ = CARRY(( \I_count3|u_counter_int\(7) ) + ( GND ) + ( \I_count3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(7),
	cin => \I_count3|Add0~34\,
	sumout => \I_count3|Add0~37_sumout\,
	cout => \I_count3|Add0~38\);

-- Location: FF_X81_Y6_N52
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(7));

-- Location: LABCELL_X81_Y6_N54
\I_count3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~1_sumout\ = SUM(( \I_count3|u_counter_int\(8) ) + ( GND ) + ( \I_count3|Add0~38\ ))
-- \I_count3|Add0~2\ = CARRY(( \I_count3|u_counter_int\(8) ) + ( GND ) + ( \I_count3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(8),
	cin => \I_count3|Add0~38\,
	sumout => \I_count3|Add0~1_sumout\,
	cout => \I_count3|Add0~2\);

-- Location: FF_X81_Y6_N56
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(8));

-- Location: LABCELL_X81_Y6_N57
\I_count3|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~109_sumout\ = SUM(( \I_count3|u_counter_int\(9) ) + ( GND ) + ( \I_count3|Add0~2\ ))
-- \I_count3|Add0~110\ = CARRY(( \I_count3|u_counter_int\(9) ) + ( GND ) + ( \I_count3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(9),
	cin => \I_count3|Add0~2\,
	sumout => \I_count3|Add0~109_sumout\,
	cout => \I_count3|Add0~110\);

-- Location: FF_X81_Y6_N59
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(9));

-- Location: LABCELL_X81_Y5_N0
\I_count3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~57_sumout\ = SUM(( \I_count3|u_counter_int\(10) ) + ( GND ) + ( \I_count3|Add0~110\ ))
-- \I_count3|Add0~58\ = CARRY(( \I_count3|u_counter_int\(10) ) + ( GND ) + ( \I_count3|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \I_count3|ALT_INV_u_counter_int\(10),
	cin => \I_count3|Add0~110\,
	sumout => \I_count3|Add0~57_sumout\,
	cout => \I_count3|Add0~58\);

-- Location: FF_X81_Y5_N2
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(10));

-- Location: LABCELL_X81_Y5_N3
\I_count3|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~53_sumout\ = SUM(( \I_count3|u_counter_int\(11) ) + ( GND ) + ( \I_count3|Add0~58\ ))
-- \I_count3|Add0~54\ = CARRY(( \I_count3|u_counter_int\(11) ) + ( GND ) + ( \I_count3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(11),
	cin => \I_count3|Add0~58\,
	sumout => \I_count3|Add0~53_sumout\,
	cout => \I_count3|Add0~54\);

-- Location: FF_X81_Y5_N5
\I_count3|u_counter_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~53_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(11));

-- Location: LABCELL_X81_Y5_N6
\I_count3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~49_sumout\ = SUM(( \I_count3|u_counter_int\(12) ) + ( GND ) + ( \I_count3|Add0~54\ ))
-- \I_count3|Add0~50\ = CARRY(( \I_count3|u_counter_int\(12) ) + ( GND ) + ( \I_count3|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(12),
	cin => \I_count3|Add0~54\,
	sumout => \I_count3|Add0~49_sumout\,
	cout => \I_count3|Add0~50\);

-- Location: FF_X81_Y5_N8
\I_count3|u_counter_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~49_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(12));

-- Location: LABCELL_X81_Y5_N9
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

-- Location: FF_X81_Y5_N10
\I_count3|u_counter_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \I_count3|Add0~45_sumout\,
	clrn => \sl_reset3n_int~q\,
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(13));

-- Location: LABCELL_X81_Y5_N12
\I_count3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~41_sumout\ = SUM(( \I_count3|u_counter_int\(14) ) + ( GND ) + ( \I_count3|Add0~46\ ))
-- \I_count3|Add0~42\ = CARRY(( \I_count3|u_counter_int\(14) ) + ( GND ) + ( \I_count3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \I_count3|ALT_INV_u_counter_int\(14),
	cin => \I_count3|Add0~46\,
	sumout => \I_count3|Add0~41_sumout\,
	cout => \I_count3|Add0~42\);

-- Location: FF_X81_Y5_N14
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(14));

-- Location: LABCELL_X81_Y5_N15
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

-- Location: FF_X81_Y5_N17
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(15));

-- Location: LABCELL_X81_Y5_N18
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

-- Location: FF_X81_Y5_N20
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(16));

-- Location: LABCELL_X81_Y5_N21
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

-- Location: FF_X81_Y5_N22
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int[17]~DUPLICATE_q\);

-- Location: LABCELL_X81_Y5_N24
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

-- Location: FF_X81_Y5_N26
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(18));

-- Location: LABCELL_X81_Y5_N27
\I_count3|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Add0~89_sumout\ = SUM(( \I_count3|u_counter_int\(19) ) + ( GND ) + ( \I_count3|Add0~94\ ))
-- \I_count3|Add0~90\ = CARRY(( \I_count3|u_counter_int\(19) ) + ( GND ) + ( \I_count3|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \I_count3|ALT_INV_u_counter_int\(19),
	cin => \I_count3|Add0~94\,
	sumout => \I_count3|Add0~89_sumout\,
	cout => \I_count3|Add0~90\);

-- Location: FF_X81_Y5_N29
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(19));

-- Location: LABCELL_X81_Y5_N30
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

-- Location: FF_X81_Y5_N32
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(20));

-- Location: LABCELL_X81_Y5_N33
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

-- Location: FF_X81_Y5_N35
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(21));

-- Location: FF_X81_Y5_N38
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
	sclr => \I_count3|ALT_INV_Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I_count3|u_counter_int\(22));

-- Location: LABCELL_X81_Y5_N54
\I_count3|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \I_count3|Equal0~3_combout\ = ( !\I_count3|u_counter_int\(25) & ( \I_count3|u_counter_int\(20) & ( (\I_count3|u_counter_int\(22) & (!\I_count3|u_counter_int\(24) & (\I_count3|u_counter_int\(21) & \I_count3|u_counter_int\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_u_counter_int\(22),
	datab => \I_count3|ALT_INV_u_counter_int\(24),
	datac => \I_count3|ALT_INV_u_counter_int\(21),
	datad => \I_count3|ALT_INV_u_counter_int\(23),
	datae => \I_count3|ALT_INV_u_counter_int\(25),
	dataf => \I_count3|ALT_INV_u_counter_int\(20),
	combout => \I_count3|Equal0~3_combout\);

-- Location: LABCELL_X80_Y4_N18
\coffee_maker_state~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \coffee_maker_state~23_combout\ = ( \I_count3|Equal0~2_combout\ & ( \I_count3|Equal0~4_combout\ & ( (\I_count3|Equal0~3_combout\ & (\coffee_maker_state~22_combout\ & (\I_count3|Equal0~1_combout\ & \I_count3|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \I_count3|ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_coffee_maker_state~22_combout\,
	datac => \I_count3|ALT_INV_Equal0~1_combout\,
	datad => \I_count3|ALT_INV_Equal0~0_combout\,
	datae => \I_count3|ALT_INV_Equal0~2_combout\,
	dataf => \I_count3|ALT_INV_Equal0~4_combout\,
	combout => \coffee_maker_state~23_combout\);

-- Location: LABCELL_X80_Y4_N33
\Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ( \sl_1_Euro~q\ & ( (!\coffee_maker_state.S_IDLE~q\) # ((!\coffee_maker_state~23_combout\ & \coffee_maker_state.S_MENU1~q\)) ) ) # ( !\sl_1_Euro~q\ & ( (!\coffee_maker_state~23_combout\ & \coffee_maker_state.S_MENU1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101011110000111110101111000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_coffee_maker_state~23_combout\,
	datac => \ALT_INV_coffee_maker_state.S_IDLE~q\,
	datad => \ALT_INV_coffee_maker_state.S_MENU1~q\,
	dataf => \ALT_INV_sl_1_Euro~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X80_Y4_N35
\coffee_maker_state.S_MENU1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Selector3~0_combout\,
	clrn => \SW[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \coffee_maker_state.S_MENU1~q\);

-- Location: MLABCELL_X87_Y8_N0
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

-- Location: MLABCELL_X87_Y8_N54
\i_lpm_count|LPM_COUNTER_component|auto_generated|_~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\ = ( \sl_coffee_int~q\ ) # ( !\sl_coffee_int~q\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \i_lpm_count|LPM_COUNTER_component|auto_generated|_~0_combout\);

-- Location: FF_X87_Y8_N2
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

-- Location: MLABCELL_X87_Y8_N3
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

-- Location: FF_X87_Y8_N5
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

-- Location: MLABCELL_X87_Y8_N6
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

-- Location: FF_X87_Y8_N8
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

-- Location: MLABCELL_X87_Y8_N9
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

-- Location: FF_X87_Y8_N11
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

-- Location: MLABCELL_X87_Y8_N27
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

-- Location: MLABCELL_X87_Y8_N30
\i0_hex7seg|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux5~0_combout\ = ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)) # (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110011111100111100000011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	combout => \i0_hex7seg|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y8_N39
\i0_hex7seg|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux4~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) ) ) 
-- ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ( 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101010100000101000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	combout => \i0_hex7seg|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y8_N42
\i0_hex7seg|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i0_hex7seg|Mux3~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) $ 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(3) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) $ (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100001001000010010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(0),
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(2),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(1),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(3),
	combout => \i0_hex7seg|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y8_N45
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

-- Location: MLABCELL_X87_Y8_N48
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

-- Location: MLABCELL_X87_Y8_N51
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

-- Location: MLABCELL_X87_Y8_N12
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

-- Location: FF_X87_Y8_N14
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

-- Location: MLABCELL_X87_Y8_N15
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

-- Location: FF_X87_Y8_N17
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

-- Location: MLABCELL_X87_Y8_N18
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

-- Location: FF_X87_Y8_N20
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

-- Location: MLABCELL_X87_Y8_N21
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

-- Location: FF_X87_Y8_N23
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

-- Location: LABCELL_X88_Y8_N0
\i1_hex7seg|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux6~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) 
-- & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)) # (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) ) # ( 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111101011111010111111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	combout => \i1_hex7seg|Mux6~0_combout\);

-- Location: LABCELL_X88_Y8_N45
\i1_hex7seg|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux5~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) ) ) 
-- ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) $ (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100110011001100110001000100010001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	combout => \i1_hex7seg|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\i1_hex7seg|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux4~0_combout\ = ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) ) ) 
-- ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) # (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010100000101000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	combout => \i1_hex7seg|Mux4~0_combout\);

-- Location: LABCELL_X88_Y8_N9
\i1_hex7seg|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux3~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) ) ) 
-- # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100100010001000100000100010001000100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	combout => \i1_hex7seg|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N12
\i1_hex7seg|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux2~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) ) ) 
-- # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( 
-- (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101010100000101000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	combout => \i1_hex7seg|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N33
\i1_hex7seg|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux1~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) ) ) ) 
-- # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) ) ) ) # ( 
-- \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6) & \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001010001000100010001010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datab => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	combout => \i1_hex7seg|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N48
\i1_hex7seg|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i1_hex7seg|Mux0~0_combout\ = ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) ) # ( \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( 
-- (\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) & \i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) ) # ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(7) & ( 
-- !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(5) & ( !\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(4) $ (!\i_lpm_count|LPM_COUNTER_component|auto_generated|counter_reg_bit\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000001010000010100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(4),
	datac => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(6),
	datae => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(7),
	dataf => \i_lpm_count|LPM_COUNTER_component|auto_generated|ALT_INV_counter_reg_bit\(5),
	combout => \i1_hex7seg|Mux0~0_combout\);

-- Location: MLABCELL_X82_Y5_N39
\i_fsmdisplay|svl_H2[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H2[6]~0_combout\ = (((!\SW[9]~input_o\) # (\sl_espresso_int~q\)) # (\sl_cappuccino_int~q\)) # (\sl_coffee_int~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	combout => \i_fsmdisplay|svl_H2[6]~0_combout\);

-- Location: MLABCELL_X82_Y5_N57
\i_fsmdisplay|svl_H5[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H5[6]~0_combout\ = ( \sl_coffee_int~q\ & ( \sl_espresso_int~q\ & ( \SW[9]~input_o\ ) ) ) # ( !\sl_coffee_int~q\ & ( \sl_espresso_int~q\ & ( (\sl_cappuccino_int~q\ & \SW[9]~input_o\) ) ) ) # ( \sl_coffee_int~q\ & ( !\sl_espresso_int~q\ & 
-- ( \SW[9]~input_o\ ) ) ) # ( !\sl_coffee_int~q\ & ( !\sl_espresso_int~q\ & ( \SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000001010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_sl_coffee_int~q\,
	dataf => \ALT_INV_sl_espresso_int~q\,
	combout => \i_fsmdisplay|svl_H5[6]~0_combout\);

-- Location: MLABCELL_X82_Y5_N36
\i_fsmdisplay|svl_H2[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H2[2]~1_combout\ = ( \sl_hot_chocolate_int~q\ ) # ( !\sl_hot_chocolate_int~q\ & ( (((!\SW[9]~input_o\) # (\sl_espresso_int~q\)) # (\sl_cappuccino_int~q\)) # (\sl_coffee_int~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_espresso_int~q\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \i_fsmdisplay|svl_H2[2]~1_combout\);

-- Location: MLABCELL_X82_Y5_N12
\i_fsmdisplay|svl_H2[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H2[1]~2_combout\ = ( \SW[9]~input_o\ & ( \sl_hot_chocolate_int~q\ & ( (!\sl_cappuccino_int~q\) # (\sl_coffee_int~q\) ) ) ) # ( !\SW[9]~input_o\ & ( \sl_hot_chocolate_int~q\ ) ) # ( \SW[9]~input_o\ & ( !\sl_hot_chocolate_int~q\ & ( 
-- ((!\sl_cappuccino_int~q\ & \sl_espresso_int~q\)) # (\sl_coffee_int~q\) ) ) ) # ( !\SW[9]~input_o\ & ( !\sl_hot_chocolate_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001011110010111111111111111111111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_hot_chocolate_int~q\,
	combout => \i_fsmdisplay|svl_H2[1]~2_combout\);

-- Location: LABCELL_X83_Y12_N36
\i_fsmdisplay|svl_H2[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H2[1]~3_combout\ = ( \SW[9]~input_o\ & ( !\sl_coffee_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \i_fsmdisplay|svl_H2[1]~3_combout\);

-- Location: LABCELL_X83_Y12_N45
\i_fsmdisplay|svl_H4[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H4[6]~0_combout\ = ( \SW[9]~input_o\ & ( \sl_coffee_int~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_sl_coffee_int~q\,
	combout => \i_fsmdisplay|svl_H4[6]~0_combout\);

-- Location: MLABCELL_X82_Y5_N45
\i_fsmdisplay|svl_H4[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H4[3]~1_combout\ = ( \sl_cappuccino_int~q\ & ( \SW[9]~input_o\ & ( !\sl_coffee_int~q\ ) ) ) # ( !\sl_cappuccino_int~q\ & ( \SW[9]~input_o\ & ( (!\sl_coffee_int~q\ & !\sl_espresso_int~q\) ) ) ) # ( \sl_cappuccino_int~q\ & ( 
-- !\SW[9]~input_o\ ) ) # ( !\sl_cappuccino_int~q\ & ( !\SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110001000100010001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_coffee_int~q\,
	datab => \ALT_INV_sl_espresso_int~q\,
	datae => \ALT_INV_sl_cappuccino_int~q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \i_fsmdisplay|svl_H4[3]~1_combout\);

-- Location: MLABCELL_X82_Y5_N48
\i_fsmdisplay|svl_H4[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \i_fsmdisplay|svl_H4[0]~2_combout\ = ( !\sl_espresso_int~q\ & ( \SW[9]~input_o\ & ( (!\sl_cappuccino_int~q\ & !\sl_coffee_int~q\) ) ) ) # ( \sl_espresso_int~q\ & ( !\SW[9]~input_o\ ) ) # ( !\sl_espresso_int~q\ & ( !\SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sl_cappuccino_int~q\,
	datac => \ALT_INV_sl_coffee_int~q\,
	datae => \ALT_INV_sl_espresso_int~q\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \i_fsmdisplay|svl_H4[0]~2_combout\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X39_Y27_N3
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


