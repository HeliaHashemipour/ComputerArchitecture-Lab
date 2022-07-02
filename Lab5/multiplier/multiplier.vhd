------------------------------
--Lab05 multipliers
------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplier is
 port (
 	A : IN STD_LOGIC_Vector(3 downto 0);
 	B : IN STD_LOGIC_VECTOR(3 downto 0);
	C : OUT STD_LOGIC_VECTOR(7 downto 0)
 );
end multiplier;

architecture behavioral of multiplier is

--COMPONENT OF FULLADDER
component full_adder
 port (
 	A : IN std_logic;
 	B : IN std_logic;
 	Cin : IN std_logic;
 	Sum : OUT std_logic;
	Cout : OUT std_logic
 );
end component;

--COMPONENT OF HALFADDER
component half_adder
 port (
 	a : IN std_logic;
 	b : IN std_logic;
 	sum : OUT std_logic;
 	cout : OUT std_logic);
end component;


signal and_gate :STD_LOGIC_Vector(14 downto 0);
signal HA_cout:STD_LOGIC_Vector(3 downto 0);
signal FA_cout:STD_LOGIC_Vector(6 downto 0);
signal FA_sum:STD_LOGIC_Vector(4 downto 0);
signal sum_HA_12 : std_logic;

begin

C(0) <= A(0) and B(0);
and_gate(0) <= A(0) and B(1);
and_gate(1) <= A(1) and B(0);
and_gate(2) <= A(0) and B(2);
and_gate(3) <= A(1) and B(1);
and_gate(4) <= A(0) and B(3);
and_gate(5) <= A(1) and B(2);
and_gate(6) <= A(1) and B(3);
and_gate(7) <= A(2) and B(0);
and_gate(8) <= A(2) and B(1);
and_gate(9) <= A(2) and B(2);
and_gate(10) <= A(2) and B(3);
and_gate(11) <= A(3) and B(0);
and_gate(12) <= A(3) and B(1);
and_gate(13) <= A(3) and B(2);
and_gate(14) <= A(3) and B(3);

HA1 : half_adder port map(a => and_gate(0), b => and_gate(1), sum => C(1), cout => HA_cout(0));
FA1 : full_adder port map(A => and_gate(2), B => and_gate(3), Cin => HA_cout(0), Sum => FA_sum(0), Cout => FA_cout(0));
FA2 : full_adder port map(A => and_gate(4), B => and_gate(5), Cin => FA_cout(0), Sum => FA_sum(1), Cout => FA_cout(1));
HA2 : half_adder port map(a => and_gate(6), b => FA_cout(1), sum => sum_HA_12, cout => HA_cout(1));
HA3 : half_adder port map(a => and_gate(7), b => FA_sum(0), sum => C(2), cout => HA_cout(2));
FA3 : full_adder port map(A => and_gate(8), B => FA_sum(1), Cin => HA_cout(2), Sum => FA_sum(2), Cout => FA_cout(2));
FA4 : full_adder port map(A => and_gate(9), B => sum_HA_12, Cin => FA_cout(2), Sum => FA_sum(3), Cout => FA_cout(3));
FA5 : full_adder port map(A => and_gate(10), B => HA_cout(1), Cin => FA_cout(3), Sum => FA_sum(4), Cout => FA_cout(4));
HA4 : half_adder port map(a => and_gate(11), b => FA_sum(2), sum => C(3), cout => HA_cout(3));
FA6 : full_adder port map(A => and_gate(12), B => FA_sum(3), Cin => HA_cout(3), Sum => C(4), Cout => FA_cout(5));
FA7 : full_adder port map(A => and_gate(13), B => FA_sum(4), Cin => FA_cout(5), Sum => C(5), Cout => FA_cout(6));
FA8 : full_adder port map(A => and_gate(14), B => FA_cout(4), Cin => FA_cout(6), Sum => C(6), Cout => C(7));


end behavioral;
