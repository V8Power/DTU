----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2023 10:18:06 AM
-- Design Name: 
-- Module Name: D_FF_EN_RESET - Behavioral
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

entity D_FF_EN_RESET is
    Port ( D : in STD_LOGIC;
           RESET : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : out STD_LOGIC);
end D_FF_EN_RESET;

architecture Behavioral of D_FF_EN_RESET is
signal q1 : std_logic;
begin

process(CLK,reset,load) is
    begin
    if reset = '1' then
        q<='0';
        q1<= '0';
    elsif rising_edge(clk) then
        if load = '1' then
            q<=d;
            q1<=d;
            else 
           q<=q1;
        end if;
     end if;
end process;
end Behavioral;
