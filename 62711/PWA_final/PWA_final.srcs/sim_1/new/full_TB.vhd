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
lock: process
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
    wait for clk_period;   --reset
    
    Data_in <= x"78";
    MD<= '1';
    RW <= '1';
    DA<= x"5";          --load 0x78 to reg 0x5
    wait for clk_period;
    Data_in <= x"56";     
    DA <= x"6";      --load 0x56 to reg 0x6
    
    wait for clk_period;
    RW <= '0';
    MD <= '0';
    AA <= x"5";
    BA <= x"6";
    MB <= '0';       -- nothing happens here. Data A, B are selectd to red reg 5,6
    wait for clk_period;
    FS <= x"2";                  -- add reg 0x5 and 0x6
    DA <= x"7";                      --store to reg 0x7
    RW <= '1';                    
    wait for clk_period;
    RW <= '0';
    wait for clk_period;
    BA <= x"7";          --sr
    FS <= x"D";
    DA <= x"8";
    RW <= '1';
    wait for clk_period;
    BA <= x"8";       --sl
    FS <= x"E";
    DA <= x"9";
    RW <= '1';
    wait for clk_period;
    AA <= x"7";        --substract  reg 0x7 and 0x6
    BA <= x"6";
    FS <= x"5";
    DA <= x"a";      --store result in reg 0xA
    RW <= '1';
    wait for clk_period;
    RW <= '0';
    wait for clk_period;
    AA <= x"a";       -- Reg 0xA -1
    FS <= x"6";
    DA <= x"B";
    RW <= '1';
    wait for clk_period;
    RW <= '1';
    const_in <= x"10";     --load data from const in. 
    MB <= '1';               --MUXB set
    
    FS <= x"F";        --ALU passthrough
    DA <= x"C";            --store to reg 0xC
    wait for clk_period;
    
    MB <= '0';
    RW <= '0';
    wait for clk_period;
    AA <= x"C";           -- reg 0xC - 0xA
    BA <= x"A";
    FS <= x"4";
    RW <= '1';
    DA <= x"D";
    wait for clk_period;
    RW <= '0';
    wait for clk_period;
    AA <= x"A";         --reg 0xA -0xA
    BA <= x"A";
    FS <= x"5";
    DA <= x"E";        --store to reg 0xE                used to test 0 flag
    RW <= '1';
    wait for clk_period;
    RW <= '0';
    -- Put test bench stimulus code here

    wait;
  end process;


end;
  