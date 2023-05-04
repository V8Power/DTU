library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_2x1_16bit is
    
    Port ( Ad, Bd : in STD_LOGIC_VECTOR (15 downto 0);
       
           Y : out STD_LOGIC_VECTOR (15 downto 0);
           S : in std_logic );
end mux_2x1_16bit;

architecture Behavioral of mux_2x1_16bit is

component input_2mux is
   Port ( A,B : in STD_LOGIC;
           S : in STD_LOGIC;
           Y : out STD_LOGIC);
end component;




begin 

E: for i in 0 to 15 generate                                                               
M10:  input_2mux port map (Ad(i),Bd(i), S, Y(i));                                                           
end generate;  


end Behavioral;
