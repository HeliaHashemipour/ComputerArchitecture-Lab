------------------------------
--Lab04-Carry Select Adder
------------------------------
library ieee;
use ieee.STD_LOGIC_1164.all;
 
Entity mux2X1 IS
port(
	A : in STD_LOGIC;
	B : in STD_LOGIC;
	Sel: in STD_LOGIC;
	O: out STD_LOGIC);
end mux2X1;
 
Architecture Behavioral of mux2X1 is
 Begin

   process(A,B,Sel)
    Begin
     if Sel = '0' then
	O <= A;
     else
	O <= B;
     end if;
   end process;

end Behavioral;