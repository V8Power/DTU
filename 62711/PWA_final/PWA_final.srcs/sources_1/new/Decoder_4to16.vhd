----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2023 04:12:48 PM
-- Design Name: 
-- Module Name: Decoder_4to16 - Behavioral
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

entity Decoder_4to16 is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           E : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR (15 downto 0));
end Decoder_4to16;

architecture Behavioral of Decoder_4to16 is

component Decoder_2to4 is
    Port ( A : in STD_LOGIC_VECTOR(1 downto 0);
       E : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(3 downto 0));
end component;


signal internal : STD_LOGIC_VECTOR(3 downto 0);
signal const : STD_LOGIC;


begin

DI: Decoder_2to4 port map (A(3 downto 2),E,internal);
D0: Decoder_2to4 port map (A(1 downto 0), internal(0), Q(3 downto 0));
D1: Decoder_2to4 port map (A(1 downto 0), internal(1), Q(7 downto 4));
D2: Decoder_2to4 port map (A(1 downto 0), internal(2), Q(11 downto 8));
D3: Decoder_2to4 port map (A(1 downto 0), internal(3), Q(15 downto 12));

const <= '1';
end Behavioral;
