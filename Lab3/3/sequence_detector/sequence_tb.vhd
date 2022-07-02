 LIBRARY ieee;
 USE ieee.std_logic_1164.ALL;

 
 ENTITY sequence_tb IS
 END sequence_tb;
 
 ARCHITECTURE behavior OF sequence_tb is
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sequence_detector is
    PORT(
         input : IN  std_logic;
         clk : IN  std_logic;
         output : OUT  std_logic
        );
    END COMPONENT;
    

 --Inputs
   signal input : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal output : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
-- Instantiate the Unit Under Test (UUT)
   uut: sequence_detector PORT MAP (
          input => input,
          clk => clk,
          output => output
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
         			
		input <= '0';
		wait for 10 ns;
		
		input <= '1';
		wait for 10 ns;

		input <= '0';
		wait for 10 ns;

		input <= '1';--output'1'
		wait for 10 ns;

		input <= '1';
		wait for 10 ns;
		
		input <= '0';--output '1'
		wait for 10 ns;
		
		input <= '0';
		wait for 10 ns;

				
      wait;
   end process;

END;

