library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Decoder_2to4_tb is
end;

architecture bench of Decoder_2to4_tb is

  component Decoder_2to4
      Port ( A : in STD_LOGIC_VECTOR(1 downto 0);
             E : in STD_LOGIC;
             Q : out STD_LOGIC_VECTOR(3 downto 0));
  end component;

  signal A: STD_LOGIC_VECTOR(1 downto 0);
  signal E: STD_LOGIC;
  signal Q: STD_LOGIC_VECTOR(3 downto 0);

begin

  uut: Decoder_2to4 port map ( A => A,
                               E => E,
                               Q => Q );

  stimulus: process
begin
E<='1';
A<="00";
wait for 10ns;
A<="01";
wait for 10ns;
A<="10";
wait for 10ns;
A<="11";
wait for 10ns;




end process;


end;