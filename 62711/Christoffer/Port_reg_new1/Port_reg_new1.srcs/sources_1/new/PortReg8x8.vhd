----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.04.2023 10:08:49
-- Design Name: 
-- Module Name: PortReg8x8 - Behavioral
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

entity PortReg8x8 is --port names are as default in the user constraint file!
generic (width : integer:=8);
Port (clk,MW : in STD_LOGIC;
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
end PortReg8x8;

Architecture Behavorial of entity PortReg8x8 is 

component D_FF_EN_RESET is
    Port (D,reset,load,clk : in STD_LOGIC;
          Q : out STD_LOGIC);
end component;

signal load STD_LOGIC_VECTOR(2 downto 0);

Begin

process(Address_in, MW, clk)
    begin
    if Address_in = "11111000" and MW = '1' and clk'event and clk = 1 then load <= "001";
    elsif Address_in = "11111001" and MW = '1' and clk'event and clk = 1 then load <= "010";
    elsif Address_in = "11111010" and MW = '1' and clk'event and clk = 1then load <= "100";
    else load <= "000";
    end if;
end process;


RegisterR0 : for i in 0 to (width-1) generate
MR0: component d_ff_en_reset
port map (data_in(i),Reset,load(0),clk,D_word(i));
end generate RegisterR0;
------
RegisterR1 : for i in 0 to (width-1) generate
MR1: component d_ff_en_reset
port map (data_in(i),Reset,load(1),clk,D_word(i+8));
end generate RegisterR1;
------
RegisterR2 : for i in 0 to (width-1) generate
MR2: component d_ff_en_reset
port map (data_in(i),Reset,load(2),clk,LED(i));
end generate RegisterR2;
------
RegisterR3 : for i in 0 to (width-1) generate
MR3: component d_ff_en_reset
port map ('-',Reset,BTNR,clk,R3(i));
end generate RegisterR3;
------
RegisterR4 : for i in 0 to (width-1) generate
MR4: component d_ff_en_reset
port map ('-',Reset,BTNL,clk,R4(i));
end generate RegisterR4;
------
RegisterR5 : for i in 0 to (width-1) generate
MR5: component d_ff_en_reset
port map ('-' ,Reset,BTND,clk,R5(i));
end generate RegisterR5;
------
RegisterR6 : for i in 0 to (width-1) generate
MR6: component d_ff_en_reset
port map ('-',Reset,BTNU,clk,R6(i));
end generate RegisterR6;
------
RegisterR7 : for i in 0 to (width-1) generate
MR7: component d_ff_en_reset
port map ('-',Reset,BTNC,clk,R7(i));
end generate RegisterR7;




end Behavorial;

