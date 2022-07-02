library ieee;
use ieee.std_logic_1164.all;

entity seven_segment is
	port (
		bcd  : in  std_logic_vector(3 downto 0);
                number : out std_logic_vector(3 downto 0);
		output : out std_logic_vector(6 downto 0)
	);
end seven_segment;

architecture arc of seven_segment is

signal tmp : std_logic_vector(6 downto 0);
signal bcd_number : std_logic_vector(3 downto 0);

begin
process(bcd)
begin 
	case bcd is
	when "0000" =>
                bcd_number <= "0000";
		tmp <= "1111110"; --"0";
	when "0001" =>
                bcd_number <= "0001";
		tmp <= "0110000"; --"1"
	when "0010" =>
                bcd_number <= "0010";
		tmp <= "1101101"; --"2"
	when "0011" =>
                bcd_number <= "0011";
		tmp <= "1111001"; --"3"
	when "0100" =>
                bcd_number <= "0100";
		tmp <= "0110011"; --"4"
	when "0101" =>
                bcd_number <= "0101";
		tmp <= "1011011"; --"5"
	when "0110" =>
                bcd_number <= "0110";
		tmp <= "1011111"; --"6"
	when "0111" =>
                bcd_number <= "0111";
		tmp <= "1110000"; --"7"
	when "1000" =>
                bcd_number <= "1000";
		tmp <= "1111111"; --"8"
	when "1001" =>
                bcd_number <= "1001";
		tmp <= "1110011"; --"9"
	when "1010" => 
                bcd_number <= "1010";
		tmp <= "1110111"; --"A"
	when "1011" =>
                bcd_number <= "1011";
		tmp <= "0011111"; --"b"
	when "1100" =>
                bcd_number <= "1100";
		tmp <= "1001110"; --"C"
	when "1101" =>
                bcd_number <= "1101";
		tmp <= "0111101"; --"d"
	when "1110" =>
                bcd_number <= "1110";
		tmp <= "1001111"; --"E"
	when "1111" =>
                bcd_number <= "1111";
		tmp <= "1000111"; --"F"
	when others =>
		tmp <= "0000000"; --null
	end case;
end process;

output <= tmp;
number <= bcd_number;
		
end arc;