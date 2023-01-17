## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project


# Added to avoid warings. Found in Basys3 ralated discussion. Apparently Vivado 2016-1 related. 
# Config setup
#set_property CFGBVS VCCO [current_design]
#set_property CONFIG_VOLTAGE 3.3 [current_design] 


# Define IO-pin voltage level
set_property IOSTANDARD LVCMOS33 [get_ports *]

#set_property CLOCK_DEDICATED_ROUTE FALSE 
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {SCK_IBUF}]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {SS_IBUF}]
## Clock signal
set_property PACKAGE_PIN W5 [get_ports {ClkR}]							
#--create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

## Switches
set_property PACKAGE_PIN V17 [get_ports {SW[0]}]					
set_property PACKAGE_PIN V16 [get_ports {SW[1]}]					
set_property PACKAGE_PIN W16 [get_ports {SW[2]}]					
set_property PACKAGE_PIN W17 [get_ports {SW[3]}]					
set_property PACKAGE_PIN W15 [get_ports {SW[4]}]					
set_property PACKAGE_PIN V15 [get_ports {SW[5]}]					
set_property PACKAGE_PIN W14 [get_ports {SW[6]}]					
set_property PACKAGE_PIN W13 [get_ports {SW[7]}]					
#set_property PACKAGE_PIN V2  [get_ports {sw[8]}]					
#set_property PACKAGE_PIN T3  [get_ports {sw[9]}]					
#set_property PACKAGE_PIN T2  [get_ports {sw[10]}]					
#set_property PACKAGE_PIN R3  [get_ports {sw[11]}]					
#set_property PACKAGE_PIN W2  [get_ports {sw[12]}]					
#set_property PACKAGE_PIN U1  [get_ports {sw[13]}]					
#set_property PACKAGE_PIN T1  [get_ports {sw[14]}]					
#set_property PACKAGE_PIN R2  [get_ports {sigEn}]					


## LEDs
set_property PACKAGE_PIN U16 [get_ports {SHIFTREG_out[7]}]					
set_property PACKAGE_PIN E19 [get_ports {SHIFTREG_out[6]}]					
set_property PACKAGE_PIN U19 [get_ports {SHIFTREG_out[5]}]					
set_property PACKAGE_PIN V19 [get_ports {SHIFTREG_out[4]}]					
set_property PACKAGE_PIN W18 [get_ports {SHIFTREG_out[3]}]					
set_property PACKAGE_PIN U15 [get_ports {SHIFTREG_out[2]}]					
set_property PACKAGE_PIN U14 [get_ports {SHIFTREG_out[1]}]					
set_property PACKAGE_PIN V14 [get_ports {SHIFTREG_out[0]}]					
set_property PACKAGE_PIN V13 [get_ports {LD}]					
#set_property PACKAGE_PIN V3  [get_ports {led[9]}]					
#set_property PACKAGE_PIN W3  [get_ports {test_data}]					
set_property PACKAGE_PIN U3  [get_ports {Stat1}]					
set_property PACKAGE_PIN P3  [get_ports {Stat2}]					
set_property PACKAGE_PIN N3  [get_ports {Stat3}]					
set_property PACKAGE_PIN P1  [get_ports {Stat4}]					
set_property PACKAGE_PIN L1  [get_ports {Stat5}]					
	
	
##Buttons
#set_property PACKAGE_PIN U18 [get_ports {reset}]	#center					
#set_property PACKAGE_PIN T18 [get_ports {shape}]		#up				
#set_property PACKAGE_PIN W19 [get_ports {Ampl}]		#left				
#set_property PACKAGE_PIN T17 [get_ports {Freq}]		#rigth				
#set_property PACKAGE_PIN U17 [get_ports {Disp}]		#down				


