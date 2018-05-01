-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "05/01/2018 16:22:06"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Diagram IS
    PORT (
	red_out : OUT std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	clk : IN std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	horiz_sync_out : OUT std_logic
	);
END Diagram;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Diagram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|LessThan2~15_cout\ : std_logic;
SIGNAL \inst|LessThan2~16_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[8]~23_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~17\ : std_logic;
SIGNAL \inst|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~1_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~2_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~3_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~0_combout\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[6]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[4]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[0]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[2]~feeder_combout\ : std_logic;
SIGNAL \red_out~output_o\ : std_logic;
SIGNAL \green_out~output_o\ : std_logic;
SIGNAL \blue_out~output_o\ : std_logic;
SIGNAL \vert_sync_out~output_o\ : std_logic;
SIGNAL \horiz_sync_out~output_o\ : std_logic;
SIGNAL \inst1|count~0_combout\ : std_logic;
SIGNAL \inst1|count~q\ : std_logic;
SIGNAL \inst1|q~feeder_combout\ : std_logic;
SIGNAL \inst1|q~q\ : std_logic;
SIGNAL \inst1|q~clkctrl_outclk\ : std_logic;
SIGNAL \inst|SYNC|Add0~1\ : std_logic;
SIGNAL \inst|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~3\ : std_logic;
SIGNAL \inst|SYNC|Add0~5\ : std_logic;
SIGNAL \inst|SYNC|Add0~7\ : std_logic;
SIGNAL \inst|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~9\ : std_logic;
SIGNAL \inst|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~11\ : std_logic;
SIGNAL \inst|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~13\ : std_logic;
SIGNAL \inst|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~15\ : std_logic;
SIGNAL \inst|SYNC|Add0~17\ : std_logic;
SIGNAL \inst|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~12_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~11_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~1\ : std_logic;
SIGNAL \inst|SYNC|Add1~3\ : std_logic;
SIGNAL \inst|SYNC|Add1~5\ : std_logic;
SIGNAL \inst|SYNC|Add1~7\ : std_logic;
SIGNAL \inst|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~9\ : std_logic;
SIGNAL \inst|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~11\ : std_logic;
SIGNAL \inst|SYNC|Add1~13\ : std_logic;
SIGNAL \inst|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~15\ : std_logic;
SIGNAL \inst|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst|SYNC|video_on~0_combout\ : std_logic;
SIGNAL \inst|SYNC|red_out~q\ : std_logic;
SIGNAL \inst|Ball_Y_pos[1]~10\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~12\ : std_logic;
SIGNAL \inst|Ball_Y_pos[3]~13_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[3]~14\ : std_logic;
SIGNAL \inst|Ball_Y_pos[4]~15_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[4]~16\ : std_logic;
SIGNAL \inst|Ball_Y_pos[5]~17_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[5]~18\ : std_logic;
SIGNAL \inst|Ball_Y_pos[6]~20\ : std_logic;
SIGNAL \inst|Ball_Y_pos[7]~22\ : std_logic;
SIGNAL \inst|Ball_Y_pos[8]~24\ : std_logic;
SIGNAL \inst|Ball_Y_pos[9]~25_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[1]~9_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~11_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~1_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~2_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~3_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[7]~21_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[6]~19_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count~10_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|LessThan3~15_cout\ : std_logic;
SIGNAL \inst|LessThan3~16_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[5]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Add0~1_cout\ : std_logic;
SIGNAL \inst|Add0~3_cout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst|SYNC|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[8]~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|pixel_column[7]~feeder_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~4_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~5_combout\ : std_logic;
SIGNAL \inst|SYNC|green_out~q\ : std_logic;
SIGNAL \inst|SYNC|blue_out~q\ : std_logic;
SIGNAL \inst|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);

BEGIN

red_out <= ww_red_out;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_clk <= clk;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
vert_sync_out <= ww_vert_sync_out;
horiz_sync_out <= ww_horiz_sync_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|SYNC|vert_sync_out~q\);

