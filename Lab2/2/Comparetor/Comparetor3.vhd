library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity comperator3 is
	Port ( a : in  STD_LOGIC_VECTOR (2 downto 0);
            b : in  STD_LOGIC_VECTOR (2 downto 0);
            lt : in  STD_LOGIC;
            gtt : in  STD_LOGIC;
            eq : in  STD_LOGIC;
            a_gt_b : out  STD_LOGIC;
            a_eq_b : out  STD_LOGIC;
            a_lt_b : out  STD_LOGIC);
end comperator3;

architecture Behavioral of comperator3 is
	component comperator1 is 
		Port ( a : in  STD_LOGIC;
		       b : in  STD_LOGIC;
                       lt : in  STD_LOGIC;
                       gtt : in  STD_LOGIC;
                       eq : in  STD_LOGIC;
                       a_gt_b : out  STD_LOGIC;
                       a_eq_b : out  STD_LOGIC;
                       a_lt_b : out  STD_LOGIC
			  );
	end component comperator1; 	
Signal lt_s, eq_s, gt_s : STD_LOGIC_VECTOR (1 downto 0);

begin
	comp2: comperator1 port map(a => a(2), b => b(2), lt => '0', gtt => '0', eq => '1', a_gt_b => gt_s(1), a_eq_b =>eq_s(1), a_lt_b => lt_s(1));
	comp1: comperator1 port map(a => a(1), b => b(1), lt => lt_s(1), gtt => gt_s(1), eq => eq_s(1), a_gt_b => gt_s(0), a_eq_b =>eq_s(0), a_lt_b => lt_s(0));
	comp0: comperator1 port map(a => a(0), b => b(0), lt => lt_s(0), gtt => gt_s(0), eq => eq_s(0), a_gt_b => a_gt_b, a_eq_b =>a_eq_b, a_lt_b => a_lt_b);


end Behavioral;

