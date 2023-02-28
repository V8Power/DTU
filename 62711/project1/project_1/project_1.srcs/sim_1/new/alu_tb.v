-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ALU_tb is
end;

architecture bench of ALU_tb is

  component ALU
 
  Port (
  FS: in std_logic_vector(3 downto 0);
  A, B: in std_logic_vector(7 downto 0);
  R: out std_logic_vector(7 downto 0);
  V,C,N,Z : out std_logic
  );
  end component;

  signal FS: std_logic_vector(3 downto 0);
  signal A, B: std_logic_vector(7 downto 0);
  signal R: std_logic_vector(7 downto 0);
  signal V,C,N,Z: std_logic ;

begin

  -- Insert values for generic parameters !!
  uut: ALU 
              port map ( FS    => FS,
                         A     => A,
                         B     => B,
                         R     => R,
                         V     => V,
                         C     => C,
                         N     => N,
                         Z     => Z );

  stimulus: process
  begin
  
    A<= x"A3";
    B<= x"A9";
    wait for 10ns;
    FS <= x"1";
    wait for 10ns;
    FS<= x"2";
    wait for 10ns;
    

    wait;
  end process;


end;
  