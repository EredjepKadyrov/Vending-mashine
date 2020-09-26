-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/13/2018 18:37:22"
                                                            
-- Vhdl Test Bench template for design  :  e_my_coffee_maker_FSM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- Warning: CONV_INTEGER: There is an 'U'|'X'|'W'|'Z'|'-' in an arithmetic operand, and it has been converted to 0.
-- Description
-- You may get this warning when simulating some DSP Builder� designs under Modelsim�. These warning messages do not have any effect on your simulation results, and can be ignored.
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
--------------------------------------------------------------------------------------------------
--for self-checking testbench 
use ieee.std_logic_textio.all;
library std;
use std.textio.all;                               
--------------------------------------------------------------------------------------------------
ENTITY e_my_coffee_maker_FSM_vhd_tst IS
END e_my_coffee_maker_FSM_vhd_tst;

ARCHITECTURE e_my_coffee_maker_FSM_arch OF e_my_coffee_maker_FSM_vhd_tst IS

-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC := '0';
SIGNAL HEX0 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX1 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX2 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX3 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX4 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL HEX5 : STD_LOGIC_VECTOR(0 TO 6);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0) := "1111";
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);

COMPONENT e_my_coffee_maker_FSM
	generic(	n3: positive := 28; k3: positive := 150000000;
				n6: positive := 29; k6: positive := 300000000);
	PORT (
		CLOCK_50 : IN STD_LOGIC;
		HEX0 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX1 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX2 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX3 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX4 : OUT STD_LOGIC_VECTOR(0 TO 6);
		HEX5 : OUT STD_LOGIC_VECTOR(0 TO 6);
		KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;

---------------------------------------------------------------------------------------------------------------
--for self-checking testbench 
--add Boolean check enable control signal
signal b_check: boolean := false;
--add shared variable for expected output results
shared variable sv_check_value: std_logic_vector(0 to 6);   -- for outputs
shared variable sv_check_value_ram: std_logic_vector(3 downto 0);

---------------------------------------------------------------------------------------------------------------

BEGIN
	i1 : e_my_coffee_maker_FSM
	generic map (n3 => 2, k3 => 4, n6 => 3, k6 => 8)
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	LEDR => LEDR,
	SW => SW
	);
	
	CLOCK_50 <= not CLOCK_50 after 10 ns;
	
	p_stimulus: process
	
		procedure P_sync_app(constant c_loop: integer) is
			variable v_count: integer := 0;
		begin
			loop_cnt: while v_count <= c_loop loop
				wait until rising_edge(CLOCK_50);
					v_count := v_count + 1;
			end loop loop_cnt;
		end procedure P_sync_app;
------------------------------------------------------------------------------------------------------------
               --test bench for memory 
               --write to RAM with two constants
--               procedure P_RAM_write(constant c_Address: std_logic_vector(4 downto 0); constant c_DataIn: std_logic_vector(3 downto 0)) is
--		begin
--			SW(8 downto 4) <= c_Address;         -- let see the adress
--			SW(3 downto 0) <= c_DataIn;          -- let set the data
--			SW(9) <= '1';                        -- let enable the right signal
--			wait for 30 ns;                      -- data will stay for some time
--			SW(8 downto 4) <= (others => '0');   -- set value back to zero
--			SW(3 downto 0) <= (others => '0');   -- set value back to zero
--			SW(9) <= '0';
--		end procedure P_RAM_write;
--
--
--              -- just one constant I want to read
--              procedure P_RAM_read(constant c_Address: std_logic_vector(4 downto 0)) is
--		begin
--			SW(8 downto 4) <= c_Address;
--			SW(9) <= '0';                         -- no writing to the address
--			wait for 30 ns;                       -- wait for some time
--			SW(8 downto 4) <= (others => '0');    -- set value back to zero
--		end procedure P_RAM_read;
--
--
--
--
--      --check value what we expect what output schould be 
--		procedure P_RAM_read_check(constant c_Address: std_logic_vector(4 downto 0); constant c_Check_val: std_logic_vector(3 downto 0)) is
--		begin
--			SW(8 downto 4) <= c_Address;
--			SW(9) <= '0';                        --do not have to write 
--			wait for 25 ns;                      --wait
--			sv_check_value :=    c_Check_val;    --set value that expact value
--			b_check        <=    true;           --enabling selfcheking capability
--			wait for 5ns;                        --wait time
--			SW(8 downto 4) <= (others => '0');   --set back to zero again
--			b_check        <=    false;          --disable selfchecking
--		end procedure P_RAM_read_check;
                




