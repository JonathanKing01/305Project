-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de1core IS
	COMPONENT vga_sync
 		PORT(clock_25Mhz, red, green, blue	: IN	STD_LOGIC;
         	red_out, green_out, blue_out	: OUT 	STD_LOGIC;
			horiz_sync_out, vert_sync_out	: OUT 	STD_LOGIC;
			pixel_row, pixel_column			: OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
			outsths : OUT STD_LOGIC);
	END COMPONENT;
END de1core;

			-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de1core.all;

ENTITY mouse_ball IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL PB1, PB2, Clock 			: IN std_logic;
		  SIGNAL Ball_X_In, Ball_Y_In    : IN std_LOGIC_VECTOR(9 downto 0);
        SIGNAL Red,Green,Blue 			: OUT std_logic;
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic);		
END mouse_ball;

architecture behavior of mouse_ball is

			-- Video Display Signals   
SIGNAL Red_Data, Green_Data, Blue_Data, vert_sync_int,
		reset, Ball_on, Direction			: std_logic;
SIGNAL Size 								: std_logic_vector(9 DOWNTO 0);  
SIGNAL Ball_Y_motion 						: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos, Ball_X_pos				: std_logic_vector(9 DOWNTO 0);
SIGNAL pixel_row, pixel_column				: std_logic_vector(9 DOWNTO 0); 

BEGIN           
   SYNC: vga_sync
 		PORT MAP(clock_25Mhz => clock, 
				red => red_data, green => green_data, blue => blue_data,	
    	     	red_out => red, green_out => green, blue_out => blue,
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);

Size <= CONV_STD_LOGIC_VECTOR(8,10);
Ball_X_pos <= Ball_X_In;
Ball_Y_pos <= Ball_Y_In;

		-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;

		-- Colors for pixel data on video signal
Red_Data <=  '1';
		-- Turn off Green and Blue when displaying ball
Green_Data <= NOT Ball_on;
Blue_Data <=  NOT Ball_on;

RGB_Display: Process (Ball_X_pos, Ball_Y_pos,Ball_X_In, Ball_Y_In, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= '0' & pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= '0' & pixel_row ) THEN
 		Ball_on <= '1';
 	ELSE
 		Ball_on <= '0';
END IF;
END process RGB_Display;

END behavior;

