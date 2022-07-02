LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_seven_segment IS
END tb_seven_segment;
 
ARCHITECTURE behavior OF tb_seven_segment IS 
  
    COMPONENT seven_segment
    PORT(
         bcd : in std_logic_vector(3 downto 0);
         number: out std_logic_vector(3 downto 0);
         output : out std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    
   signal bcd : std_logic_vector(3 downto 0) := (others => '0');

   signal number : std_logic_vector(3 downto 0);

   signal output : std_logic_vector(6 downto 0);

 
BEGIN
 
   uut: seven_segment PORT MAP (
         bcd => bcd,
         number =>number,
         output => output
        );


   -- Stimulus process
   stim_proc: process
   begin		
      
	 wait for 100 ns;
		
                 bcd <= "0000";
		
		 wait for 50 ns;
		
		 bcd <="0001";

		 wait for 50 ns;
		
		 
		 bcd <= "0010";
		 	 wait for 50 ns;
		

                 bcd <= "0011";
			 wait for 50 ns;
		


		 bcd <= "0100";
		 	 wait for 50 ns;
		

                 bcd <= "0101";
		 	 wait for 50 ns;
		
                 bcd <= "0110";
		 	 wait for 50 ns;
		

                 bcd <= "0111";
			 wait for 50 ns;
		

                 bcd <= "1000";
		 	 wait for 50 ns;
		
                   
                 bcd <= "1001";
		 	 wait for 50 ns;
		
                 
                 bcd <= "1010";
			 wait for 50 ns;
		
                 
                 bcd <= "1011";
			 wait for 50 ns;
		
                 
                 bcd <= "1100";
		  	 wait for 50 ns;
		
                 
                 bcd <= "1101";
			 wait for 50 ns;
		
                  
                 bcd <= "1110";
			 wait for 50 ns;
		
                 
                 bcd <= "1111";
			 wait for 50 ns;
		



      wait;
   end process;


END;