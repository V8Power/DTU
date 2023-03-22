-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Shifter_tb is
end;

architecture bench of Shifter_tb is

  component Shifter
  Port (
      FS: in std_logic_vector(3 downto 0);
       B: in std_logic_vector(7 downto 0);
      R: out std_logic_vector(7 downto 0)
  );
  end component;

  signal FS: std_logic_vector(3 downto 0);
  signal B: std_logic_vector(7 downto 0);
  signal R: std_logic_vector(7 downto 0) ;

begin

  uut: Shifter port map ( FS => FS,
                          B  => B,
                          R  => R );

  stimulus: process
  begin
  
    -- Put initialisation code here


B <= x"B4";
for k in 0 to 15 loop
    
   FS <= STD_LOGIC_VECTOR(to_unsigned(k,4));
   
   wait for 10ns;
  
end loop;
    -- Put test bench stimulus code here

    wait;
  end process;


end;
  