-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity PWB_full_tb is
end;

architecture bench of PWB_full_tb is

  component PWB_full
    Port ( 
    Reset, CLK, V, C, N, Z: in std_logic;
    Address_in: in std_logic_vector(7 downto 0);
    Address_out, Constant_out : out std_logic_vector(7 downto 0 );
    Instrcution_in : in std_logic_vector(15 downto 0);
    DX, AX, BX,FS : out std_logic_vector(3 downto 0);
    MB, MD, RW, MM, MW: out std_logic);
  end component;

  signal Reset, CLK, V, C, N, Z: std_logic;
  signal Address_in: std_logic_vector(7 downto 0);
  signal Address_out, Constant_out: std_logic_vector(7 downto 0 );
  signal Instrcution_in: std_logic_vector(15 downto 0);
  signal DX, AX, BX,FS: std_logic_vector(3 downto 0);
  signal MB, MD, RW, MM, MW: std_logic;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;

begin

  uut: PWB_full port map ( Reset          => Reset,
                           CLK            => CLK,
                           V              => V,
                           C              => C,
                           N              => N,
                           Z              => Z,
                           Address_in     => Address_in,
                           Address_out    => Address_out,
                           Constant_out   => Constant_out,
                           Instrcution_in => Instrcution_in,
                           DX             => DX,
                           AX             => AX,
                           BX             => BX,
                           FS             => FS,
                           MB             => MB,
                           MD             => MD,
                           RW             => RW,
                           MM             => MM,
                           MW             => MW );

  stimulus: process
  begin
  
    -- Put initialisation code here

    reset <= '1';
    wait for 5 ns;
    reset <= '0';
    wait for 5 ns;

    -- Put test bench stimulus code here

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