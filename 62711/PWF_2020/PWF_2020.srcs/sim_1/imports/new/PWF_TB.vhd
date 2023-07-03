-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity PWF_complete_tb is
end;

architecture bench of PWF_complete_tb is

  component PWF_complete
    Port (
    Reset1, clk_100, BNTC, BTNU, BTNL, BTNR, BTND : in std_logic; 
    SW : in std_logic_vector(7 downto 0);
    AN, D, LED : out std_logic_vector( 7 downto 0)
     );
  end component;

  signal Reset1, clk_100, BNTC, BTNU, BTNL, BTNR, BTND: std_logic;
  signal SW: std_logic_vector(7 downto 0);
  signal AN, D, LED: std_logic_vector( 7 downto 0) ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: PWF_complete port map ( Reset1  => Reset1,
                               clk_100 => clk_100,
                               BNTC    => BNTC,
                               BTNU    => BTNU,
                               BTNL    => BTNL,
                               BTNR    => BTNR,
                               BTND    => BTND,
                               SW      => SW,
                               AN      => AN,
                               D       => D,
                               LED     => LED );

  stimulus: process
  begin
  
    -- Put initialisation code here

   reset1 <= '0';
    wait for 50 ns;
    reset1 <= '1';
    wait for 50 ns;

   wait for 800ns;
   SW <= x"67";
   BTNR <= '1';
   wait for 600ns;
   BTNR <= '0';
   wait for 100ns;
   SW <= x"E4";
   BTNL <= '1';
    wait for 8000 ns;
    stop_the_clock <= true;
    wait;
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk_100 <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;
  