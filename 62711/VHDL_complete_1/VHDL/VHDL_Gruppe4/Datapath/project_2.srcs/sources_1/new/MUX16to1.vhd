library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_16x1_rev2 is
    
    Port ( I : in STD_LOGIC_VECTOR (15 downto 0);
           S : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC;
           debug : out STD_LOGIC_VECTOR (3 downto 0));
end mux_16x1_rev2;

architecture Behavioral of mux_16x1_rev2 is

component input_4mux is
    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           A,B : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;

signal internal : STD_LOGIC_VECTOR(3 downto 0);


begin 
debug <= internal;
M0: input_4mux port map (I(15 downto 12),S(0),S(1),internal(3));
M1: input_4mux port map (I(11 downto 8),S(0),S(1),internal(2));
M2: input_4mux port map (I(7 downto 4),S(0),S(1),internal(1));
M3: input_4mux port map (I(3 downto 0),S(0),S(1),internal(0));
MF: input_4mux port map (internal,S(2),S(3),Y);

--M0: input_4mux port map (I(0 to 3),S(1),S(0),internal(0));
--M1: input_4mux port map (I(4 to 7),S(1),S(0),internal(1));
--M2: input_4mux port map (I(8 to 11),S(1),S(0),internal(2));
--M3: input_4mux port map (I(12 to 15),S(1),S(0),internal(3));
--MF: input_4mux port map (internal,S(2),S(3),Y);

end Behavioral;
