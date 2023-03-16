----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2023 02:55:24 PM
-- Design Name: 
-- Module Name: Black_box_datapath - Behavioral
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

entity Black_box_datapath is
  Port (
   const_in, Data_in: in std_logic_vector(7 downto 0);
  DA, AA, BA, FS: in std_logic_vector(3 downto 0);
  Reset, clk, RW, MB, MD : in std_logic;
  ADDR_out, D_out : out std_logic_vector(7 downto 0 );
  V, C, N, Z: out std_logic
   );
end Black_box_datapath;

architecture Behavioral of Black_box_datapath is

component top_module_RF is
    Port ( clk, reset : in STD_LOGIC;
           RW : in STD_LOGIC;
           DA : in STD_LOGIC_VECTOR (3 downto 0);
           AA : in STD_LOGIC_VECTOR (3 downto 0);
           BA : in STD_LOGIC_VECTOR (3 downto 0);
           D_data : in STD_LOGIC_VECTOR (7 downto 0);
           A_data : out STD_LOGIC_VECTOR (7 downto 0);
           B_data : out STD_LOGIC_VECTOR (7 downto 0));
end component;


component FU is
 
Port (
    FS: in std_logic_vector(3 downto 0);
    A, B: in std_logic_vector(7 downto 0);
    R: out std_logic_vector(7 downto 0);
    V,C,N,Z : out std_logic
);
end component;

component mux_2x1_8bit is
    
    Port ( Ad, Bd : in STD_LOGIC_VECTOR (7 downto 0);
       
           Y : out STD_LOGIC_VECTOR (7 downto 0);
           S : in std_logic );
end component;

signal D_Data, A_Data, B_data, ALU_data, B : std_logic_vector(7 downto 0);
begin
Reg16: top_module_RF port map( clk, reset, RW, Da, AA, BA, D_data, A_data, B_data);
MUXB: mux_2x1_8bit port map (B_Data, const_in, B, MB);
FUA: FU port map (FS, A_data, B, ALU_data, V, C, N, Z);
MUXD: mux_2x1_8bit port map (ALU_data, Data_in, D_data, MD);



end Behavioral;
