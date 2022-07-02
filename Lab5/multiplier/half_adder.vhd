------------------------------
--Lab05 multipliers
------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity half_adder is
  port (
    a  : IN std_logic;
    b  : IN std_logic;
    sum   : OUT std_logic;
    cout : OUT std_logic
    );
end half_adder;
 
architecture halfAdder of half_adder is
begin
  sum   <= a xor b;
  cout <= a and b;
end halfAdder;
