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

entity mux_2x1 is
    Port ( I : in STD_LOGIC_VECTOR(1 downto 0);
           s : in STD_LOGIC;
           Y : out STD_LOGIC);
end mux_2x1;

architecture Behavioral of mux_2x1 is

begin

y<=(NOT s and I(0)) or (S AND I(1));    --truth table p. 140

end Behavioral;
