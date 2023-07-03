----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/27/2023 10:17:46 AM
-- Design Name: 
-- Module Name: PWF_complete - Behavioral
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

entity PWF_complete is
  Port (
  Reset1, clk_100, BNTC, BTNU, BTNL, BTNR, BTND : in std_logic; 
  SW : in std_logic_vector(7 downto 0);
  AN, D, LED : out std_logic_vector( 7 downto 0)
  
--data_bus : in std_logic_vector(15 downto 0)

  
   );
end PWF_complete;

architecture Behavioral of PWF_complete is

component Black_box_datapath is
  Port (
   const_in, Data_in: in std_logic_vector(7 downto 0);
  DA, AA, BA, FS: in std_logic_vector(3 downto 0);
  Reset, clk, RW, MB, MD : in std_logic;
  ADDR_out, D_out : out std_logic_vector(7 downto 0 );
  V, C, N, Z: out std_logic
   );
end component;

component PWB_full is
  Port ( 
  Reset, CLK, V, C, N, Z: in std_logic;
  Address_in: in std_logic_vector(7 downto 0);
  Address_out, Constant_out : out std_logic_vector(7 downto 0 );
  Instrcution_in : in std_logic_vector(15 downto 0);
  DX, AX, BX,FS : out std_logic_vector(3 downto 0);
  MB, MD, RW, MM, MW: out std_logic);
end component;

component Ram16x256 is
  Port (
  Data_in : in std_logic_vector(15 downto 0);
  Addr_in : in std_logic_vector(7 downto 0);
  Data_out : out std_logic_vector(15 downto 0);
  MW, clk, reset : in std_logic
   );
end component;

component Decoder is
 Port (
 clk, reset : in std_logic;
 AN, D : out std_logic_vector( 7 downto 0);
 va1, va2 : in std_logic_vector( 15 downto 0)
  );
end component;

component mux_2x1_16bit is
    
    Port ( Ad, Bd : in STD_LOGIC_VECTOR (15 downto 0);
       
           Y : out STD_LOGIC_VECTOR (15 downto 0);
           S : in std_logic );
end component;

component PortReg8x8 is --port names are as default in the user constraint file!

Port (clk, clks, MW, reset : in STD_LOGIC;
Data_In : STD_LOGIC_VECTOR ( 7 downto 0);
Address_in : in STD_LOGIC_VECTOR (7 downto 0);
SW : in STD_LOGIC_VECTOR (7 downto 0);
BTNC : in STD_LOGIC; --BTN1
BTNU : in STD_LOGIC; --BTN2
BTNL : in STD_LOGIC; --BTN3
BTNR : in STD_LOGIC; --BTN4
BTND : in STD_LOGIC;--BTN5
MMR: out STD_LOGIC;
D_word: out STD_LOGIC_Vector(15 downto 0);
Data_outR : out std_logic_vector(15 downto 0);
LED: out STD_LOGIC_VECTOR (7 downto 0));
end component;

component mux_2x1_8bit is
    
    Port ( Ad, Bd : in STD_LOGIC_VECTOR (7 downto 0);
       
           Y : out STD_LOGIC_VECTOR (7 downto 0);
           S : in std_logic );
end component;


signal cconstant, adress_in, adress_out, data_out, adress, data_in, address_out_PC, LED_int: std_logic_vector(7 downto 0);
signal DX, AX, BX, FS: std_logic_vector(3 downto 0);
signal MB, MD, RW, MM, MW, V, C, N, Z, MMR, reset, clk_s , clk,  not_clk   : std_logic;  --clk_s
signal data_bus,  ram_in, ram_out, reg_out, d_word, LED_7seg: std_logic_vector(15 downto 0); --data_bus,
signal clock_count: integer range 0 to 50;

begin

A1: Black_box_datapath port map(cconstant, data_in, DX, AX, BX, FS, Reset, clk_s, RW, MB, MD, adress_out, data_out, V, C, N, Z );
A2: PWB_full port map(reset, clk_s, V, C, N, Z, Adress_in, Address_out_PC, cconstant, data_bus, DX, AX, BX, FS, MB, MD, RW, MM, MW);
A3: Ram16x256 port map(ram_in, adress, ram_out, MW, clk, reset);
A4: PortReg8x8 port map(clk, clk, MW, reset, data_out, adress, SW, BNTC, BTNU, BTNL, BTNR, BTND, MMR, D_word, reg_out, LED_int);
MUX_M:  mux_2x1_8bit port map(adress_out, address_out_PC, adress, MM);
MUX_MR: mux_2x1_16bit port map(ram_out, reg_out, data_bus, MMR);
--MUX_MR: mux_2x1_16bit port map(ram_out, reg_out, dummy, MMR);
seg7: Decoder port map(clk, reset, AN, D, d_word, LED_7seg);
ram_in( 15 downto 8) <= x"00"; 
ram_in( 7 downto 0) <= data_out;
data_in <= data_bus(7 downto 0);
reset <= not Reset1;
LED_7seg(7 downto 0) <= LED_int;
LED_7seg(15 downto 8) <= data_in;
LED <= LED_int;

process(CLK, reset) is
begin
--clk_s <= clk;
--va1 <= x"cdef";
--va2 <= x"1234";
if reset = '1' then
    
   not_clk <= not clk;
     elsif falling_edge(clk) then
--    if clk_50 = '1' then
--     clk_50 <= '0';
--     else 
--     clk_50 <= '1';
--     end if;
     if clock_count < 2 then
     clock_count <= clock_count +1;
     clk_s <= '1';
     elsif clock_count < 3 then
     clock_count <= clock_count +1;
      clk_s <= '0';
      else 
     clock_count <= 0;
     clk_s <= '0';
     end if;
 end if;
     end process;
     
     
     process(CLK_100, reset) is
begin

if reset = '1' then
    
     elsif rising_edge(clk_100) then
    if clk = '0' then
    clk <= '1';
    else
    clk <= '0';
     end if;
 end if;
     end process;
end Behavioral;
