----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.03.2023 10:37:06
-- Design Name: 
-- Module Name: InstructionDecoderController - Behavioral
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

entity InstructionDecoderController is
    Port ( RESET : in STD_LOGIC;
           CLK : in STD_LOGIC;
           IR : in STD_LOGIC_VECTOR (15 downto 0);
           V, C, N, Z : in STD_LOGIC;
           PS : out STD_LOGIC_VECTOR (1 downto 0);
           IL : out STD_LOGIC;
           DX, AX, BX, FS : out STD_LOGIC_VECTOR (3 downto 0);
           MB, MD, RW, MM, MW : out STD_LOGIC);
end InstructionDecoderController;

architecture Behavioral of InstructionDecoderController is
type StateType is (inf, EX0, EX1, EX2, EX3, EX4);
signal State, NextState: Statetype;
signal DXs, AXs, BXs, FSs : STD_LOGIC_VECTOR(3 downto 0);
signal MBs, MDs, RWs, MMs, MWs, ILs : STD_LOGIC;
signal PSs : STD_LOGIC_VECTOR(1 downto 0);



begin

StateReg: process(RESET, CLK)
begin
    if RESET = '1' then State <= inf;
    elsif clk'event and clk = '1' then State <= Nextstate;
    end if;
end process;

StateDec: process(state,IR(15 downto 9), V, C, N, Z)
begin
case state is
    when INF => 
        ILs <= '1';
        PSs <= "00";
        DXs <= '-'&IR(8 downto 6);
        AXs <= '-'&IR(5 downto 3);
        BXs <= '-'&IR(2 downto 0);
        MBs <= '-';
        FSs <= "----";
        MDs <= '-';
        RWs <= '0';
        MMs <= '1';
        MWs <= '0';
        Nextstate <= EX0;
        -----------------------
    When EX0 =>
        if IR(15 downto 9) = "0000000" then  
           ILs <= '0';
           PSs <= "01";
           DXs <= '0'&IR(8 downto 6);
           AXs <= '0'&IR(5 downto 3);
           BXs <= '-'&IR(2 downto 0);
           MBs <= '-';
           FSs <= "0000";
           MDs <= '0';
           RWs <= '1';
           MMs <= '-';
           MWs <= '0';
           Nextstate <= INF;
          
      -------------------------------------     
         elsif IR(15 downto 9) = "0000001" then  
           ILs <= '0';
           PSs <= "01";
           DXs <= '0'&IR(8 downto 6);
           AXs <= '0'&IR(5 downto 3);
           BXs <= '-'&IR(2 downto 0);
           MBs <= '-';
           FSs <= "0001";
           MDs <= '0';
           RWs <= '1';
           MMs <= '-';
           MWs <= '0';
           Nextstate <= INF;
         
       ------------------------------------- 
          elsif IR(15 downto 9) = "0000010" then  
           ILs <= '0';
           PSs <= "01";
           DXs <= '0'&IR(8 downto 6);
           AXs <= '0'&IR(5 downto 3);
           BXs <= '0'&IR(2 downto 0);
           MBs <= '0';
           FSs <= "0010";
           MDs <= '0';
           RWs <= '1';
           MMs <= '-';
           MWs <= '0';
           Nextstate <= INF;
         
      -------------------------------------
         elsif IR(15 downto 9) = "0000101" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '0'&IR(2 downto 0);
            MBs <= '0';
            FSs <= "0101";
            MDs <= '0';
            RWs <= '1';
            MMs <= '-';
            MWs <= '0'; 
            Nextstate <= INF;
          
-------------------------------------
         elsif IR(15 downto 9) = "0000110" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '-';
            FSs <= "0110";
            MDs <= '0';
            RWs <= '1';
            MMs <= '-';
            MWs <= '0'; 
            Nextstate <= INF;
           
-------------------------------------
         elsif IR(15 downto 9) = "0001000" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '0'&IR(2 downto 0);
            MBs <= '0';
            FSs <= "1000";
            MDs <= '0';
            RWs <= '1';
            MMs <= '-';
            MWs <= '0'; 
            Nextstate <= INF;
             
