--------------------------------------------------------------------------------
-- Company:        DTU
-- Engineer:       Peter Brauer
--
-- Create Date:    10:07:10 05/12/09
-- Design Name:    
-- Module Name:    SigGenControl - Behavioral
-- Project Name:   Signal Generator
-- Target Device:  Spartan 3
-- Tool versions:  
-- Description:    Control circuit for the Signal Generator system
--
-- Dependencies:   
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SigGenControl is
  Port ( Reset  : in std_logic;	
         Clk    : in std_logic;
         BTN0    : in std_logic;
         BTN1    : in std_logic;
         BTN2    : in std_logic;
         SW     : in std_logic_vector(7 downto 0);
         Disp   : out std_logic_vector(19 downto 0);
         Shape  : inout std_logic_vector(7 downto 0);
         Ampl   : inout std_logic_vector(7 downto 0);
         Freq   : inout std_logic_vector(7 downto 0);
         SigEn  : out std_logic;
         MOSI   : in std_logic;
         SS     : in std_logic; 
         SCK    : in std_logic;
         SHIFTREG_out: out std_logic_vector(7 downto 0);
         Stat1 : out std_logic;
         Stat2 : out std_logic;
         Stat3 : out std_logic;
         Stat4 : out std_logic;
         Stat5 : out std_logic);
end SigGenControl;

architecture Behavioral of SigGenControl is

component BTNdb
  port( Reset, Clk: in std_logic;
        BTNin: in std_logic;
        BTNout: out std_logic);
end component;

signal BTN1db, BTN2db, ShapeEN, AmplEN, FreqEN: std_logic;
--signal SWshape, SWampl, SWfreq: std_logic_vector(7 downto 0);
signal DispSel: std_logic_vector(1 downto 0);
type StateType is (ShapeS, AmplS, FreqS, RunS);
signal State, nState: StateType;  

--SPI and SPI control signals
signal SHIFTREG: std_logic_vector(7 downto 0);
signal SHIFTREG_data: std_logic_vector(7 downto 0);
signal ID : std_logic_vector(7 downto 0);
signal Amp_SPI : std_logic_vector(7 downto 0);
signal Freq_SPI : std_logic_vector(7 downto 0);
signal Shape_stat_SPI : std_logic_vector(7 downto 0);
signal CheckSum : std_logic_vector(7 downto 0);
signal Pack_count : std_logic_vector(5 downto 0);
signal Check_ok : std_logic;
signal ID_ok : std_logic;

begin

ShapeReg: process (Reset, Clk)
begin
  if Reset = '1' then Shape <= "00000000";
  elsif Clk'event and Clk = '1' then
    if ShapeEn = '1' then
      Shape <= SW(7 downto 0);
    end if;
  end if;
end process;

AmplReg: process (Reset, Clk)
begin
  if Reset = '1' then Ampl <= X"00";
  elsif Clk'event and Clk = '1' then
    if AmplEn = '1' then
      Ampl <= SW;
    end if;
  end if;
end process;

FreqReg: process (Reset, Clk)
begin
  if Reset = '1' then Freq <= X"00";
  elsif Clk'event and Clk = '1' then
    if FreqEn = '1' then
      Freq <= SW;
    end if;
  end if;
end process;

DispMux: Disp <= X"F1230" when DispSel = "0" else
                 X"4F0" & Freq when DispSel = X"1" else
                 X"4A0" & Ampl when DispSel = X"2" else
                 X"450" & Shape;

--SWdec: process (SW)
--begin
--  if SW > X"03" then SWshape <= X"03"; else SWshape <= SW; end if;
--  if SW < X"FF" then SWampl  <= SW; else SWampl <= X"FF"; end if;
--  if SW < X"FF" then SWfreq  <= SW; else SWfreq <= X"FF"; end if;
--end process;

StateReg: process (Reset, Clk)
begin
  if Reset = '1' then State <= ShapeS;
  elsif Clk'event and Clk = '1' then
    State <= nState;
  end if;
end process;

StateDec: process (state, BTN0, BTN1db, BTN2db)
begin
  SigEN <= '0';
  ShapeEN <= '0';
  AmplEN <= '0';
  FreqEN <= '0';
  DispSel <= "00";
  nState <= ShapeS;
  case state is
    when ShapeS =>
	   ShapeEN <= BTN0;
		DispSel <= "11";
		if BTN2db = '1' then
		  nState <= RunS;
      elsif BTN1db =	'1' then
		  nState <= AmplS;
		else
		  nState <= ShapeS;
		end if;

    when AmplS =>
	   AmplEN <= BTN0;
		DispSel <= "10";
		if BTN2db = '1' then
		  nState <= RunS;
      elsif BTN1db =	'1' then
		  nState <= FreqS;
		else
		  nState <= AmplS;
		end if;

    when FreqS =>
	   FreqEN <= BTN0;
		DispSel <= "01";
		if BTN2db = '1' then
		  nState <= RunS;
      elsif BTN1db =	'1' then
		  nState <= ShapeS;
		else
		  nState <= FreqS;
		end if;

    when RunS =>
	   SigEN <= '1';
		DispSel <= "00";
		if BTN2db = '1' then
		  nState <= ShapeS;
      else
		  nState <= RunS;
		end if;

  end case;
end process;



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
   --SHIFTREG_out <= SHIFTREG(7 DOWNTO 0);
END IF;
 --SHIFTREG_out <= SHIFTREG(7 DOWNTO 0);
  END IF;
  --SHIFTREG_out <= SHIFTREG(7 DOWNTO 0);
  if rising_edge (SS) then
    if ID_ok = '1' then
        Pack_count <= Pack_count + 1;
    else 
    Pack_count <= "000000";
    END IF;
    SHIFTREG_data <= SHIFTREG; 
    
  END IF;
  if SHIFTREG_data = x"05" then
    ID_ok <= '1';
    ID <= ShIFTREG_data;
    Stat1 <= '1';
    Stat2 <= '0';
    Stat3 <= '0';
    Stat4 <= '0';
    Stat5 <= '0';
    
    
  elsif PACK_count = x"1" then
    AMP_SPI <= SHIFTREG_data;
    Stat2 <= '1';
  elsif PACK_count = x"2" then
    FREQ_SPI <= SHIFTREG_data;
    Stat3 <= '1';
  elsif PACK_count = x"3" then
    Shape_stat_SPI <= SHIFTREG_data;
    Stat4 <= '1';
  elsif PACK_count = x"4" then
    CheckSum <= SHIFTREG_data;
    ID_ok <= '0';
    if (CheckSum = (ID xor AMP_SPI xor FREQ_SPI xor Shape_stat_SPI)) then
    
        Stat5 <= '1';
    END IF;
    Stat1 <= '0';
    
  END IF;
  SHIFTREG_out (5 downto 0)<= Pack_count;
   END PROCESS;
       







Deb1: BTNdb port map (Reset => Reset, Clk => Clk, BTNin => BTN1, BTNout => BTN1db);

Deb2: BTNdb port map (Reset => Reset, Clk => Clk, BTNin => BTN2, BTNout => BTN2db);




end Behavioral;
