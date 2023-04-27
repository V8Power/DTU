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

entity FU is
 
Port (
    FS: in std_logic_vector(3 downto 0);
    A, B: in std_logic_vector(7 downto 0);
    R: out std_logic_vector(7 downto 0);
    V,C,N,Z : out std_logic
);
end FU;

architecture Behavioral of FU is
component ALU is
 
Port (
    FS: in std_logic_vector(3 downto 0);
    A, B: in std_logic_vector(7 downto 0);
    R: out std_logic_vector(7 downto 0);
    V,C,N,Z : out std_logic
);
end component;

component Shifter is
 
Port (
    FS: in std_logic_vector(3 downto 0);
     B: in std_logic_vector(7 downto 0);
    R: out std_logic_vector(7 downto 0)
   
);
end component;

component mux_2x1_8bit is
    
    Port ( Ad, Bd : in STD_LOGIC_VECTOR (7 downto 0);
       
           Y : out STD_LOGIC_VECTOR (7 downto 0);
           S : in std_logic );
end component;

signal data_alu, data_shift : std_logic_vector(7 downto 0);
signal MF : std_logic;
begin
L: ALU port map (FS, A, B, data_alu, V,C,N,Z);
S: Shifter port map (FS, B, data_shift);
M: mux_2x1_8bit port map (data_alu, data_shift,  R, MF);

--E: for i in 0 to 7 generate

--end generate;


MF<= FS(3) and FS(2);

end Behavioral;