-------------------------------------
         elsif IR(15 downto 9) = "0001001" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '0'&IR(2 downto 0);
            MBs <= '0';
            FSs <= "1001";
            MDs <= '0';
            RWs <= '1';
            MMs <= '-';
            MWs <= '0';   
            Nextstate <= INF;
               
-------------------------------------
        elsif IR(15 downto 9) = "0001010" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '0'&IR(2 downto 0);
            MBs <= '0';
            FSs <= "1010";
            MDs <= '0';
            RWs <= '1';
            MMs <= '-';
            MWs <= '0';  
            Nextstate <= INF;
                
-------------------------------------
        elsif IR(15 downto 9) = "0001011" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '-';
            FSs <= "1011";
            MDs <= '0';
            RWs <= '1';
            MMs <= '-';
            MWs <= '0';
            Nextstate <= INF;
          
-------------------------------------
        elsif IR(15 downto 9) = "0001100" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '-'&IR(5 downto 3);
            BXs <= '0'&IR(2 downto 0);
            MBs <= '0';
            FSs <= "1100";
            MDs <= '0';
            RWs <= '1';
            MMs <= '-';
            MWs <= '0';
            Nextstate <= INF;
          
-------------------------------------
        elsif IR(15 downto 9) = "0010000" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '-';
            FSs <= "----";
            MDs <= '1';
            RWs <= '1';
            MMs <= '0';
            MWs <= '0';
            Nextstate <= INF;
          
-------------------------------------
        elsif IR(15 downto 9) = "0100000" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '-'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '0'&IR(2 downto 0);
            MBs <= '0';
            FSs <= "----";
            MDs <= '-';
            RWs <= '0';
            MMs <= '0';
            MWs <= '1';
            Nextstate <= INF;
       
-------------------------------------
        elsif IR(15 downto 9) = "1001100" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '-'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '1';
            FSs <= "1100";
            MDs <= '0';
            RWs <= '1';
            MMs <= '0';
            MWs <= '0';
            Nextstate <= INF;
          
------------------------------------
        elsif IR(15 downto 9) = "1000010" then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '0'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '1';
            FSs <= "0010";
            MDs <= '0';
            RWs <= '1';
            MMs <= '0';
            MWs <= '0';
            Nextstate <= INF;
          
-------------------------------------
        elsif IR(15 downto 9) = "1100000" and Z = '1' then  
            ILs <= '0';
            PSs <= "10";
            DXs <= '-'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '-';
            FSs <= "0000";
            MDs <= '-';
            RWs <= '0';
            MMs <= '0';
            MWs <= '0';
            Nextstate <= INF;
          
-------------------------------------
        elsif IR(15 downto 9) = "1100000" and Z = '0' then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '-'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '-';
            FSs <= "0000";
            MDs <= '-';
            RWs <= '0';
            MMs <= '0';
            MWs <= '0';
            Nextstate <= INF;
           
-------------------------------------
        elsif IR(15 downto 9) = "1100001" and N = '1' then  
            ILs <= '0';
            PSs <= "10";
            DXs <= '-'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '-';
            FSs <= "0000";
            MDs <= '-';
            RWs <= '0';
            MMs <= '0';
            MWs <= '0';
            Nextstate <= INF;
          
-------------------------------------
        elsif IR(15 downto 9) = "1100001" and N = '0' then  
            ILs <= '0';
            PSs <= "01";
            DXs <= '-'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '-';
            FSs <= "0000";
            MDs <= '-';
            RWs <= '0';
            MMs <= '0';
            MWs <= '0';
            Nextstate <= INF;
          
-------------------------------------
        elsif IR(15 downto 9) = "1110000" then  
            ILs <= '0';
            PSs <= "11";
            DXs <= '-'&IR(8 downto 6);
            AXs <= '0'&IR(5 downto 3);
            BXs <= '-'&IR(2 downto 0);
            MBs <= '-';
            FSs <= "0000";
            MDs <= '-';
            RWs <= '0';
            MMs <= '0';
            MWs <= '0';
            Nextstate <= INF;
           
