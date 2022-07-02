------------------------------
--Lab04-Ripple Carry Adder
------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
 entity ripple_carry_adder IS
 Port ( 
	A : IN std_logic_vector (3 downto 0);
	B : IN std_logic_vector (3 downto 0);
	Cin : IN std_logic;
	S : OUT std_logic_vector (3 downto 0);
	Cout : OUT std_logic );

end ripple_carry_adder;
 
Architecture behavioral of ripple_carry_adder IS
 --COMPONENT OF FULL ADDER
 component full_adder IS
 Port ( 
	A : IN std_logic;
	B : IN std_logic;
	Cin : IN std_logic;
	S : OUT std_logic;
	Cout : OUT std_logic);
end component full_adder;
 

signal c : std_logic_vector (2 downto 0);

 begin
 	fa1: full_adder PORT MAP( A => A(0), B => B(0), Cin => Cin , S => S(0),Cout => c(0));
	fa2: full_adder PORT MAP( A => A(1), B => B(1), Cin => c(0), S => S(1),Cout => c(1));
	fa3: full_adder PORT MAP( A => A(2), B => B(2), Cin => c(1), S => S(2),Cout => c(2));
	fa4: full_adder PORT MAP( A => A(3), B => B(3), Cin => c(2), S => S(3),Cout => Cout);
 
end behavioral;