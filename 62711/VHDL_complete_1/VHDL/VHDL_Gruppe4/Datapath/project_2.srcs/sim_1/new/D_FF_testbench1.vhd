-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity D_FF_EN_RESET_tb is
end;

architecture bench of D_FF_EN_RESET_tb is

  component D_FF_EN_RESET
      Port ( D : in STD_LOGIC;
             RESET : in STD_LOGIC;
             LOAD : in STD_LOGIC;
             CLK : in STD_LOGIC;
             Q : out STD_LOGIC);
  end component;

  signal D: STD_LOGIC;
  signal RESET: STD_LOGIC;
  signal LOAD: STD_LOGIC;
  signal CLK: STD_LOGIC;
  signal Q: STD_LOGIC;

  constant clk_period : time:= 10 ns;
  signal endtest: std_logic:= '0';
 
  begin

  uut: D_FF_EN_RESET port map ( D=>D,
        RESET => RESET,
        LOAD  => LOAD,
        CLK   => CLK,
        Q     => Q );
  clock: process
        begin
        while endtest='0'  loop
            clk<='0';
            wait for clk_period/2;
            clk<='1';
            wait for clk_period/2;
            end loop;
            wait;
        end process;
  stimulus: process
  begin
  
    -- Put initialisation code here
    reset <= '0';
    load <= '0';
    D <= '0';
    wait for clk_period;
    reset <= '1';
    wait for clk_period;
    reset <= '0';
    wait for clk_period;
    D <= '1';
    load <='1';
    wait for clk_period;
    load <= '0';
    wait for clk_period;
    D <= '0';
    load <= '1';
    wait for clk_period;
    reset <= '1';
    -- Put test bench stimulus code here


    wait;
  end process;


end;
  