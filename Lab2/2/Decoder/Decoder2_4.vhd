library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder2_4 is

    Port ( a : in  STD_LOGIC_VECTOR (1 downto 0);
           enable : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (3 downto 0));

end Decoder2_4;

architecture GateLevel of Decoder2_4 is
begin
	output(0) <= enable and (not a(0)) and (not a(1));
	output(1) <= enable and a(0) and (not a(1));
	output(2) <= enable and (not a(0)) and a(1);
	output(3) <= enable and a(0) and a(1);
end GateLevel;

