-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity PWB_full_tb is
end;

architecture bench of PWB_full_tb is

  component PWB_full
    Port ( 
    Reset, CLK, V, C, N, Z: in std_logic;
    Address_in: in std_logic_vector(7 downto 0);
    Address_out, Constant_out : out std_logic_vector(7 downto 0 );
    Instruction_in : in std_logic_vector(15 downto 0);
    DX, AX, BX,FS : out std_logic_vector(3 downto 0);
    MB, MD, RW, MM, MW: out std_logic);
  end component;

  signal Reset, CLK, V, C, N, Z: std_logic;
  signal Address_in: std_logic_vector(7 downto 0);
  signal Address_out, Constant_out: std_logic_vector(7 downto 0 );
  signal Instruction_in, IR: std_logic_vector(15 downto 0);
  signal DX, AX, BX,FS: std_logic_vector(3 downto 0);
  signal MB, MD, RW, MM, MW: std_logic;
  

  constant clock_period: time := 10 ns;
  constant clk_period: time := 10ns;
  signal stop_the_clock: boolean;

begin

  uut: PWB_full port map ( Reset          => Reset,
                           CLK            => CLK,
                           V              => V,
                           C              => C,
                           N              => N,
                           Z              => Z,
                           Address_in     => Address_in,
                           Address_out    => Address_out,
                           Constant_out   => Constant_out,
                           --Instruction_in => Instruction_in,
                           Instruction_in => IR,
                           DX             => DX,
                           AX             => AX,
                           BX             => BX,
                           FS             => FS,
                           MB             => MB,
                           MD             => MD,
                           RW             => RW,
                           MM             => MM,
                           MW             => MW );

  stimulus: process
  begin
  
    -- Put initialisation code here

    reset <= '1';
    wait for 10 ns;
    reset <= '0';
    wait for 10 ns;

    -- Put test bench stimulus code here
    
    Instruction_in <= "0000001101100000";
    wait for 20 ns;
Instruction_in <= "0000001100011000";
wait for 20 ns;
Instruction_in <= "0000001010010000";
wait for 20 ns;
Instruction_in <= "0000001001000000";
wait for 20 ns;
Instruction_in <= "0000000000110000";
wait for 20 ns;

V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0000000000000000"; --Opcode dec0
  wait for clk_period*2;
  --------------------
  
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0000001000000000"; --Opcode dec1
  wait for clk_period*2;
  --------------------
  
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0000010000000000"; --Opcode dec2
  wait for clk_period*2;
  --------------------
  
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0000101000000000"; --Opcode dec5
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0000110000000000"; --Opcode dec6
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0001000000000000"; --Opcode dec8
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0001001000000000"; --Opcode dec9
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0001010000000000"; --Opcode dec10
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0001011000000000"; --Opcode dec11
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0001100000000000"; --Opcode dec12
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0010000000000000"; --Opcode dec16
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0100000000000000"; --Opcode dec32
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="1001100000000000"; --Opcode dec76
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="1000010000000000"; --Opcode decNN
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '1';
  IR<="1100000000000000"; --Opcode dec1
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '0';
  IR<="1100000000000000"; --Opcode dec1
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '1';
  Z <= '-';
  IR<="1100001000000000"; --Opcode dec1
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '0';
  Z <= '-';
  IR<="1100001000000000"; --Opcode dec1
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="1110000000000000"; --Opcode dec1
  wait for clk_period*2;
  -------------------- Single instructions done
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0010001000000000"; --Opcode decNN
  wait for clk_period*3;
  -------------------- Dual instruction done
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '1';
  IR<="0001101000000000"; --Opcode dec1
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '0';
  IR<="0001101000000000"; --Opcode dec1
  wait for clk_period*3;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '1';
  IR<="0001101000000000"; --Opcode dec1
  wait for clk_period*3;
  -------------------- (SR Done!)
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '1';
  IR<="0001110000000000"; --Opcode dec1
  wait for clk_period*2;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '0';
  IR<="0001110000000000"; --Opcode dec1
  wait for clk_period*3;
  --------------------
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '1';
  IR<="0001110000000000"; --Opcode dec1
  wait for clk_period*2;
  -------------------- (SL Done!)
  
  
 





    stop_the_clock <= true;
    
  end process;

  clocking: process
  begin
    while not stop_the_clock loop
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
    end loop;
    wait;
  end process;

end;