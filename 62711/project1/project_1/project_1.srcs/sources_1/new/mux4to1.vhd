library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity input_4mux is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           A,B : in STD_LOGIC;
           Y : out STD_LOGIC);
end input_4mux;

architecture Behavioral of input_4mux is

begin
 
y<=(((NOT A) AND (NOT B) AND I(0)) OR ((NOT B) AND A AND I(1)) OR (B AND (NOT A) AND I(2)) OR (A AND B AND I(3)));    --boolean expression from https://www.electronicshub.org/multiplexerandmultiplexing/
--y<=(((NOT A) and (NOT B) and I(0)) OR ((NOT A) and B and I(1)) or (A and ( not B) and I(2)) or (A and B and I(3)));
end Behavioral;
