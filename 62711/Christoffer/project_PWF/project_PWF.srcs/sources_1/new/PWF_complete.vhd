----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2023 10:17:46 AM
-- Design Name: 
-- Module Name: PWF_complete - Behavioral
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

entity PWF_complete is
  Port (
  Reset, clk, btnL, btnV, btnR, btnD, btnC : in std_logic; 
  SW : in std_logic_vector(7 downto 0);
  AN, D, LED : out std_logic_vector( 7 downto 0)
  
   );
end PWF_complete;

architecture Behavioral of PWF_complete is

component Black_box_datapath is
  Port (
   const_in, Data_in: in std_logic_vector(7 downto 0);
  DA, AA, BA, FS: in std_logic_vector(3 downto 0);
  Reset, clk, RW, MB, MD : in std_logic;
  ADDR_out, D_out : out std_logic_vector(7 downto 0 );
  V, C, N, Z: out std_logic
   );
end component;

component PWB_full is
  Port ( 
  Reset, CLK, V, C, N, Z: in std_logic;
  Address_in: in std_logic_vector(7 downto 0);
  Address_out, Constant_out : out std_logic_vector(7 downto 0 );
  Instrcution_in : in std_logic_vector(15 downto 0);
  DX, AX, BX,FS : out std_logic_vector(3 downto 0);
  MB, MD, RW, MM, MW: out std_logic);
end component;

component Ram16x256 is
  Port (
  Data_in : in std_logic_vector(15 downto 0);
  Addr_in : in std_logic_vector(7 downto 0);
  Data_out : out std_logic_vector(15 downto 0);
  MW, clk, reset : in std_logic
   );
end component;

component Decoder is
 Port (
 clk, reset : in std_logic;
 AN, D : out std_logic_vector( 7 downto 0);
 va1 : in std_logic_vector( 15 downto 0)
  );
end component;

component mux_2x1_16bit is
    
    Port ( Ad, Bd : in STD_LOGIC_VECTOR (15 downto 0);
       
           Y : out STD_LOGIC_VECTOR (15 downto 0);
           S : in std_logic );
end component;



begin


end Behavioral;
