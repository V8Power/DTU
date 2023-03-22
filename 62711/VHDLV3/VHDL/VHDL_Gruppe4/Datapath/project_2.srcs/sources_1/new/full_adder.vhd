----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/09/2023 10:17:34 AM
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
generic(width : integer:=8);
  Port ( 
        A_in, B_in : in std_logic_vector(width -1 downto 0);
        D_out : out std_logic_vector(width - 1 downto 0);
        C_in : in std_logic; 
        C_out : out std_logic;
        Sub : in std_logic;
        V: out std_logic );
end full_adder;

architecture Behavioral of full_adder is

component full_add
 Port (A,B,C_in, S : in std_logic; 
  D_out, C_out : out std_logic  );
end component;
signal cc : std_logic_vector (width - 1 downto 0);
signal C_int: std_logic;
begin
CC(7) <= '1';
C_out <= C_int;
n_width_adder: for i in 0 to width - 1 generate
Low_bit: if i=0 generate
U0: full_add port map
(A_in(i), B_in(i), C_in, Sub, D_out(i), cc(i));
end generate Low_bit;

mid_bits: if (i>0 and i<(width - 1)) generate
Ux: full_add port map
(A_in(i), B_in(i), cc(i-1), Sub, D_out(i), cc(i)); 

end generate mid_bits;

high_bit: if i=width-1 generate
UH: full_add port map
(A_in(i), B_in(i), cc(i-1), Sub, D_out(i), C_int);
V <= C_int xor cc(i-1);
end generate high_bit;
end generate n_width_adder;
end Behavioral;
