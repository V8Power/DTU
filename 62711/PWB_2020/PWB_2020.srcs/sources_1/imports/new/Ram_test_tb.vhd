-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Ram16x256_tb is
end;

architecture bench of Ram16x256_tb is

  component Ram16x256
    Port (
    Data_in : in std_logic_vector(15 downto 0);
    Addr_in : in std_logic_vector(7 downto 0);
    Data_out : out std_logic_vector(15 downto 0);
    MW, clk, reset : in std_logic
     );
  end component;

  signal Data_in: std_logic_vector(15 downto 0);
  signal Addr_in: std_logic_vector(7 downto 0);
  signal Data_out: std_logic_vector(15 downto 0);
  signal MW, clk, reset: std_logic ;

begin

  uut: Ram16x256 port map ( Data_in  => Data_in,
                            Addr_in  => Addr_in,
                            Data_out => Data_out,
                            MW       => MW,
                            clk      => clk,
                            reset    => reset );

  stimulus: process
  begin
  
    -- Put initialisation code here


    -- Put test bench stimulus code here

    wait;
  end process;


end;