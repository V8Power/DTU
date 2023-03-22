library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity ZeroFiller_tb is
end;

architecture bench of ZeroFiller_tb is

  component ZeroFiller
      Port ( IR : in STD_LOGIC_VECTOR (15 downto 0);
             ZeroFilled_8 : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal IR: STD_LOGIC_VECTOR (15 downto 0);
  signal ZeroFilled_8: STD_LOGIC_VECTOR (7 downto 0);

begin

  uut: ZeroFiller port map ( IR           => IR,
                             ZeroFilled_8 => ZeroFilled_8 );

  stimulus: process
  begin
  
  IR<=x"FFFF";

    wait;
  end process;


end;