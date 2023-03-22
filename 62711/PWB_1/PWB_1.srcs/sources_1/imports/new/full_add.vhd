----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2023 10:22:11 AM
-- Design Name: 
-- Module Name: full_add - Behavioral
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

entity full_add is
  Port (A,B,C_in, S : in std_logic; 
  D_out, C_out : out std_logic  );
end full_add;

architecture Behavioral of full_add is

begin
D_out <= (A xor (S xor B)) xor C_in;
C_out <= (A and (S xor B)) xor ((A xor (S xor B)) and C_in);

end Behavioral;
