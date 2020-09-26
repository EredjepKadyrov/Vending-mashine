library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity e_my_coffee_maker_FSM is

generic(	n1: positive := 26; k1: positive := 50000000;
         n3: positive := 28; k3: positive := 150000000;
			n6: positive := 29; k6: positive := 300000000
			
		);
port(
			CLOCK_50:	in				std_logic;
			SW:			in				std_logic_vector(9 downto 0);
			KEY:		in				std_logic_vector(3 downto 0);
			
			
			LEDR:		out				std_logic_vector(9 downto 0);
			HEX0:		out				std_logic_vector(0 to 6);
			HEX1:		out				std_logic_vector(0 to 6);
			HEX2:		out				std_logic_vector(0 to 6);
			HEX3:		out				std_logic_vector(0 to 6);
			HEX4:		out				std_logic_vector(0 to 6);
			HEX5:		out				std_logic_vector(0 to 6)
);
end entity e_my_coffee_maker_FSM;

architecture a_my_coffee_maker_FSM of e_my_coffee_maker_FSM is

   -- Type Declaration
   type t_coffee_maker_states is (S_IDLE,S_MENU1, S_MENU2, S_GRIND, S_BREW, S_CHOC_POWDER, S_PUMP_WATER, S_PUMP_MILK, S_DONE);
   signal coffee_maker_state : t_coffee_maker_states;

   -- Component Declaration 1
	 
   component e_modulo_counter
      generic( n: natural := 4; k: integer := 15);      -- here was used generic
      port (   sl_clock, sl_reset_n:	in		std_logic;
               sl_enable:				in		std_logic;
               slv_Q:					out		std_logic_vector(n-1 downto 0);
               sl_rollover:			    out		std_logic
      );
   end component e_modulo_counter;
	
	-- Component Declaration 2
	
   component e_ram32x4 IS
	   PORT
	   (
		address		: IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	   );
    END component e_ram32x4;


