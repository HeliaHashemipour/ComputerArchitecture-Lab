------------------------------
--Lab05 multipliers
------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity tb_carry_save_adder is
end entity tb_carry_save_adder;
architecture test of tb_carry_save_adder is

component carry_save_adder is
port(
	A, B : in std_logic_vector(3 downto 0);
	C : out std_logic_vector(7 downto 0)
);
end component;

   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal C : std_logic_vector(7 downto 0);
 
 
BEGIN
    CSA: carry_save_adder PORT MAP (
          A => A,
          B => B,
          C => C
        );

   
   CSA_MULTI: process
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