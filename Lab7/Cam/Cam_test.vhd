--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:18:55 05/25/2021
-- Design Name:   
-- Module Name:   C:/Users/User/Desktop/Lab07-HeliaSadatHashemipour-9831106/Cam/Cam_test.vhd
-- Project Name:  Cam
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Cam
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
 
ENTITY Cam_test IS
END Cam_test;
 
ARCHITECTURE behavior OF Cam_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Cam
    PORT(
         rd : IN  std_logic; --READ
         wr : IN  std_logic; --WRITE
         rst : IN  std_logic; --RST
         clk : IN  std_logic; --RISING EDGE CLK
         match : out  std_logic; --MATCH PART
         data : in  std_logic_vector(3 downto 0) --DATA IN & OUT
        );
    END COMPONENT;
    

   --Inputs
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal rst : std_logic := '0';
   signal clk : std_logic := '0';
   signal match : std_logic := '0';

   signal data : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   Content_Addressable_Memory: Cam PORT MAP (
          rd => rd,
          wr => wr,
          rst => rst,
          clk => clk,
          match => match,
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
		--empty the memory
		
      wait for clk_period;
		rst <= '1';
		wr <= '0';
		rd <= '1';
		data <= "0101"; 
		
      wait for clk_period;
		--mem(0): 0000
		wr <= '1';
		rd <= '0';
		data <= "0000"; 
		
	   wait for clk_period;	
		wr <= '1';
		rd <= '0';
		data <= "1111"; 
		--mem(1): 1111
		
		wait for clk_period;
		wr <= '0';
		rd <= '1';
		data <= "0101"; 

      wait for clk_period;
		--match: 1
		wr <= '0';
		rd <= '1';
		data <= "0000"; 
     
      wait;
   end process;

END;