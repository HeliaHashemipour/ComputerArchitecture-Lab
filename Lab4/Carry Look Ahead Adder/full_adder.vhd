------------------------------
--Lab04-Carry Look Ahead
------------------------------
library ieee;
use ieee.std_logic_1164.all;

Entity full_adder IS
Port(
	A : IN std_logic;
	B : IN std_logic;
	Cin: IN std_logic;
	S : OUT std_logic;
	Cout : OUT std_logic);
end entity full_adder;

Architecture structure of full_adder IS
--HALF ADDER COMPONENT
 component half_adder is
 Port(
	A: IN std_logic;
	B: IN std_logic;
	S: OUT std_logic;
	Cout : OUT std_logic );
 end component half_adder;

signal c0, c1, c2: std_logic;

begin
	HA1: half_adder PORT MAP ( A => A, B => B, S => c0, Cout => c1);
	HA2: half_adder PORT MAP ( A => c0, B => Cin, S => S, Cout => c2);
	Cout <= c1 or c2;
	
end structure;