##7 segment display
set_property PACKAGE_PIN W7 [get_ports {Cat[0]}]					
set_property PACKAGE_PIN W6 [get_ports {Cat[1]}]					
set_property PACKAGE_PIN U8 [get_ports {Cat[2]}]					
set_property PACKAGE_PIN V8 [get_ports {Cat[3]}]					
set_property PACKAGE_PIN U5 [get_ports {Cat[4]}]					
set_property PACKAGE_PIN V5 [get_ports {Cat[5]}]					
set_property PACKAGE_PIN U7 [get_ports {Cat[6]}]					
set_property PACKAGE_PIN V7 [get_ports {Cat[7]}]							
set_property PACKAGE_PIN U2 [get_ports {An[0]}]					
set_property PACKAGE_PIN U4 [get_ports {An[1]}]					
set_property PACKAGE_PIN V4 [get_ports {An[2]}]					
set_property PACKAGE_PIN W4 [get_ports {An[3]}]					


##VGA Connector
#set_property PACKAGE_PIN G19 [get_ports {vgaRed[0]}]				
#set_property PACKAGE_PIN H19 [get_ports {vgaRed[1]}]				
#set_property PACKAGE_PIN J19 [get_ports {vgaRed[2]}]				
#set_property PACKAGE_PIN N19 [get_ports {vgaRed[3]}]				
#set_property PACKAGE_PIN N18 [get_ports {vgaBlue[0]}]				
#set_property PACKAGE_PIN L18 [get_ports {vgaBlue[1]}]				
#set_property PACKAGE_PIN K18 [get_ports {vgaBlue[2]}]				
#set_property PACKAGE_PIN J18 [get_ports {vgaBlue[3]}]				
#set_property PACKAGE_PIN J17 [get_ports {vgaGreen[0]}]				
#set_property PACKAGE_PIN H17 [get_ports {vgaGreen[1]}]				
#set_property PACKAGE_PIN G17 [get_ports {vgaGreen[2]}]				
#set_property PACKAGE_PIN D17 [get_ports {vgaGreen[3]}]				
#set_property PACKAGE_PIN P19 [get_ports Hsync]						
#set_property PACKAGE_PIN R19 [get_ports Vsync]						

 
##USB-RS232 Interface
#set_property PACKAGE_PIN B18 [get_ports RsRx]						
#set_property PACKAGE_PIN A18 [get_ports RsTx]						


##USB HID (PS/2)
#set_property PACKAGE_PIN C17 [get_ports PS2Clk]						
#set_property PULLUP true [get_ports PS2Clk]
#set_property PACKAGE_PIN B17 [get_ports PS2Data]					
#set_property PULLUP true [get_ports PS2Data]


##Pmod Header JA
set_property PACKAGE_PIN J1 [get_ports {BTN0}]					
set_property PACKAGE_PIN L2 [get_ports {BTN1}]					
set_property PACKAGE_PIN J2 [get_ports {BTN2}]					
set_property PACKAGE_PIN G2 [get_ports {BTN3}]					
#set_property PACKAGE_PIN H1 [get_ports {JA[4]}]					
#set_property PACKAGE_PIN K2 [get_ports {JA[5]}]					
#set_property PACKAGE_PIN H2 [get_ports {JA[6]}]					
#set_property PACKAGE_PIN G3 [get_ports {JA[7]}]					


##Pmod Header JB
set_property PACKAGE_PIN A14 [get_ports {PWMOut}]					
#set_property PACKAGE_PIN A16 [get_ports {MISO}]					
#set_property PACKAGE_PIN B15 [get_ports {SCK}]					
#set_property PACKAGE_PIN B16 [get_ports {SS}]					
#set_property PACKAGE_PIN A15 [get_ports {JB[4]}]					
#set_property PACKAGE_PIN A17 [get_ports {SS}]					
#set_property PACKAGE_PIN C15 [get_ports {SCK}]					
#set_property PACKAGE_PIN C16 [get_ports {SS}]					
 

##Pmod Header JC
set_property PACKAGE_PIN K17 [get_ports {MOSI}]					
set_property PACKAGE_PIN M18 [get_ports {MISO}]					
set_property PACKAGE_PIN N17 [get_ports {SCK}]					
set_property PACKAGE_PIN P18 [get_ports {SS}]					
set_property PACKAGE_PIN L17 [get_ports {SCK2}]					
#set_property PACKAGE_PIN M19 [get_ports {JC[5]}]					
#set_property PACKAGE_PIN P17 [get_ports {SCK2}]					
#set_property PACKAGE_PIN R18 [get_ports {BTNout}]
