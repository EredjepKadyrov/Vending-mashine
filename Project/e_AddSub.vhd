library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity e_AddSub is

    port( slv_a, slv_b: in std_logic_vector(1 downto 0);
        sl_AddSub: in std_logic; -- subtract if sub=1, otherwise add
        slv_Sum: out std_logic_vector(5 downto 0)); 

end e_AddSub;

architecture a_AddSub of e_AddSub is
begin
	p_ALU: process (sl_AddSub, slv_a, slv_b)
   begin
      if(sl_AddSub = '0') then
		  slv_Sum <= std_logic_vector(signed(slv_a) + signed(slv_b));
		else
		  slv_Sum <= std_logic_vector(signed(slv_a) - signed(slv_b));
           
        
		end if;
   end process p_ALU;
end a_AddSub;
