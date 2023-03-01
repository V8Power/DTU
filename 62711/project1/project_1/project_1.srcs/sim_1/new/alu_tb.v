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

        A<= x"33";
    B<= x"A0";
    FS <= x"0";
    wait for 10ns;
    FS <= x"1";
    wait for 10ns;
    FS<= x"2";
    wait for 10ns;  
    FS<= x"3";
    wait for 10ns;  
    FS<= x"4";
    wait for 10ns;  
    FS<= x"5";
    wait for 10ns;  
    FS<= x"6";
    wait for 10ns;  
    FS<= x"7";
    wait for 10ns;  
    FS<= x"8";
    wait for 10ns; 
    FS<= x"9";
    wait for 10ns; 
    FS<= x"A";
    wait for 10ns; 
    FS<= x"B";
    wait for 10ns; 
    FS<= x"C";
    wait for 10ns; 
    FS<= x"D";
    wait for 10ns; 
    FS<= x"E";
    wait for 10ns; 
    FS<= x"F";
    wait for 10ns;
    -- Put test bench stimulus code here

    wait;
  end process;


end;
  