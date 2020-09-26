library ieee;
use ieee.std_logic_1164.all;

entity e_fsmdata is

  port( sl_Clock: in std_logic;
        sl_fsm_ready_int:	in	std_logic;
		  sl_resetn:	in	std_logic;
        slv_moneyin : in std_logic_vector( 1 downto 0 );
         sl_1_Euro, sl_2_Euro,sl_fsm_done_int: out std_logic);
end e_fsmdata;

architecture a_fsmdata of e_fsmdata is
begin
	p_choice_money: process (sl_Clock,sl_resetn, slv_moneyin)
  begin
      if (sl_resetn = '0') then
		
         sl_1_Euro			<= '0';
         sl_2_Euro		   <= '0';
      
 
      elsif(rising_edge(sl_Clock)) then
         if(sl_fsm_ready_int = '1') then
            case slv_moneyin is
               when "01" => sl_1_Euro 			<=	   '1';
               when "10" => sl_2_Euro			<= 	'1';
					
               when others => null;
            end case;
         end if;
        if(sl_fsm_done_int = '1') then
            sl_1_Euro			<= '0';
            sl_2_Euro		   <= '0';
            sl_0_Euro			<= '0';
				end if;
      end if;
   end process p_choice_money;
end a_fsmdata;
