		-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;

ENTITY paddle2 IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL PB1, PB2, Clock 			: IN std_logic;
		  SIGNAL X_In		: IN std_LOGIC_VECTOR(9 downto 0);
		  SIGNAL Ball_X, Ball_Y    : IN std_LOGIC_VECTOR(9 downto 0);
		  SIGNAL pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		  SIGNAL vert_sync_int				: IN std_logic;
        SIGNAL Red,Green,Blue,ball_caught 			: OUT std_logic);
END paddle2;

architecture behavior of paddle2 is

			-- Video Display Signals   
SIGNAL reset, Ball_on, Direction			: std_logic;
SIGNAL Size_x,size_y 								: std_logic_vector(9 DOWNTO 0);  
SIGNAL Ball_Y_motion 						: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos, Ball_X_pos				: std_logic_vector(9 DOWNTO 0);

BEGIN

Size_x <= CONV_STD_LOGIC_VECTOR(55,10);
Size_y <= CONV_STD_LOGIC_VECTOR(16,10);
Ball_X_pos <= X_In;
Ball_Y_pos <= CONV_STD_LOGIC_VECTOR(440,10);

		-- Colors for pixel data on video signal
Red <=  '0';
		-- Turn off Green and Blue when displaying ball
Green <= Ball_on;
Blue <=  '0';

RGB_Display: Process (Ball_X_pos, Ball_Y_pos,Ball_X, Ball_Y, pixel_column, pixel_row, Size_x,size_y)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF (pixel_column >= Ball_X_pos) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size_x >= pixel_column) AND
 	(Ball_Y_pos <= pixel_row) AND
 	(Ball_Y_pos + Size_y >= pixel_row ) THEN
 		Ball_on <= '1';
 	ELSE
 		Ball_on <= '0';
END IF;
END process RGB_Display;

Catch_Ball: Process (Ball_X_pos, Ball_Y_pos,Ball_X, Ball_Y, pixel_column, pixel_row, Size_x,size_y)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF (Ball_X >= Ball_X_pos)AND
 			-- compare positive numbers only
 	(Ball_X <= Ball_X_pos + size_x) AND
 	(Ball_Y <= Ball_Y_pos) AND
 	(Ball_Y <= Ball_Y_pos + size_y ) THEN
 		Ball_caught <= '1';
 	ELSE
 		Ball_caught <= '0';
END IF;
END process Catch_Ball;

END behavior;

