----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2023 10:03:41 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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

entity ALU is
 
Port (
FS: in std_logic_vector(3 downto 0);
A, B: in std_logic_vector(7 downto 0);
R: out std_logic_vector(7 downto 0);
V,C,N,Z : out std_logic
);
end ALU;

architecture Behavioral of ALU is

component full_adder
Port ( 
        A_in, B_in : in std_logic_vector(7 downto 0);
        D_out : out std_logic_vector(7 downto 0);
        C_in : in std_logic; 
        C_out : out std_logic;
        Sub : in std_logic );
end component;

signal B_enable, Carry_in, C_out, Sub: std_logic; 
signal B_alu: std_logic_vector(7 downto 0);
begin
A0: full_adder port map(A,B, R, Carry_in, C_out, Sub );

E: for i in 0 to 7 generate
B_alu(i) <= B(i) and B_enable;
end generate;

Carry_in <= (not FS(3)) and (not FS(2)) and (not FS(1)) and FS(0);
B_enable <=  (not FS(3)) and (not FS(2)) and  FS(1) and (not FS(0));

end Behavioral;
