----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/16/2023 09:47:38 AM
-- Design Name: 
-- Module Name: Program_count - Behavioral
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Program_count is
 Port (
 CLK, reset : in std_logic;
 PS : in std_logic_vector(1 downto 0);
 ADDR_in, Offset : in std_logic_vector(7 downto 0);
 PC : inout std_logic_vector(7 downto 0)
 
  );
end Program_count;

architecture Behavioral of Program_count is




begin
 
process(CLK, reset) is
    begin
    
    
    if reset = '1' then
    PC <= x"00";
    
     elsif rising_edge(clk) then
      
        if (PS = "00")then
        elsif ( PS = "01") then
        
        PC <= PC + 1;
        
        elsif (PS = "10") then
        PC <= PC + offset;
        
        elsif (PS = "11") then
        PC <= ADDR_in;
        
        elsif (PS = "XX") then
        
        
        end if;
        
       
     end if;
     
end process;

end Behavioral;
