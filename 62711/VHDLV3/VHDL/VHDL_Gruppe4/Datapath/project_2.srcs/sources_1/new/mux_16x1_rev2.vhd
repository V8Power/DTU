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

    Port ( 
    M0, M1, M2, M3, M4, M5, M6, M7: in STD_LOGIC;
    M8, M9, M10, M11, M12, M13, M14, M15 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC);
end mux_16x1_rev2;

 
architecture Behavioral of mux_16x1_rev2 is
 

component input_4mux is

    Port ( I : in STD_LOGIC_VECTOR (3 downto 0);
           A,B : in STD_LOGIC;
           Y : out STD_LOGIC);

end component;

signal internal : STD_LOGIC_VECTOR(3 downto 0);
signal I : std_logic_vector (15 downto 0);
 
 
begin

I(0) <= M0;
I(1) <= M1;
I(2) <= M2;
I(3) <= M3;
I(4) <= M4;
I(5) <= M5;
I(6) <= M6;
I(7) <= M7;
I(8) <= M8;
I(9) <= M9;
I(10) <= M10;
I(11) <= M11;
I(12) <= M12;
I(13) <= M13;
I(14) <= M14;
I(15) <= M15;

Mux0: input_4mux port map (I(15 downto 12),S(0),S(1),internal(3));
Mux1: input_4mux port map (I(11 downto 8),S(0),S(1),internal(2));
Mux2: input_4mux port map (I(7 downto 4),S(0),S(1),internal(1));
Mux3: input_4mux port map (I(3 downto 0),S(0),S(1),internal(0));
MuxF: input_4mux port map (internal,S(2),S(3),Y);


 

end Behavioral;