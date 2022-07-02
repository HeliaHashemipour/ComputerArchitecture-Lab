--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:13:53 05/25/2021
-- Design Name:   
-- Module Name:   C:/Users/User/Desktop/Lab07-HeliaSadatHashemipour-9831106/dual-port-ram/dual-port-ram-tb.vhd
-- Project Name:  dual-port-ram
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dual_port_ram
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
--------------------------------------------------------------------------------LIBRARY ieee;
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY dual_port_ram_tb IS
END dual_port_ram_tb;
 
ARCHITECTURE behavior OF dual_port_ram_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dual_port_ram
    PORT(
	 --write
         wr : IN  std_logic;
	--read
         rd : IN  std_logic;
	--clk
         clk : IN  std_logic;
	--address of reading
         addr_RD : IN  std_logic_vector(4 downto 0);
	--address of writing
         addr_WR : IN  std_logic_vector(4 downto 0);
	--active low reset
         rst : IN  std_logic;
         data_in : IN  std_logic_vector(4 downto 0);
         data_out : OUT  std_logic_vector(4 downto 0);
         same : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal wr : std_logic := '0';
   signal rd : std_logic := '0';
   signal clk : std_logic := '0';
   signal addr_RD : std_logic_vector(4 downto 0) := (others => '0');
   signal addr_WR : std_logic_vector(4 downto 0) := (others => '0');
   signal rst : std_logic := '0';
   signal data_in : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal data_out : std_logic_vector(4 downto 0);
   signal same : std_logic;

  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dual_port_ram PORT MAP (
          wr => wr,
          rd => rd,
          clk => clk,
          addr_RD => addr_RD,
          addr_WR => addr_WR,
          rst => rst,
          data_in => data_in,
          data_out => data_out,
          same => same
        );

     -- Stimulus process
   stim_proc: process
   begin		
      wait for 10 ns;
		rst <='1';
		clk <= '1';
		rd <= '1';
		addr_RD <="00010";
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		rst <='1';
		clk <= '1';
		rd <= '1';
		addr_RD <="00011";
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		rd <= '0';
		wr <= '1';
		data_in <= "11111";
		addr_WR <="01100";
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		rd <= '1';
		wr <= '0';
		addr_RD <="01100";
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		rd <= '1';
		addr_RD <= "11101";
		addr_WR <= "10001";
		wr <= '1';
		data_in <="00000";
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wr <= '0';
		rd <= '1';
		addr_RD <= "00001";
		wait for 10 ns;
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wr <= '1';
		rd <= '1';
		addr_RD <= "11001";
		addr_WR <= "11001";
      wait;
   end process;

END;
