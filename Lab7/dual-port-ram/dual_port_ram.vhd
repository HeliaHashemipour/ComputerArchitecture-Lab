----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:58:11 05/25/2021 
-- Design Name: 
-- Module Name:    dual_port_ram - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------library IEEE;library IEEE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dual_port_ram is
	generic (
				 d : integer := 32;
				 w : integer := 5 ;
				 c : integer := 5
				 );
			
	port (
	--write
			 wr : in std_logic;
	--read
			 rd : in std_logic;
	--rising edge clk
			 clk : in std_logic;
	--address for reading
			 addr_RD : in std_logic_vector(c-1 downto 0);
	--address for writing
			 addr_WR : in std_logic_vector (c-1 downto 0);
	--active low reset
			 rst : in std_logic;
	--data in
			 data_in : in std_logic_vector(w-1 downto 0);
	--data out
			 data_out : out std_logic_vector(w-1 downto 0);
			 same : out std_logic
			 );
			 
end dual_port_ram;

architecture Behavioral of dual_port_ram is
type mem is array (d-1 downto 0) of std_logic_vector(w-1 downto 0);
signal memory : mem;
begin
	process(rst, clk, wr, rd, addr_RD,addr_WR, data_in)
	
	begin
	 if(rst = '0') then
	--loop
		for i in 0 to (d-1) loop
			memory(i) <=  std_logic_vector(to_unsigned(i,c));
		end loop;
		same <='0';
	elsif(rising_edge(clk)) then
	--write!!
		if( wr = '1' and rd = '0' ) then
			memory(to_integer(unsigned(addr_WR))) <= data_in;
	--read!!
		elsif( rd= '1' and wr = '0' ) then 
			data_out <= memory(to_integer(unsigned(addr_RD)));
		elsif( rd='1' and wr = '1' ) then
			if( addr_RD = addr_WR) then
				same <='1';
			else
				memory(to_integer(unsigned(addr_WR))) <= data_in;
				data_out <= memory(to_integer(unsigned(addr_RD)));
			end if;
		end if;
	end if;
	end process;
end Behavioral;