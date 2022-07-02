------------------------------
--Lab04-Carry Look Ahead
------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity carry_look_ahead_adder is
    Port ( A : IN  std_logic_vector (3 downto 0);
           B : IN  std_logic_vector (3 downto 0);
           Cin : IN  std_logic;
           S : OUT  std_logic_vector (3 downto 0);
           Cout : OUT  std_logic);
end carry_look_ahead_adder;

architecture Behavioral of carry_look_ahead_adder IS

--COMPONENT OF FULL ADDER
	component full_adder IS
    Port ( A : IN  std_logic;
           B : IN  std_logic;
           Cin : IN  std_logic;
           S : OUT  std_logic);
	end component full_adder;

		
	signal g,p : std_logic_vector (9 downto 0);
	signal c : std_logic_vector (3 downto 1);
	signal w : std_logic_vector (9 downto 0);

begin

	g(0)<=A(0) and B(0); 
	g(1)<=A(1) and B(1); 
	g(2)<=A(2) and B(2); 
	g(3)<=A(3) and B(3); 

	p(0)<=A(0) xor B(0); 
	p(1)<=A(1) xor B(1); 
	p(2)<=A(2) xor B(2); 
	p(3)<=A(3) xor B(3); 
	
--For c1
	w(0)<= p(0) and Cin;
	c(1)<= g(0) or w(0);

--For c2
	w(1)<= p(1) and g(0) ;
	w(2)<= p(1) and p(0)and Cin;
	c(2)<= g(1) or w(1) or w(2);

--For c3
	w(3)<= g(1) and p(2);
	w(4)<= p(2) and p(1) and g(0);
	w(5)<= p(2) and p(1) and p(0) and Cin;
	c(3)<= g(2) or w(3) or w(4) or w(5);

--For cout
	w(6)<=g(2) and p(3);
	w(7)<=p(3) and p(2) and g(1);
	w(8)<=p(3) and p(2)and p(1) and g(0);
	w(9)<=p(3) and p(2) and p(1) and p(0) and Cin;
	Cout<=g(3) or w(6) or w(7) or w(8) or w(9);

		
	fa1: full_adder PORT MAP (A => A(0), B => B(0), Cin => Cin , S => S(0));
	fa2: full_adder PORT MAP (A => A(1), B => B(1), Cin => c(1), S => S(1));
	fa3: full_adder PORT MAP (A => A(2), B => B(2), Cin => c(2), S => S(2));
	fa4: full_adder PORT MAP (A => A(3), B => B(3), Cin => c(3), S => S(3));
	
end Behavioral;
