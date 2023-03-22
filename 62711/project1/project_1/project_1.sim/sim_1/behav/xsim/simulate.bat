@echo off
REM ****************************************************************************
REM Vivado (TM) v2022.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sat Mar 04 16:49:25 +0100 2023
REM SW Build 3671981 on Fri Oct 14 05:00:03 MDT 2022
REM
REM IP Build 3669848 on Fri Oct 14 08:30:02 MDT 2022
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
REM simulate design
echo "xsim shifter_TB_behav -key {Behavioral:sim_1:Functional:shifter_TB} -tclbatch shifter_TB.tcl -view C:/Users/felix/Documents/DTU/30082_project_jan_23/Git/DTU/62711/project1/project_1/ALU_tb_behav.wcfg -log simulate.log"
call xsim  shifter_TB_behav -key {Behavioral:sim_1:Functional:shifter_TB} -tclbatch shifter_TB.tcl -view C:/Users/felix/Documents/DTU/30082_project_jan_23/Git/DTU/62711/project1/project_1/ALU_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
