----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:21:14 05/25/2021 
-- Design Name: 
-- Module Name:    Ram - Behavioral 
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
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
entity Ram is 
--generic part
    generic (
	      d : integer := 32;
			c : INTEGER := 5; 
         w : INTEGER := 5
			);
			
    port (
        rd : IN std_logic; --read
        wr : IN std_logic; --wite
        rst : IN std_logic; -- active low
        addr : IN std_logic_vector(c-1 downto 0); --address array
        clk : IN std_logic; --clk is rising edge
        data : INOUT std_logic_vector(w-1 downto 0) --data array
    );
End Ram;

architecture Random_Access_Memory of Ram is
type mem IS array (d- 1 downto 0) of std_logic_vector(w - 1 downto 0);
signal memory : mem;
signal temp: std_logic_vector(w-1 downto 0);
begin
    process(rst, rd, wr, addr, data, clk)
    begin
        if (rst = '0') then --(active low)
		  -- Assign int values to memory address
            for i in 0 to (d-1) loop
                memory(i) <= std_logic_vector(to_unsigned(i, memory(i)'length));
            end loop;

		  elsif (rising_edge(clk)) then
		  if(rd = '1' and wr='0') then --read! 
                data <= memory(to_integer(unsigned(addr)));
					
        elsif(wr = '1' and rd='0') then -- write!
               memory(to_integer(unsigned(addr))) <= data;
            end if;
				
        end if;
    end process;
	 
end Random_Access_Memory;