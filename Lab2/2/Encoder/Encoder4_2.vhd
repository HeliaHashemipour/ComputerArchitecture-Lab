library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder4_2 is
    Port ( input : in  STD_LOGIC_VECTOR (3 downto 0);
           output : out  STD_LOGIC_VECTOR (1 downto 0);
           v : out  STD_LOGIC);
end Encoder4_2;

architecture GateLevel of Encoder4_2 is
begin
	output(0) <= input(3) or (not input(2) and input(1));
	output(1) <= input(3) or input(2);
	v <= input(0) or input(1) or input(3) or input(2);
end GateLevel;

