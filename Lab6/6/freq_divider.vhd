library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity freq_divider is
	port (
		clock_in: in std_logic;
                reset : in std_logic;
		clock_out: out std_logic
	);
end freq_divider;
  
architecture freq_divider_arc of freq_divider is
  
signal count: integer:=1;
signal tmp : std_logic := '0';
  
begin
  
process(clock_in,reset)
begin
	if(reset='1') then
		count <=1;
		tmp <='0';
	elsif(clock_in'event and clock_in='1') then
		count <= count + 1;
		--  toggle the output after 1000 toggles of input clock
		-- (if the frequency of input clock is 1khz ( period = 1024s) 
		--  then toggle the output after 1s)
		if (count = 500) then
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
	clock_out <= tmp;
end process;

end freq_divider_arc;