-- here I tested another variant for AddSub of money but for future test also possible to use	
--	component e_AddSub is
--
--    port( slv_a, slv_b: in std_logic_vector(8 downto 0);
--        sl_AddSub: in std_logic; -- subtract if sub=1, otherwise add
--        slv_Sum: out std_logic_vector(8 downto 0)); 
--
--   end component e_AddSub;
	
	
	-- Component Declaration 3
	
   component e_hex7seg is
	 port(	slv_hex:		in		std_logic_vector(3 downto 0);
			slv_display:	out		std_logic_vector(0 to 6)
	  );
   end component e_hex7seg;
	
	
	-- Component Declaration 4
	
	component e_lmp_count IS
	 PORT
	(
		clock		: IN STD_LOGIC ;
		cnt_en		: IN STD_LOGIC ;
		sclr		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
   END component e_lmp_count;
	
	-- Component Declaration 5
	
	component e_add_two_numbers is
     port ( sl_clk: in std_logic;
            slv_A, slv_B: in std_logic_vector(3 downto 0);
            slv_sum: out std_logic_vector(3 downto 0));
   end component e_add_two_numbers;

	
	
--	here my idea was to see Logic Utilization(in ALMs),if code comes with a component 
--	component e_fsmdata is
--
--    port( sl_Clock: in std_logic;
--        sl_fsm_ready_int:	in	std_logic;
--        slv_moneyin : in std_logic_vector( 1 downto 0 );
--        sl_null_euro, sl_one_euro, sl_two_euro : out std_logic);
--   end component e_fsmdata;


	
	-- Component Declaration 6
	
	component  e_fsmdisplay is

    port( sl_resetn: in std_logic;
        sl_coffee, sl_cappuccino, sl_espresso, sl_hot_chocolate : in std_logic;
		  
		  
			svl_H2:		out				std_logic_vector(0 to 6);
			svl_H3:		out				std_logic_vector(0 to 6);
			svl_H4:		out				std_logic_vector(0 to 6);
			svl_H5:		out				std_logic_vector(0 to 6) );
   end component  e_fsmdisplay;
	
	


	
   signal sl_Clock_int:			std_logic;
   signal sl_resetn_int:		std_logic;
    
   signal slv_selection_int:	std_logic_vector(3 downto 0);
	
   signal sl_reset1n_int, sl_done1_int: std_logic;
   signal sl_reset3n_int, sl_done3_int: std_logic;
   signal sl_reset6n_int, sl_done6_int: std_logic;

   signal sl_coffee_int:			std_logic;
   signal sl_cappuccino_int:		std_logic;
   signal sl_espresso_int:			std_logic;
   signal sl_hot_chocolate_int:	std_logic;

   signal sl_fsm_ready_int:		std_logic;
   signal sl_fsm_done_int:			std_logic;
	
	signal slv_moneyin		: std_logic_vector(3 downto 0);         --punkt für Geld
-- signal slv_moneyout	: std_logic_vector(3 downto 0);         --punkt für Zuruck Geld
	signal sl_1_Euro, sl_2_Euro: std_logic; --new punkt für 1 und 2 Euro


-- first tests about FSM with moneyout as a constants 	
-- constant c_one_out: std_logic_vector(1 downto 0):= "01";  --man muss test machen mit new punkt signed
--	constant c_two_out: std_logic_vector(1 downto 0):= "10";  --man muss test machen mit new punkt signed
--	signal s_S_mon_out_int: unsigned(3 downto 0);       --man muss test machen mit new punkt signed
	

--   signal sl_coffee_stock: std_logic_vector(8 downto 0):= "111110100"; --wir have 500 couples of coffee in the stock

	
	signal slv_address : std_logic_vector(4 downto 0);        	
	signal sl_wren	: std_logic;                           
	signal slv_q_out		: std_logic_vector(3 downto 0); 
	signal slv_data_out 		 : std_logic_vector(3 downto 0):="0000"; --RAM memory out for sum with moneyin 	
	signal slv_count: std_logic_vector(7 downto 0):= x"00";
	


begin

   sl_resetn_int     <= SW(9);
	slv_moneyin		   <= SW(3 downto 0); --input connection for money 
	slv_address       <= SW(8 downto 4); -- for RAM address
   sl_Clock_int      <= CLOCK_50;
   slv_selection_int <= KEY;            -- 4-bit 
	


   -- e_modulo_counter(n, k)(sl_clock, sl_reset_n, sl_enable, slv_Q, sl_rollover)  
  I_count1: e_modulo_counter
      generic map	(	n => n1, k => k1)
      port map	(	sl_clock		=>		sl_Clock_int,
						sl_reset_n	=>		sl_reset1n_int,
						sl_enable	=>		'1',
						slv_Q			=>		open,
						sl_rollover	=>		sl_done1_int
					);
					
   I_count3: e_modulo_counter
      generic map	(	n => n3, k => k3)
      port map	(	sl_clock		=>		sl_Clock_int,
						sl_reset_n	=>		sl_reset3n_int,
						sl_enable	=>		'1',
						slv_Q			=>		open,
						sl_rollover	=>		sl_done3_int
					);

   I_count6: e_modulo_counter
      generic map	(	n => n6, k => k6)
      port map	(	sl_clock	=>		sl_Clock_int,
						sl_reset_n	=>		sl_reset6n_int,
						sl_enable	=>		'1',
						slv_Q			=>		open,
						sl_rollover	=>		sl_done6_int
					);
 					
		i_ram32x4_inst :e_ram32x4
		port map(
					address => slv_address,
					clock	  => sl_Clock_int,
					data    => slv_q_out,
					wren    => sl_resetn_int,
					q       => slv_data_out
		);		

-- here I have a little doubts about writing incoming inputs and outputs 
--  another case was with "and" operator		
--		slv_q_out <= slv_moneyin and slv_data_out;


   i_add_two_numbers: e_add_two_numbers port map(sl_Clock_int,slv_moneyin, slv_data_out, slv_q_out);
		

--					  		

  p_coffee_maker_FSM: process (sl_Clock_int, sl_resetn_int)
   begin
      if(sl_resetn_int = '0') then
	     coffee_maker_state <= S_IDLE;
	     sl_reset3n_int <= '0';
	     sl_reset6n_int <= '0';
	  elsif(rising_edge(sl_Clock_int)) then
         case(coffee_maker_state) is
		    when S_IDLE =>
			 if(sl_1_Euro = '1') then
			
                sl_reset3n_int <= '1';
		          sl_reset6n_int <= '0';
                coffee_maker_state <= S_MENU1;
             elsif(sl_2_Euro = '1') then
								
                sl_reset3n_int <= '1';
		          sl_reset6n_int <= '0';
                coffee_maker_state <= S_MENU2;
				 elsif(sl_coffee_int = '1') then
								
                sl_reset3n_int <= '1';
		          sl_reset6n_int <= '0';
                coffee_maker_state <= S_MENU2;
             else
		          coffee_maker_state <= S_IDLE;
		       end if;  
           when S_MENU1 =>
                      
		       if(sl_coffee_int = '1') then
                 if(sl_1_Euro = '1') then
                   if(sl_done3_int = '1') then
		          -- Grind Coffee for 6 seconds
		          sl_reset3n_int <= '0';
		          sl_reset6n_int <= '1';
		          coffee_maker_state <= S_GRIND;
			       end if;
             end if;
		       elsif(sl_cappuccino_int = '1') then
                if(sl_1_Euro = '1') then
                    if(sl_done3_int = '1') then
		          -- Grind Cappuccino for 3 seconds
		          sl_reset3n_int <= '1';
		          sl_reset6n_int <= '0';
		          coffee_maker_state <= S_GRIND;
                 end if;
             end if;
                 else
		          coffee_maker_state <= S_MENU1;
		       end if;  
             when S_MENU2 =>  
		        if(sl_espresso_int = '1') then
                 if(sl_2_Euro = '1') then
                    if(sl_done3_int = '1') then
		          -- Grind Espresso for 3 seconds
		          sl_reset3n_int <= '1';
		          sl_reset6n_int <= '0';
		          coffee_maker_state <= S_GRIND;
                    end if;
                 end if;
		       elsif(sl_hot_chocolate_int = '1') then
               if(sl_2_Euro = '1') then
                  if(sl_done3_int = '1') then
		          -- Brew Water for 6 seconds
		          sl_reset3n_int <= '0';
		          sl_reset6n_int <= '1';
		          coffee_maker_state <= S_BREW;
                   end if;
               end if;
		       else
		          coffee_maker_state <= S_MENU2;
		       end if;

                   -- end if;
		    when S_GRIND =>
		       if(sl_coffee_int = '1') then
		          -- Grind Coffee for 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Brew Water for 6 seconds
		             sl_reset3n_int <= '0';
		             sl_reset6n_int <= '1';
		             coffee_maker_state <= S_BREW;
		          end if;
		       elsif(sl_cappuccino_int = '1') then
		          -- Grind Cappuccino for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Brew Water for 6 seconds
		             sl_reset3n_int <= '0';
		             sl_reset6n_int <= '1';
		             coffee_maker_state <= S_BREW;
		          end if;
		       elsif(sl_espresso_int = '1') then
		          -- Grind Espresso for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Brew Water for 6 seconds
		             sl_reset3n_int <= '0';
		             sl_reset6n_int <= '1';
		             coffee_maker_state <= S_BREW;
		          end if;
		       else
		          coffee_maker_state <= S_GRIND;
		       end if;
		    when S_BREW =>
		       if(sl_coffee_int = '1') then
		          -- Brew Water of 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Pump Water for 6 seconds
		             sl_reset6n_int <= '1';
		             sl_reset3n_int <= '0';
		             coffee_maker_state <= S_PUMP_WATER;
		          end if;
		       elsif(sl_cappuccino_int = '1') then
		          -- Brew Water of 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Pump Water for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_PUMP_WATER;
		          end if;
		       elsif(sl_espresso_int = '1') then
		          -- Brew Water of 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Pump Water 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_PUMP_WATER;
		          end if;
		       elsif(sl_hot_chocolate_int = '1') then
		          -- Brew Water of 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Fill in Chocolate Powder for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_CHOC_POWDER;
		          end if;
		       else
		          coffee_maker_state <= S_BREW;
		       end if;
		    when S_CHOC_POWDER =>
		       if(sl_hot_chocolate_int = '1') then
		          -- Fill in Chocolate Powder for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Pump Water for 6 seconds
		             sl_reset6n_int <= '1';
		             sl_reset3n_int <= '0';
		             coffee_maker_state <= S_PUMP_WATER;
		          end if;
		       else
		          coffee_maker_state <= S_CHOC_POWDER;
		       end if;		
		    when S_PUMP_WATER =>
		       if(sl_coffee_int = '1') then
		          -- Pump Water for 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Display Done for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_DONE;
		          end if;
		       elsif(sl_cappuccino_int = '1') then
		          -- Pump Water for 3 seconds done!
		          if(sl_done3_int = '1') then
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_PUMP_MILK;
		          end if;
		       elsif(sl_espresso_int = '1') then
		          -- Pump Water for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Display Done for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_DONE;
		          end if;
		       elsif(sl_hot_chocolate_int = '1') then
		          -- Pump Water for 6 seconds done!
		          if(sl_done6_int = '1') then
		             -- Display Done for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_DONE;
		          end if;
		       else
		          coffee_maker_state <= S_PUMP_WATER;
		       end if;   
		    when S_PUMP_MILK =>
		       if(sl_cappuccino_int = '1') then
		          -- Pump Milk for 3 seconds done!
		          if(sl_done3_int = '1') then
		             -- Display Done for 3 seconds
		             sl_reset6n_int <= '0';
		             sl_reset3n_int <= '1';
		             coffee_maker_state <= S_DONE;
		          end if;
		       else
		          coffee_maker_state <= S_PUMP_MILK;
		       end if;
		    when S_DONE =>
		       -- Display Done for 3 seconds done!
		       if(sl_done3_int = '1') then
		          -- Go back to IDLE
		          sl_reset6n_int <= '0';
		          sl_reset3n_int <= '0';
		          coffee_maker_state <= S_IDLE;
		       end if;
		    when others => 
		       coffee_maker_state <= S_IDLE;	
		       report "Reach undefined state";
		 end case;
	  end if;
   end process p_coffee_maker_FSM;

	
--   it was the idea to return money from 5 euro cash(but must be reviewed again)	
--			 when S_CHANGE =>
--				if (sl_five_euro <='1') then
--				 if(sl_coffee_int = '1') then          -- kostet sl_one_euro
--					 s_S_mon_out_int <= unsigned(s_two_int)  + unsigned(s_two_int);
--				  coffee_maker_state <= S_IDLE;
--			    end if;
--				elsif (sl_five_euro <='1') then
--				 if(sl_cappuccino_int = '1') then      -- kostet sl_two_euro
--					 s_S_mon_out_int <= unsigned(s_one_int)  + unsigned(s_two_int);
--				  coffee_maker_state <= S_IDLE;
--				  end if;
--				elsif (sl_five_euro <='1') then
--				 if(sl_espresso_int = '1') then        -- kostet sl_two_euro
--					 s_S_mon_out_int <= unsigned(s_one_int)  + unsigned(s_two_int);
--				  coffee_maker_state <= S_IDLE;
--				  end if;
--				elsif (sl_five_euro <='1') then
--				 if(sl_hot_chocolate_int = '1') then   -- kostet sl_one_euro
--					 s_S_mon_out_int <= unsigned(s_two_int)  + unsigned(s_two_int);
--				  coffee_maker_state <= S_IDLE;
--				 end if;
--				else
--					slv_moneyout <= "0000";      -- else variant must be checked
--					coffee_maker_state <= S_IDLE;
--				end if;
--		end if;
--				 coffee_maker_state <= S_STOCK;	


	
	
	
	-- drive LED progress 
   
   p_coffee_maker_output: process (coffee_maker_state)
   begin
      case(coffee_maker_state) is
         when S_IDLE =>
			LEDR <= "1000000000";
			sl_fsm_ready_int <= '1';
			sl_fsm_done_int <= '0';
			when S_MENU1 =>
			LEDR <= "0000000001"; -- Display S_MENU1 Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
			when S_MENU2 =>
			LEDR <= "0000000010"; -- Display S_MENU2 Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
         when S_GRIND =>
			LEDR <= "0000000100"; -- Display GRIND Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_BREW =>
			LEDR <= "0000001000"; -- Display BREW Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_CHOC_POWDER =>
			LEDR <= "0000010000"; -- Display CHOC_POWDER Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_PUMP_WATER =>
			LEDR <= "0000100000"; -- Display PUMP_WATER Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_PUMP_MILK =>
			LEDR <= "0001000000"; -- Display PUMP_MILK Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '0';
		 when S_DONE =>
			LEDR <= "0010000000"; -- Display DONE Mode
			sl_fsm_ready_int <= '0';
			sl_fsm_done_int <= '1';
		 when others =>
		    LEDR <= (others => '1');
	  end case;
   end process p_coffee_maker_output;
	
	
   -- product choise
	
   p_choice: process (sl_Clock_int, sl_resetn_int, slv_selection_int)
   begin
      if (sl_resetn_int = '0') then
         sl_coffee_int			<= '0';
         sl_cappuccino_int		<= '0';
         sl_espresso_int		<= '0';
         sl_hot_chocolate_int	<= '0';
      elsif(rising_edge(sl_Clock_int)) then
         if(sl_fsm_ready_int = '1') then
            case slv_selection_int is
               when "1110" => sl_coffee_int 			   <=	   '1'; -- 1 button for use
               when "1101" => sl_cappuccino_int			<= 	'1'; -- 2 button for use
               when "1011" => sl_espresso_int			<= 	'1'; -- 3 button for use
               when "0111" => sl_hot_chocolate_int		<= 	'1'; -- 4 button for use
               when others => null;
            end case;
         end if;
         if(sl_fsm_done_int = '1') then
            sl_coffee_int			<= '0';
            sl_cappuccino_int		<= '0';
            sl_espresso_int			<= '0';
            sl_hot_chocolate_int	<= '0';
         end if;
      end if;
   end process p_choice;
	
	
  --money choise 
	
  p_choice_money: process (sl_Clock_int,sl_resetn_int, slv_moneyin)
  begin
      if (sl_resetn_int = '0') then
		
         sl_1_Euro			<= '0';
         sl_2_Euro		   <= '0';
      
 
      elsif(rising_edge(sl_Clock_int)) then
         if(sl_fsm_ready_int = '1') then
            case slv_moneyin is
               when "0001" => sl_1_Euro 			<=	   '1';
               when "0010" => sl_2_Euro			<= 	'1';
					
               when others => null;
            end case;
         end if;
        if(sl_fsm_done_int = '1') then
            sl_1_Euro			<= '0';
            sl_2_Euro		   <= '0';
				end if;
      end if;
   end process p_choice_money;

	

  -- here I decided to use as component for menu output to HEX	
	
 i_fsmdisplay:e_fsmdisplay port map(sl_resetn_int,sl_coffee_int, sl_cappuccino_int, sl_espresso_int, sl_hot_chocolate_int,HEX2,HEX3,HEX4,HEX5); 

	
	

	--counting coffee
	
   i_lpm_count: e_lmp_count port map (sl_clock_int, sl_coffee_int, sl_resetn_int,  slv_count);
   -- here also possible to count coffee on HEX1 and for example capuchino on HEX0  
   i1_hex7seg: e_hex7seg port map (slv_count(7 downto 4),HEX1);
   i0_hex7seg: e_hex7seg port map (slv_count(3 downto 0),HEX0);
	

end architecture a_my_coffee_maker_FSM;