------------------------------------
       elsif IR(15 downto 9) = "0010001" then  
           ILs <= '0';
           PSs <= "00";
           DXs <= "1000";
           AXs <= '0'&IR(5 downto 3);
           BXs <= '-'&IR(2 downto 0);
           MBs <= '-';
           FSs <= "0000";
           MDs <= '1';
           RWs <= '1';
           MMs <= '0';
           MWs <= '0';
           Nextstate <= EX1;
         
-------------------------------------
         elsif IR(15 downto 9) = "0001101" and Z <= '0' then  
             ILs <= '0';
             PSs <= "00";
             DXs <= "1000";
             AXs <= '0'&IR(5 downto 3);
             BXs <= '-'&IR(2 downto 0);
             MBs <= '-';
             FSs <= "0000";
             MDs <= '0';
             RWs <= '1';
             MMs <= '-';
             MWs <= '0';
             Nextstate <= EX1;
           
-------------------------------------
         elsif IR(15 downto 9) = "0001101" and Z <= '1' then  
             ILs <= '0';
             PSs <= "01";
             DXs <= "1000";
             AXs <= '0'&IR(5 downto 3);
             BXs <= '-'&IR(2 downto 0);
             MBs <= '-';
             FSs <= "0000";
             MDs <= '0';
             RWs <= '1';
             MMs <= '-';
             MWs <= '0';
             Nextstate <= INF;
           
-------------------------------------
         elsif IR(15 downto 9) = "0001110" and Z <= '0' then  
             ILs <= '0';
             PSs <= "00";
             DXs <= "1000";
             AXs <= '0'&IR(5 downto 3);
             BXs <= '-'&IR(2 downto 0);
             MBs <= '-';
             FSs <= "0000";
             MDs <= '0';
             RWs <= '1';
             MMs <= '-';
             MWs <= '0';
             Nextstate <= EX1;
            end if;
--------------------------------------------------------------------------------
                
  when EX1 =>
  
          if IR(15 downto 9) = "0010001" then  
               ILs <= '0';
               PSs <= "01";
               DXs <= '0'&IR(8 downto 6);
               AXs <= "1000";
               BXs <= '-'&IR(2 downto 0);
               MBs <= '-';
               FSs <= "0000";
               MDs <= '1';
               RWs <= '1';
               MMs <= '0';
               MWs <= '0';
               Nextstate <= INF;
             
------------------------------------
            elsif IR(15 downto 9) = "0001101" and Z <= '0' then  
               ILs <= '0';
               PSs <= "00";
               DXs <= "1001";
               AXs <= '-'&IR(5 downto 3);
               BXs <= '-'&IR(2 downto 0);
               MBs <= '1';
               FSs <= "1100";
               MDs <= '0';
               RWs <= '1';
               MMs <= '-';
               MWs <= '0';
               Nextstate <= EX2;
             
------------------------------------
          elsif IR(15 downto 9) = "0001101" and Z <= '1' then  
             ILs <= '0';
             PSs <= "01";
             DXs <= "1001";
             AXs <= '-'&IR(5 downto 3);
             BXs <= '-'&IR(2 downto 0);
             MBs <= '1';
             FSs <= "1100";
             MDs <= '0';
             RWs <= '1';
             MMs <= '-';
             MWs <= '0';
             Nextstate <= INF;

------------------------------------
            elsif IR(15 downto 9) = "0001110" and Z <= '0' then  
               ILs <= '0';
               PSs <= "00";
               DXs <= "1001";
               AXs <= '-'&IR(5 downto 3);
               BXs <= '-'&IR(2 downto 0);
               MBs <= '1';
               FSs <= "1100";
               MDs <= '0';
               RWs <= '1';
               MMs <= '-';
               MWs <= '0';
               Nextstate <= EX2;
               
------------------------------------
           elsif IR(15 downto 9) = "0001110" and Z <= '1' then  
              ILs <= '0';
              PSs <= "01";
              DXs <= "1001";
              AXs <= '-'&IR(5 downto 3);
              BXs <= '-'&IR(2 downto 0);
              MBs <= '1';
              FSs <= "1100";
              MDs <= '0';
              RWs <= '1';
              MMs <= '-';
              MWs <= '0';
              Nextstate <= INF ;
            end if; 
