library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY sequence_detector IS
PORT(
	input : IN std_logic;
	output : OUT std_logic;
	clk : IN std_logic
	);
END sequence_detector;

Architecture Behavioral of sequence_detector IS
	type state_t is (s_0 , s_1 , s_2, s_3, s_4, s_5, s_6);--to determine '0101'& '0110'
							      --with one digram for both of them
							      --(with overlapping)
	signal state : state_t := s_0;
	signal next_state : state_t := s_0;
BEGIN
	sequence_detector_process:process(state, input)
	begin
		case state is
			when s_0=>--intial
				if(input='1') then
					next_state<=state;
				else
					next_state<=s_1;
				end if;
			when s_1=>
				if(input='0') then
					next_state<=state;
				else
					next_state<=s_2;
				end if;
			when s_2=>
				if(input='1') then
					next_state<=s_3;
				else
					next_state<=s_5;
				end if;
			when s_3=>--for 0110
				if(input='1') then
					next_state<=s_0;
				else
					next_state<=s_4;
				end if;
			when s_4=>-- output is '1'
				if(input='1') then
					next_state<=s_2;
				else 
					next_state<=s_1;
				end if;
			when s_5=>--for 0101
				if(input='1') then
					next_state<=s_6;
				else
					next_state<=s_1;
				end if;
			when s_6=>--output is '1'
				if(input='1') then
					next_state<=s_3;
				else
					next_state<=s_5;
				end if;
		end case;
	end process;

	clk_prosses:process(clk)
		begin
			if(clk'event and clk='1') then--rising edge 
				state<=next_state;
			end if;
		end process;

	output<='1' when state=s_4 else --The output
		'1' when state=s_6 else '0';
end behavioral;
