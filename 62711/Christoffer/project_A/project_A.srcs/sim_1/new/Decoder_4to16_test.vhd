-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Decoder_4to16_tb is
end;

architecture bench of Decoder_4to16_tb is

  component Decoder_4to16
      Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
             E : in STD_LOGIC;
             Q : out STD_LOGIC_VECTOR (15 downto 0));
  end component;

  signal A: STD_LOGIC_VECTOR (3 downto 0);
  signal E: STD_LOGIC;
  signal Q: STD_LOGIC_VECTOR (15 downto 0);

begin

  uut: Decoder_4to16 port map ( A => A,
                                E => E,
                                Q => Q );

  stimulus: process
  begin
  
 A <= "1111";
 E <= '1';
 
  end process;


end;