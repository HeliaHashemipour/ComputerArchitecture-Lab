library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity moore_1101_detector IS
    Port ( input : IN  STD_LOGIC;
           clk : IN  STD_LOGIC;
           output : OUT  STD_LOGIC);
end moore_1101_detector;

architecture Behavioral of moore_1101_detector IS
type t_state is (s_0, s_1, s_2, s_3, s_4);

signal pre_state : t_state := s_0 ;
signal next_state : t_state := s_0;

BEGIN

moore_process_1101 : process(pre_state, input)
begin
	
	case pre_state is 
	
		when s_0 =>
			if (input = '1') then 
				next_state <= s_1;
			else
				next_state <= s_0;
			end if;	
			
			
		when s_1 =>
			if (input = '1') then 
				next_state <= s_2;
			else
				next_state <= s_0;
			end if;	


		when s_2 =>
			if (input = '1') then 
				next_state <= s_2;
			else
				next_state <= s_3;
			end if;
			

		when s_3 =>
			if (input = '1') then 
				next_state <= s_4;
			else
				next_state <= s_0;
			end if;	


		when s_4 =>
			if (input = '1') then 
				next_state <= s_2;
			else
				next_state <= s_0;
			end if;		
			
    end case;
end process ;

clk_process : process(clk)
begin 

	if falling_edge (clk) then --falling edge clk
		pre_state <= next_state;
	end if;

end process;		

	output <= '1' when pre_state = s_4 else --output is '1' in state s_4
			 '0';
			 
			 
end Behavioral;