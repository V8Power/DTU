
library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity InstructionRegister_tb is
end;

architecture bench of InstructionRegister_tb is

  component InstructionRegister
      Port ( RESET : in STD_LOGIC;
             CLK : in STD_LOGIC;
             Instruction_In : in STD_LOGIC_VECTOR (15 downto 0);
             IL : in STD_LOGIC;
             IR : out STD_LOGIC_VECTOR (15 downto 0));
  end component;

  signal RESET: STD_LOGIC;
  signal CLK: STD_LOGIC;
  signal Instruction_In: STD_LOGIC_VECTOR (15 downto 0);
  signal IL: STD_LOGIC;
  signal IR: STD_LOGIC_VECTOR (15 downto 0);

constant clk_period : time:= 10 ns;
signal endtest: std_logic:= '0';

begin

  uut: InstructionRegister port map ( RESET          => RESET,
                                      CLK            => CLK,
                                      Instruction_In => Instruction_In,
                                      IL             => IL,
                                      IR             => IR );


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

RESET <= '0';
IL <= '0';
Instruction_In <= x"FFFF";

wait for clk_period;

IL <= '1';

wait for clk_period;

IL <= '0';

wait for clk_period;

Instruction_In <= x"AAAA";

wait for clk_period;

IL <= '1';

wait for clk_period;





end process;
end;