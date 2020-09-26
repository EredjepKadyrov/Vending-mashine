library ieee;
use ieee.std_logic_1164.all;

entity e_hex7seg is
	port(	slv_hex:		in		std_logic_vector(3 downto 0);
			slv_display:	out		std_logic_vector(0 to 6)
	);
end entity e_hex7seg;

architecture a_hex7seg of e_hex7seg is

-- Declarations:

-- Constant Declarations:
	constant c_0:		std_logic_vector := "0000001";
	constant c_1:		std_logic_vector := "1001111";
	constant c_2:		std_logic_vector := "0010010";
	constant c_3:		std_logic_vector := "0000110";
	constant c_4:		std_logic_vector := "1001100";
	constant c_5:		std_logic_vector := "0100100";
	constant c_6:		std_logic_vector := "0100000";
	constant c_7:		std_logic_vector := "0001111";
	constant c_8:		std_logic_vector := "0000000";
	constant c_9:		std_logic_vector := "0000100";

	constant c_dash:  std_logic_vector(0 to 6) := "1111110";
   constant c_blank:  std_logic_vector(0 to 6) := "1111111";
	constant c_A: std_logic_vector(0 to 6) := "0001000";
	constant c_B: std_logic_vector(0 to 6) := "1100000";
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

begin

-- Assignments:

   --
   --       0  
   --      ---  
   --     |   |
   --    5|   |1
   --     | 6 |
   --      ---  
   --     |   |
   --    4|   |2
   --     |   |
   --      ---  
   --       3  
   --
-- combinatorial process with case statement
	p_Decode:	process (slv_hex)
	begin
		case slv_hex is
			when "0000" =>		slv_display <= c_0;
			when "0001" =>		slv_display <= c_1;
			when "0010" =>		slv_display <= c_2;
			when "0011" =>		slv_display <= c_3;
			when "0100" =>		slv_display <= c_4;
			when "0101" =>		slv_display <= c_5;
			when "0110" =>		slv_display <= c_6;
			when "0111" =>		slv_display <= c_7;
			when "1000" =>		slv_display <= c_8;
			when "1001" =>		slv_display <= c_9;
			when "1010" =>		slv_display <= c_A;
			when "1011" =>		slv_display <= c_B;
			when "1100" =>		slv_display <= c_C;
			when "1101" =>		slv_display <= c_D;
			when "1110" =>		slv_display <= c_E;
			when "1111" =>		slv_display <= c_F;
			when others =>		slv_display <= c_blank;
		end case;
	end process p_Decode;
	
	
--	p_segments: process (sl_resetn_int, sl_coffee_int, sl_cappuccino_int, sl_espresso_int, sl_hot_chocolate_int)
--   begin
--      if(sl_resetn_int = '0') then
--         HEX5 <= c_dash;	-- -
--         HEX4 <= c_dash;	-- -
--         HEX3 <= c_dash;	-- -
--         HEX2 <= c_dash;	-- -
--         HEX1 <= c_dash;	-- -
--         HEX0 <= c_dash;	-- -
--      elsif(sl_coffee_int = '1') then
--         HEX5 <= c_C;		-- C
--         HEX4 <= c_O;		-- O
--         HEX3 <= c_F;		-- F
--         HEX2 <= c_F;		-- F
--         HEX1 <= c_E;		-- E
--         HEX0 <= c_E;		-- E
--      elsif(sl_cappuccino_int = '1') then
--         HEX5 <= c_C;		-- C
--         HEX4 <= c_A;		-- A
--         HEX3 <= c_P;		-- P
--         HEX2 <= c_P;		-- P
--         HEX1 <= c_U;		-- U
--         HEX0 <= c_blank;	-- 
--      elsif(sl_espresso_int = '1') then
--         HEX5 <= c_E;		-- E
--         HEX4 <= c_S;		-- S
--         HEX3 <= c_P;		-- P
--         HEX2 <= c_R;		-- R
--         HEX1 <= c_E; 		-- E
--         HEX0 <= c_S; 		-- S
--      elsif(sl_hot_chocolate_int = '1') then
--         HEX5 <= c_C;		-- C
--         HEX4 <= c_H;		-- H
--         HEX3 <= c_O;		-- O
--         HEX2 <= c_C;		-- C
--         HEX1 <= c_blank;	-- 
--         HEX0 <= c_blank;	-- 
--      else
--         HEX5 <= c_C;		-- C
--         HEX4 <= c_H;		-- H
--         HEX3 <= c_O;		-- O
--         HEX2 <= c_O;		-- O
--         HEX1 <= c_S; 		-- S
--         HEX0 <= c_E;		-- E
--      end if;
--   end process p_segments;

end architecture a_hex7seg;