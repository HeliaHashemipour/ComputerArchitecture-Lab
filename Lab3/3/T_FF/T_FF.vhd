library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity T_FF is
    Port ( T_input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           T_output : out  STD_LOGIC);
end T_FF;

architecture Behavioral of T_FF is
signal out1 : STD_LOGIC;
begin
	T_output <= out1;
	tff_process : process(rst, clk)
		begin
		if rst = '1' then
			out1 <= '0';
		elsif(rising_edge(clk) and T_input = '1') then
			out1 <= not out1;
			
		end if;
	end process;


end Behavioral;


