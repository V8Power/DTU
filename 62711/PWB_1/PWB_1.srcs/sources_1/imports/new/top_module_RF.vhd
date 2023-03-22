----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2023 11:41:47 AM
-- Design Name: 
-- Module Name: top_module_RF - Behavioral
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

entity top_module_RF is
    Port ( clk, reset : in STD_LOGIC;
           RW : in STD_LOGIC;
           DA : in STD_LOGIC_VECTOR (3 downto 0);
           AA : in STD_LOGIC_VECTOR (3 downto 0);
           BA : in STD_LOGIC_VECTOR (3 downto 0);
           D_data : in STD_LOGIC_VECTOR (7 downto 0);
           A_data : out STD_LOGIC_VECTOR (7 downto 0);
           B_data : out STD_LOGIC_VECTOR (7 downto 0));
end top_module_RF;

architecture Behavioral of top_module_RF is

component mux_16x1_rev2 is

    Port ( M0, M1, M2, M3, M4, M5, M6, M7, M8, M9, M10, M11, M12, M13, M14, M15 : in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (3 downto 0);
           Y : out STD_LOGIC);
end component mux_16x1_rev2;

component registerR16 is
generic (width : integer:=8);
    Port ( Reset : in STD_LOGIC;
           clk : in STD_LOGIC;
           load : in STD_LOGIC_VECTOR (15 downto 0);
           D_data : in STD_LOGIC_VECTOR (width-1 downto 0);
           R0,R1,R2,R3,R4,R5,R6,R7 : out STD_LOGIC_VECTOR(width-1 downto 0);
           R8,R9,R10,R11,R12,R13,R14,R15 : out STD_LOGIC_VECTOR(width-1 downto 0));
end component registerR16;

component Decoder_4to16 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           E : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (15 downto 0));
end component Decoder_4to16;

signal R0,R1,R2,R3,R4,R5,R6,R7 : STD_LOGIC_VECTOR(7 downto 0);
signal R8,R9,R10,R11,R12,R13,R14,R15 : STD_LOGIC_VECTOR(7 downto 0);
signal load : std_logic_vector (15 downto 0);

begin


MUX : for i in 0 to 7 generate

 A123:   mux_16x1_rev2 port map(R0(i),R1(i), R2(i), R3(i), R4(i), R5(i), R6(i), R7(i), R8(i), R9(i), R10(i), R11(i), R12(i), R13(i), R14(i),R15(i), AA, A_data(i));
 A122:   mux_16x1_rev2 port map(R0(i),R1(i), R2(i), R3(i), R4(i), R5(i), R6(i), R7(i), R8(i), R9(i), R10(i), R11(i), R12(i), R13(i), R14(i),R15(i), BA , B_data(i));
    
end generate;
    Reg: registerR16 port map (Reset, clk, load, D_data, R0, R1, R2, R3, R4, R5, R6, R7, R8, R9, R10, R11, R12, R13, R14, R15);
    Dec: Decoder_4to16 port map (DA, RW, load);
end Behavioral;
