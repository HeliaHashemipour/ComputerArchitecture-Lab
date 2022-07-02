LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY mux16_1_test IS
END mux16_1_test;
 
ARCHITECTURE behavior OF mux16_1_test IS 
 
 
    COMPONENT mux16_1
    PORT(
         a0 : IN  std_logic_vector(3 downto 0);
         a1 : IN  std_logic_vector(3 downto 0);
         a2 : IN  std_logic_vector(3 downto 0);
         a3 : IN  std_logic_vector(3 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a0 : std_logic_vector(3 downto 0) := (others => '0');
   signal a1 : std_logic_vector(3 downto 0) := (others => '0');
   signal a2 : std_logic_vector(3 downto 0) := (others => '0');
   signal a3 : std_logic_vector(3 downto 0) := (others => '0');
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

   --Outputs
   signal output : std_logic;
 
 
BEGIN
 
   uut: mux16_1 PORT MAP (
          a0 => a0,
          a1 => a1,
          a2 => a2,
          a3 => a3,
          sel => sel,
          output => output
        );

   stim_proc: process
   begin		
   
      wait for 100 ns;	
  
		a0 <= "0000";
		a1 <= "0001";
		a2 <= "0111";
		a3 <= "0111";
                --get bit 0 of all 4 vector
		sel <= "00";
                --get bit 1 of all 4 vector
		wait for 100ns;
		sel <= "01";
                --get bit 2 of all 4 vector
		wait for 100ns;
		sel <= "10";
                --get bit 3 of all 4 vector
		wait for 100ns;
		sel <= "11";


      wait;
   end process;

END;
