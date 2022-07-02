--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:57:23 05/25/2021
-- Design Name:   
-- Module Name:   C:/Users/User/Desktop/Lab07-HeliaSadatHashemipour-9831106/Rom/Rom_tb.vhd
-- Project Name:  Rom
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Rom
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Rom_tb IS
END Rom_tb;
 
ARCHITECTURE behavior OF Rom_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Rom
    PORT(
	 --read
         rd : IN  std_logic;
	 --active loww rst
         rst : IN  std_logic;
	 --address
         addr : IN  std_logic_vector(3 downto 0);
	 --rising edge clk
         clk : IN  std_logic;
	 --data in & out
         data : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rd : std_logic := '0';
   signal rst : std_logic := '0';
   signal addr : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';

	--BiDirs
   signal data : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   Read_Only_Memory: Rom PORT MAP (
          rd => rd,
          rst => rst,
          addr => addr,
          clk => clk,
          data => data
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
      rst <= '0';
		rd<='1';
      wait for clk_period;
		rst <= '1';
		addr <= "1000";
		
		wait for 2*clk_period;
		addr <= "0110";
		
		wait for 2*clk_period;	
		addr <= "0100";
		
		wait for 2*clk_period;	
		addr <= "1000";
		
		wait for 2*clk_period;	
		addr <= "0011";
		
		wait for 2*clk_period;	
		addr <= "0101";
		
		
		wait;	

   end process;

END;