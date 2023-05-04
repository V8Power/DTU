library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity input_2mux is
    Port ( A,B : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end input_2mux;

architecture Behavioral of input_2mux is

begin
 
y<=(A and (not S)) or (B and S);    --boolean expression from https://www.electronicshub.org/multiplexerandmultiplexing/
--y<=(((NOT A) and (NOT B) and I(0)) OR ((NOT A) and B and I(1)) or (A and ( not B) and I(2)) or (A and B and I(3)));
end Behavioral;