-------------------------------------------------------------------------------------------------------------
		procedure P_stable is
		begin
			SW(9)	<= '0';
			SW <= (others => '0');
			wait for 30 ns;
			SW(9)	<= '1';
		end procedure P_stable;

-------------------------------------------------------------------------------------------------------------
--                -- self test bench for outputs 
--                procedure P_start_bit_count_check(constant c_select: std_logic_vector(3 downto 0)) is
--                      variable v_cnt: integer := 0;
--                      begin
--         
--                      for i in 0 to 3 loop
--                      if(c_select(i) = '1') then
--                       v_cnt := v_cnt + 1;
--                      end if;
--                      end loop;
--
--                case v_cnt is
--                      when 0 => sv_check_value := "0000001";      -- means 0 on HEX0
--                      when 1 => sv_check_value := "1001111";      -- means 1 on HEX0
--                      when 2 => sv_check_value := "0010010";      -- means 2 on HEX0
--                      when 3 => sv_check_value := "0000110";      -- means 3 on HEX0
--                      when 4 => sv_check_value := "1001100";      -- means 4 on HEX0
--                      when 5 => sv_check_value := "0100100";      -- means 5 on HEX0
--                      when 6 => sv_check_value := "0100000";      -- means 6 on HEX0
--                      when 7 => sv_check_value := "0001111";      -- means 7 on HEX0
--                      when 8 => sv_check_value := "0000000";      -- means 8 on HEX0
--                      when others => sv_check_value := "1111110"; -- means - on HEX0
--                end case;
--               KEY(3 downto 0) <= c_select;
--               KEY(0) <= '1';
--               wait for 10 ns;
--               --wait until LEDR(9) = '0';
--               KEY(0) <= '0';
--               b_check <= true;
--               wait for 10 ns;
--               b_check <= false;
--               end procedure P_start_bit_count_check;
--
--
--               --for the first self tb
--               variable v_tv_cnt: unsigned(3 downto 0) := (others => '0');

-------------------------------------------------------------------------------------------------------------
      procedure P_one is
		begin
			SW(0)	<= '1';
			wait for 30 ns;
			SW(0)	<= '0';
		end procedure P_one;

                --self checking capability 

           

      procedure P_two is
		begin
			SW(1)	<= '1';
			wait for 30 ns;
			SW(1)	<= '0';
		end procedure P_two;



		procedure P_coffee is
		begin
			KEY(0) <= '0';
			wait for 30 ns;
			KEY(0) <= '1';
		end procedure P_coffee;
	
		procedure P_cappu is
		begin
			KEY(1) <= '0';
			wait for 30 ns;
			KEY(1) <= '1';
		end procedure P_cappu;

		procedure P_espresso is
		begin
			KEY(2) <= '0';
			wait for 30 ns;
			KEY(2) <= '1';
		end procedure P_espresso;	

		procedure P_hot_choc is
		begin
			KEY(3) <= '0';
			wait for 30 ns;
			KEY(3) <= '1';
		end procedure P_hot_choc;		
	
	begin
-----------------------------------------------------------------------------	
-- self checking capabilities
--		            P_stable;
--		            P_sync_app(5);
--                P_one;
--                P_coffee;
--                P_sync_app(1);
                
					 
					 

-- perform a complete test with all possible input combinations:
--                 for the first self tb
--                 for i in 0 to 2**4 - 1 loop
--                  P_start_bit_count_check(std_logic_vector(v_tv_cnt));
--                  P_sync_app(1);
--                  v_tv_cnt := v_tv_cnt + 1;
--                 end loop;





