--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:32:59 05/25/2021
-- Design Name:   
-- Module Name:   C:/Users/User/Desktop/Lab07-HeliaSadatHashemipour-9831106/Ram/Ram_tb.vhd
-- Project Name:  Ram
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ram
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
 
ENTITY Ram_tb IS
END Ram_tb;
 
ARCHITECTURE behavior OF Ram_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ram
    PORT(
         rd : IN  std_logic;--READ
         wr : IN  std_logic;--WRITE
         rst : IN  std_logic;--RST
         addr : IN  std_logic_vector(4 downto 0);
         clk : IN  std_logic;--RISING EDGE CLK
         data : INOUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal rst : std_logic := '0';
   signal addr : std_logic_vector(4 downto 0) := (others => '0');
   signal clk : std_logic := '0';

   signal data : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   Random_Access_Memory: Ram PORT MAP (
          rd => rd,
          wr => wr,
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
      -- hold reset state for 100 ns.
		rst <= '0';
      wait for clk_period;
		rst <= '1';
		wr <= '0';
		rd <= '1';
		addr <= "10111";
		--data: 10111
		
		wait for 2*clk_period;	
		wr <= '0';
		rd <= '1';
		addr <= "00100";
		--data: 00100
					
		wait for 2*clk_period;
		wr <= '1';
		rd <= '0';
		addr <= "10011";
		--mem(10011): 00100
		
		wait for 2*clk_period;
		wr <= '0';
		rd <= '1';
		addr <= "00000";	
		--data: 00000
		
		wait for 2*clk_period;	
		wr <= '1';
		rd <= '0';
		addr <= "00100";
		--mem(00100): 00000
		
        wait;
   end process;

END;