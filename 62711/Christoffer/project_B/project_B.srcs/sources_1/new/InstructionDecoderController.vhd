
-- Sæt signaler sammen med outputs

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

begin

StateReg: process(RESET, CLK)
begin
    if RESET = '1' then State <= inf;
    elsif clk'event and clk = '1' then State <= Nextstate;
    end if;
end process;

StateDec: process(State, IR(15 downto 9), V, C, N, Z)
begin
case state is
    when INF => 
        IL <= '1';
        PS <= "00";
        DX <= '-'&IR(8 downto 6);
        AX <= '-'&IR(5 downto 3);
        BX <= '-'&IR(2 downto 0);
        MB <= '-';
        FS <= "----";
        MD <= '-';
        RW <= '0';
        MM <= '1';
        MW <= '0';
        Nextstate <= EX0;
        -----------------------
    When EX0 =>
        if IR(15 downto 9) = "0000000" then  
           IL <= '0';
           PS <= "01";
           DX <= '0'&IR(8 downto 6);
           AX <= '0'&IR(5 downto 3);
           BX <= '-'&IR(2 downto 0);
           MB <= '-';
           FS <= "0000";
           MD <= '0';
           RW <= '1';
           MM <= '-';
           MW <= '0';
           Nextstate <= INF;
          end if;
      -------------------------------------     
         if IR(15 downto 9) = "0000001" then  
           IL <= '0';
           PS <= "01";
           DX <= '0'&IR(8 downto 6);
           AX <= '0'&IR(5 downto 3);
           BX <= '-'&IR(2 downto 0);
           MB <= '-';
           FS <= "0001";
           MD <= '0';
           RW <= '1';
           MM <= '-';
           MW <= '0';
           Nextstate <= INF;
          end if;
       ------------------------------------- 
          if IR(15 downto 9) = "0000010" then  
           IL <= '0';
           PS <= "01";
           DX <= '0'&IR(8 downto 6);
           AX <= '0'&IR(5 downto 3);
           BX <= '0'&IR(2 downto 0);
           MB <= '0';
           FS <= "0010";
           MD <= '0';
           RW <= '1';
           MM <= '-';
           MW <= '0';
           Nextstate <= INF;
          end if;
      -------------------------------------
         if IR(15 downto 9) = "0000101" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '0'&IR(2 downto 0);
            MB <= '0';
            FS <= "0101";
            MD <= '0';
            RW <= '1';
            MM <= '-';
            MW <= '0'; 
            Nextstate <= INF;
           end if;
-------------------------------------
         if IR(15 downto 9) = "0000110" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '-';
            FS <= "0110";
            MD <= '0';
            RW <= '1';
            MM <= '-';
            MW <= '0'; 
            Nextstate <= INF;
           end if;
-------------------------------------
         if IR(15 downto 9) = "0001000" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '0'&IR(2 downto 0);
            MB <= '0';
            FS <= "1000";
            MD <= '0';
            RW <= '1';
            MM <= '-';
            MW <= '0'; 
            Nextstate <= INF;
           end if;   
-------------------------------------
         if IR(15 downto 9) = "0001001" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '0'&IR(2 downto 0);
            MB <= '0';
            FS <= "1001";
            MD <= '0';
            RW <= '1';
            MM <= '-';
            MW <= '0';   
            Nextstate <= INF;
           end if;      
-------------------------------------
        if IR(15 downto 9) = "0001010" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '0'&IR(2 downto 0);
            MB <= '0';
            FS <= "1010";
            MD <= '0';
            RW <= '1';
            MM <= '-';
            MW <= '0';  
            Nextstate <= INF;
           end if;         
