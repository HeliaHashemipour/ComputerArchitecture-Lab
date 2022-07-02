LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY encoder4_2_tb IS
END encoder4_2_tb;
 
ARCHITECTURE behavior OF encoder4_2_tb IS 
 
    COMPONENT encoder4_2
    PORT(
         input : IN  std_logic_vector(3 downto 0);
         output : OUT  std_logic_vector(1 downto 0);
         v : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal input : std_logic_vector(3 downto 0) := (others => '0');

  --Outputs
   signal output : std_logic_vector(1 downto 0);
   signal v : std_logic;

 
BEGIN

   uut: encoder4_2 PORT MAP (
          input => input,
          output => output,
          v => v
        );
 
   stim_proc: process
   begin		
    
      wait for 100 ns;	
		
		input <= "0001";
		wait for 100 ns;
		
		input <= "0010";
		wait for 100 ns;
		
		input <= "0100";
		wait for 100 ns;
		
		input <= "1000";
		wait for 100 ns;

      wait;
   end process;

END;
