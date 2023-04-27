-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity mux_16x1_rev2_tb is
end;

architecture bench of mux_16x1_rev2_tb is

  component mux_16x1_rev2
      Port ( I : in STD_LOGIC_VECTOR (15 downto 0);
             S : in STD_LOGIC_VECTOR (3 downto 0);
             Y : out STD_LOGIC;
             debug : out STD_LOGIC_VECTOR (3 downto 0));
  end component;

  signal I: STD_LOGIC_VECTOR (15 downto 0);
  signal S: STD_LOGIC_VECTOR (3 downto 0);
  signal Y: STD_LOGIC;
  signal debug: STD_LOGIC_VECTOR (3 downto 0);

begin

  uut: mux_16x1_rev2 port map ( I     => I,
                                S     => S,
                                Y     => Y,
                                debug => debug );

  stimulus: process
  begin
  
   I <= x"38AF";
--I <= "1010101010101010";
S <= x"0";
for k in 0 to 15 loop
    
   S <= STD_LOGIC_VECTOR(to_unsigned(k,4));
   wait for 10ns;
  
end loop;

    wait;
  end process;


end;