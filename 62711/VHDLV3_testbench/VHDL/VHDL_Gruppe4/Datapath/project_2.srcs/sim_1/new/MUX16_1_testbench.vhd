-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity top_module_RF_tb is
end;

architecture bench of top_module_RF_tb is

  component top_module_RF
      Port ( clk, reset : in STD_LOGIC;
             RW : in STD_LOGIC;
             DA : in STD_LOGIC_VECTOR (3 downto 0);
             AA : in STD_LOGIC_VECTOR (3 downto 0);
             BA : in STD_LOGIC_VECTOR (3 downto 0);
             D_data : in STD_LOGIC_VECTOR (7 downto 0);
             A_data : out STD_LOGIC_VECTOR (7 downto 0);
             B_data : out STD_LOGIC_VECTOR (7 downto 0));
  end component;

  signal clk, reset: STD_LOGIC;
  signal RW: STD_LOGIC;
  signal DA: STD_LOGIC_VECTOR (3 downto 0);
  signal AA: STD_LOGIC_VECTOR (3 downto 0);
  signal BA: STD_LOGIC_VECTOR (3 downto 0);
  signal D_data: STD_LOGIC_VECTOR (7 downto 0);
  signal A_data: STD_LOGIC_VECTOR (7 downto 0);
  signal B_data: STD_LOGIC_VECTOR (7 downto 0);
 constant clk_period : time:= 10 ns;
  signal endtest: std_logic:= '0';
begin

  uut: top_module_RF port map ( clk    => clk,
                                reset  => reset,
                                RW     => RW,
                                DA     => DA,
                                AA     => AA,
                                BA     => BA,
                                D_data => D_data,
                                A_data => A_data,
                                B_data => B_data );
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
  
    -- Put initialisation code here
    reset <= '1';
    wait for 2ns;
    reset <= '0';  
    wait for 10ns;
RW <= '1';
D_data <= x"B3";
AA<= x"2";
BA <= x"B";
for k in 0 to 15 loop
    
   DA <= STD_LOGIC_VECTOR(to_unsigned(k,4));
   
   wait for 10ns;
  
end loop;
    -- Put test bench stimulus code here

    wait;
  end process;


end;
  
  

 
      


