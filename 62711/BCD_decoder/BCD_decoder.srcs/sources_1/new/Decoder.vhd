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
 AN, D : out std_logic_vector( 7 downto 0)
  );
end Decoder;

architecture Behavioral of Decoder is

signal clock_count: integer range 0 to 25000000;
begin

process(CLK, reset) is
begin
if reset = '1' then
    
    
     elsif rising_edge(clk) then
     clock_count <= clock_count +1;
     if clock_count < 10000 then   --seg 0
        --AN(0) <= '1';
       -- AN( 7 downto 1) <= "0000000";
       -- D <= x"0A";
        elsif clock_count < 20000 then
        AN(1) <= '1';
        AN( 7 downto 2) <= "000000";
        AN(0) <= '0';
        D <= x"AA";
        elsif clock_count < 30000 then
        AN(2) <= '1';
        AN( 7 downto 3) <= "00000";
        AN(0) <= '0';
        AN(1) <= '0';
        D <= x"AB";
        elsif clock_count < 40000 then
        AN(3) <= '1';
        AN( 7 downto 4) <= "0000";
        AN(0) <= '0';
        AN(1) <= '0';
        AN(2) <= '0';
        D <= x"BA";
        elsif clock_count < 40000 then
        AN(4) <= '1';
        AN( 7 downto 5) <= "000";
        AN(0) <= '0';
        AN(1) <= '0';
        AN(2) <= '0';
        AN(3) <= '0';
        D <= x"11";
        elsif clock_count < 50000 then
        AN(5) <= '1';
        AN( 7 downto 6) <= "00";
        AN(0) <= '0';
        AN(1) <= '0';
        AN(2) <= '0';
        AN(3) <= '0';
        AN(4) <= '0';
        D <= x"FF";
         elsif clock_count < 60000 then
        AN(6) <= '1';
        AN(7) <= '0';
        AN(0) <= '0';
        AN(1) <= '0';
        AN(2) <= '0';
        AN(3) <= '0';
        AN(4) <= '0';
        AN(5) <= '0';
        D <= x"F2";
        elsif clock_count < 70000 then
        AN(6) <= '0';
        AN(7) <= '1';
        AN(0) <= '0';
        AN(1) <= '0';
        AN(2) <= '0';
        AN(3) <= '0';
        AN(4) <= '0';
        AN(5) <= '0';
        D <= x"47";
        else 
        clock_count <= 0;
        
          
        end if;
      end if;
      
end process;
end Behavioral;
