-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Black_box_datapath_tb is
end;

architecture bench of Black_box_datapath_tb is

  component Black_box_datapath
    Port (
     const_in, Data_in: in std_logic_vector(7 downto 0);
    DA, AA, BA, FS: in std_logic_vector(3 downto 0);
    Reset, clk, RW, MB, MD : in std_logic;
    ADDR_out, D_out : out std_logic_vector(7 downto 0 );
    V, C, N, Z: out std_logic
     );
  end component;

  signal const_in, Data_in: std_logic_vector(7 downto 0);
  signal DA, AA, BA, FS: std_logic_vector(3 downto 0);
  signal Reset, clk, RW, MB, MD: std_logic;
  signal ADDR_out, D_out: std_logic_vector(7 downto 0 );
  signal V, C, N, Z: std_logic ;
  
   constant clk_period : time:= 10 ns;
  signal endtest: std_logic:= '0';

begin

  uut: Black_box_datapath port map ( const_in => const_in,
                                     Data_in  => Data_in,
                                     DA       => DA,
                                     AA       => AA,
                                     BA       => BA,
                                     FS       => FS,
                                     Reset    => Reset,
                                     clk      => clk,
                                     RW       => RW,
                                     MB       => MB,
                                     MD       => MD,
                                     ADDR_out => ADDR_out,
                                     D_out    => D_out,
                                     V        => V,
                                     C        => C,
                                     N        => N,
                                     Z        => Z );


clock: process
        begin
        while endtest='0'  loop
            clk<='0';
            wait for clk_period/2;
            clk<='1';
            wait for clk_period/2;
            end loop;
            wait;
        end process;
  stimulus: process
  begin
  
    -- Put initialisation code here
    Reset <= '1';
    wait for 10ns;
    Reset <= '0';
    wait for 10ns;
    
    Data_in <= x"78";
    MD<= '1';
    RW <= '1';
    DA<= x"5";
    wait for 10ns;
    Data_in <= x"08";
    DA <= x"A";
    RW <= '0';
    MD <= '0';
    wait for 10ns;
    AA <= x"5";
    BA <= x"A";
    MB <= '0';
    wait for 10ns;
    FS <= x"2";
    DA <= x"7";
    RW <= '1';
    wait for 10ns;
    RW <= '0';

    -- Put test bench stimulus code here

    wait;
  end process;


end;
  