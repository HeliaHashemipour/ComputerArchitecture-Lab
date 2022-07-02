------------------------------
--Lab05 multipliers
------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity tb_multiplier is
end entity tb_multiplier;
architecture test of tb_multiplier is

component multiplier is
port(
	A, B : in std_logic_vector(3 downto 0);
	C : out std_logic_vector(7 downto 0)
);
end component;

   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic_vector(7 downto 0);
 
 
BEGIN
    MULTI: multiplier PORT MAP (
          A => A,
          B => B,
          C => C
        );

   
   MULTIP: process
   begin		
     
		A <= "0110";
		B <= "1010";
	   wait for 100 ns;	
		A <= "0001";
		B <= "1000";
	wait for 100 ns;	
		A <= "0011";
		B <= "0110";
	wait for 100 ns;	
		A <= "1100";
		B <= "1011";

      wait;
   end process;

END;
