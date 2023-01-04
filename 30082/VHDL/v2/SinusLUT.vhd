----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:03:00 01/03/2023 
-- Design Name: 
-- Module Name:    SinusLUT - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SinusLUT is
port(clka: IN STD_LOGIC;
     rst: in std_logic; 
	  addra: in std_logic_vector(3 downto 0);
		douta : out std_logic_vector(7 downto 0));


end SinusLUT;

architecture Behavioral of SinusLUT is
type lut_array_type is array(0 to 254) of integer range 0 to 255;

constant c_sine_table: lut_array_type :=
 (
  128,131,134,137,140,143,146,149,
  152,156,159,162,165,168,171,174,
  176,179,182,185,188,191,193,196,
  199,201,204,206,209,211,213,216,
  218,220,222,224,226,228,230,232,
  234,235,237,239,240,242,243,244,
  246,247,248,249,250,251,251,252,
  253,253,254,254,254,255,255,255,
  255,255,255,255,254,254,253,253,
  252,252,251,250,249,248,247,246,
  245,244,242,241,239,238,236,235,
  233,231,229,227,225,223,221,219,
  217,215,212,210,207,205,202,200,
  197,195,192,189,186,184,181,178,
  175,172,169,166,163,160,157,154,
  151,148,145,142,138,135,132,129,
  126,123,120,117,113,110,107,104,
  101,98,95,92,89,86,83,80,
  77,74,71,69,66,63,60,58,
  55,53,50,48,45,43,40,38,
  36,34,32,30,28,26,24,22,
  20,19,17,16,14,13,11,10,
  9,8,7,6,5,4,3,3,
  2,2,1,1,0,0,0,0,
  0,0,0,1,1,1,2,2,
  3,4,4,5,6,7,8,9,
  11,12,13,15,16,18,20,21,
  23,25,27,29,31,33,35,37,
  39,42,44,46,49,51,54,56,
  59,62,64,67,70,73,76,79,
  81,84,87,90,93,96,99,103,
  106,109,112,115,118,121,124,128
  );

 
 begin
 
 
table: process(clka)
begin

if clka'event and clka= '1' then 

douta<= std_logic_vector(to_unsigned(c_sine_table(to_integer(unsigned(addra))),8));

end if; 

end process table;

end Behavioral;
 