		-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;

ENTITY mouse_ball IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL PB1, PB2, Clock 			: IN std_logic;
		  SIGNAL Ball_X_In, Ball_Y_In    : IN std_LOGIC_VECTOR(9 downto 0);
		  SIGNAL pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		  SIGNAL vert_sync_int				: IN std_logic;
        SIGNAL Red,Green,Blue 			: OUT std_logic);
END mouse_ball;

architecture behavior of mouse_ball is

			-- Video Display Signals   
SIGNAL reset, Ball_on, Direction			: std_logic;
SIGNAL Size 								: std_logic_vector(9 DOWNTO 0);  
SIGNAL Ball_Y_motion 						: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos, Ball_X_pos				: std_logic_vector(9 DOWNTO 0);

BEGIN

Size <= CONV_STD_LOGIC_VECTOR(8,10);
Ball_X_pos <= Ball_X_In;
Ball_Y_pos <= Ball_Y_In;

		-- Colors for pixel data on video signal
Red <=  '0';
		-- Turn off Green and Blue when displaying ball
Green <= Ball_on;
Blue <=  '0';

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

