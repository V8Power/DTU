----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2023 10:25:15 AM
-- Design Name: 
-- Module Name: Decoder - Behavioral
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

entity Decoder is
 Port (
 clk, reset : in std_logic;
 AN, D : out std_logic_vector( 7 downto 0);
 va1, va2 : in std_logic_vector( 15 downto 0)
  );
end Decoder;

architecture Behavioral of Decoder is

signal clock_count: integer range 0 to 25000000;
signal segment_val : std_logic_vector( 3 downto 0);
--signal  va2 : std_logic_vector( 15 downto 0);
begin

process(CLK, reset) is
begin
--va1 <= x"cdef";
--va2 <= x"1234";
if reset = '1' then
    
    
     elsif rising_edge(clk) then
     
     clock_count <= clock_count +1;
     if clock_count < 10000 then   --seg 0
        AN(0) <= '0';
        AN( 7 downto 1) <= "1111111";
       segment_val <= va1( 3 downto 0);
       
        elsif clock_count < 20000 then
       AN(1) <= '0';
        AN( 7 downto 2) <= "111111";
        AN(0) <= '1';
        segment_val <= va1( 7 downto 4);
        
       
        elsif clock_count < 30000 then
        AN(2) <= '0';
        AN( 7 downto 3) <= "11111";
        AN(0) <= '1';
        AN(1) <= '1';
        segment_val <= va1( 11 downto 8);
        
        
        elsif clock_count < 40000 then
        AN(3) <= '0';
        AN( 7 downto 4) <= "1111";
        AN(0) <= '1';
        AN(1) <= '1';
        AN(2) <= '1';
        segment_val <= va1( 15 downto 12);
       
        
        elsif clock_count < 50000 then
        AN(4) <= '0';
        AN( 7 downto 5) <= "111";
        AN(0) <= '1';
        AN(1) <= '1';
        AN(2) <= '1';
        AN(3) <= '1';
        segment_val <= va2( 3 downto 0);
        
       
        elsif clock_count < 60000 then
        AN(5) <= '0';
        AN( 7 downto 6) <= "11";
        AN(0) <= '1';
        AN(1) <= '1';
        AN(2) <= '1';
        AN(3) <= '1';
        AN(4) <= '1';
        segment_val <= va2( 7 downto 4);
      
        
         elsif clock_count < 70000 then
        AN(6) <= '0';
        
        AN(0) <= '1';
        AN(1) <= '1';
        AN(2) <= '1';
        AN(3) <= '1';
        AN(4) <= '1';
        AN(5) <= '1';
		AN(7) <= '1';
        segment_val <= va2( 11 downto 8);
        
        
        elsif clock_count < 80000 then
        AN(7) <= '0';
       
        AN(0) <= '1';
        AN(1) <= '1';
        AN(2) <= '1';
        AN(3) <= '1';
        AN(4) <= '1';
        AN(5) <= '1';
		AN(6) <= '1';
        segment_val <= va2( 15 downto 12);
       
        
        else 
        clock_count <= 0;
        
          
        end if;
case Segment_val is
when "0000" =>
D <= "00000011"; ---0
when "0001" =>
D <= "10011111"; ---1
when "0010" =>
D <= "00100101"; ---2
when "0011" =>
D <= "00001101"; ---3
when "0100" =>
D <= "10011001"; ---4
when "0101" =>
D <= "01001001"; ---5
when "0110" =>
D <= "01000001"; ---6
when "0111" =>
D <= "00011111"; ---7
when "1000" =>
D <= "00000001"; ---8
when "1001" =>
D <= "00001001"; ---9
when "1010" =>
D <= "00010001"; ---A
when "1011" =>
D <= "11000001"; ---B
when "1100" =>
D <= "01100011"; ---C
when "1101" =>
D <= "10000101"; ---D
when "1110" =>
D <= "01100001"; ---E
when "1111" =>
D <= "01110001"; ---F
when others =>
D <= "11111111"; ---null
end case;

      end if;
      
end process;
end Behavioral;
