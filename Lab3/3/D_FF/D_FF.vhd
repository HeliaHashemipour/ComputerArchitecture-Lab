library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_FF is
    Port ( input1 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           output1 : out  STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is

begin
	dff_process : process(clk, rst)
		begin
		if rst = '0' then
			output1 <= '0';
		elsif(rising_edge(clk)) then
			output1 <= input1;
		end if;
	end process;

end Behavioral;

