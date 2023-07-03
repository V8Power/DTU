library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ZeroFiller is
    Port ( IR : in STD_LOGIC_VECTOR (15 downto 0);
           ZeroFilled_8 : out STD_LOGIC_VECTOR (7 downto 0));
end ZeroFiller;

architecture Behavioral of ZeroFiller is

begin
    ZeroFilled_8 <= "00000"&IR(2 downto 0);
end Behavioral;