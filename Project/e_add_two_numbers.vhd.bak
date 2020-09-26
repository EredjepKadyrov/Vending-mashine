library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity e_add_two_numbers is
   port ( sl_clk: in std_logic;
   slv_A, slv_B: in std_logic_vector(3 downto 0);
   slv_sum: out std_logic_vector(3 downto 0));
end entity e_add_two_numbers;


architecture a_add_two_numbers of e_add_two_numbers is
   signal u_A_reg_int, u_B_reg_int: unsigned(3 downto 0);
   signal u_sum_reg_int: unsigned(3 downto 0);
   attribute keep: boolean;
   attribute keep of u_A_reg_int, u_B_reg_int: signal is true;
   attribute keep of u_sum_reg_int: signal is true;

begin
   p_addition: process (sl_clk)
   begin
     if(rising_edge(sl_clk)) then
       u_A_reg_int <= unsigned(slv_A); u_B_reg_int <= unsigned(slv_B);

       u_sum_reg_int <= (u_A_reg_int) + (u_B_reg_int);
     end if;
   end process p_addition;
	
   slv_sum <= std_logic_vector(u_sum_reg_int);
	
   end architecture a_add_two_numbers;
