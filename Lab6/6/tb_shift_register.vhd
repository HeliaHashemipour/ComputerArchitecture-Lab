LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_shift_register IS
END tb_shift_register;

ARCHITECTURE behavior OF tb_shift_register IS

-- Component Declaration for the Unit Under Test (UUT)

   COMPONENT shift_register
             PORT(
                 parallel_in : IN std_logic_vector(3 downto 0);
                 lr : IN std_logic_vector(1 downto 0);
                 load : IN std_logic;
                 reset : IN std_logic;
                 clk : IN std_logic;
                 reg_out : inout std_logic_vector(3 downto 0)
               );
    END COMPONENT;


--Inputs
  signal parallel_in : std_logic_vector(3 downto 0) := (others => '0');
  signal lr : std_logic_vector(1 downto 0) := (others => '0');
  signal load : std_logic := '0';
  signal reset : std_logic := '0';
  signal clk : std_logic := '0';

--Outputs
  signal reg_out : std_logic_vector(3 downto 0);

-- Clock period definitions
  constant clk_period : time := 10 ns;

BEGIN

-- Instantiate the Unit Under Test (UUT)
     uut: shift_register PORT MAP (
           parallel_in => parallel_in,
           lr => lr,
           load => load,
           reset => reset,
           clk => clk,
           reg_out => reg_out
       );

-- Clock process definitions
 clk_process :process
   begin
    clk <= '1';
     wait for 50 ns;
    clk <= '0';
     wait for 50 ns;
   end process;


-- Stimulus process
stim_proc: process
begin
  parallel_in <= "1101";
  reset <= '0';
  load <= '1';

  wait for 100 ns;
  load <= '0';
  lr <= "10";

  wait for 100 ns;
  parallel_in <= "0010";
  load <= '1';

  wait for 100 ns;
  load <= '0';
  lr <= "01";

  wait for 100 ns;
  parallel_in <= "1011";
  load <= '1';

  wait for 100 ns;
  load <= '0';
  lr <= "11";

  wait for 100 ns;
  load <= '0';
  lr <= "11";

  wait for 100 ns;
  reset <= '1';

  wait for 100 ns;
  parallel_in <= "1101";
  reset <= '0';
  load <= '1';

  wait for 100 ns;

end process;

END;