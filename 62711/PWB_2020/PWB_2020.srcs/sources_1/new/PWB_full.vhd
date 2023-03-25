----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2023 10:02:02 PM
-- Design Name: 
-- Module Name: PWB_full - Behavioral
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

entity PWB_full is
  Port ( 
  Reset, CLK, V, C, N, Z: in std_logic;
  Address_in: in std_logic_vector(7 downto 0);
  Address_out, Constant_out : out std_logic_vector(7 downto 0 );
  Instruction_in : in std_logic_vector(15 downto 0);
  DX, AX, BX,FS : out std_logic_vector(3 downto 0);
  MB, MD, RW, MM, MW: out std_logic);
end PWB_full;

architecture Behavioral of PWB_full is

component InstructionDecoderController is
    Port ( RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           IR : in STD_LOGIC_VECTOR (15 downto 0);
           V, C, N, Z : in STD_LOGIC;
           PS : out STD_LOGIC_VECTOR (1 downto 0);
           IL : out STD_LOGIC;
           DX, AX, BX, FS : out STD_LOGIC_VECTOR (3 downto 0);
           MB, MD, RW, MM, MW : out STD_LOGIC);
end component;


component InstructionRegister is
    Port ( RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Instruction_In : in STD_LOGIC_VECTOR (15 downto 0);
           ILs : in STD_LOGIC;
           IR : out STD_LOGIC_VECTOR (15 downto 0));
end component;

component SignExtender is
    Port ( IR : in STD_LOGIC_VECTOR (15 downto 0);
           Extended_8 : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component ZeroFiller is
    Port ( IR : in STD_LOGIC_VECTOR (15 downto 0);
           ZeroFilled_8 : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Program_count is
 Port (
 CLK, reset : in std_logic;
 PS : in std_logic_vector(1 downto 0);
 ADDR_in, Offset : in std_logic_vector(7 downto 0);
 PC : inout std_logic_vector(7 downto 0)
 
);
end component;


signal IR : std_logic_vector(15 downto 0);
signal Offset : std_logic_vector(7 downto 0);
signal PS : std_logic_vector(1 downto 0);
signal IL : std_logic;
signal PC_std: std_logic_vector(7 downto 0);

begin
A: InstructionDecoderController port map (reset, clk, IR, V, C, N, Z, PS, IL, DX, AX, BX, FS, MB, MD, RW, MM, MW);
B: InstructionRegister port map (reset, clk, Instruction_in, IL, IR);
K: Program_count port map (clk, reset, PS, Address_in, Offset, PC_std);
D: SignExtender port map (IR, Offset);
E: ZeroFiller port map (IR, Constant_out);

Address_out <= PC_std;


process(CLK, reset) is
begin
if reset = '1' then
    
    
     elsif rising_edge(clk) then
      end if;
end process;
end Behavioral;
