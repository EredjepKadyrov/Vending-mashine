library ieee;
use ieee.std_logic_1164.all;

entity e_fsmdisplay is

  port( sl_resetn: in std_logic;
        sl_coffee, sl_cappuccino, sl_espresso, sl_hot_chocolate : in std_logic;
		  
--		  	svl_H0:		out				std_logic_vector(0 to 6);
--			svl_H1:		out				std_logic_vector(0 to 6);
			svl_H2:		out				std_logic_vector(0 to 6);
			svl_H3:		out				std_logic_vector(0 to 6);
			svl_H4:		out				std_logic_vector(0 to 6);
			svl_H5:		out				std_logic_vector(0 to 6) );
end e_fsmdisplay;

architecture a_fsmdisplay of e_fsmdisplay is

   constant c_A: std_logic_vector(0 to 6) := "0001000";
   constant c_C: std_logic_vector(0 to 6) := "0110001";
   constant c_E: std_logic_vector(0 to 6) := "0110000";
   constant c_F: std_logic_vector(0 to 6) := "0111000";
   constant c_H: std_logic_vector(0 to 6) := "1001000";
   constant c_O: std_logic_vector(0 to 6) := "0000001";
   constant c_P: std_logic_vector(0 to 6) := "0011000";
   constant c_R: std_logic_vector(0 to 6) := "1111010";
   constant c_S: std_logic_vector(0 to 6) := "0100100";
   constant c_U: std_logic_vector(0 to 6) := "1000001";
	
	constant c_d: std_logic_vector(0 to 6) := "1000010";  --new punkt for d
	constant c_G: std_logic_vector(0 to 6) := "0100001";  --new punkt
	constant c_I: std_logic_vector(0 to 6) := "0000110";  --new punkt
	constant c_J: std_logic_vector(0 to 6) := "1000011";  --new punkt
	constant c_L: std_logic_vector(0 to 6) := "0001110";  --new punkt

   constant c_dash:  std_logic_vector(0 to 6) := "1111110";
   constant c_blank:  std_logic_vector(0 to 6) := "1111111";
	
begin
	   p_segments: process (sl_resetn, sl_coffee, sl_cappuccino, sl_espresso, sl_hot_chocolate)
   begin
      if(sl_resetn = '0') then
         svl_H5 <= c_dash;	-- -
         svl_H4 <= c_dash;	-- -
         svl_H3 <= c_dash;	-- -
         svl_H2 <= c_dash;	-- -
--         svl_H1 <= c_dash;	-- -
--         svl_H0 <= c_dash;	-- -
      elsif(sl_coffee = '1') then
         svl_H5 <= c_C;		-- C
         svl_H4 <= c_O;		-- O
         svl_H3 <= c_F;		-- F
         svl_H2 <= c_F;		-- F
--         svl_H1 <= c_E;		-- E
--         svl_H0 <= c_E;		-- E
      elsif(sl_cappuccino = '1') then
         svl_H5 <= c_C;		-- C
         svl_H4 <= c_A;		-- A
         svl_H3 <= c_P;		-- P
         svl_H2 <= c_P;		-- P
--         svl_H1 <= c_U;		-- U
--         svl_H0 <= c_blank;	-- 
      elsif(sl_espresso = '1') then
         svl_H5 <= c_E;		-- E
         svl_H4 <= c_S;		-- S
         svl_H3 <= c_P;		-- P
         svl_H2 <= c_R;		-- R
--         svl_H1 <= c_E; 		-- E
--         svl_H0 <= c_S; 		-- S
      elsif(sl_hot_chocolate = '1') then
         svl_H5 <= c_C;		-- C
         svl_H4 <= c_H;		-- H
         svl_H3 <= c_O;		-- O
         svl_H2 <= c_C;		-- C
--         svl_H1 <= c_blank;	-- 
--         svl_H0 <= c_blank;	-- 
      else
         svl_H5 <= c_C;		-- C
         svl_H4 <= c_H;		-- H
         svl_H3 <= c_O;		-- O
         svl_H2 <= c_O;		-- O
--         svl_H1 <= c_S; 	-- S
--         svl_H0 <= c_E;		-- E
      end if;
   end process p_segments;
end a_fsmdisplay;

