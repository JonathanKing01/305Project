			-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
USE IEEE.numeric_std.all;

ENTITY ball_lfsr IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL PB0, PB1, PB2, Clock 	: IN std_logic;
		  SIGNAL LFSR							: IN integer;
		  SIGNAL Switch_one					: IN std_logic;
		  SIGNAL vert_sync_int				: IN std_logic;
		  SIGNAL pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
        SIGNAL Red,Green,Blue 			: OUT std_logic;
		  SIGNAL Seg1, Seg0					: OUT std_logic_vector(6 DOWNTO 0)
	);
END ball_lfsr;

architecture behavior of ball_lfsr is

			-- Video Display Signals   
SIGNAL Red_Data, Green_Data, Blue_Data,
		reset, Ball_on, Direction					: std_logic;
SIGNAL Size 											: std_logic_vector(9 DOWNTO 0);  
SIGNAL Ball_Y_motion, Ball_X_motion 			: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos, Ball_X_pos						: std_logic_vector(9 DOWNTO 0);

BEGIN           
Size <= CONV_STD_LOGIC_VECTOR(15,10);
-- Ball_X_pos <= CONV_STD_LOGIC_VECTOR(320,10);

		-- Colors for pixel data on video signal
Red <=  Ball_on;
		-- Turn off Green and Blue when displaying ball
Green <= '0';
Blue <=  '0';


RGB_Display: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF (Ball_X_pos <= pixel_column) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= pixel_column) AND
 	(Ball_Y_pos <= pixel_row) AND
 	(Ball_Y_pos + Size >=  pixel_row ) THEN
 		Ball_on <= '1';
 	ELSE
 		Ball_on <= '0';
END IF;
END process RGB_Display;

Move_Ball: process
	VARIABLE Speed : integer;
BEGIN
	-- If Switch_one is turned on the speed of the ball is increased by 2
	IF (Switch_one = '1') THEN
		Speed := 4;
	ELSE
		Speed := 2;
	END IF;
			-- Move ball once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
			-- Bounce off top or bottom of screen
			IF (Ball_Y_pos) >= CONV_STD_LOGIC_VECTOR(480,10) - Size THEN
				Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
			ELSIF Ball_Y_pos <= Size THEN
				Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
			END IF;

			-- If PB1 or 2 is pushed, set movement vector, otherwise set to 0
			IF (PB1 = '0') THEN
				Ball_X_motion <= - CONV_STD_LOGIC_VECTOR(Speed,10);
			ELSIF (PB2 = '0') THEN
				Ball_X_motion <= CONV_STD_LOGIC_VECTOR(Speed,10);
			
			-- Logic for hitting a wall
			ELSIF (Ball_X_pos = 0) THEN
				Ball_X_motion <= CONV_STD_LOGIC_VECTOR(Speed,10);
			ELSIF (Ball_X_pos + size <= 639) THEN
				Ball_X_motion <= - CONV_STD_LOGIC_VECTOR(Speed,10);
			END IF;
			
			-- Compute next ball position depending on movement or reset
			IF (PB0 = '0') THEN
				Ball_X_pos <= std_logic_vector(to_unsigned(LFSR * 15, Ball_X_pos'length));
				Ball_Y_pos <= "0000000000";
			ELSE
				Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion;
				Ball_X_pos <= Ball_X_pos + Ball_X_motion;
			END IF;
END process Move_Ball;

-- Display's which button is pressed on the seven_seg
Seven_Seg: process(PB1, PB2)
BEGIN
	-- Display right arrow
	IF (PB2 = '0') THEN
		Seg0 <= "1110000";
	ELSE
		Seg0 <= "1111111";
	END IF;
	
	-- Display left arrow
	IF (PB1 = '0') THEN
		Seg1 <= "1000110";
	ELSE
		Seg1 <= "1111111";
	END IF;
END process;

END behavior;

