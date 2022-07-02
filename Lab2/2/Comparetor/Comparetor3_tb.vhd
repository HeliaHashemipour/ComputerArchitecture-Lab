LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY comperator3_tb IS
END comperator3_tb;

ARCHITECTURE behavior OF comperator3_tb IS 
 
    COMPONENT comperator3
    PORT(
         a : IN  std_logic_vector(2 downto 0);
         b : IN  std_logic_vector(2 downto 0);
         lt : IN  std_logic;
         gtt : IN  std_logic;
         eq : IN  std_logic;
         a_gt_b : OUT  std_logic;
         a_eq_b : OUT  std_logic;
         a_lt_b : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(2 downto 0) := (others => '0');
   signal b : std_logic_vector(2 downto 0) := (others => '0');
   signal lt : std_logic := '0';
   signal gtt : std_logic := '0';
   signal eq : std_logic := '0';

 	--Outputs
   signal a_gt_b : std_logic;
   signal a_eq_b : std_logic;
   signal a_lt_b : std_logic;
 
 
BEGIN
 

   uut: comperator3 PORT MAP (
          a => a,
          b => b,
          lt => lt,
          gtt => gtt,
          eq => eq,
          a_gt_b => a_gt_b,
          a_eq_b => a_eq_b,
          a_lt_b => a_lt_b
        );

  
   stim_proc: process
   begin		
		lt <= '0';
		gtt <= '0';
		eq <= '1';
              
                wait for 50 ns;
	
		a <= "000";
		b <= "001";
		wait for 50 ns;

	        lt <= '0';
		gtt <= '0';
		eq <= '1';

		a <= "010";
		b <= "001";
		wait for 50 ns;

	        lt <= '0';
		gtt <= '0';
		eq <= '1';
		
                b <= "100";
		a <= "100";
		wait for 50 ns;
      
      wait;
   end process;

END;