-------------------------------------
        if IR(15 downto 9) = "0001011" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '-';
            FS <= "1011";
            MD <= '0';
            RW <= '1';
            MM <= '-';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "0001100" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '-'&IR(5 downto 3);
            BX <= '0'&IR(2 downto 0);
            MB <= '0';
            FS <= "1100";
            MD <= '0';
            RW <= '1';
            MM <= '-';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "0010000" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '-';
            FS <= "----";
            MD <= '1';
            RW <= '1';
            MM <= '0';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "0100000" then  
            IL <= '0';
            PS <= "01";
            DX <= '-'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '0'&IR(2 downto 0);
            MB <= '0';
            FS <= "----";
            MD <= '-';
            RW <= '0';
            MM <= '0';
            MW <= '1';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "1001100" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '-'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '1';
            FS <= "1100";
            MD <= '0';
            RW <= '1';
            MM <= '0';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "1000010" then  
            IL <= '0';
            PS <= "01";
            DX <= '0'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '1';
            FS <= "0010";
            MD <= '0';
            RW <= '1';
            MM <= '0';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "1100000" and Z = '1' then  
            IL <= '0';
            PS <= "10";
            DX <= '-'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '-';
            FS <= "0000";
            MD <= '-';
            RW <= '0';
            MM <= '0';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "1100000" and Z = '0' then  
            IL <= '0';
            PS <= "01";
            DX <= '-'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '-';
            FS <= "0000";
            MD <= '-';
            RW <= '0';
            MM <= '0';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "1100001" and N = '1' then  
            IL <= '0';
            PS <= "10";
            DX <= '-'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '-';
            FS <= "0000";
            MD <= '-';
            RW <= '0';
            MM <= '0';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "1100001" and N = '0' then  
            IL <= '0';
            PS <= "01";
            DX <= '-'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '-';
            FS <= "0000";
            MD <= '-';
            RW <= '0';
            MM <= '0';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
        if IR(15 downto 9) = "1110000" then  
            IL <= '0';
            PS <= "11";
            DX <= '-'&IR(8 downto 6);
            AX <= '0'&IR(5 downto 3);
            BX <= '-'&IR(2 downto 0);
            MB <= '-';
            FS <= "0000";
            MD <= '-';
            RW <= '0';
            MM <= '0';
            MW <= '0';
            Nextstate <= INF;
           end if;
-------------------------------------
       if IR(15 downto 9) = "0010001" then  
           IL <= '0';
           PS <= "00";
           DX <= "1000";
           AX <= '0'&IR(5 downto 3);
           BX <= '-'&IR(2 downto 0);
           MB <= '-';
           FS <= "0000";
           MD <= '1';
           RW <= '1';
           MM <= '0';
           MW <= '0';
           Nextstate <= EX1;
          end if;
-------------------------------------
         if IR(15 downto 9) = "0001101" and Z <= '0' then  
             IL <= '0';
             PS <= "00";
             DX <= "1000";
             AX <= '0'&IR(5 downto 3);
             BX <= '-'&IR(2 downto 0);
             MB <= '-';
             FS <= "0000";
             MD <= '0';
             RW <= '1';
             MM <= '-';
             MW <= '0';
             Nextstate <= EX1;
            end if;
-------------------------------------
         if IR(15 downto 9) = "0001101" and Z <= '1' then  
             IL <= '0';
             PS <= "01";
             DX <= "1000";
             AX <= '0'&IR(5 downto 3);
             BX <= '-'&IR(2 downto 0);
             MB <= '-';
             FS <= "0000";
             MD <= '0';
             RW <= '1';
             MM <= '-';
             MW <= '0';
             Nextstate <= INF;
            end if;
-------------------------------------
         if IR(15 downto 9) = "0001110" and Z <= '0' then  
             IL <= '0';
             PS <= "00";
             DX <= "1000";
             AX <= '0'&IR(5 downto 3);
             BX <= '-'&IR(2 downto 0);
             MB <= '-';
             FS <= "0000";
             MD <= '0';
             RW <= '1';
             MM <= '-';
             MW <= '0';
             Nextstate <= EX1;
            end if;
--------------------------------------------------------------------------------
                
  when EX1 =>
  
          if IR(15 downto 9) = "0010001" then  
               IL <= '0';
               PS <= "01";
               DX <= '0'&IR(8 downto 6);
               AX <= "1000";
               BX <= '-'&IR(2 downto 0);
               MB <= '-';
               FS <= "0000";
               MD <= '1';
               RW <= '1';
               MM <= '0';
               MW <= '0';
               Nextstate <= INF;
              end if; 
------------------------------------
            if IR(15 downto 9) = "0001101" and Z <= '0' then  
               IL <= '0';
               PS <= "00";
               DX <= "1001";
               AX <= '-'&IR(5 downto 3);
               BX <= '-'&IR(2 downto 0);
               MB <= '1';
               FS <= "1100";
               MD <= '0';
               RW <= '1';
               MM <= '-';
               MW <= '0';
               Nextstate <= EX2;
              end if;
