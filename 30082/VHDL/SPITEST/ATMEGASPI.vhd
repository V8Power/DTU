----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:51:36 01/03/2023 
-- Design Name: 
-- Module Name:    ATMEGASPI - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;





entity ATMEGASPI is
    Port ( MOSI : IN  STD_LOGIC;
           MISO : OUT  STD_LOGIC;
           SCK : in  STD_LOGIC;
           SS : IN std_logic;
           BTN1 : out std_logic;
           BTN2 : out std_logic;
           BTN3 : out std_logic;
           BTN4 : out std_logic;
  SHIFTREG_out: out std_logic_vector(7 downto 0) );
end ATMEGASPI;

architecture Behavioral of ATMEGASPI is


signal SHIFTREG: std_logic_vector(7 downto 0);
signal SHIFTREG_tmp: std_logic_vector(7 downto 0);
--SIGNAL SS : STD_LOGIC;

begin

PROCESS (SCK, MOSI, SS)

BEGIN
IF (SS = '0') THEN
if rising_edge(SCK)then
    SHIFTREG <= SHIFTREG(6 downto 0) & '0';
    --shift_left(SHIFTREG,1);
    --if (MOSI = '0') THEN
   SHIFTREG(0) <= MOSI;
   --END IF;
   --SHIFTREG(7 downto 0) <= x"F9";
   --SHIFTREG(0) <= '1';
   SHIFTREG_out <= SHIFTREG(7 DOWNTO 0);
END IF;
 --SHIFTREG_out <= SHIFTREG(7 DOWNTO 0);
  END IF;
  SHIFTREG_out <= SHIFTREG(7 DOWNTO 0);
  if rising_edge (SS) then
    if (shiftreg = x"C3" ) then
        BTN1 <= '1';
        BTN4 <= '0';
    elsif (shiftreg = x"50") then
        BTN2 <= '1';
        BTN4 <= '0';
    elsif (shiftreg = x"87") then
        BTN3 <= '1';
        BTN4 <= '0';
    elsif (shiftreg = x"FE") then
        BTN4 <= '1'; 
        BTN1 <= '0'; 
        BTN2 <= '0';
        BTN3 <= '0';
    END IF;
  END IF;
   END PROCESS;
       

end Behavioral;
