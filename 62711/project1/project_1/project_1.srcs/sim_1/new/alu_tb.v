-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity full_adder_tb is
end;

architecture bench of full_adder_tb is

  component full_adder
  generic(width : integer:=8);
    Port ( 
          A_in, B_in : in std_logic_vector(7 downto 0);
          D_out : out std_logic_vector(7 downto 0);
          C_in : in std_logic; 
          C_out : out std_logic;
          Sub : in std_logic;
          V: out std_logic );
  end component;

  signal A_in, B_in: std_logic_vector(7 downto 0);
  signal D_out: std_logic_vector(7 downto 0);
  signal C_in: std_logic;
  signal C_out: std_logic;
  signal Sub: std_logic;
  signal V: std_logic ;

begin

  -- Insert values for generic parameters !!
  uut: full_adder 
                     port map ( A_in  => A_in,
                                B_in  => B_in,
                                D_out => D_out,
                                C_in  => C_in,
                                C_out => C_out,
                                Sub   => Sub,
                                V     => V );

  stimulus: process
  begin
  
    -- Put initialisation code here
A_in <= x"1f";
B_in <= x"F0";
C_in <= '1';
Sub <= '1';

    -- Put test bench stimulus code here

    wait;
  end process;


end;