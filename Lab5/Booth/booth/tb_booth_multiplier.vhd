------------------------------
--Lab05 multipliers
------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity tb_booth_multiplier is
end entity tb_booth_multiplier;
architecture test of tb_booth_multiplier is

component booth_multiplier is
port(
	B, Q : in std_logic_vector(3 downto 0);
	Output: out std_logic_vector(7 downto 0)
);
end component;

   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic_vector(7 downto 0);
 
 
BEGIN
    Booth: booth_multiplier PORT MAP (
          B => A,
          Q => B,
          Output => C
        );

   
   Booth_MULTI: process
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
