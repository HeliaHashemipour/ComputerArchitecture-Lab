library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comperator1 is

    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           lt : in  STD_LOGIC;
           gtt : in  STD_LOGIC;
           eq : in  STD_LOGIC;
           a_gt_b : out  STD_LOGIC;
           a_eq_b : out  STD_LOGIC;
           a_lt_b : out  STD_LOGIC);
end comperator1;

architecture Behavioral of comperator1 is
Signal gt1,eq1 : STD_LOGIC;

begin
	eq1 <= (a xnor b) and eq;
	gt1 <= ((a and (not b))and eq) or gtt;
	a_lt_b <= ((not eq1) and (not gt1)) or lt;
	a_eq_b <= eq1;
	a_gt_b <= gt1;
	


end Behavioral;

