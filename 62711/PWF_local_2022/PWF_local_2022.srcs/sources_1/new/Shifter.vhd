----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2023 10:03:41 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity Shifter is
 
Port (
    FS: in std_logic_vector(3 downto 0);
     B: in std_logic_vector(7 downto 0);
    R: out std_logic_vector(7 downto 0)
   
);
end Shifter;

architecture Behavioral of Shifter is
 
component Shift_R is
 Port (
    B: in std_logic_vector(7 downto 0);
    R: out std_logic_vector(7 downto 0)
   );
end component;

component Shift_L is
 Port (
    B: in std_logic_vector(7 downto 0);
    R: out std_logic_vector(7 downto 0)
   );
end component;

signal DR, DL : std_logic_vector(7 downto 0 );
begin
K: Shift_R port map (B, DR);
L: Shift_L port map (B, DL);


shifters: for i in 0 to 7 generate
          --command 14 shift left                   --command 14 shift right
R(i) <= (FS(1) and (not FS(0)) and DR(i))     or    ((not FS(1)) and FS(0) and DL(i))     or   ((FS(1) xnor FS(0)) and B(i));
end generate shifters;
end Behavioral;







library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shift_R is
 
Port (
   
     B: in std_logic_vector(7 downto 0);
    R: out std_logic_vector(7 downto 0)
   
);
end Shift_R;

architecture Behavioral of Shift_R is

begin

E: for i in 0 to 7 generate
Low_bit: if i=0 generate
R(0) <= '0';
end generate Low_bit;

other: if i>0 generate
R(i) <= B(i-1);
end generate other;
end generate;


end Behavioral;








library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shift_L is
 
Port (
   
     B: in std_logic_vector(7 downto 0);
    R: out std_logic_vector(7 downto 0)
   
);
end Shift_L;

architecture Behavioral of Shift_L is

begin

E: for i in 0 to 7 generate
Low_bit: if i=7 generate
R(7) <= '0';
end generate Low_bit;

other: if i<7 generate
R(i) <= B(i+1);
end generate other;
end generate;


end Behavioral;








