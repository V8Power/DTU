
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity SignExtender_tb is
end;

architecture bench of SignExtender_tb is

  component SignExtender
      Port ( IR : in STD_LOGIC_VECTOR (15 downto 0);
             Extended_8 : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal IR: STD_LOGIC_VECTOR (15 downto 0);
  signal Extended_8: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: SignExtender port map ( IR         => IR,
                               Extended_8 => Extended_8 );

  stimulus: process
  begin
  
  IR<="1111111011101010";
  
  wait for 10 ns;
  
  IR<="0000000100010101";
  
  wait for 10 ns;  

  IR<="1100100111001001";

  wait for 10 ns;
  
  IR<="1100100011001001";
  
  wait for 10 ns;
  

  wait;
  end process;


end;