-------------------------------------------------------------------------------------------
--this parameters was used for the manual test bench  
		            P_stable;                  
		            P_sync_app(5);
                  P_one;
                  P_coffee;
		            P_sync_app(100);
--                P_one;
--                P_cappu;
--                P_sync_app(100);	
--                P_two;   
--                P_espresso;
--                P_sync_app(100);	   
--                P_hot_choc;
--                P_two;
--                P_sync_app(100);	
--                P_coffee; 
--                P_stable; 
--                P_sync_app(100);
--                P_two;
--						P_stable;
--                P_sync_app(100);
------------------------------------------------------------------------------------------
--this parameters was used for the manual test bench of memory 


--		P_sync_app(5);         --clock cicles
--	   P_RAM_read("00000");   --read from 0
--		P_RAM_read("00001");   -- 1
--		P_RAM_read("00010");   -- 2
--		P_RAM_read("00011");   -- 3 
--		P_RAM_read("00100");   -- 4
--		P_RAM_read("00101");   -- 5
--		P_RAM_read("00110");   -- 6
--		P_RAM_read("00111");   -- 7
--		P_RAM_read("01000");   -- 8
--		P_RAM_read("01001");   -- 9
--		P_RAM_read("01010");   -- 10
--		P_RAM_read("01011");   -- 11
--		P_RAM_read("01100");   -- 12
--		P_RAM_read("01101");   -- 13
--		P_RAM_read("01110");   -- 14
--		P_RAM_read("01111");   -- 15
--
--		P_sync_app(5);
--
--		P_RAM_write("00000", "0101");
--		
--		P_sync_app(5);
--		
--		P_RAM_write("10000", "1111");
--		
--		P_sync_app(5);
--		
--		
--		
--		P_RAM_read_check("10000", "1111"); -- check if data in address "10000" is "1111" -- true
--		
--		P_sync_app(5);
--		
--		P_RAM_read_check("00000", "0101"); -- check if data in address "00000" is "0101" -- true
--		
--		P_sync_app(5);
--
--		P_RAM_read_check("10000", "0111"); -- check if data in address "10000" is "0111" -- false
--		
--		P_sync_app(5);	

------------------------------------------------------------------------------------------		
	
		assert false report "--- END OF SIMULATION ---" severity failure;
	
	end process p_stimulus;


 --Always require for self checking test bench
 --Output visual feedback for Test Vector self-checking
p_generic_monitor: process (b_check)
 variable l: line;
begin
   if(b_check = true) then
      -- self check for HEX0, HEX1, HEX2, HEX3, HEX4, HEX5
      if(HEX3 /= sv_check_value) then          -- if it is not identical what we expected then  
-- it is a little be complicated to check was is going on because slv_data_out is internal signal, otherwise 
-- after adding following command we could see self testbench results 
--        if(slv_data_out /= sv_check_value) then  		
         assert false
         report "Output DataOut is NOT correct"
         severity warning;
         writeline(output,l); -- prints a blank line, since l is blank
         write(l, string'("*******************************************************************************"));
         writeline(output,l);
         write(l, string'("*** FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE FAILURE ***"));
         writeline(output,l);
         write(l, string'("*******************************************************************************"));
         writeline(output,l);
         write(l, string'("at time: "));
         write(l, now);	      -- now is the current simulation time
         write(l, string'(", the data did NOT match!"));
         writeline(output,l);
      else
         assert false
         report "Output DataOut is correct"
         severity warning;
      end if;
   end if;
end process p_generic_monitor;
	
	
--init : PROCESS                                               
---- variable declarations                                     
--BEGIN                                                        
--        -- code that executes only once                      
--WAIT;                                                       
--END PROCESS init;                                           
--always : PROCESS                                              
---- optional sensitivity list                                  
---- (        )                                                 
---- variable declarations                                      
--BEGIN                                                         
--        -- code executes for every event on sensitivity list  
--WAIT;                                                        
--END PROCESS always;                 

                         
END e_my_coffee_maker_FSM_arch;
