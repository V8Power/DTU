library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder_2to4 is
    Port ( A : in STD_LOGIC_VECTOR(1 downto 0);
           E : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(3 downto 0));
end Decoder_2to4;

architecture Behavioral of Decoder_2to4 is

begin

Q(0) <= (NOT A(0) AND NOT A(1)) AND E;
Q(2) <= (NOT A(0) AND A(1)) AND E;
Q(1) <= (A(0) AND NOT A(1)) AND E; 
Q(3) <= (A(0) AND A(1)) AND E;

end Behavioral;