\inst1|q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|q~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X30_Y22_N18
\inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|SYNC|pixel_row\(4) & (\inst|SYNC|pixel_row\(3) $ (VCC))) # (!\inst|SYNC|pixel_row\(4) & (\inst|SYNC|pixel_row\(3) & VCC))
-- \inst|Add2~1\ = CARRY((\inst|SYNC|pixel_row\(4) & \inst|SYNC|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|SYNC|pixel_row\(3),
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X30_Y22_N20
\inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|SYNC|pixel_row\(5) & (!\inst|Add2~1\)) # (!\inst|SYNC|pixel_row\(5) & ((\inst|Add2~1\) # (GND)))
-- \inst|Add2~3\ = CARRY((!\inst|Add2~1\) # (!\inst|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X30_Y22_N22
\inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = (\inst|SYNC|pixel_row\(6) & (\inst|Add2~3\ $ (GND))) # (!\inst|SYNC|pixel_row\(6) & (!\inst|Add2~3\ & VCC))
-- \inst|Add2~5\ = CARRY((\inst|SYNC|pixel_row\(6) & !\inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X30_Y22_N24
\inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|SYNC|pixel_row\(7) & (!\inst|Add2~5\)) # (!\inst|SYNC|pixel_row\(7) & ((\inst|Add2~5\) # (GND)))
-- \inst|Add2~7\ = CARRY((!\inst|Add2~5\) # (!\inst|SYNC|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X30_Y22_N26
\inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = (\inst|SYNC|pixel_row\(8) & (\inst|Add2~7\ $ (GND))) # (!\inst|SYNC|pixel_row\(8) & (!\inst|Add2~7\ & VCC))
-- \inst|Add2~9\ = CARRY((\inst|SYNC|pixel_row\(8) & !\inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: FF_X33_Y22_N27
\inst|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(8));

-- Location: LCCOMB_X30_Y22_N0
\inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_cout\ = CARRY((!\inst|SYNC|pixel_row\(1) & \inst|Ball_Y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(1),
	datab => \inst|Ball_Y_pos\(1),
	datad => VCC,
	cout => \inst|LessThan2~1_cout\);

-- Location: LCCOMB_X30_Y22_N2
\inst|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_cout\ = CARRY((\inst|Ball_Y_pos\(2) & (\inst|SYNC|pixel_row\(2) & !\inst|LessThan2~1_cout\)) # (!\inst|Ball_Y_pos\(2) & ((\inst|SYNC|pixel_row\(2)) # (!\inst|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datab => \inst|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst|LessThan2~1_cout\,
	cout => \inst|LessThan2~3_cout\);

-- Location: LCCOMB_X30_Y22_N4
\inst|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~5_cout\ = CARRY((\inst|Ball_Y_pos\(3) & ((\inst|SYNC|pixel_row\(3)) # (!\inst|LessThan2~3_cout\))) # (!\inst|Ball_Y_pos\(3) & (\inst|SYNC|pixel_row\(3) & !\inst|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(3),
	datab => \inst|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst|LessThan2~3_cout\,
	cout => \inst|LessThan2~5_cout\);

-- Location: LCCOMB_X30_Y22_N6
\inst|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~7_cout\ = CARRY((\inst|Add2~0_combout\ & ((!\inst|LessThan2~5_cout\) # (!\inst|Ball_Y_pos\(4)))) # (!\inst|Add2~0_combout\ & (!\inst|Ball_Y_pos\(4) & !\inst|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~0_combout\,
	datab => \inst|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst|LessThan2~5_cout\,
	cout => \inst|LessThan2~7_cout\);

-- Location: LCCOMB_X30_Y22_N8
\inst|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~9_cout\ = CARRY((\inst|Add2~2_combout\ & (\inst|Ball_Y_pos\(5) & !\inst|LessThan2~7_cout\)) # (!\inst|Add2~2_combout\ & ((\inst|Ball_Y_pos\(5)) # (!\inst|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~2_combout\,
	datab => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|LessThan2~7_cout\,
	cout => \inst|LessThan2~9_cout\);

-- Location: LCCOMB_X30_Y22_N10
\inst|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~11_cout\ = CARRY((\inst|Ball_Y_pos\(6) & (\inst|Add2~4_combout\ & !\inst|LessThan2~9_cout\)) # (!\inst|Ball_Y_pos\(6) & ((\inst|Add2~4_combout\) # (!\inst|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Add2~4_combout\,
	datad => VCC,
	cin => \inst|LessThan2~9_cout\,
	cout => \inst|LessThan2~11_cout\);

-- Location: LCCOMB_X30_Y22_N12
\inst|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~13_cout\ = CARRY((\inst|Ball_Y_pos\(7) & ((!\inst|LessThan2~11_cout\) # (!\inst|Add2~6_combout\))) # (!\inst|Ball_Y_pos\(7) & (!\inst|Add2~6_combout\ & !\inst|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datab => \inst|Add2~6_combout\,
	datad => VCC,
	cin => \inst|LessThan2~11_cout\,
	cout => \inst|LessThan2~13_cout\);

-- Location: LCCOMB_X30_Y22_N14
\inst|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~15_cout\ = CARRY((\inst|Add2~8_combout\ & ((!\inst|LessThan2~13_cout\) # (!\inst|Ball_Y_pos\(8)))) # (!\inst|Add2~8_combout\ & (!\inst|Ball_Y_pos\(8) & !\inst|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~8_combout\,
	datab => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|LessThan2~13_cout\,
	cout => \inst|LessThan2~15_cout\);

-- Location: LCCOMB_X30_Y22_N16
\inst|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~16_combout\ = (\inst|Ball_Y_pos\(9) & ((!\inst|Add2~10_combout\) # (!\inst|LessThan2~15_cout\))) # (!\inst|Ball_Y_pos\(9) & (!\inst|LessThan2~15_cout\ & !\inst|Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(9),
	datad => \inst|Add2~10_combout\,
	cin => \inst|LessThan2~15_cout\,
	combout => \inst|LessThan2~16_combout\);

-- Location: LCCOMB_X32_Y22_N6
\inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|Ball_Y_pos\(6) & (\inst|Add3~3\ $ (GND))) # (!\inst|Ball_Y_pos\(6) & (!\inst|Add3~3\ & VCC))
-- \inst|Add3~5\ = CARRY((\inst|Ball_Y_pos\(6) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X31_Y22_N8
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|SYNC|pixel_column\(8) & (\inst|Add0~7\ $ (GND))) # (!\inst|SYNC|pixel_column\(8) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|SYNC|pixel_column\(8) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X33_Y22_N26
\inst|Ball_Y_pos[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[8]~23_combout\ = (\inst|Ball_Y_pos\(8) & ((\inst|Ball_Y_motion\(2) & (\inst|Ball_Y_pos[7]~22\ & VCC)) # (!\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos[7]~22\)))) # (!\inst|Ball_Y_pos\(8) & ((\inst|Ball_Y_motion\(2) & 
-- (!\inst|Ball_Y_pos[7]~22\)) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos[7]~22\) # (GND)))))
-- \inst|Ball_Y_pos[8]~24\ = CARRY((\inst|Ball_Y_pos\(8) & (!\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[7]~22\)) # (!\inst|Ball_Y_pos\(8) & ((!\inst|Ball_Y_pos[7]~22\) # (!\inst|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[7]~22\,
	combout => \inst|Ball_Y_pos[8]~23_combout\,
	cout => \inst|Ball_Y_pos[8]~24\);

-- Location: LCCOMB_X31_Y21_N20
\inst|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~16_combout\ = (\inst|SYNC|v_count\(8) & (\inst|SYNC|Add1~15\ $ (GND))) # (!\inst|SYNC|v_count\(8) & (!\inst|SYNC|Add1~15\ & VCC))
-- \inst|SYNC|Add1~17\ = CARRY((\inst|SYNC|v_count\(8) & !\inst|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add1~15\,
	combout => \inst|SYNC|Add1~16_combout\,
	cout => \inst|SYNC|Add1~17\);

-- Location: LCCOMB_X31_Y21_N22
\inst|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~18_combout\ = \inst|SYNC|Add1~17\ $ (\inst|SYNC|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|v_count\(9),
	cin => \inst|SYNC|Add1~17\,
	combout => \inst|SYNC|Add1~18_combout\);

-- Location: FF_X30_Y22_N25
\inst|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(7));

-- Location: FF_X30_Y22_N13
\inst|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(4));

-- Location: FF_X31_Y22_N31
\inst|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[6]~feeder_combout\,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(6));

-- Location: FF_X31_Y22_N15
\inst|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[4]~feeder_combout\,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(4));

-- Location: FF_X29_Y22_N21
\inst|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[0]~feeder_combout\,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(0));

-- Location: FF_X29_Y22_N25
\inst|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(1),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(1));

-- Location: FF_X29_Y22_N7
\inst|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[2]~feeder_combout\,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(2));

-- Location: LCCOMB_X29_Y22_N24
\inst|SYNC|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~1_combout\ = (\inst|SYNC|pixel_column\(3) & ((\inst|SYNC|pixel_column\(2)) # ((\inst|SYNC|pixel_column\(1)) # (\inst|SYNC|pixel_column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(2),
	datab => \inst|SYNC|pixel_column\(3),
	datac => \inst|SYNC|pixel_column\(1),
	datad => \inst|SYNC|pixel_column\(0),
	combout => \inst|SYNC|green_out~1_combout\);

-- Location: LCCOMB_X31_Y22_N12
\inst|SYNC|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~2_combout\ = (\inst|SYNC|pixel_column\(6) & ((\inst|SYNC|pixel_column\(4)) # ((\inst|SYNC|pixel_column\(5)) # (\inst|SYNC|green_out~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(5),
	datac => \inst|SYNC|pixel_column\(6),
	datad => \inst|SYNC|green_out~1_combout\,
	combout => \inst|SYNC|green_out~2_combout\);

-- Location: LCCOMB_X31_Y22_N22
\inst|SYNC|green_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~3_combout\ = (\inst|SYNC|pixel_column\(9)) # ((\inst|SYNC|pixel_column\(8) & ((\inst|SYNC|pixel_column\(7)) # (\inst|SYNC|green_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(8),
	datab => \inst|SYNC|pixel_column\(7),
	datac => \inst|SYNC|pixel_column\(9),
	datad => \inst|SYNC|green_out~2_combout\,
	combout => \inst|SYNC|green_out~3_combout\);

-- Location: LCCOMB_X28_Y22_N0
\inst|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~4_combout\ = (\inst|SYNC|h_count\(2)) # ((\inst|SYNC|h_count\(0) & (\inst|SYNC|h_count\(1) & !\inst|SYNC|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(2),
	datab => \inst|SYNC|h_count\(0),
	datac => \inst|SYNC|h_count\(1),
	datad => \inst|SYNC|h_count\(5),
	combout => \inst|SYNC|process_0~4_combout\);

-- Location: LCCOMB_X28_Y22_N26
\inst|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~5_combout\ = (\inst|SYNC|h_count\(4) & ((\inst|SYNC|h_count\(3)) # (\inst|SYNC|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(3),
	datac => \inst|SYNC|h_count\(4),
	datad => \inst|SYNC|process_0~4_combout\,
	combout => \inst|SYNC|process_0~5_combout\);

-- Location: LCCOMB_X30_Y21_N4
\inst|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~7_combout\ = (!\inst|SYNC|v_count\(5) & (!\inst|SYNC|v_count\(4) & ((!\inst|SYNC|v_count\(2)) # (!\inst|SYNC|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(3),
	datab => \inst|SYNC|v_count\(2),
	datac => \inst|SYNC|v_count\(5),
	datad => \inst|SYNC|v_count\(4),
	combout => \inst|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X30_Y21_N30
\inst|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~8_combout\ = (!\inst|SYNC|v_count\(8) & (!\inst|SYNC|v_count\(7) & (\inst|SYNC|process_0~7_combout\ & !\inst|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(8),
	datab => \inst|SYNC|v_count\(7),
	datac => \inst|SYNC|process_0~7_combout\,
	datad => \inst|SYNC|v_count\(6),
	combout => \inst|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X33_Y22_N30
\inst|Ball_Y_motion[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~0_combout\ = (\inst|Ball_Y_pos\(7) & ((\inst|Ball_Y_motion\(2)) # ((\inst|Ball_Y_pos\(6) & \inst|Ball_Y_pos\(8))))) # (!\inst|Ball_Y_pos\(7) & (\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(6)) # (\inst|Ball_Y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datab => \inst|Ball_Y_motion\(2),
	datac => \inst|Ball_Y_pos\(6),
	datad => \inst|Ball_Y_pos\(8),
	combout => \inst|Ball_Y_motion[2]~0_combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\inst|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y22_N30
\inst|SYNC|pixel_column[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[6]~feeder_combout\ = \inst|SYNC|h_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|h_count\(6),
	combout => \inst|SYNC|pixel_column[6]~feeder_combout\);

-- Location: LCCOMB_X31_Y22_N14
\inst|SYNC|pixel_column[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[4]~feeder_combout\ = \inst|SYNC|h_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(4),
	combout => \inst|SYNC|pixel_column[4]~feeder_combout\);

-- Location: LCCOMB_X29_Y22_N20
\inst|SYNC|pixel_column[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[0]~feeder_combout\ = \inst|SYNC|h_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|h_count\(0),
	combout => \inst|SYNC|pixel_column[0]~feeder_combout\);

-- Location: LCCOMB_X29_Y22_N6
\inst|SYNC|pixel_column[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[2]~feeder_combout\ = \inst|SYNC|h_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(2),
	combout => \inst|SYNC|pixel_column[2]~feeder_combout\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|red_out~q\,
	devoe => ww_devoe,
	o => \red_out~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \green_out~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => \blue_out~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => \vert_sync_out~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|SYNC|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => \horiz_sync_out~output_o\);

-- Location: LCCOMB_X22_Y1_N0
\inst1|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|count~0_combout\ = !\inst1|count~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|count~q\,
	combout => \inst1|count~0_combout\);

-- Location: FF_X22_Y1_N1
\inst1|count\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count~q\);

-- Location: LCCOMB_X22_Y1_N30
\inst1|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|q~feeder_combout\ = \inst1|count~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|count~q\,
	combout => \inst1|q~feeder_combout\);

-- Location: FF_X22_Y1_N31
\inst1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|q~q\);

-- Location: CLKCTRL_G16
\inst1|q~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|q~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y22_N6
\inst|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~0_combout\ = \inst|SYNC|h_count\(0) $ (VCC)
-- \inst|SYNC|Add0~1\ = CARRY(\inst|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add0~0_combout\,
	cout => \inst|SYNC|Add0~1\);

-- Location: LCCOMB_X28_Y22_N8
\inst|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~2_combout\ = (\inst|SYNC|h_count\(1) & (!\inst|SYNC|Add0~1\)) # (!\inst|SYNC|h_count\(1) & ((\inst|SYNC|Add0~1\) # (GND)))
-- \inst|SYNC|Add0~3\ = CARRY((!\inst|SYNC|Add0~1\) # (!\inst|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add0~1\,
	combout => \inst|SYNC|Add0~2_combout\,
	cout => \inst|SYNC|Add0~3\);

-- Location: FF_X28_Y22_N9
\inst|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(1));

-- Location: LCCOMB_X28_Y22_N10
\inst|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~4_combout\ = (\inst|SYNC|h_count\(2) & (\inst|SYNC|Add0~3\ $ (GND))) # (!\inst|SYNC|h_count\(2) & (!\inst|SYNC|Add0~3\ & VCC))
-- \inst|SYNC|Add0~5\ = CARRY((\inst|SYNC|h_count\(2) & !\inst|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add0~3\,
	combout => \inst|SYNC|Add0~4_combout\,
	cout => \inst|SYNC|Add0~5\);

-- Location: LCCOMB_X28_Y22_N12
\inst|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~6_combout\ = (\inst|SYNC|h_count\(3) & (!\inst|SYNC|Add0~5\)) # (!\inst|SYNC|h_count\(3) & ((\inst|SYNC|Add0~5\) # (GND)))
-- \inst|SYNC|Add0~7\ = CARRY((!\inst|SYNC|Add0~5\) # (!\inst|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add0~5\,
	combout => \inst|SYNC|Add0~6_combout\,
	cout => \inst|SYNC|Add0~7\);

-- Location: LCCOMB_X28_Y22_N14
\inst|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~8_combout\ = (\inst|SYNC|h_count\(4) & (\inst|SYNC|Add0~7\ $ (GND))) # (!\inst|SYNC|h_count\(4) & (!\inst|SYNC|Add0~7\ & VCC))
-- \inst|SYNC|Add0~9\ = CARRY((\inst|SYNC|h_count\(4) & !\inst|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add0~7\,
	combout => \inst|SYNC|Add0~8_combout\,
	cout => \inst|SYNC|Add0~9\);

-- Location: FF_X28_Y22_N15
\inst|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(4));

-- Location: LCCOMB_X28_Y22_N16
\inst|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~10_combout\ = (\inst|SYNC|h_count\(5) & (!\inst|SYNC|Add0~9\)) # (!\inst|SYNC|h_count\(5) & ((\inst|SYNC|Add0~9\) # (GND)))
-- \inst|SYNC|Add0~11\ = CARRY((!\inst|SYNC|Add0~9\) # (!\inst|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add0~9\,
	combout => \inst|SYNC|Add0~10_combout\,
	cout => \inst|SYNC|Add0~11\);

-- Location: LCCOMB_X29_Y22_N26
\inst|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~2_combout\ = (\inst|SYNC|Add0~10_combout\ & !\inst|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|Add0~10_combout\,
	datad => \inst|SYNC|Equal0~2_combout\,
	combout => \inst|SYNC|h_count~2_combout\);

-- Location: FF_X29_Y22_N27
\inst|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(5));

-- Location: LCCOMB_X28_Y22_N18
\inst|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~12_combout\ = (\inst|SYNC|h_count\(6) & (\inst|SYNC|Add0~11\ $ (GND))) # (!\inst|SYNC|h_count\(6) & (!\inst|SYNC|Add0~11\ & VCC))
-- \inst|SYNC|Add0~13\ = CARRY((\inst|SYNC|h_count\(6) & !\inst|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add0~11\,
	combout => \inst|SYNC|Add0~12_combout\,
	cout => \inst|SYNC|Add0~13\);

-- Location: FF_X28_Y22_N19
\inst|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(6));

-- Location: LCCOMB_X28_Y22_N20
\inst|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~14_combout\ = (\inst|SYNC|h_count\(7) & (!\inst|SYNC|Add0~13\)) # (!\inst|SYNC|h_count\(7) & ((\inst|SYNC|Add0~13\) # (GND)))
-- \inst|SYNC|Add0~15\ = CARRY((!\inst|SYNC|Add0~13\) # (!\inst|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add0~13\,
	combout => \inst|SYNC|Add0~14_combout\,
	cout => \inst|SYNC|Add0~15\);

-- Location: FF_X28_Y22_N21
\inst|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(7));

-- Location: LCCOMB_X28_Y22_N22
\inst|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~16_combout\ = (\inst|SYNC|h_count\(8) & (\inst|SYNC|Add0~15\ $ (GND))) # (!\inst|SYNC|h_count\(8) & (!\inst|SYNC|Add0~15\ & VCC))
-- \inst|SYNC|Add0~17\ = CARRY((\inst|SYNC|h_count\(8) & !\inst|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst|SYNC|Add0~15\,
	combout => \inst|SYNC|Add0~16_combout\,
	cout => \inst|SYNC|Add0~17\);

-- Location: LCCOMB_X28_Y22_N24
\inst|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add0~18_combout\ = \inst|SYNC|Add0~17\ $ (\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(9),
	cin => \inst|SYNC|Add0~17\,
	combout => \inst|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X29_Y22_N30
\inst|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~0_combout\ = (!\inst|SYNC|Equal0~2_combout\ & \inst|SYNC|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|Equal0~2_combout\,
	datad => \inst|SYNC|Add0~18_combout\,
	combout => \inst|SYNC|h_count~0_combout\);

-- Location: FF_X29_Y22_N31
\inst|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(9));

-- Location: FF_X28_Y22_N11
\inst|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(2));

-- Location: LCCOMB_X29_Y22_N18
\inst|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~1_combout\ = (\inst|SYNC|h_count\(8) & (!\inst|SYNC|h_count\(7) & (!\inst|SYNC|h_count\(5) & \inst|SYNC|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(8),
	datab => \inst|SYNC|h_count\(7),
	datac => \inst|SYNC|h_count\(5),
	datad => \inst|SYNC|h_count\(2),
	combout => \inst|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y22_N28
\inst|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~2_combout\ = (\inst|SYNC|Equal0~0_combout\ & (!\inst|SYNC|h_count\(6) & (\inst|SYNC|h_count\(9) & \inst|SYNC|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Equal0~0_combout\,
	datab => \inst|SYNC|h_count\(6),
	datac => \inst|SYNC|h_count\(9),
	datad => \inst|SYNC|Equal0~1_combout\,
	combout => \inst|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X29_Y22_N22
\inst|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|h_count~1_combout\ = (!\inst|SYNC|Equal0~2_combout\ & \inst|SYNC|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|Equal0~2_combout\,
	datad => \inst|SYNC|Add0~16_combout\,
	combout => \inst|SYNC|h_count~1_combout\);

-- Location: FF_X29_Y22_N23
\inst|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(8));

-- Location: LCCOMB_X30_Y21_N24
\inst|SYNC|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~12_combout\ = (((!\inst|SYNC|h_count\(8) & !\inst|SYNC|h_count\(7))) # (!\inst|SYNC|v_count\(9))) # (!\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(9),
	datab => \inst|SYNC|h_count\(8),
	datac => \inst|SYNC|h_count\(7),
	datad => \inst|SYNC|v_count\(9),
	combout => \inst|SYNC|process_0~12_combout\);

-- Location: FF_X28_Y22_N13
\inst|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(3));

-- Location: LCCOMB_X28_Y22_N4
\inst|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~9_combout\ = ((!\inst|SYNC|h_count\(2) & ((!\inst|SYNC|h_count\(1)) # (!\inst|SYNC|h_count\(0))))) # (!\inst|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(0),
	datab => \inst|SYNC|h_count\(1),
	datac => \inst|SYNC|h_count\(3),
	datad => \inst|SYNC|h_count\(2),
	combout => \inst|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X29_Y22_N12
\inst|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~10_combout\ = (\inst|SYNC|h_count\(5) & \inst|SYNC|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|h_count\(5),
	datad => \inst|SYNC|h_count\(4),
	combout => \inst|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X29_Y22_N16
\inst|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~11_combout\ = (!\inst|SYNC|h_count\(8) & (!\inst|SYNC|h_count\(6) & ((\inst|SYNC|process_0~9_combout\) # (!\inst|SYNC|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(8),
	datab => \inst|SYNC|h_count\(6),
	datac => \inst|SYNC|process_0~9_combout\,
	datad => \inst|SYNC|process_0~10_combout\,
	combout => \inst|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X29_Y22_N14
\inst|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal1~0_combout\ = (\inst|SYNC|h_count\(8)) # (((\inst|SYNC|h_count\(2)) # (!\inst|SYNC|h_count\(5))) # (!\inst|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(8),
	datab => \inst|SYNC|h_count\(7),
	datac => \inst|SYNC|h_count\(5),
	datad => \inst|SYNC|h_count\(2),
	combout => \inst|SYNC|Equal1~0_combout\);

-- Location: FF_X28_Y22_N7
\inst|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|h_count\(0));

-- Location: LCCOMB_X28_Y22_N2
\inst|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal0~0_combout\ = (\inst|SYNC|h_count\(3) & (\inst|SYNC|h_count\(1) & (\inst|SYNC|h_count\(4) & \inst|SYNC|h_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(3),
	datab => \inst|SYNC|h_count\(1),
	datac => \inst|SYNC|h_count\(4),
	datad => \inst|SYNC|h_count\(0),
	combout => \inst|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y22_N8
\inst|SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Equal1~1_combout\ = ((\inst|SYNC|h_count\(6)) # ((\inst|SYNC|Equal1~0_combout\) # (!\inst|SYNC|Equal0~0_combout\))) # (!\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(9),
	datab => \inst|SYNC|h_count\(6),
	datac => \inst|SYNC|Equal1~0_combout\,
	datad => \inst|SYNC|Equal0~0_combout\,
	combout => \inst|SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y21_N18
\inst|SYNC|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[2]~0_combout\ = (!\inst|SYNC|Equal1~1_combout\ & ((\inst|SYNC|process_0~8_combout\) # ((\inst|SYNC|process_0~12_combout\) # (\inst|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~8_combout\,
	datab => \inst|SYNC|process_0~12_combout\,
	datac => \inst|SYNC|process_0~11_combout\,
	datad => \inst|SYNC|Equal1~1_combout\,
	combout => \inst|SYNC|v_count[2]~0_combout\);

-- Location: LCCOMB_X30_Y21_N12
\inst|SYNC|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[9]~1_combout\ = ((!\inst|SYNC|process_0~8_combout\ & (!\inst|SYNC|process_0~12_combout\ & !\inst|SYNC|process_0~11_combout\))) # (!\inst|SYNC|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~8_combout\,
	datab => \inst|SYNC|process_0~12_combout\,
	datac => \inst|SYNC|process_0~11_combout\,
	datad => \inst|SYNC|Equal1~1_combout\,
	combout => \inst|SYNC|v_count[9]~1_combout\);

-- Location: LCCOMB_X31_Y21_N28
\inst|SYNC|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[9]~2_combout\ = (\inst|SYNC|Add1~18_combout\ & ((\inst|SYNC|v_count[2]~0_combout\) # ((\inst|SYNC|v_count\(9) & !\inst|SYNC|v_count[9]~1_combout\)))) # (!\inst|SYNC|Add1~18_combout\ & (((\inst|SYNC|v_count\(9) & 
-- !\inst|SYNC|v_count[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|Add1~18_combout\,
	datab => \inst|SYNC|v_count[2]~0_combout\,
	datac => \inst|SYNC|v_count\(9),
	datad => \inst|SYNC|v_count[9]~1_combout\,
	combout => \inst|SYNC|v_count[9]~2_combout\);

-- Location: FF_X31_Y21_N29
\inst|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(9));

-- Location: LCCOMB_X31_Y21_N4
\inst|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~0_combout\ = \inst|SYNC|v_count\(0) $ (VCC)
-- \inst|SYNC|Add1~1\ = CARRY(\inst|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst|SYNC|Add1~0_combout\,
	cout => \inst|SYNC|Add1~1\);

-- Location: LCCOMB_X30_Y21_N20
\inst|SYNC|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~11_combout\ = (\inst|SYNC|Add1~0_combout\ & ((\inst|SYNC|process_0~8_combout\) # ((\inst|SYNC|process_0~12_combout\) # (\inst|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~8_combout\,
	datab => \inst|SYNC|process_0~12_combout\,
	datac => \inst|SYNC|process_0~11_combout\,
	datad => \inst|SYNC|Add1~0_combout\,
	combout => \inst|SYNC|v_count~11_combout\);

-- Location: FF_X30_Y21_N21
\inst|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count~11_combout\,
	ena => \inst|SYNC|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(0));

-- Location: LCCOMB_X31_Y21_N6
\inst|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~2_combout\ = (\inst|SYNC|v_count\(1) & (!\inst|SYNC|Add1~1\)) # (!\inst|SYNC|v_count\(1) & ((\inst|SYNC|Add1~1\) # (GND)))
-- \inst|SYNC|Add1~3\ = CARRY((!\inst|SYNC|Add1~1\) # (!\inst|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst|SYNC|Add1~1\,
	combout => \inst|SYNC|Add1~2_combout\,
	cout => \inst|SYNC|Add1~3\);

-- Location: LCCOMB_X31_Y21_N8
\inst|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~4_combout\ = (\inst|SYNC|v_count\(2) & (\inst|SYNC|Add1~3\ $ (GND))) # (!\inst|SYNC|v_count\(2) & (!\inst|SYNC|Add1~3\ & VCC))
-- \inst|SYNC|Add1~5\ = CARRY((\inst|SYNC|v_count\(2) & !\inst|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst|SYNC|Add1~3\,
	combout => \inst|SYNC|Add1~4_combout\,
	cout => \inst|SYNC|Add1~5\);

-- Location: LCCOMB_X31_Y21_N10
\inst|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~6_combout\ = (\inst|SYNC|v_count\(3) & (!\inst|SYNC|Add1~5\)) # (!\inst|SYNC|v_count\(3) & ((\inst|SYNC|Add1~5\) # (GND)))
-- \inst|SYNC|Add1~7\ = CARRY((!\inst|SYNC|Add1~5\) # (!\inst|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst|SYNC|Add1~5\,
	combout => \inst|SYNC|Add1~6_combout\,
	cout => \inst|SYNC|Add1~7\);

-- Location: LCCOMB_X31_Y21_N12
\inst|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~8_combout\ = (\inst|SYNC|v_count\(4) & (\inst|SYNC|Add1~7\ $ (GND))) # (!\inst|SYNC|v_count\(4) & (!\inst|SYNC|Add1~7\ & VCC))
-- \inst|SYNC|Add1~9\ = CARRY((\inst|SYNC|v_count\(4) & !\inst|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst|SYNC|Add1~7\,
	combout => \inst|SYNC|Add1~8_combout\,
	cout => \inst|SYNC|Add1~9\);

-- Location: LCCOMB_X31_Y21_N2
\inst|SYNC|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[4]~7_combout\ = (\inst|SYNC|v_count[9]~1_combout\ & (\inst|SYNC|Add1~8_combout\ & ((\inst|SYNC|v_count[2]~0_combout\)))) # (!\inst|SYNC|v_count[9]~1_combout\ & ((\inst|SYNC|v_count\(4)) # ((\inst|SYNC|Add1~8_combout\ & 
-- \inst|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[9]~1_combout\,
	datab => \inst|SYNC|Add1~8_combout\,
	datac => \inst|SYNC|v_count\(4),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[4]~7_combout\);

-- Location: FF_X31_Y21_N3
\inst|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(4));

-- Location: LCCOMB_X31_Y21_N14
\inst|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~10_combout\ = (\inst|SYNC|v_count\(5) & (!\inst|SYNC|Add1~9\)) # (!\inst|SYNC|v_count\(5) & ((\inst|SYNC|Add1~9\) # (GND)))
-- \inst|SYNC|Add1~11\ = CARRY((!\inst|SYNC|Add1~9\) # (!\inst|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst|SYNC|Add1~9\,
	combout => \inst|SYNC|Add1~10_combout\,
	cout => \inst|SYNC|Add1~11\);

-- Location: LCCOMB_X30_Y21_N22
\inst|SYNC|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[5]~3_combout\ = (\inst|SYNC|v_count[9]~1_combout\ & (\inst|SYNC|Add1~10_combout\ & ((\inst|SYNC|v_count[2]~0_combout\)))) # (!\inst|SYNC|v_count[9]~1_combout\ & ((\inst|SYNC|v_count\(5)) # ((\inst|SYNC|Add1~10_combout\ & 
-- \inst|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[9]~1_combout\,
	datab => \inst|SYNC|Add1~10_combout\,
	datac => \inst|SYNC|v_count\(5),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[5]~3_combout\);

-- Location: FF_X30_Y21_N23
\inst|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(5));

-- Location: LCCOMB_X31_Y21_N16
\inst|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~12_combout\ = (\inst|SYNC|v_count\(6) & (\inst|SYNC|Add1~11\ $ (GND))) # (!\inst|SYNC|v_count\(6) & (!\inst|SYNC|Add1~11\ & VCC))
-- \inst|SYNC|Add1~13\ = CARRY((\inst|SYNC|v_count\(6) & !\inst|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst|SYNC|Add1~11\,
	combout => \inst|SYNC|Add1~12_combout\,
	cout => \inst|SYNC|Add1~13\);

-- Location: LCCOMB_X31_Y21_N18
\inst|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|Add1~14_combout\ = (\inst|SYNC|v_count\(7) & (!\inst|SYNC|Add1~13\)) # (!\inst|SYNC|v_count\(7) & ((\inst|SYNC|Add1~13\) # (GND)))
-- \inst|SYNC|Add1~15\ = CARRY((!\inst|SYNC|Add1~13\) # (!\inst|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst|SYNC|Add1~13\,
	combout => \inst|SYNC|Add1~14_combout\,
	cout => \inst|SYNC|Add1~15\);

-- Location: LCCOMB_X31_Y21_N0
\inst|SYNC|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[7]~5_combout\ = (\inst|SYNC|v_count[9]~1_combout\ & (\inst|SYNC|Add1~14_combout\ & ((\inst|SYNC|v_count[2]~0_combout\)))) # (!\inst|SYNC|v_count[9]~1_combout\ & ((\inst|SYNC|v_count\(7)) # ((\inst|SYNC|Add1~14_combout\ & 
-- \inst|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[9]~1_combout\,
	datab => \inst|SYNC|Add1~14_combout\,
	datac => \inst|SYNC|v_count\(7),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[7]~5_combout\);

-- Location: FF_X31_Y21_N1
\inst|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(7));

-- Location: LCCOMB_X31_Y21_N30
\inst|SYNC|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[8]~6_combout\ = (\inst|SYNC|v_count[9]~1_combout\ & (\inst|SYNC|Add1~16_combout\ & ((\inst|SYNC|v_count[2]~0_combout\)))) # (!\inst|SYNC|v_count[9]~1_combout\ & ((\inst|SYNC|v_count\(8)) # ((\inst|SYNC|Add1~16_combout\ & 
-- \inst|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[9]~1_combout\,
	datab => \inst|SYNC|Add1~16_combout\,
	datac => \inst|SYNC|v_count\(8),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[8]~6_combout\);

-- Location: FF_X31_Y21_N31
\inst|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(8));

-- Location: LCCOMB_X31_Y21_N26
\inst|SYNC|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[6]~4_combout\ = (\inst|SYNC|v_count[9]~1_combout\ & (\inst|SYNC|Add1~12_combout\ & ((\inst|SYNC|v_count[2]~0_combout\)))) # (!\inst|SYNC|v_count[9]~1_combout\ & ((\inst|SYNC|v_count\(6)) # ((\inst|SYNC|Add1~12_combout\ & 
-- \inst|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[9]~1_combout\,
	datab => \inst|SYNC|Add1~12_combout\,
	datac => \inst|SYNC|v_count\(6),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[6]~4_combout\);

-- Location: FF_X31_Y21_N27
\inst|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(6));

-- Location: LCCOMB_X30_Y21_N8
\inst|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~0_combout\ = (\inst|SYNC|v_count\(5) & (\inst|SYNC|v_count\(7) & (\inst|SYNC|v_count\(8) & \inst|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(5),
	datab => \inst|SYNC|v_count\(7),
	datac => \inst|SYNC|v_count\(8),
	datad => \inst|SYNC|v_count\(6),
	combout => \inst|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X31_Y21_N24
\inst|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|LessThan7~1_combout\ = (!\inst|SYNC|v_count\(9) & !\inst|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|v_count\(9),
	datad => \inst|SYNC|LessThan7~0_combout\,
	combout => \inst|SYNC|LessThan7~1_combout\);

-- Location: FF_X30_Y22_N31
\inst|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_v~q\);

-- Location: LCCOMB_X29_Y22_N0
\inst|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~0_combout\ = ((!\inst|SYNC|h_count\(7) & !\inst|SYNC|h_count\(8))) # (!\inst|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(9),
	datab => \inst|SYNC|h_count\(7),
	datac => \inst|SYNC|h_count\(8),
	combout => \inst|SYNC|process_0~0_combout\);

-- Location: FF_X30_Y22_N29
\inst|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|video_on_h~q\);

-- Location: LCCOMB_X30_Y22_N30
\inst|SYNC|video_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|video_on~0_combout\ = (\inst|SYNC|video_on_v~q\ & \inst|SYNC|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|SYNC|video_on_v~q\,
	datad => \inst|SYNC|video_on_h~q\,
	combout => \inst|SYNC|video_on~0_combout\);

-- Location: FF_X31_Y22_N5
\inst|SYNC|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|video_on~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|red_out~q\);

-- Location: LCCOMB_X33_Y22_N12
\inst|Ball_Y_pos[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[1]~9_combout\ = \inst|Ball_Y_pos\(1) $ (VCC)
-- \inst|Ball_Y_pos[1]~10\ = CARRY(\inst|Ball_Y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(1),
	datad => VCC,
	combout => \inst|Ball_Y_pos[1]~9_combout\,
	cout => \inst|Ball_Y_pos[1]~10\);

-- Location: LCCOMB_X33_Y22_N14
\inst|Ball_Y_pos[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[2]~11_combout\ = (\inst|Ball_Y_pos\(2) & ((\inst|Ball_Y_motion\(2) & (\inst|Ball_Y_pos[1]~10\ & VCC)) # (!\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos[1]~10\)))) # (!\inst|Ball_Y_pos\(2) & ((\inst|Ball_Y_motion\(2) & 
-- (!\inst|Ball_Y_pos[1]~10\)) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos[1]~10\) # (GND)))))
-- \inst|Ball_Y_pos[2]~12\ = CARRY((\inst|Ball_Y_pos\(2) & (!\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[1]~10\)) # (!\inst|Ball_Y_pos\(2) & ((!\inst|Ball_Y_pos[1]~10\) # (!\inst|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[1]~10\,
	combout => \inst|Ball_Y_pos[2]~11_combout\,
	cout => \inst|Ball_Y_pos[2]~12\);

-- Location: LCCOMB_X33_Y22_N16
\inst|Ball_Y_pos[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[3]~13_combout\ = ((\inst|Ball_Y_motion\(2) $ (\inst|Ball_Y_pos\(3) $ (!\inst|Ball_Y_pos[2]~12\)))) # (GND)
-- \inst|Ball_Y_pos[3]~14\ = CARRY((\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(3)) # (!\inst|Ball_Y_pos[2]~12\))) # (!\inst|Ball_Y_motion\(2) & (\inst|Ball_Y_pos\(3) & !\inst|Ball_Y_pos[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|Ball_Y_pos[2]~12\,
	combout => \inst|Ball_Y_pos[3]~13_combout\,
	cout => \inst|Ball_Y_pos[3]~14\);

-- Location: FF_X33_Y22_N17
\inst|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(3));

-- Location: LCCOMB_X33_Y22_N18
\inst|Ball_Y_pos[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[4]~15_combout\ = (\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_pos[3]~14\ & VCC)) # (!\inst|Ball_Y_pos\(4) & (!\inst|Ball_Y_pos[3]~14\)))) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(4) & 
-- (!\inst|Ball_Y_pos[3]~14\)) # (!\inst|Ball_Y_pos\(4) & ((\inst|Ball_Y_pos[3]~14\) # (GND)))))
-- \inst|Ball_Y_pos[4]~16\ = CARRY((\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos\(4) & !\inst|Ball_Y_pos[3]~14\)) # (!\inst|Ball_Y_motion\(2) & ((!\inst|Ball_Y_pos[3]~14\) # (!\inst|Ball_Y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datab => \inst|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst|Ball_Y_pos[3]~14\,
	combout => \inst|Ball_Y_pos[4]~15_combout\,
	cout => \inst|Ball_Y_pos[4]~16\);

-- Location: FF_X33_Y22_N19
\inst|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(4));

-- Location: LCCOMB_X33_Y22_N20
\inst|Ball_Y_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[5]~17_combout\ = ((\inst|Ball_Y_motion\(2) $ (\inst|Ball_Y_pos\(5) $ (!\inst|Ball_Y_pos[4]~16\)))) # (GND)
-- \inst|Ball_Y_pos[5]~18\ = CARRY((\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(5)) # (!\inst|Ball_Y_pos[4]~16\))) # (!\inst|Ball_Y_motion\(2) & (\inst|Ball_Y_pos\(5) & !\inst|Ball_Y_pos[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datab => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|Ball_Y_pos[4]~16\,
	combout => \inst|Ball_Y_pos[5]~17_combout\,
	cout => \inst|Ball_Y_pos[5]~18\);

-- Location: FF_X33_Y22_N21
\inst|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(5));

-- Location: LCCOMB_X33_Y22_N22
\inst|Ball_Y_pos[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[6]~19_combout\ = (\inst|Ball_Y_pos\(6) & ((\inst|Ball_Y_motion\(2) & (\inst|Ball_Y_pos[5]~18\ & VCC)) # (!\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos[5]~18\)))) # (!\inst|Ball_Y_pos\(6) & ((\inst|Ball_Y_motion\(2) & 
-- (!\inst|Ball_Y_pos[5]~18\)) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos[5]~18\) # (GND)))))
-- \inst|Ball_Y_pos[6]~20\ = CARRY((\inst|Ball_Y_pos\(6) & (!\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[5]~18\)) # (!\inst|Ball_Y_pos\(6) & ((!\inst|Ball_Y_pos[5]~18\) # (!\inst|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[5]~18\,
	combout => \inst|Ball_Y_pos[6]~19_combout\,
	cout => \inst|Ball_Y_pos[6]~20\);

-- Location: LCCOMB_X33_Y22_N24
\inst|Ball_Y_pos[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[7]~21_combout\ = ((\inst|Ball_Y_pos\(7) $ (\inst|Ball_Y_motion\(2) $ (!\inst|Ball_Y_pos[6]~20\)))) # (GND)
-- \inst|Ball_Y_pos[7]~22\ = CARRY((\inst|Ball_Y_pos\(7) & ((\inst|Ball_Y_motion\(2)) # (!\inst|Ball_Y_pos[6]~20\))) # (!\inst|Ball_Y_pos\(7) & (\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[6]~20\,
	combout => \inst|Ball_Y_pos[7]~21_combout\,
	cout => \inst|Ball_Y_pos[7]~22\);

-- Location: LCCOMB_X33_Y22_N28
\inst|Ball_Y_pos[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[9]~25_combout\ = \inst|Ball_Y_motion\(2) $ (\inst|Ball_Y_pos[8]~24\ $ (!\inst|Ball_Y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|Ball_Y_pos[8]~24\,
	combout => \inst|Ball_Y_pos[9]~25_combout\);

-- Location: FF_X33_Y22_N29
\inst|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(9));

-- Location: FF_X33_Y22_N13
\inst|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(1));

-- Location: FF_X33_Y22_N15
\inst|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(2));

-- Location: LCCOMB_X33_Y22_N0
\inst|Ball_Y_motion[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~1_combout\ = (\inst|Ball_Y_pos\(3) & ((\inst|Ball_Y_pos\(8)) # ((\inst|Ball_Y_pos\(1)) # (\inst|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datab => \inst|Ball_Y_pos\(3),
	datac => \inst|Ball_Y_pos\(1),
	datad => \inst|Ball_Y_pos\(2),
	combout => \inst|Ball_Y_motion[2]~1_combout\);

-- Location: LCCOMB_X33_Y22_N10
\inst|Ball_Y_motion[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~2_combout\ = (\inst|Ball_Y_pos\(5)) # ((\inst|Ball_Y_pos\(4) & ((\inst|Ball_Y_motion\(2)) # (\inst|Ball_Y_motion[2]~1_combout\))) # (!\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_motion\(2) & \inst|Ball_Y_motion[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Ball_Y_pos\(5),
	datac => \inst|Ball_Y_motion\(2),
	datad => \inst|Ball_Y_motion[2]~1_combout\,
	combout => \inst|Ball_Y_motion[2]~2_combout\);

-- Location: LCCOMB_X33_Y22_N4
\inst|Ball_Y_motion[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~3_combout\ = (\inst|Ball_Y_pos\(9)) # ((\inst|Ball_Y_motion[2]~0_combout\ & ((\inst|Ball_Y_motion\(2)) # (\inst|Ball_Y_motion[2]~2_combout\))) # (!\inst|Ball_Y_motion[2]~0_combout\ & (\inst|Ball_Y_motion\(2) & 
-- \inst|Ball_Y_motion[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion[2]~0_combout\,
	datab => \inst|Ball_Y_pos\(9),
	datac => \inst|Ball_Y_motion\(2),
	datad => \inst|Ball_Y_motion[2]~2_combout\,
	combout => \inst|Ball_Y_motion[2]~3_combout\);

-- Location: FF_X33_Y22_N5
\inst|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(2));

-- Location: FF_X33_Y22_N25
\inst|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(7));

-- Location: FF_X33_Y22_N23
\inst|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(6));

-- Location: LCCOMB_X32_Y22_N2
\inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|Ball_Y_pos\(3) & (\inst|Ball_Y_pos\(4) $ (VCC))) # (!\inst|Ball_Y_pos\(3) & (\inst|Ball_Y_pos\(4) & VCC))
-- \inst|Add3~1\ = CARRY((\inst|Ball_Y_pos\(3) & \inst|Ball_Y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(3),
	datab => \inst|Ball_Y_pos\(4),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X32_Y22_N4
\inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|Ball_Y_pos\(5) & (!\inst|Add3~1\)) # (!\inst|Ball_Y_pos\(5) & ((\inst|Add3~1\) # (GND)))
-- \inst|Add3~3\ = CARRY((!\inst|Add3~1\) # (!\inst|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X32_Y22_N8
\inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|Ball_Y_pos\(7) & (!\inst|Add3~5\)) # (!\inst|Ball_Y_pos\(7) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X32_Y22_N10
\inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|Ball_Y_pos\(8) & (\inst|Add3~7\ $ (GND))) # (!\inst|Ball_Y_pos\(8) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|Ball_Y_pos\(8) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: FF_X30_Y22_N23
\inst|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(6),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(6));

-- Location: LCCOMB_X30_Y21_N16
\inst|SYNC|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[2]~9_combout\ = (\inst|SYNC|v_count[9]~1_combout\ & (\inst|SYNC|Add1~4_combout\ & ((\inst|SYNC|v_count[2]~0_combout\)))) # (!\inst|SYNC|v_count[9]~1_combout\ & ((\inst|SYNC|v_count\(2)) # ((\inst|SYNC|Add1~4_combout\ & 
-- \inst|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[9]~1_combout\,
	datab => \inst|SYNC|Add1~4_combout\,
	datac => \inst|SYNC|v_count\(2),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[2]~9_combout\);

-- Location: FF_X30_Y21_N17
\inst|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(2));

-- Location: LCCOMB_X32_Y22_N0
\inst|SYNC|pixel_row[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_row[2]~feeder_combout\ = \inst|SYNC|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|v_count\(2),
	combout => \inst|SYNC|pixel_row[2]~feeder_combout\);

-- Location: FF_X32_Y22_N1
\inst|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|pixel_row[2]~feeder_combout\,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(2));

-- Location: LCCOMB_X30_Y21_N10
\inst|SYNC|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count~10_combout\ = (\inst|SYNC|Add1~2_combout\ & ((\inst|SYNC|process_0~8_combout\) # ((\inst|SYNC|process_0~12_combout\) # (\inst|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~8_combout\,
	datab => \inst|SYNC|process_0~12_combout\,
	datac => \inst|SYNC|process_0~11_combout\,
	datad => \inst|SYNC|Add1~2_combout\,
	combout => \inst|SYNC|v_count~10_combout\);

-- Location: FF_X30_Y21_N11
\inst|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count~10_combout\,
	ena => \inst|SYNC|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(1));

-- Location: FF_X32_Y22_N17
\inst|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(1),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(1));

-- Location: FF_X32_Y22_N15
\inst|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(0));

-- Location: LCCOMB_X32_Y22_N14
\inst|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_cout\ = CARRY(\inst|SYNC|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst|LessThan3~1_cout\);

-- Location: LCCOMB_X32_Y22_N16
\inst|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_cout\ = CARRY((\inst|Ball_Y_pos\(1) & ((!\inst|LessThan3~1_cout\) # (!\inst|SYNC|pixel_row\(1)))) # (!\inst|Ball_Y_pos\(1) & (!\inst|SYNC|pixel_row\(1) & !\inst|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(1),
	datab => \inst|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst|LessThan3~1_cout\,
	cout => \inst|LessThan3~3_cout\);

-- Location: LCCOMB_X32_Y22_N18
\inst|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_cout\ = CARRY((\inst|Ball_Y_pos\(2) & (\inst|SYNC|pixel_row\(2) & !\inst|LessThan3~3_cout\)) # (!\inst|Ball_Y_pos\(2) & ((\inst|SYNC|pixel_row\(2)) # (!\inst|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datab => \inst|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst|LessThan3~3_cout\,
	cout => \inst|LessThan3~5_cout\);

-- Location: LCCOMB_X32_Y22_N20
\inst|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_cout\ = CARRY((\inst|SYNC|pixel_row\(3) & (!\inst|Ball_Y_pos\(3) & !\inst|LessThan3~5_cout\)) # (!\inst|SYNC|pixel_row\(3) & ((!\inst|LessThan3~5_cout\) # (!\inst|Ball_Y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(3),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|LessThan3~5_cout\,
	cout => \inst|LessThan3~7_cout\);

-- Location: LCCOMB_X32_Y22_N22
\inst|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_cout\ = CARRY((\inst|SYNC|pixel_row\(4) & ((!\inst|LessThan3~7_cout\) # (!\inst|Add3~0_combout\))) # (!\inst|SYNC|pixel_row\(4) & (!\inst|Add3~0_combout\ & !\inst|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(4),
	datab => \inst|Add3~0_combout\,
	datad => VCC,
	cin => \inst|LessThan3~7_cout\,
	cout => \inst|LessThan3~9_cout\);

-- Location: LCCOMB_X32_Y22_N24
\inst|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~11_cout\ = CARRY((\inst|SYNC|pixel_row\(5) & (\inst|Add3~2_combout\ & !\inst|LessThan3~9_cout\)) # (!\inst|SYNC|pixel_row\(5) & ((\inst|Add3~2_combout\) # (!\inst|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(5),
	datab => \inst|Add3~2_combout\,
	datad => VCC,
	cin => \inst|LessThan3~9_cout\,
	cout => \inst|LessThan3~11_cout\);

-- Location: LCCOMB_X32_Y22_N26
\inst|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~13_cout\ = CARRY((\inst|Add3~4_combout\ & (\inst|SYNC|pixel_row\(6) & !\inst|LessThan3~11_cout\)) # (!\inst|Add3~4_combout\ & ((\inst|SYNC|pixel_row\(6)) # (!\inst|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~4_combout\,
	datab => \inst|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst|LessThan3~11_cout\,
	cout => \inst|LessThan3~13_cout\);

-- Location: LCCOMB_X32_Y22_N28
\inst|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~15_cout\ = CARRY((\inst|SYNC|pixel_row\(7) & (\inst|Add3~6_combout\ & !\inst|LessThan3~13_cout\)) # (!\inst|SYNC|pixel_row\(7) & ((\inst|Add3~6_combout\) # (!\inst|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(7),
	datab => \inst|Add3~6_combout\,
	datad => VCC,
	cin => \inst|LessThan3~13_cout\,
	cout => \inst|LessThan3~15_cout\);

-- Location: LCCOMB_X32_Y22_N30
\inst|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~16_combout\ = (\inst|SYNC|pixel_row\(8) & ((!\inst|Add3~8_combout\) # (!\inst|LessThan3~15_cout\))) # (!\inst|SYNC|pixel_row\(8) & (!\inst|LessThan3~15_cout\ & !\inst|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_row\(8),
	datad => \inst|Add3~8_combout\,
	cin => \inst|LessThan3~15_cout\,
	combout => \inst|LessThan3~16_combout\);

-- Location: LCCOMB_X31_Y22_N20
\inst|SYNC|pixel_column[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[5]~feeder_combout\ = \inst|SYNC|h_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(5),
	combout => \inst|SYNC|pixel_column[5]~feeder_combout\);

-- Location: FF_X31_Y22_N21
\inst|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[5]~feeder_combout\,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(5));

-- Location: LCCOMB_X29_Y22_N2
\inst|SYNC|pixel_column[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[3]~feeder_combout\ = \inst|SYNC|h_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(3),
	combout => \inst|SYNC|pixel_column[3]~feeder_combout\);

-- Location: FF_X29_Y22_N3
\inst|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[3]~feeder_combout\,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(3));

-- Location: LCCOMB_X31_Y22_N0
\inst|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~1_cout\ = CARRY((\inst|SYNC|pixel_column\(4) & \inst|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(4),
	datab => \inst|SYNC|pixel_column\(3),
	datad => VCC,
	cout => \inst|Add0~1_cout\);

-- Location: LCCOMB_X31_Y22_N2
\inst|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~3_cout\ = CARRY((!\inst|Add0~1_cout\) # (!\inst|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst|Add0~1_cout\,
	cout => \inst|Add0~3_cout\);

-- Location: LCCOMB_X31_Y22_N4
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|SYNC|pixel_column\(6) & (\inst|Add0~3_cout\ $ (GND))) # (!\inst|SYNC|pixel_column\(6) & (!\inst|Add0~3_cout\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|SYNC|pixel_column\(6) & !\inst|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst|Add0~3_cout\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X30_Y22_N27
\inst|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(8),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(8));

-- Location: FF_X30_Y22_N21
\inst|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(5));

-- Location: LCCOMB_X30_Y21_N26
\inst|SYNC|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|v_count[3]~8_combout\ = (\inst|SYNC|v_count[9]~1_combout\ & (\inst|SYNC|Add1~6_combout\ & ((\inst|SYNC|v_count[2]~0_combout\)))) # (!\inst|SYNC|v_count[9]~1_combout\ & ((\inst|SYNC|v_count\(3)) # ((\inst|SYNC|Add1~6_combout\ & 
-- \inst|SYNC|v_count[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count[9]~1_combout\,
	datab => \inst|SYNC|Add1~6_combout\,
	datac => \inst|SYNC|v_count\(3),
	datad => \inst|SYNC|v_count[2]~0_combout\,
	combout => \inst|SYNC|v_count[3]~8_combout\);

-- Location: FF_X30_Y21_N27
\inst|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|v_count\(3));

-- Location: FF_X30_Y22_N19
\inst|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|v_count\(3),
	sload => VCC,
	ena => \inst|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_row\(3));

-- Location: LCCOMB_X30_Y22_N28
\inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = \inst|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\);

-- Location: LCCOMB_X32_Y22_N12
\inst|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = \inst|Add3~9\ $ (\inst|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\);

-- Location: FF_X31_Y22_N23
\inst|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(9));

-- Location: LCCOMB_X31_Y22_N28
\inst|SYNC|pixel_column[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[8]~feeder_combout\ = \inst|SYNC|h_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(8),
	combout => \inst|SYNC|pixel_column[8]~feeder_combout\);

-- Location: FF_X31_Y22_N29
\inst|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[8]~feeder_combout\,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(8));

-- Location: LCCOMB_X31_Y22_N16
\inst|SYNC|pixel_column[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|pixel_column[7]~feeder_combout\ = \inst|SYNC|h_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|h_count\(7),
	combout => \inst|SYNC|pixel_column[7]~feeder_combout\);

-- Location: FF_X31_Y22_N17
\inst|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|pixel_column[7]~feeder_combout\,
	ena => \inst|SYNC|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|pixel_column\(7));

-- Location: LCCOMB_X31_Y22_N6
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|SYNC|pixel_column\(7) & (!\inst|Add0~5\)) # (!\inst|SYNC|pixel_column\(7) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X31_Y22_N10
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = \inst|Add0~9\ $ (\inst|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|pixel_column\(9),
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\);

-- Location: LCCOMB_X31_Y22_N26
\inst|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~0_combout\ = (\inst|Add0~8_combout\ & (!\inst|Add2~10_combout\ & (!\inst|Add3~10_combout\ & !\inst|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Add2~10_combout\,
	datac => \inst|Add3~10_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|SYNC|green_out~0_combout\);

-- Location: LCCOMB_X31_Y22_N18
\inst|SYNC|green_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~4_combout\ = (\inst|SYNC|green_out~3_combout\) # (((!\inst|Add0~4_combout\ & !\inst|Add0~6_combout\)) # (!\inst|SYNC|green_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|green_out~3_combout\,
	datab => \inst|Add0~4_combout\,
	datac => \inst|SYNC|green_out~0_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|SYNC|green_out~4_combout\);

-- Location: LCCOMB_X31_Y22_N24
\inst|SYNC|green_out~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|green_out~5_combout\ = (\inst|SYNC|video_on~0_combout\ & ((\inst|LessThan2~16_combout\) # ((\inst|LessThan3~16_combout\) # (\inst|SYNC|green_out~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan2~16_combout\,
	datab => \inst|SYNC|video_on~0_combout\,
	datac => \inst|LessThan3~16_combout\,
	datad => \inst|SYNC|green_out~4_combout\,
	combout => \inst|SYNC|green_out~5_combout\);

-- Location: FF_X31_Y22_N1
\inst|SYNC|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|green_out~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|green_out~q\);

-- Location: FF_X31_Y22_N25
\inst|SYNC|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|green_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|blue_out~q\);

-- Location: LCCOMB_X30_Y21_N14
\inst|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~1_combout\ = ((\inst|SYNC|v_count\(0) $ (!\inst|SYNC|v_count\(1))) # (!\inst|SYNC|v_count\(2))) # (!\inst|SYNC|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(3),
	datab => \inst|SYNC|v_count\(0),
	datac => \inst|SYNC|v_count\(1),
	datad => \inst|SYNC|v_count\(2),
	combout => \inst|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X30_Y21_N28
\inst|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~2_combout\ = (\inst|SYNC|v_count\(4)) # (((\inst|SYNC|process_0~1_combout\) # (\inst|SYNC|v_count\(9))) # (!\inst|SYNC|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|v_count\(4),
	datab => \inst|SYNC|LessThan7~0_combout\,
	datac => \inst|SYNC|process_0~1_combout\,
	datad => \inst|SYNC|v_count\(9),
	combout => \inst|SYNC|process_0~2_combout\);

-- Location: FF_X30_Y21_N29
\inst|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N16
\inst|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|vert_sync_out~feeder_combout\ = \inst|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|SYNC|vert_sync~q\,
	combout => \inst|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N17
\inst|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X29_Y22_N10
\inst|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~3_combout\ = (!\inst|SYNC|h_count\(8) & (\inst|SYNC|h_count\(7) & \inst|SYNC|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|h_count\(8),
	datab => \inst|SYNC|h_count\(7),
	datad => \inst|SYNC|h_count\(9),
	combout => \inst|SYNC|process_0~3_combout\);

-- Location: LCCOMB_X29_Y22_N4
\inst|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|SYNC|process_0~6_combout\ = ((\inst|SYNC|process_0~5_combout\ & (\inst|SYNC|h_count\(6) & \inst|SYNC|h_count\(5))) # (!\inst|SYNC|process_0~5_combout\ & (!\inst|SYNC|h_count\(6) & !\inst|SYNC|h_count\(5)))) # (!\inst|SYNC|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|SYNC|process_0~5_combout\,
	datab => \inst|SYNC|h_count\(6),
	datac => \inst|SYNC|h_count\(5),
	datad => \inst|SYNC|process_0~3_combout\,
	combout => \inst|SYNC|process_0~6_combout\);

-- Location: FF_X29_Y22_N5
\inst|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync~q\);

-- Location: FF_X29_Y22_N11
\inst|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst|SYNC|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|SYNC|horiz_sync_out~q\);

-- Location: IOIBUF_X0_Y23_N15
\bt1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\bt2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);

ww_red_out <= \red_out~output_o\;

ww_green_out <= \green_out~output_o\;

ww_blue_out <= \blue_out~output_o\;

ww_vert_sync_out <= \vert_sync_out~output_o\;

ww_horiz_sync_out <= \horiz_sync_out~output_o\;
END structure;


