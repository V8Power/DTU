----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 16.03.2023 09:35:22
-- Design Name: 
-- Module Name: InstructionRegister - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InstructionRegister is
    Port ( RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Instruction_In : in STD_LOGIC_VECTOR (15 downto 0);
           IL : in STD_LOGIC;
           IR : out STD_LOGIC_VECTOR (15 downto 0));
end InstructionRegister;

architecture Behavioral of InstructionRegister is

begin
process(CLK, IL)
    begin
        if IL = '1' and clk = '1' and clk'event then
            IR <= Instruction_In;
        end if;
end process;

end Behavioral;
