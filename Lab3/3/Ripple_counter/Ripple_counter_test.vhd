LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY Ripple_counter_test IS
END Ripple_counter_test;
 
ARCHITECTURE behavior OF Ripple_counter_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ripple_counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         Count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal rst : std_logic := '1';

 	--Outputs
   signal Count : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ripple_counter PORT MAP (
          clk => clk,
          rst => rst,
          Count => Count
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      rst <= '0'; 

      wait;
   end process;

END;
