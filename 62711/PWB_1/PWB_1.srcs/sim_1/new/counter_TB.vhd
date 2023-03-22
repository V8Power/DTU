-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Program_count_tb is
end;

architecture bench of Program_count_tb is

  component Program_count
   Port (
   CLK, reset : in std_logic;
   PS : in std_logic_vector(1 downto 0);
   ADDR_in, Offset : in std_logic_vector(7 downto 0);
   PC : inout std_logic_vector(7 downto 0)
    );
  end component;

  signal CLK, reset: std_logic;
  signal PS: std_logic_vector(1 downto 0);
  signal ADDR_in, Offset: std_logic_vector(7 downto 0);
  signal PC: std_logic_vector(7 downto 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: Program_count port map ( CLK     => CLK,
                                reset   => reset,
                                PS      => PS,
                                ADDR_in => ADDR_in,
                                Offset  => Offset,
                                PC      => PC );

  stimulus: process
  begin
  
    -- Put initialisation code here

    reset <= '1';
    wait for 20 ns;
    reset <= '0';
    wait for 10 ns;
    PS <= "00";
    wait for 50ns;
    PS <= "01";
    wait for 50ns;
    PS <= "10";
    offset <= x"0A";
    wait for 10ns;
     PS <= "01";
    wait for 50ns;
    PS <= "11";
    ADDR_in <= x"A0";
    wait for 10ns;
     PS <= "01";
    wait for 50ns;
    PS <= "00";
    

    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
  