------------------------------------
          if IR(15 downto 9) = "0001101" and Z <= '1' then  
             IL <= '0';
             PS <= "01";
             DX <= "1001";
             AX <= '-'&IR(5 downto 3);
             BX <= '-'&IR(2 downto 0);
             MB <= '1';
             FS <= "1100";
             MD <= '0';
             RW <= '1';
             MM <= '-';
             MW <= '0';
             Nextstate <= INF;
            end if; 
------------------------------------
    when EX2 =>
    
  
              if IR(15 downto 9) = "0001101" then  
                 IL <= '0';
                 PS <= "00";
                 DX <= "1000";
                 AX <= '-'&IR(5 downto 3);
                 BX <= "1000";
                 MB <= '0';
                 FS <= "1101";
                 MD <= '0';
                 RW <= '1';
                 MM <= '-';
                 MW <= '0';
                 Nextstate <= EX3;
                end if;
---------------------------------------
            if IR(15 downto 9) = "0001110" then  
                 IL <= '0';
                 PS <= "00";
                 DX <= "1000";
                 AX <= '-'&IR(5 downto 3);
                 BX <= "1000";
                 MB <= '0';
                 FS <= "1110";
                 MD <= '0';
                 RW <= '1';
                 MM <= '-';
                 MW <= '0';
                 Nextstate <= EX3;
                end if;
--------------------------------------------------------------------------
when EX3 =>
                    
              if IR(15 downto 9) = "0001101" and Z <= '0' then  
                 IL <= '0';
                 PS <= "00";
                 DX <= "1001";
                 AX <= "1001";
                 BX <= '-'&IR(2 downto 0);
                 MB <= '-';
                 FS <= "0110";
                 MD <= '0';
                 RW <= '1';
                 MM <= '-';
                 MW <= '0';
                 Nextstate <= EX2;
                end if;
--------------------------------------- 
                if IR(15 downto 9) = "0001101" and Z <= '1' then  
                 IL <= '0';
                 PS <= "00";
                 DX <= "1001";
                 AX <= "1001";
                 BX <= '-'&IR(2 downto 0);
                 MB <= '-';
                 FS <= "0110";
                 MD <= '0';
                 RW <= '1';
                 MM <= '-';
                 MW <= '0';
                 Nextstate <= EX4;
                end if;
--------------------------------------- 
             if IR(15 downto 9) = "0001110" and Z <= '0' then  
                IL <= '0';
                PS <= "00";
                DX <= "1001";
                AX <= "1001";
                BX <= '-'&IR(2 downto 0);
                MB <= '-';
                FS <= "0110";
                MD <= '0';
                RW <= '1';
                MM <= '-';
                MW <= '0';
                Nextstate <= EX2;
               end if;
--------------------------------------- 
              if IR(15 downto 9) = "0001110" and Z <= '1' then  
                IL <= '0';
                PS <= "00";
                DX <= "1001";
                AX <= "1001";
                BX <= '-'&IR(2 downto 0);
                MB <= '-';
                FS <= "0110";
                MD <= '0';
                RW <= '1';
                MM <= '-';
                MW <= '0';
                Nextstate <= EX4;
               end if;
---------------------------------------                      

when EX4 => 

            if IR(15 downto 9) = "0001101"  then  
                IL <= '0';
                PS <= "01";
                DX <= '0'&IR(8 downto 6);
                AX <= "1000";
                BX <= '-'&IR(2 downto 0);
                MB <= '-';
                FS <= "0000";
                MD <= '0';
                RW <= '1';
                MM <= '-';
                MW <= '0';
                Nextstate <= INF;
               end if;
--------------------------------------- 
            if IR(15 downto 9) = "0001110"  then  
                IL <= '0';
                PS <= "01";
                DX <= '0'&IR(8 downto 6);
                AX <= "1000";
                BX <= '-'&IR(2 downto 0);
                MB <= '-';
                FS <= "0000";
                MD <= '0';
                RW <= '1';
                MM <= '-';
                MW <= '0';
                Nextstate <= INF;
               end if;
--------------------------------------- 
       end case;
       end process;         
end Behavioral;


