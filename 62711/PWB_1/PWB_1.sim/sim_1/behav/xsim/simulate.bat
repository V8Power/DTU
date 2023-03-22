@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Thu Mar 16 11:30:59 +0100 2023
REM SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim Program_count_tb_behav -key {Behavioral:sim_1:Functional:Program_count_tb} -tclbatch Program_count_tb.tcl -view C:/Users/felix/Documents/DTU/62711_Digital_systems_design/Git/DTU/62711/PWB_1/Program_count_tb_behav.wcfg -log simulate.log"
call xsim  Program_count_tb_behav -key {Behavioral:sim_1:Functional:Program_count_tb} -tclbatch Program_count_tb.tcl -view C:/Users/felix/Documents/DTU/62711_Digital_systems_design/Git/DTU/62711/PWB_1/Program_count_tb_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
