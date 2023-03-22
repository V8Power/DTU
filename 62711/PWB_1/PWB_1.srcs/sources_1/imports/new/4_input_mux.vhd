library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

 

entity input_4mux is

    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           A,B : in STD_LOGIC;
           Y : out STD_LOGIC);
--
end input_4mux;

architecture Behavioral of input_4mux is

begin

y<=(((NOT A) AND (NOT B) AND I(0)) OR ((NOT B) AND A AND I(1)) OR (B AND (NOT A) AND I(2)) OR (A AND B AND I(3)));    --boolean expression from https://www.electronicshub.org/multiplexerandmultiplexing/

end Behavioral;