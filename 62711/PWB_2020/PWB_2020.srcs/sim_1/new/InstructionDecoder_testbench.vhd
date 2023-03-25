library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity InstructionDecoderController_tb is
end;

architecture bench of InstructionDecoderController_tb is

  component InstructionDecoderController
      Port ( RESET : in STD_LOGIC;
             CLK : in STD_LOGIC;
             IR : in STD_LOGIC_VECTOR (15 downto 0);
             V, C, N, Z : in STD_LOGIC;
             PS : out STD_LOGIC_VECTOR (1 downto 0);
             IL : out STD_LOGIC;
             DX, AX, BX, FS : out STD_LOGIC_VECTOR (3 downto 0);
             MB, MD, RW, MM, MW : out STD_LOGIC);
  end component;

  signal RESET: STD_LOGIC;
  signal CLK: STD_LOGIC;
  signal IR: STD_LOGIC_VECTOR (15 downto 0);
  signal V, C, N, Z: STD_LOGIC;
  signal PS: STD_LOGIC_VECTOR (1 downto 0);
  signal IL: STD_LOGIC;
  signal DX, AX, BX, FS: STD_LOGIC_VECTOR (3 downto 0);
  signal MB, MD, RW, MM, MW: STD_LOGIC;

constant clk_period : time:= 10 ns;
signal endtest: std_logic:= '0';


begin

  uut: InstructionDecoderController port map ( RESET => RESET,
                                               CLK   => CLK,
                                               IR    => IR,
                                               V     => V,
                                               C     => C,
                                               N     => N,
                                               Z     => Z,
                                               PS    => PS,
                                               IL    => IL,
                                               DX    => DX,
                                               AX    => AX,
                                               BX    => BX,
                                               FS    => FS,
                                               MB    => MB,
                                               MD    => MD,
                                               RW    => RW,
                                               MM    => MM,
                                               MW    => MW );
                                               
  clock: process
        begin
        while endtest='0'  loop
            clk<='0';
            wait for clk_period/2;
            clk<='1';
            wait for clk_period/2;
            end loop;
            wait;
        end process;

  stimulus: process
  begin
  
  wait for clk_period;
  
  
  
  --------------------
  RESET <= '0';

  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
    IR<="0000001000000000";
  wait for clk_period;
  --------------------
  
  RESET <= '0';
  V <= '-';
  C <= '-';
  N <= '-';
  Z <= '-';
  IR<="0000001000000000";
  wait for clk_period;
 --------------------




  end process;

  end;