----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:43:28 05/25/2021 
-- Design Name: 
-- Module Name:    Rom - Behavioral 
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
entity Rom is
    generic ( --GENERIC PART
	      c : INTEGER := 4;
         w : INTEGER := 4
			);
    port (
	 --read
        rd : IN std_logic;
		  --active low rst
        rst : IN std_logic; 
        addr : IN std_logic_vector(c-1 downto 0); --address array
        clk : IN std_logic;  --rising edge clk
        data : INOUT std_logic_vector(w-1 downto 0) --data in & out
    );
end Rom;

architecture Read_Only_Memory of Rom is
type mem is array ((2**c)- 1 downto 0) of std_logic_vector(w - 1 downto 0);
signal memory1 : mem;

signal temp: std_logic_vector(w-1 downto 0);
begin
    process(rst, rd, addr, data, memory1, clk)
    begin
	 -- Negative edge Async
        if (rst = '0') then -- reset data (active low) 
            for i in 0 to (2**c)-1 loop
                memory1(i) <= std_logic_vector(to_unsigned(i, memory1(i)'length));
            end loop;
		  elsif (rising_edge(clk)) then
		  --read!!
            if(rd = '1') then
                data <= memory1(to_integer(unsigned(addr)));
										 
            end if;
        end if;
    end process;
end Read_Only_Memory;
