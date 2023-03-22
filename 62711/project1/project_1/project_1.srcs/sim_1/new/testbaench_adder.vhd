-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity FU_tb is
end;

architecture bench of FU_tb is

  component FU
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

  uut: FU port map ( FS => FS,
                     A  => A,
                     B  => B,
                     R  => R,
                     V  => V,
                     C  => C,
                     N  => N,
                     Z  => Z );

  stimulus: process
  begin
  
    -- Put initialisation code here

A <= x"90";
B <= x"B4";
for k in 0 to 15 loop
    
   FS <= STD_LOGIC_VECTOR(to_unsigned(k,4));
   
   wait for 10ns;
  
end loop;
    -- Put test bench stimulus code here

    wait;
  end process;


end;