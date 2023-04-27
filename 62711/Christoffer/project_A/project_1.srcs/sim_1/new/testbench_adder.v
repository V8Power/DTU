library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity full_adder_tb is
end;

architecture bench of full_adder_tb is

  component full_adder
  generic(width : integer:=8);
    Port ( 
          A_in, B_in : in std_logic_vector(width -1 downto 0);
          D_out : out std_logic_vector(width - 1 downto 0);
          C_in : in std_logic; 
          C_out : out std_logic );
  end component;

  signal A_in, B_in: std_logic_vector(width -1 downto 0);
  signal D_out: std_logic_vector(width - 1 downto 0);
  signal C_in: std_logic;
  signal C_out: std_logic ;

begin

  -- Insert values for generic parameters !!
  uut: full_adder generic map ( width =>  )
                     port map ( A_in  => A_in,
                                B_in  => B_in,
                                D_out => D_out,
                                C_in  => C_in,
                                C_out => C_out );

  stimulus: process
  begin
  
    A_in <= "0x06";
    B_in <= "0x03";
    C_in <= '0';

    wait;
  end process;


end;