------------------------------------
    when EX2 =>
    
  
              if IR(15 downto 9) = "0001101" then  
                 ILs <= '0';
                 PSs <= "00";
                 DXs <= "1000";
                 AXs <= '-'&IR(5 downto 3);
                 BXs <= "1000";
                 MBs <= '0';
                 FSs <= "1101";
                 MDs <= '0';
                 RWs <= '1';
                 MMs <= '-';
                 MWs <= '0';
                 Nextstate <= EX3;
               
---------------------------------------
            elsif IR(15 downto 9) = "0001110" then  
                 ILs <= '0';
                 PSs <= "00";
                 DXs <= "1000";
                 AXs <= '-'&IR(5 downto 3);
                 BXs <= "1000";
                 MBs <= '0';
                 FSs <= "1110";
                 MDs <= '0';
                 RWs <= '1';
                 MMs <= '-';
                 MWs <= '0';
                 Nextstate <= EX3;
                end if;
--------------------------------------------------------------------------
when EX3 =>
                    
              if IR(15 downto 9) = "0001101" and Z <= '0' then  
                 ILs <= '0';
                 PSs <= "00";
                 DXs <= "1001";
                 AXs <= "1001";
                 BXs <= '-'&IR(2 downto 0);
                 MBs <= '-';
                 FSs <= "0110";
                 MDs <= '0';
                 RWs <= '1';
                 MMs <= '-';
                 MWs <= '0';
                 Nextstate <= EX2;
               
--------------------------------------- 
                elsif IR(15 downto 9) = "0001101" and Z <= '1' then  
                 ILs <= '0';
                 PSs <= "00";
                 DXs <= "1001";
                 AXs <= "1001";
                 BXs <= '-'&IR(2 downto 0);
                 MBs <= '-';
                 FSs <= "0110";
                 MDs <= '0';
                 RWs <= '1';
                 MMs <= '-';
                 MWs <= '0';
                 Nextstate <= EX4;
               
--------------------------------------- 
             elsif IR(15 downto 9) = "0001110" and Z <= '0' then  
                ILs <= '0';
                PSs <= "00";
                DXs <= "1001";
                AXs <= "1001";
                BXs <= '-'&IR(2 downto 0);
                MBs <= '-';
                FSs <= "0110";
                MDs <= '0';
                RWs <= '1';
                MMs <= '-';
                MWs <= '0';
                Nextstate <= EX2;
             
--------------------------------------- 
              elsif IR(15 downto 9) = "0001110" and Z <= '1' then  
                ILs <= '0';
                PSs <= "00";
                DXs <= "1001";
                AXs <= "1001";
                BXs <= '-'&IR(2 downto 0);
                MBs <= '-';
                FSs <= "0110";
                MDs <= '0';
                RWs <= '1';
                MMs <= '-';
                MWs <= '0';
                Nextstate <= EX4;
               end if;
---------------------------------------                      

when EX4 => 

            if IR(15 downto 9) = "0001101"  then  
                ILs <= '0';
                PSs <= "01";
                DXs <= '0'&IR(8 downto 6);
                AXs <= "1000";
                BXs <= '-'&IR(2 downto 0);
                MBs <= '-';
                FSs <= "0000";
                MDs <= '0';
                RWs <= '1';
                MMs <= '-';
                MWs <= '0';
                Nextstate <= INF;
              
--------------------------------------- 
            elsif IR(15 downto 9) = "0001110"  then  
                ILs <= '0';
                PSs <= "01";
                DXs <= '0'&IR(8 downto 6);
                AXs <= "1000";
                BXs <= '-'&IR(2 downto 0);
                MBs <= '-';
                FSs <= "0000";
                MDs <= '0';
                RWs <= '1';
                MMs <= '-';
                MWs <= '0';
                Nextstate <= INF;
               end if;
--------------------------------------- 
       end case;
       end process;   
       
 IL <= ILs;
 PS <= PSs;
 DX <= DXs;
 AX <= AXs;
 BX <= BXs;
 MB <= MBs;
 FS <= FSs;
 MD <= MDs;
 RW <= RWs;
 MM <= MMs;
 MW <= Mws;
       
end Behavioral;


