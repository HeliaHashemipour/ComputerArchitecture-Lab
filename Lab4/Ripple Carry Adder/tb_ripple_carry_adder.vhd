------------------------------
--Lab04-Ripple Carry Adder
------------------------------
library ieee;
use ieee.std_logic_1164.all;

Entity tb_ripple_carry_adder is
end Entity tb_ripple_carry_adder;

Architecture behavior of tb_ripple_carry_adder is

 component ripple_carry_adder IS
 Port(
	A : IN std_logic_vector (3 downto 0);
	B : IN std_logic_vector (3 downto 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector (3 downto 0);
	Cout : OUT std_logic
);
end component ;


--inputs
 signal A : std_logic_vector(3 downto 0) := (others => '0');
 signal B : std_logic_vector(3 downto 0) := (others => '0');
 signal Cin : std_logic := '0';
 
--Outputs
 signal S : std_logic_vector(3 downto 0);
 signal Cout : std_logic;
 
 BEGIN
	RCA  : ripple_carry_adder  PORT MAP (A => A,B => B,Cin => Cin,S => S,Cout => Cout);
 
 stim_proc: process
   begin	

 wait for 100 ns;
	A <= "0010";
	B <= "0000";
 
 wait for 100 ns;
	A <= "1111";
	B <= "0100";
 
 wait for 100 ns;
	A <= "0110";
	B <= "0111";
 
 wait for 100 ns;
	A <= "1111";
	B <= "1111";

 wait for 100 ns;
        A <= "0011";
	B <= "1000";
	Cin <= '1';
wait;

 end process;

 
End;
