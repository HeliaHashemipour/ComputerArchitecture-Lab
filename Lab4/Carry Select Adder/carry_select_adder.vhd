------------------------------
--Lab04-Carry Select Adder
------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
Entity carry_select_adder is
Port (
	A : in std_logic_vector (3 downto 0);
	B : in std_logic_vector (3 downto 0);
	Cin : in std_logic;
	S : out std_logic_vector (3 downto 0);
	Cout : out std_logic);
end carry_select_adder;
 Architecture Behavioral of carry_select_adder is
 
--COMPONENT OF FULL ADDER
component full_adder
Port (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Cin : IN STD_LOGIC;
	S : OUT STD_LOGIC;
	Cout : OUT STD_LOGIC);
end component;
 
--COMPONENT OF MUX
component mux2X1
Port(
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	Sel: IN STD_LOGIC;
	O: OUT STD_LOGIC
);
end component;
 
signal Sum0,Sum1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
signal c0,c1: STD_LOGIC_VECTOR(3 DOWNTO 0);
begin
 --FIRST RIPPLE CARRY ADDER
fa1: full_adder PORT MAP(A => A(0),B => B(0),Cin => '0' ,S => Sum0(0),Cout => c0(0));
fa2: full_adder PORT MAP(A => A(1),B => B(1),Cin => c0(0),S => Sum0(1),Cout => c0(1));
fa3: full_adder PORT MAP(A => A(2),B => B(2),Cin => c0(1),S => Sum0(2),Cout => c0(2));
fa4: full_adder PORT MAP(A => A(3),B => B(3),Cin => c0(2),S => Sum0(3),Cout => c0(3));
 --SECOND RIPPLE CARRY ADDER
fa5: full_adder PORT MAP(A => A(0),B => B(0),Cin => '1' ,S => Sum1(0),Cout => c1(0));
fa6: full_adder PORT MAP(A => A(1),B => B(1),Cin => c1(0),S => Sum1(1),Cout => c1(1));
fa7: full_adder PORT MAP(A => A(2),B => B(2),Cin => c1(1),S => Sum1(2),Cout => c1(2));
fa8: full_adder PORT MAP(A => A(3),B => B(3),Cin => c1(2),S => Sum1(3),Cout => c1(3));
 
MUX1: mux2X1 PORT MAP(A => Sum0(0),B => Sum1(0),Sel => Cin,O => S(0));
MUX2: mux2X1 PORT MAP(A => Sum0(1),B => Sum1(1),Sel => Cin,O => S(1));
MUX3: mux2X1 PORT MAP(A => Sum0(2),B => Sum1(2),Sel => Cin,O => S(2));
MUX4: mux2X1 PORT MAP(A => Sum0(3),B => Sum1(3),Sel => Cin,O => S(3));
 
MUX5: mux2X1 PORT MAP(A => c0(3),B => c1(3),Sel => Cin,O => Cout);
 
end Behavioral;
