LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_tb is
END full_adder_tb;
 
ARCHITECTURE behavior OF full_adder_tb is
 
 
    component full_adder
    PORT(
         i0 ,i1,cin: in  std_logic;
         s ,cout: out  std_logic
        );
    End component;
    


   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';
   signal cin : std_logic := '0';
   signal s : std_logic;
   signal cout : std_logic;

 
 
BEGIN

   uut: full_adder PORT MAP (i0 => i0,i1 => i1,cin => cin,s => s,cout => cout);
i0 <= '0', '1' after 200 ns;
i1 <= '0','1' after 100 ns,'0' after 200 ns, '1' after 300 ns;
cin <='0','1' after 50 ns,'0' after 100 ns,'1' after 150 ns,'0' after 200 ns,'1' after 250 ns,'0' after 300 ns,'1' after 350 ns;

end behavior;