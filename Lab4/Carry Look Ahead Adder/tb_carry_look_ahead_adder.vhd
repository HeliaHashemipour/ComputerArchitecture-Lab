------------------------------
--Lab04-Carry Look Ahead
------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
Entity tb_carry_look_ahead_adder IS
end tb_carry_look_ahead_adder;
 
Architecture behavior OF tb_carry_look_ahead_adder IS
component carry_look_ahead_adder
PORT(
	A : IN std_logic_vector(3 downto 0);
	B : IN std_logic_vector(3 downto 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector(3 downto 0);
	Cout : OUT std_logic
);
End component;
 

--Inputs
signal A : std_logic_vector(3 downto 0) := (others => '0');
signal B : std_logic_vector(3 downto 0) := (others => '0');
signal Cin : std_logic := '0';
 
--Outputs
signal S : std_logic_vector(3 downto 0);
signal Cout : std_logic;
 
BEGIN

CLA: carry_look_ahead_adder PORT MAP (
	A => A,
	B => B,
	Cin => Cin,
	S => S,
	Cout => Cout);
 

stim_proc: process
begin

  wait for 100 ns;
 	A <= "1001";
	B <= "1011";
	Cin <= '1';
 
  wait for 100 ns;
 	A <= "1000";
	B <= "0110";
	Cin <= '0';
 
  wait for 100 ns;
 	A <= "1100";
	B <= "1010";
	Cin <= '0';
 
  wait;
 
end process;
 
END;

