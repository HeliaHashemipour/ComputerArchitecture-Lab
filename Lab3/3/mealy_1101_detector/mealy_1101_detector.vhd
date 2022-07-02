library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mealy_1101_detector is
    Port ( input : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           output : out  STD_LOGIC);
end mealy_1101_detector;

architecture Behavioral of mealy_1101_detector is
	signal state : STD_LOGIC_VECTOR (2 downto 0);
begin
	detector_process : process(clk, rst)
		begin
		if rst = '1' then
			state <= "000";
			output <= '0';
		elsif (rising_edge(clk)) then
			case state is
				when "000" =>
					if input = '0' then
						output <= '0';
					else
						state <= "001";
						output <= '0';
					end if;
				when "001" =>
					if input = '0' then
						state <= "000";
						output <= '0';
					else
						state <= "010";
						output <= '0';
					end if;
				when "010" =>
					if input = '0' then
						state <= "011";
						output <= '0';
					else
						state <= "010";
						output <= '0';
					end if;
				when "011" =>
					if input = '0' then
						state <= "000";
						output <= '0';
					else
						state <= "100";
						output <= '1';
					end if;
				when "100" =>
					if input = '0' then
						state <= "000";
						output <= '0';
					else
						state <= "010";
						output <= '0';
					end if;
				when others =>
			end case;
		end if;
	end process;


end Behavioral;

