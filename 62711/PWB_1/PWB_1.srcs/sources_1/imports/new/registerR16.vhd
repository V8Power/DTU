----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2023 11:55:28 AM
-- Design Name: 
-- Module Name: registerR16 - Behavioral
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

entity registerR16 is
generic (width : integer:=8);
    Port ( Reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           load : in STD_LOGIC_VECTOR (15 downto 0);
           D_data : in STD_LOGIC_VECTOR (width-1 downto 0);
           R0,R1,R2,R3,R4,R5,R6,R7 : out STD_LOGIC_VECTOR(width-1 downto 0);
           R8,R9,R10,R11,R12,R13,R14,R15 : out STD_LOGIC_VECTOR(width-1 downto 0));
end registerR16;


architecture Behavioral of registerR16 is
component D_FF_EN_RESET is
    Port (D,reset,load,clk : in STD_LOGIC;
          Q : out STD_LOGIC);
end component;

begin
-------
RegisterR0 : for i in 0 to (width-1) generate
UR0: component d_ff_en_reset
port map (D_data(i),Reset,load(0),clk,R0(i));
end generate RegisterR0;
------
RegisterR1 : for i in 0 to (width-1) generate
UR1: component d_ff_en_reset
port map (D_data(i),Reset,load(1),clk,R1(i));
end generate RegisterR1;
------
RegisterR2 : for i in 0 to (width-1) generate
UR2: component d_ff_en_reset
port map (D_data(i),Reset,load(2),clk,R2(i));
end generate RegisterR2;
------
RegisterR3 : for i in 0 to (width-1) generate
UR3: component d_ff_en_reset
port map (D_data(i),Reset,load(3),clk,R3(i));
end generate RegisterR3;
------
RegisterR4 : for i in 0 to (width-1) generate
UR4: component d_ff_en_reset
port map (D_data(i),Reset,load(4),clk,R4(i));
end generate RegisterR4;
------
RegisterR5 : for i in 0 to (width-1) generate
UR5: component d_ff_en_reset
port map (D_data(i),Reset,load(5),clk,R5(i));
end generate RegisterR5;
------
RegisterR6 : for i in 0 to (width-1) generate
UR6: component d_ff_en_reset
port map (D_data(i),Reset,load(6),clk,R6(i));
end generate RegisterR6;
------
RegisterR7 : for i in 0 to (width-1) generate
UR7: component d_ff_en_reset
port map (D_data(i),Reset,load(7),clk,R7(i));
end generate RegisterR7;
------
RegisterR8 : for i in 0 to (width-1) generate
UR8: component d_ff_en_reset
port map (D_data(i),Reset,load(8),clk,R8(i));
end generate RegisterR8;
------
RegisterR9 : for i in 0 to (width-1) generate
UR9: component d_ff_en_reset
port map (D_data(i),Reset,load(9),clk,R9(i));
end generate RegisterR9;
------
RegisterR10 : for i in 0 to (width-1) generate
UR10: component d_ff_en_reset
port map (D_data(i),Reset,load(10),clk,R10(i));
end generate RegisterR10;
------
RegisterR11 : for i in 0 to (width-1) generate
UR11: component d_ff_en_reset
port map (D_data(i),Reset,load(11),clk,R11(i));
end generate RegisterR11;
------
RegisterR12 : for i in 0 to (width-1) generate
UR12: component d_ff_en_reset
port map (D_data(i),Reset,load(12),clk,R12(i));
end generate RegisterR12;
------
RegisterR13 : for i in 0 to (width-1) generate
UR13: component d_ff_en_reset
port map (D_data(i),Reset,load(13),clk,R13(i));
end generate RegisterR13;
------
RegisterR14 : for i in 0 to (width-1) generate
UR14: component d_ff_en_reset
port map (D_data(i),Reset,load(14),clk,R14(i));
end generate RegisterR14;
------
RegisterR15 : for i in 0 to (width-1) generate
UR15: component d_ff_en_reset
port map (D_data(i),Reset,load(15),clk,R15(i));
end generate RegisterR15;
------






end Behavioral;
