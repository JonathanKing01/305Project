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

-- DATE "05/18/2018 11:39:18"

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
	green_out : OUT std_logic;
	clk : IN std_logic;
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	switch_one : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	blue_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	red_out : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Diagram;

-- Design Ports Information
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch_one	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_green_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_switch_one : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst10|Add0~0_combout\ : std_logic;
SIGNAL \inst10|Add0~2_combout\ : std_logic;
SIGNAL \inst10|Add0~4_combout\ : std_logic;
SIGNAL \inst10|Add0~6_combout\ : std_logic;
SIGNAL \inst10|Add0~8_combout\ : std_logic;
SIGNAL \inst10|LessThan0~1_cout\ : std_logic;
SIGNAL \inst10|LessThan0~3_cout\ : std_logic;
SIGNAL \inst10|LessThan0~5_cout\ : std_logic;
SIGNAL \inst10|LessThan0~7_cout\ : std_logic;
SIGNAL \inst10|LessThan0~9_cout\ : std_logic;
SIGNAL \inst10|LessThan0~11_cout\ : std_logic;
SIGNAL \inst10|LessThan0~13_cout\ : std_logic;
SIGNAL \inst10|LessThan0~15_cout\ : std_logic;
SIGNAL \inst10|LessThan0~17_cout\ : std_logic;
SIGNAL \inst10|LessThan0~18_combout\ : std_logic;
SIGNAL \inst10|Add1~0_combout\ : std_logic;
SIGNAL \inst10|Add1~6_combout\ : std_logic;
SIGNAL \inst10|Add1~8_combout\ : std_logic;
SIGNAL \inst10|Add3~4_combout\ : std_logic;
SIGNAL \inst10|Add3~7\ : std_logic;
SIGNAL \inst10|Add3~8_combout\ : std_logic;
SIGNAL \inst10|Add3~9\ : std_logic;
SIGNAL \inst10|Add3~10_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~15_cout\ : std_logic;
SIGNAL \inst|LessThan0~16_combout\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[4]~15_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[4]~15_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[3]~17_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst2|blue_out~0_combout\ : std_logic;
SIGNAL \inst4|cursor_column~12_combout\ : std_logic;
SIGNAL \inst4|cursor_column~16_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst4|INCNT~3_combout\ : std_logic;
SIGNAL \inst2|process_0~7_combout\ : std_logic;
SIGNAL \inst2|process_0~10_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion~6_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion[1]~7_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst4|Selector6~0_combout\ : std_logic;
SIGNAL \inst4|iready_set~q\ : std_logic;
SIGNAL \inst4|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst4|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst4|iready_set~0_combout\ : std_logic;
SIGNAL \inst4|Selector4~0_combout\ : std_logic;
SIGNAL \inst4|cursor_column~18_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \switch_one~input_o\ : std_logic;
SIGNAL \inst2|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[0]~feeder_combout\ : std_logic;
SIGNAL \mouse_data~output_o\ : std_logic;
SIGNAL \mouse_clk~output_o\ : std_logic;
SIGNAL \green_out~output_o\ : std_logic;
SIGNAL \blue_out~output_o\ : std_logic;
SIGNAL \vert_sync_out~output_o\ : std_logic;
SIGNAL \horiz_sync_out~output_o\ : std_logic;
SIGNAL \red_out~output_o\ : std_logic;
SIGNAL \seg0[6]~output_o\ : std_logic;
SIGNAL \seg0[5]~output_o\ : std_logic;
SIGNAL \seg0[4]~output_o\ : std_logic;
SIGNAL \seg0[3]~output_o\ : std_logic;
SIGNAL \seg0[2]~output_o\ : std_logic;
SIGNAL \seg0[1]~output_o\ : std_logic;
SIGNAL \seg0[0]~output_o\ : std_logic;
SIGNAL \seg1[6]~output_o\ : std_logic;
SIGNAL \seg1[5]~output_o\ : std_logic;
SIGNAL \seg1[4]~output_o\ : std_logic;
SIGNAL \seg1[3]~output_o\ : std_logic;
SIGNAL \seg1[2]~output_o\ : std_logic;
SIGNAL \seg1[1]~output_o\ : std_logic;
SIGNAL \seg1[0]~output_o\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst4|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~feeder_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst4|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst4|mouse_state.LOAD_COMMAND2~feeder_combout\ : std_logic;
SIGNAL \inst4|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst4|Selector6~1_combout\ : std_logic;
SIGNAL \inst4|send_data~q\ : std_logic;
SIGNAL \inst4|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst4|output_ready~0_combout\ : std_logic;
SIGNAL \inst4|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst4|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst4|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst4|output_ready~q\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst4|send_char~0_combout\ : std_logic;
SIGNAL \inst4|send_char~q\ : std_logic;
SIGNAL \inst4|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst4|WideOr4~combout\ : std_logic;
SIGNAL \inst1|count~0_combout\ : std_logic;
SIGNAL \inst1|count~q\ : std_logic;
SIGNAL \inst1|q~feeder_combout\ : std_logic;
SIGNAL \inst1|q~q\ : std_logic;
SIGNAL \inst1|q~clkctrl_outclk\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|h_count~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|h_count~2_combout\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|h_count~0_combout\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst4|INCNT~5_combout\ : std_logic;
SIGNAL \inst4|INCNT[3]~2_combout\ : std_logic;
SIGNAL \inst4|INCNT~4_combout\ : std_logic;
SIGNAL \inst4|INCNT~1_combout\ : std_logic;
SIGNAL \inst4|LessThan1~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[7]~2_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst4|READ_CHAR~q\ : std_logic;
SIGNAL \inst4|INCNT[3]~0_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[3]~10_combout\ : std_logic;
SIGNAL \inst4|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[7]~3_combout\ : std_logic;
SIGNAL \inst4|PACKET_COUNT~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[7]~24_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst4|Equal4~0_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[0]~30_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[8]~26_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \inst4|cursor_column~15_combout\ : std_logic;
SIGNAL \inst4|cursor_column[0]~9_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[0]~11\ : std_logic;
SIGNAL \inst4|new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~0_combout\ : std_logic;
SIGNAL \inst4|LessThan9~0_combout\ : std_logic;
SIGNAL \inst4|cursor_column[7]~17_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~1_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~6_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~7_combout\ : std_logic;
SIGNAL \inst4|cursor_column~6_combout\ : std_logic;
SIGNAL \inst4|cursor_column~10_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~2_combout\ : std_logic;
SIGNAL \inst4|cursor_column[7]~7_combout\ : std_logic;
SIGNAL \inst4|cursor_column~14_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[1]~13\ : std_logic;
SIGNAL \inst4|new_cursor_column[2]~15\ : std_logic;
SIGNAL \inst4|new_cursor_column[3]~17\ : std_logic;
SIGNAL \inst4|new_cursor_column[4]~19\ : std_logic;
SIGNAL \inst4|new_cursor_column[5]~21\ : std_logic;
SIGNAL \inst4|new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \inst4|cursor_column~19_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[6]~23\ : std_logic;
SIGNAL \inst4|new_cursor_column[7]~25\ : std_logic;
SIGNAL \inst4|new_cursor_column[8]~27\ : std_logic;
SIGNAL \inst4|new_cursor_column[9]~28_combout\ : std_logic;
SIGNAL \inst4|cursor_column~8_combout\ : std_logic;
SIGNAL \inst4|cursor_column~11_combout\ : std_logic;
SIGNAL \inst4|cursor_column~13_combout\ : std_logic;
SIGNAL \inst10|Add1~1\ : std_logic;
SIGNAL \inst10|Add1~3\ : std_logic;
SIGNAL \inst10|Add1~5\ : std_logic;
SIGNAL \inst10|Add1~7\ : std_logic;
SIGNAL \inst10|Add1~9\ : std_logic;
SIGNAL \inst10|Add1~10_combout\ : std_logic;
SIGNAL \inst10|Add1~4_combout\ : std_logic;
SIGNAL \inst10|Add1~2_combout\ : std_logic;
SIGNAL \inst10|LessThan1~1_cout\ : std_logic;
SIGNAL \inst10|LessThan1~3_cout\ : std_logic;
SIGNAL \inst10|LessThan1~5_cout\ : std_logic;
SIGNAL \inst10|LessThan1~7_cout\ : std_logic;
SIGNAL \inst10|LessThan1~9_cout\ : std_logic;
SIGNAL \inst10|LessThan1~11_cout\ : std_logic;
SIGNAL \inst10|LessThan1~13_cout\ : std_logic;
SIGNAL \inst10|LessThan1~15_cout\ : std_logic;
SIGNAL \inst10|LessThan1~17_cout\ : std_logic;
SIGNAL \inst10|LessThan1~18_combout\ : std_logic;
SIGNAL \inst4|Equal3~0_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[7]~2_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[8]~28\ : std_logic;
SIGNAL \inst4|new_cursor_row[9]~29_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|cursor_row~5_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[0]~12\ : std_logic;
SIGNAL \inst4|new_cursor_row[1]~14\ : std_logic;
SIGNAL \inst4|new_cursor_row[2]~16\ : std_logic;
SIGNAL \inst4|new_cursor_row[3]~18\ : std_logic;
SIGNAL \inst4|new_cursor_row[4]~20\ : std_logic;
SIGNAL \inst4|new_cursor_row[5]~22\ : std_logic;
SIGNAL \inst4|new_cursor_row[6]~23_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[5]~21_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[2]~15_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[1]~13_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[4]~19_combout\ : std_logic;
SIGNAL \inst4|LessThan5~0_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~3_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~4_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~5_combout\ : std_logic;
SIGNAL \inst4|cursor_row~9_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[0]~11_combout\ : std_logic;
SIGNAL \inst4|LessThan5~1_combout\ : std_logic;
SIGNAL \inst4|cursor_row~0_combout\ : std_logic;
SIGNAL \inst4|cursor_row~3_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[6]~24\ : std_logic;
SIGNAL \inst4|new_cursor_row[7]~25_combout\ : std_logic;
SIGNAL \inst4|cursor_row~2_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[7]~26\ : std_logic;
SIGNAL \inst4|new_cursor_row[8]~27_combout\ : std_logic;
SIGNAL \inst4|cursor_row~1_combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|process_0~9_combout\ : std_logic;
SIGNAL \inst2|process_0~11_combout\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|v_count[5]~2_combout\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|v_count[7]~4_combout\ : std_logic;
SIGNAL \inst2|Add1~15\ : std_logic;
SIGNAL \inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst2|v_count[8]~0_combout\ : std_logic;
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|v_count[6]~3_combout\ : std_logic;
SIGNAL \inst2|process_0~8_combout\ : std_logic;
SIGNAL \inst2|process_0~12_combout\ : std_logic;
SIGNAL \inst2|v_count~8_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|v_count[0]~9_combout\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|v_count[3]~5_combout\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|v_count[4]~6_combout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|Add1~17\ : std_logic;
SIGNAL \inst2|Add1~18_combout\ : std_logic;
SIGNAL \inst2|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst10|Add2~0_combout\ : std_logic;
SIGNAL \inst10|Add2~1_combout\ : std_logic;
SIGNAL \inst10|Add2~3_combout\ : std_logic;
SIGNAL \inst10|Add2~4_combout\ : std_logic;
SIGNAL \inst4|cursor_row~6_combout\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|v_count[2]~7_combout\ : std_logic;
SIGNAL \inst2|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|cursor_row~8_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|v_count~10_combout\ : std_logic;
SIGNAL \inst2|pixel_row[0]~feeder_combout\ : std_logic;
SIGNAL \inst10|LessThan2~1_cout\ : std_logic;
SIGNAL \inst10|LessThan2~3_cout\ : std_logic;
SIGNAL \inst10|LessThan2~5_cout\ : std_logic;
SIGNAL \inst10|LessThan2~7_cout\ : std_logic;
SIGNAL \inst10|LessThan2~9_cout\ : std_logic;
SIGNAL \inst10|LessThan2~11_cout\ : std_logic;
SIGNAL \inst10|LessThan2~13_cout\ : std_logic;
SIGNAL \inst10|LessThan2~15_cout\ : std_logic;
SIGNAL \inst10|LessThan2~16_combout\ : std_logic;
SIGNAL \inst2|video_on_h~q\ : std_logic;
SIGNAL \inst2|video_on_v~feeder_combout\ : std_logic;
SIGNAL \inst2|video_on_v~q\ : std_logic;
SIGNAL \inst10|Add0~1\ : std_logic;
SIGNAL \inst10|Add0~3\ : std_logic;
SIGNAL \inst10|Add0~5\ : std_logic;
SIGNAL \inst10|Add0~7\ : std_logic;
SIGNAL \inst10|Add0~9\ : std_logic;
SIGNAL \inst10|Add0~10_combout\ : std_logic;
SIGNAL \inst2|red_out~0_combout\ : std_logic;
SIGNAL \inst4|cursor_row~4_combout\ : std_logic;
SIGNAL \inst10|Add3~1\ : std_logic;
SIGNAL \inst10|Add3~3\ : std_logic;
SIGNAL \inst10|Add3~5\ : std_logic;
SIGNAL \inst10|Add3~6_combout\ : std_logic;
SIGNAL \inst10|Add3~2_combout\ : std_logic;
SIGNAL \inst10|Add3~0_combout\ : std_logic;
SIGNAL \inst4|cursor_row~7_combout\ : std_logic;
SIGNAL \inst10|LessThan3~1_cout\ : std_logic;
SIGNAL \inst10|LessThan3~3_cout\ : std_logic;
SIGNAL \inst10|LessThan3~5_cout\ : std_logic;
SIGNAL \inst10|LessThan3~7_cout\ : std_logic;
SIGNAL \inst10|LessThan3~9_cout\ : std_logic;
SIGNAL \inst10|LessThan3~11_cout\ : std_logic;
SIGNAL \inst10|LessThan3~13_cout\ : std_logic;
SIGNAL \inst10|LessThan3~15_cout\ : std_logic;
SIGNAL \inst10|LessThan3~16_combout\ : std_logic;
SIGNAL \inst2|green_out~0_combout\ : std_logic;
SIGNAL \inst2|green_out~1_combout\ : std_logic;
SIGNAL \inst2|green_out~q\ : std_logic;
SIGNAL \inst2|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \inst3|Mux0~2_combout\ : std_logic;
SIGNAL \inst3|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~1_combout\ : std_logic;
SIGNAL \inst2|blue_out~1_combout\ : std_logic;
SIGNAL \inst2|blue_out~q\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|vert_sync~q\ : std_logic;
SIGNAL \inst2|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst2|vert_sync_out~q\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|horiz_sync~q\ : std_logic;
SIGNAL \inst2|horiz_sync_out~q\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \inst|Ball_X_pos[1]~9_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[1]~10\ : std_logic;
SIGNAL \inst|Ball_X_pos[2]~11_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[2]~12\ : std_logic;
SIGNAL \inst|Ball_X_pos[3]~14\ : std_logic;
SIGNAL \inst|Ball_X_pos[4]~16\ : std_logic;
SIGNAL \inst|Ball_X_pos[5]~18\ : std_logic;
SIGNAL \inst|Ball_X_pos[6]~20\ : std_logic;
SIGNAL \inst|Ball_X_pos[7]~21_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[6]~19_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[5]~17_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[3]~13_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion~0_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion~1_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion[1]~2_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion[1]~3_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[7]~22\ : std_logic;
SIGNAL \inst|Ball_X_pos[8]~23_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion[1]~4_combout\ : std_logic;
SIGNAL \inst|Ball_X_motion[1]~5_combout\ : std_logic;
SIGNAL \inst|Ball_X_pos[8]~24\ : std_logic;
SIGNAL \inst|Ball_X_pos[9]~25_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|LessThan1~1_cout\ : std_logic;
SIGNAL \inst|LessThan1~3_cout\ : std_logic;
SIGNAL \inst|LessThan1~5_cout\ : std_logic;
SIGNAL \inst|LessThan1~7_cout\ : std_logic;
SIGNAL \inst|LessThan1~9_cout\ : std_logic;
SIGNAL \inst|LessThan1~11_cout\ : std_logic;
SIGNAL \inst|LessThan1~13_cout\ : std_logic;
SIGNAL \inst|LessThan1~15_cout\ : std_logic;
SIGNAL \inst|LessThan1~17_cout\ : std_logic;
SIGNAL \inst|LessThan1~18_combout\ : std_logic;
SIGNAL \inst10|Add2~6_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[1]~9_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[1]~10\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~12\ : std_logic;
SIGNAL \inst|Ball_Y_pos[3]~14\ : std_logic;
SIGNAL \inst|Ball_Y_pos[4]~16\ : std_logic;
SIGNAL \inst|Ball_Y_pos[5]~17_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[5]~18\ : std_logic;
SIGNAL \inst|Ball_Y_pos[6]~20\ : std_logic;
SIGNAL \inst|Ball_Y_pos[7]~22\ : std_logic;
SIGNAL \inst|Ball_Y_pos[8]~23_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[2]~11_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~1_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~2_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[7]~21_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~0_combout\ : std_logic;
SIGNAL \inst|Ball_Y_motion[2]~3_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[8]~24\ : std_logic;
SIGNAL \inst|Ball_Y_pos[9]~25_combout\ : std_logic;
SIGNAL \inst10|Add2~2_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[6]~19_combout\ : std_logic;
SIGNAL \inst10|Add2~5_combout\ : std_logic;
SIGNAL \inst|Ball_Y_pos[3]~13_combout\ : std_logic;
SIGNAL \inst|LessThan2~1_cout\ : std_logic;
SIGNAL \inst|LessThan2~3_cout\ : std_logic;
SIGNAL \inst|LessThan2~5_cout\ : std_logic;
SIGNAL \inst|LessThan2~7_cout\ : std_logic;
SIGNAL \inst|LessThan2~9_cout\ : std_logic;
SIGNAL \inst|LessThan2~11_cout\ : std_logic;
SIGNAL \inst|LessThan2~13_cout\ : std_logic;
SIGNAL \inst|LessThan2~15_cout\ : std_logic;
SIGNAL \inst|LessThan2~16_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|LessThan3~1_cout\ : std_logic;
SIGNAL \inst|LessThan3~3_cout\ : std_logic;
SIGNAL \inst|LessThan3~5_cout\ : std_logic;
SIGNAL \inst|LessThan3~7_cout\ : std_logic;
SIGNAL \inst|LessThan3~9_cout\ : std_logic;
SIGNAL \inst|LessThan3~11_cout\ : std_logic;
SIGNAL \inst|LessThan3~13_cout\ : std_logic;
SIGNAL \inst|LessThan3~15_cout\ : std_logic;
SIGNAL \inst|LessThan3~16_combout\ : std_logic;
SIGNAL \inst2|red_out~1_combout\ : std_logic;
SIGNAL \inst2|red_out~2_combout\ : std_logic;
SIGNAL \inst2|red_out~q\ : std_logic;
SIGNAL \inst4|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Ball_X_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst2|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst2|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Ball_X_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst4|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst4|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;

BEGIN

green_out <= ww_green_out;
ww_clk <= clk;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_switch_one <= switch_one;
blue_out <= ww_blue_out;
vert_sync_out <= ww_vert_sync_out;
horiz_sync_out <= ww_horiz_sync_out;
red_out <= ww_red_out;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|pixel_column\(5) & \~GND~combout\ & vcc & \inst2|pixel_column\(4) & \inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1));

\inst3|altsyncram_component|auto_generated|q_a\(0) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|q_a\(1) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst3|altsyncram_component|auto_generated|q_a\(2) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst3|altsyncram_component|auto_generated|q_a\(3) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst3|altsyncram_component|auto_generated|q_a\(4) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst3|altsyncram_component|auto_generated|q_a\(5) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst3|altsyncram_component|auto_generated|q_a\(6) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst3|altsyncram_component|auto_generated|q_a\(7) <= \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst1|q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|q~q\);

\inst4|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|MOUSE_CLK_FILTER~q\);

\inst2|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst2|vert_sync_out~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst4|ALT_INV_send_data~q\ <= NOT \inst4|send_data~q\;
\inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst4|mouse_state.INHIBIT_TRANS~q\;
\inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst4|mouse_state.WAIT_OUTPUT_READY~q\;

-- Location: LCCOMB_X27_Y17_N20
\inst10|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add0~0_combout\ = (\inst2|pixel_column\(3) & (\inst2|pixel_column\(4) $ (VCC))) # (!\inst2|pixel_column\(3) & (\inst2|pixel_column\(4) & VCC))
-- \inst10|Add0~1\ = CARRY((\inst2|pixel_column\(3) & \inst2|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(3),
	datab => \inst2|pixel_column\(4),
	datad => VCC,
	combout => \inst10|Add0~0_combout\,
	cout => \inst10|Add0~1\);

-- Location: LCCOMB_X27_Y17_N22
\inst10|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add0~2_combout\ = (\inst2|pixel_column\(5) & (!\inst10|Add0~1\)) # (!\inst2|pixel_column\(5) & ((\inst10|Add0~1\) # (GND)))
-- \inst10|Add0~3\ = CARRY((!\inst10|Add0~1\) # (!\inst2|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(5),
	datad => VCC,
	cin => \inst10|Add0~1\,
	combout => \inst10|Add0~2_combout\,
	cout => \inst10|Add0~3\);

-- Location: LCCOMB_X27_Y17_N24
\inst10|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add0~4_combout\ = (\inst2|pixel_column\(6) & (\inst10|Add0~3\ $ (GND))) # (!\inst2|pixel_column\(6) & (!\inst10|Add0~3\ & VCC))
-- \inst10|Add0~5\ = CARRY((\inst2|pixel_column\(6) & !\inst10|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(6),
	datad => VCC,
	cin => \inst10|Add0~3\,
	combout => \inst10|Add0~4_combout\,
	cout => \inst10|Add0~5\);

-- Location: LCCOMB_X27_Y17_N26
\inst10|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add0~6_combout\ = (\inst2|pixel_column\(7) & (!\inst10|Add0~5\)) # (!\inst2|pixel_column\(7) & ((\inst10|Add0~5\) # (GND)))
-- \inst10|Add0~7\ = CARRY((!\inst10|Add0~5\) # (!\inst2|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(7),
	datad => VCC,
	cin => \inst10|Add0~5\,
	combout => \inst10|Add0~6_combout\,
	cout => \inst10|Add0~7\);

-- Location: LCCOMB_X27_Y17_N28
\inst10|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add0~8_combout\ = (\inst2|pixel_column\(8) & (\inst10|Add0~7\ $ (GND))) # (!\inst2|pixel_column\(8) & (!\inst10|Add0~7\ & VCC))
-- \inst10|Add0~9\ = CARRY((\inst2|pixel_column\(8) & !\inst10|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_column\(8),
	datad => VCC,
	cin => \inst10|Add0~7\,
	combout => \inst10|Add0~8_combout\,
	cout => \inst10|Add0~9\);

-- Location: LCCOMB_X27_Y17_N0
\inst10|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~1_cout\ = CARRY((\inst4|cursor_column\(0) & !\inst2|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(0),
	datab => \inst2|pixel_column\(0),
	datad => VCC,
	cout => \inst10|LessThan0~1_cout\);

-- Location: LCCOMB_X27_Y17_N2
\inst10|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~3_cout\ = CARRY((\inst2|pixel_column\(1) & ((!\inst10|LessThan0~1_cout\) # (!\inst4|cursor_column\(1)))) # (!\inst2|pixel_column\(1) & (!\inst4|cursor_column\(1) & !\inst10|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(1),
	datab => \inst4|cursor_column\(1),
	datad => VCC,
	cin => \inst10|LessThan0~1_cout\,
	cout => \inst10|LessThan0~3_cout\);

-- Location: LCCOMB_X27_Y17_N4
\inst10|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~5_cout\ = CARRY((\inst4|cursor_column\(2) & ((!\inst10|LessThan0~3_cout\) # (!\inst2|pixel_column\(2)))) # (!\inst4|cursor_column\(2) & (!\inst2|pixel_column\(2) & !\inst10|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(2),
	datab => \inst2|pixel_column\(2),
	datad => VCC,
	cin => \inst10|LessThan0~3_cout\,
	cout => \inst10|LessThan0~5_cout\);

-- Location: LCCOMB_X27_Y17_N6
\inst10|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~7_cout\ = CARRY((\inst2|pixel_column\(3) & (!\inst4|cursor_column\(3) & !\inst10|LessThan0~5_cout\)) # (!\inst2|pixel_column\(3) & ((!\inst10|LessThan0~5_cout\) # (!\inst4|cursor_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(3),
	datab => \inst4|cursor_column\(3),
	datad => VCC,
	cin => \inst10|LessThan0~5_cout\,
	cout => \inst10|LessThan0~7_cout\);

-- Location: LCCOMB_X27_Y17_N8
\inst10|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~9_cout\ = CARRY((\inst10|Add0~0_combout\ & (\inst4|cursor_column\(4) & !\inst10|LessThan0~7_cout\)) # (!\inst10|Add0~0_combout\ & ((\inst4|cursor_column\(4)) # (!\inst10|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~0_combout\,
	datab => \inst4|cursor_column\(4),
	datad => VCC,
	cin => \inst10|LessThan0~7_cout\,
	cout => \inst10|LessThan0~9_cout\);

-- Location: LCCOMB_X27_Y17_N10
\inst10|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~11_cout\ = CARRY((\inst4|cursor_column\(5) & (\inst10|Add0~2_combout\ & !\inst10|LessThan0~9_cout\)) # (!\inst4|cursor_column\(5) & ((\inst10|Add0~2_combout\) # (!\inst10|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(5),
	datab => \inst10|Add0~2_combout\,
	datad => VCC,
	cin => \inst10|LessThan0~9_cout\,
	cout => \inst10|LessThan0~11_cout\);

-- Location: LCCOMB_X27_Y17_N12
\inst10|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~13_cout\ = CARRY((\inst4|cursor_column\(6) & ((!\inst10|LessThan0~11_cout\) # (!\inst10|Add0~4_combout\))) # (!\inst4|cursor_column\(6) & (!\inst10|Add0~4_combout\ & !\inst10|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(6),
	datab => \inst10|Add0~4_combout\,
	datad => VCC,
	cin => \inst10|LessThan0~11_cout\,
	cout => \inst10|LessThan0~13_cout\);

-- Location: LCCOMB_X27_Y17_N14
\inst10|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~15_cout\ = CARRY((\inst4|cursor_column\(7) & (\inst10|Add0~6_combout\ & !\inst10|LessThan0~13_cout\)) # (!\inst4|cursor_column\(7) & ((\inst10|Add0~6_combout\) # (!\inst10|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst10|Add0~6_combout\,
	datad => VCC,
	cin => \inst10|LessThan0~13_cout\,
	cout => \inst10|LessThan0~15_cout\);

-- Location: LCCOMB_X27_Y17_N16
\inst10|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~17_cout\ = CARRY((\inst4|cursor_column\(8) & ((!\inst10|LessThan0~15_cout\) # (!\inst10|Add0~8_combout\))) # (!\inst4|cursor_column\(8) & (!\inst10|Add0~8_combout\ & !\inst10|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(8),
	datab => \inst10|Add0~8_combout\,
	datad => VCC,
	cin => \inst10|LessThan0~15_cout\,
	cout => \inst10|LessThan0~17_cout\);

-- Location: LCCOMB_X27_Y17_N18
\inst10|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan0~18_combout\ = (\inst10|Add0~10_combout\ & (\inst10|LessThan0~17_cout\ & \inst4|cursor_column\(9))) # (!\inst10|Add0~10_combout\ & ((\inst10|LessThan0~17_cout\) # (\inst4|cursor_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Add0~10_combout\,
	datad => \inst4|cursor_column\(9),
	cin => \inst10|LessThan0~17_cout\,
	combout => \inst10|LessThan0~18_combout\);

-- Location: LCCOMB_X28_Y14_N10
\inst10|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add1~0_combout\ = (\inst4|cursor_column\(4) & (\inst4|cursor_column\(3) $ (VCC))) # (!\inst4|cursor_column\(4) & (\inst4|cursor_column\(3) & VCC))
-- \inst10|Add1~1\ = CARRY((\inst4|cursor_column\(4) & \inst4|cursor_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(4),
	datab => \inst4|cursor_column\(3),
	datad => VCC,
	combout => \inst10|Add1~0_combout\,
	cout => \inst10|Add1~1\);

-- Location: LCCOMB_X28_Y14_N16
\inst10|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add1~6_combout\ = (\inst4|cursor_column\(7) & (!\inst10|Add1~5\)) # (!\inst4|cursor_column\(7) & ((\inst10|Add1~5\) # (GND)))
-- \inst10|Add1~7\ = CARRY((!\inst10|Add1~5\) # (!\inst4|cursor_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datad => VCC,
	cin => \inst10|Add1~5\,
	combout => \inst10|Add1~6_combout\,
	cout => \inst10|Add1~7\);

-- Location: LCCOMB_X28_Y14_N18
\inst10|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add1~8_combout\ = (\inst4|cursor_column\(8) & (\inst10|Add1~7\ $ (GND))) # (!\inst4|cursor_column\(8) & (!\inst10|Add1~7\ & VCC))
-- \inst10|Add1~9\ = CARRY((\inst4|cursor_column\(8) & !\inst10|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(8),
	datad => VCC,
	cin => \inst10|Add1~7\,
	combout => \inst10|Add1~8_combout\,
	cout => \inst10|Add1~9\);

-- Location: LCCOMB_X29_Y17_N22
\inst10|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add3~4_combout\ = (\inst4|cursor_row\(6) & (\inst10|Add3~3\ $ (GND))) # (!\inst4|cursor_row\(6) & (!\inst10|Add3~3\ & VCC))
-- \inst10|Add3~5\ = CARRY((\inst4|cursor_row\(6) & !\inst10|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(6),
	datad => VCC,
	cin => \inst10|Add3~3\,
	combout => \inst10|Add3~4_combout\,
	cout => \inst10|Add3~5\);

-- Location: LCCOMB_X29_Y17_N24
\inst10|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add3~6_combout\ = (\inst4|cursor_row\(7) & (!\inst10|Add3~5\)) # (!\inst4|cursor_row\(7) & ((\inst10|Add3~5\) # (GND)))
-- \inst10|Add3~7\ = CARRY((!\inst10|Add3~5\) # (!\inst4|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(7),
	datad => VCC,
	cin => \inst10|Add3~5\,
	combout => \inst10|Add3~6_combout\,
	cout => \inst10|Add3~7\);

-- Location: LCCOMB_X29_Y17_N26
\inst10|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add3~8_combout\ = (\inst4|cursor_row\(8) & (\inst10|Add3~7\ $ (GND))) # (!\inst4|cursor_row\(8) & (!\inst10|Add3~7\ & VCC))
-- \inst10|Add3~9\ = CARRY((\inst4|cursor_row\(8) & !\inst10|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datad => VCC,
	cin => \inst10|Add3~7\,
	combout => \inst10|Add3~8_combout\,
	cout => \inst10|Add3~9\);

-- Location: LCCOMB_X29_Y17_N28
\inst10|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add3~10_combout\ = \inst10|Add3~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst10|Add3~9\,
	combout => \inst10|Add3~10_combout\);

-- Location: M9K_X25_Y17_N0
\inst3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "char_rom:inst3|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 7,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst1|q~clkctrl_outclk\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X32_Y16_N7
\inst|Ball_X_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(4));

-- Location: LCCOMB_X28_Y16_N10
\inst|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((\inst|Ball_X_pos\(1) & !\inst2|pixel_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(1),
	datab => \inst2|pixel_column\(1),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X28_Y16_N12
\inst|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst|Ball_X_pos\(2) & (\inst2|pixel_column\(2) & !\inst|LessThan0~1_cout\)) # (!\inst|Ball_X_pos\(2) & ((\inst2|pixel_column\(2)) # (!\inst|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(2),
	datab => \inst2|pixel_column\(2),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X28_Y16_N14
\inst|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst2|pixel_column\(3) & ((\inst|Ball_X_pos\(3)) # (!\inst|LessThan0~3_cout\))) # (!\inst2|pixel_column\(3) & (\inst|Ball_X_pos\(3) & !\inst|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(3),
	datab => \inst|Ball_X_pos\(3),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X28_Y16_N16
\inst|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst10|Add0~0_combout\ & ((!\inst|LessThan0~5_cout\) # (!\inst|Ball_X_pos\(4)))) # (!\inst10|Add0~0_combout\ & (!\inst|Ball_X_pos\(4) & !\inst|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~0_combout\,
	datab => \inst|Ball_X_pos\(4),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X28_Y16_N18
\inst|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst10|Add0~2_combout\ & (\inst|Ball_X_pos\(5) & !\inst|LessThan0~7_cout\)) # (!\inst10|Add0~2_combout\ & ((\inst|Ball_X_pos\(5)) # (!\inst|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~2_combout\,
	datab => \inst|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X28_Y16_N20
\inst|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst10|Add0~4_combout\ & ((!\inst|LessThan0~9_cout\) # (!\inst|Ball_X_pos\(6)))) # (!\inst10|Add0~4_combout\ & (!\inst|Ball_X_pos\(6) & !\inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add0~4_combout\,
	datab => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X28_Y16_N22
\inst|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst|Ball_X_pos\(7) & ((!\inst|LessThan0~11_cout\) # (!\inst10|Add0~6_combout\))) # (!\inst|Ball_X_pos\(7) & (!\inst10|Add0~6_combout\ & !\inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(7),
	datab => \inst10|Add0~6_combout\,
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X28_Y16_N24
\inst|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~15_cout\ = CARRY((\inst|Ball_X_pos\(8) & (\inst10|Add0~8_combout\ & !\inst|LessThan0~13_cout\)) # (!\inst|Ball_X_pos\(8) & ((\inst10|Add0~8_combout\) # (!\inst|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(8),
	datab => \inst10|Add0~8_combout\,
	datad => VCC,
	cin => \inst|LessThan0~13_cout\,
	cout => \inst|LessThan0~15_cout\);

-- Location: LCCOMB_X28_Y16_N26
\inst|LessThan0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~16_combout\ = (\inst|Ball_X_pos\(9) & ((!\inst10|Add0~10_combout\) # (!\inst|LessThan0~15_cout\))) # (!\inst|Ball_X_pos\(9) & (!\inst|LessThan0~15_cout\ & !\inst10|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(9),
	datad => \inst10|Add0~10_combout\,
	cin => \inst|LessThan0~15_cout\,
	combout => \inst|LessThan0~16_combout\);

-- Location: LCCOMB_X32_Y16_N20
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|Ball_X_pos\(4) & (!\inst|Add1~1\)) # (!\inst|Ball_X_pos\(4) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|Ball_X_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(4),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: FF_X36_Y18_N7
\inst|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(4));

-- Location: LCCOMB_X36_Y18_N20
\inst|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_pos\(3) $ (VCC))) # (!\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_pos\(3) & VCC))
-- \inst|Add3~1\ = CARRY((\inst|Ball_Y_pos\(4) & \inst|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X36_Y18_N24
\inst|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = (\inst|Ball_Y_pos\(6) & (\inst|Add3~3\ $ (GND))) # (!\inst|Ball_Y_pos\(6) & (!\inst|Add3~3\ & VCC))
-- \inst|Add3~5\ = CARRY((\inst|Ball_Y_pos\(6) & !\inst|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: FF_X26_Y14_N11
\inst4|new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(2));

-- Location: FF_X31_Y17_N11
\inst4|new_cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[3]~17_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(3));

-- Location: LCCOMB_X32_Y16_N6
\inst|Ball_X_pos[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[4]~15_combout\ = (\inst|Ball_X_pos\(4) & ((\inst|Ball_X_motion\(3) & (\inst|Ball_X_pos[3]~14\ & VCC)) # (!\inst|Ball_X_motion\(3) & (!\inst|Ball_X_pos[3]~14\)))) # (!\inst|Ball_X_pos\(4) & ((\inst|Ball_X_motion\(3) & 
-- (!\inst|Ball_X_pos[3]~14\)) # (!\inst|Ball_X_motion\(3) & ((\inst|Ball_X_pos[3]~14\) # (GND)))))
-- \inst|Ball_X_pos[4]~16\ = CARRY((\inst|Ball_X_pos\(4) & (!\inst|Ball_X_motion\(3) & !\inst|Ball_X_pos[3]~14\)) # (!\inst|Ball_X_pos\(4) & ((!\inst|Ball_X_pos[3]~14\) # (!\inst|Ball_X_motion\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(4),
	datab => \inst|Ball_X_motion\(3),
	datad => VCC,
	cin => \inst|Ball_X_pos[3]~14\,
	combout => \inst|Ball_X_pos[4]~15_combout\,
	cout => \inst|Ball_X_pos[4]~16\);

-- Location: LCCOMB_X36_Y18_N6
\inst|Ball_Y_pos[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[4]~15_combout\ = (\inst|Ball_Y_pos\(4) & ((\inst|Ball_Y_motion\(2) & (\inst|Ball_Y_pos[3]~14\ & VCC)) # (!\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos[3]~14\)))) # (!\inst|Ball_Y_pos\(4) & ((\inst|Ball_Y_motion\(2) & 
-- (!\inst|Ball_Y_pos[3]~14\)) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos[3]~14\) # (GND)))))
-- \inst|Ball_Y_pos[4]~16\ = CARRY((\inst|Ball_Y_pos\(4) & (!\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[3]~14\)) # (!\inst|Ball_Y_pos\(4) & ((!\inst|Ball_Y_pos[3]~14\) # (!\inst|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[3]~14\,
	combout => \inst|Ball_Y_pos[4]~15_combout\,
	cout => \inst|Ball_Y_pos[4]~16\);

-- Location: LCCOMB_X26_Y14_N10
\inst4|new_cursor_column[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[2]~14_combout\ = ((\inst4|PACKET_CHAR2\(2) $ (\inst4|cursor_column\(2) $ (!\inst4|new_cursor_column[1]~13\)))) # (GND)
-- \inst4|new_cursor_column[2]~15\ = CARRY((\inst4|PACKET_CHAR2\(2) & ((\inst4|cursor_column\(2)) # (!\inst4|new_cursor_column[1]~13\))) # (!\inst4|PACKET_CHAR2\(2) & (\inst4|cursor_column\(2) & !\inst4|new_cursor_column[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR2\(2),
	datab => \inst4|cursor_column\(2),
	datad => VCC,
	cin => \inst4|new_cursor_column[1]~13\,
	combout => \inst4|new_cursor_column[2]~14_combout\,
	cout => \inst4|new_cursor_column[2]~15\);

-- Location: LCCOMB_X31_Y17_N10
\inst4|new_cursor_row[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[3]~17_combout\ = (\inst4|cursor_row\(3) & ((\inst4|PACKET_CHAR3\(3) & (!\inst4|new_cursor_row[2]~16\)) # (!\inst4|PACKET_CHAR3\(3) & (\inst4|new_cursor_row[2]~16\ & VCC)))) # (!\inst4|cursor_row\(3) & ((\inst4|PACKET_CHAR3\(3) & 
-- ((\inst4|new_cursor_row[2]~16\) # (GND))) # (!\inst4|PACKET_CHAR3\(3) & (!\inst4|new_cursor_row[2]~16\))))
-- \inst4|new_cursor_row[3]~18\ = CARRY((\inst4|cursor_row\(3) & (\inst4|PACKET_CHAR3\(3) & !\inst4|new_cursor_row[2]~16\)) # (!\inst4|cursor_row\(3) & ((\inst4|PACKET_CHAR3\(3)) # (!\inst4|new_cursor_row[2]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(3),
	datab => \inst4|PACKET_CHAR3\(3),
	datad => VCC,
	cin => \inst4|new_cursor_row[2]~16\,
	combout => \inst4|new_cursor_row[3]~17_combout\,
	cout => \inst4|new_cursor_row[3]~18\);

-- Location: FF_X35_Y14_N13
\inst4|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[5]~18_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(5));

-- Location: FF_X35_Y14_N11
\inst4|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[4]~16_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(4));

-- Location: FF_X35_Y14_N7
\inst4|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[2]~12_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(2));

-- Location: LCCOMB_X35_Y14_N6
\inst4|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[2]~12_combout\ = (\inst4|inhibit_wait_count\(2) & (!\inst4|inhibit_wait_count[1]~11\)) # (!\inst4|inhibit_wait_count\(2) & ((\inst4|inhibit_wait_count[1]~11\) # (GND)))
-- \inst4|inhibit_wait_count[2]~13\ = CARRY((!\inst4|inhibit_wait_count[1]~11\) # (!\inst4|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[1]~11\,
	combout => \inst4|inhibit_wait_count[2]~12_combout\,
	cout => \inst4|inhibit_wait_count[2]~13\);

-- Location: LCCOMB_X35_Y14_N10
\inst4|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[4]~16_combout\ = (\inst4|inhibit_wait_count\(4) & (!\inst4|inhibit_wait_count[3]~15\)) # (!\inst4|inhibit_wait_count\(4) & ((\inst4|inhibit_wait_count[3]~15\) # (GND)))
-- \inst4|inhibit_wait_count[4]~17\ = CARRY((!\inst4|inhibit_wait_count[3]~15\) # (!\inst4|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[3]~15\,
	combout => \inst4|inhibit_wait_count[4]~16_combout\,
	cout => \inst4|inhibit_wait_count[4]~17\);

-- Location: LCCOMB_X35_Y14_N12
\inst4|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[5]~18_combout\ = (\inst4|inhibit_wait_count\(5) & (\inst4|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst4|inhibit_wait_count\(5) & (!\inst4|inhibit_wait_count[4]~17\ & VCC))
-- \inst4|inhibit_wait_count[5]~19\ = CARRY((\inst4|inhibit_wait_count\(5) & !\inst4|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[4]~17\,
	combout => \inst4|inhibit_wait_count[5]~18_combout\,
	cout => \inst4|inhibit_wait_count[5]~19\);

-- Location: FF_X27_Y17_N25
\inst2|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(6),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(6));

-- Location: FF_X27_Y14_N3
\inst4|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~18_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(8));

-- Location: FF_X28_Y14_N29
\inst4|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~12_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(4));

-- Location: FF_X27_Y14_N5
\inst4|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~16_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(0));

-- Location: FF_X32_Y18_N31
\inst2|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|v_count\(7),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(7));

-- Location: LCCOMB_X32_Y17_N6
\inst2|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|blue_out~0_combout\ = (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|video_on_v~q\,
	datac => \inst2|video_on_h~q\,
	combout => \inst2|blue_out~0_combout\);

-- Location: FF_X29_Y14_N31
\inst4|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~3_combout\,
	ena => \inst4|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(1));

-- Location: LCCOMB_X28_Y14_N28
\inst4|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~12_combout\ = (\inst4|new_cursor_column\(4) & \inst4|cursor_column[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|new_cursor_column\(4),
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~12_combout\);

-- Location: LCCOMB_X27_Y14_N4
\inst4|cursor_column~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~16_combout\ = (\inst4|new_cursor_column\(0) & \inst4|cursor_column[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|new_cursor_column\(0),
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~16_combout\);

-- Location: LCCOMB_X28_Y18_N28
\inst2|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = (\inst2|h_count\(2)) # ((!\inst2|h_count\(5) & (\inst2|h_count\(0) & \inst2|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datab => \inst2|h_count\(5),
	datac => \inst2|h_count\(0),
	datad => \inst2|h_count\(1),
	combout => \inst2|process_0~4_combout\);

-- Location: LCCOMB_X28_Y18_N2
\inst2|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = (\inst2|h_count\(4) & ((\inst2|h_count\(3)) # (\inst2|process_0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(4),
	datac => \inst2|h_count\(3),
	datad => \inst2|process_0~4_combout\,
	combout => \inst2|process_0~5_combout\);

-- Location: FF_X31_Y16_N3
\inst|Ball_X_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_motion~6_combout\,
	ena => \inst|Ball_X_motion[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_motion\(2));

-- Location: FF_X31_Y16_N13
\inst|Ball_X_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_motion[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_motion\(1));

-- Location: FF_X26_Y14_N27
\inst4|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[6]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(6));

-- Location: FF_X26_Y14_N5
\inst4|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[2]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(2));

-- Location: FF_X27_Y14_N31
\inst4|PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[1]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(1));

-- Location: LCCOMB_X5_Y14_N16
\inst4|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~1_combout\ = (\inst4|MOUSE_CLK_FILTER~q\ & ((\inst4|filter\(3)) # ((\inst4|filter\(5)) # (\inst4|filter\(2))))) # (!\inst4|MOUSE_CLK_FILTER~q\ & (\inst4|filter\(3) & (\inst4|filter\(5) & \inst4|filter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|MOUSE_CLK_FILTER~q\,
	datab => \inst4|filter\(3),
	datac => \inst4|filter\(5),
	datad => \inst4|filter\(2),
	combout => \inst4|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X29_Y14_N30
\inst4|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~3_combout\ = (!\inst4|INCNT\(3) & (\inst4|INCNT\(1) $ (\inst4|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(3),
	datac => \inst4|INCNT\(1),
	datad => \inst4|INCNT\(0),
	combout => \inst4|INCNT~3_combout\);

-- Location: LCCOMB_X30_Y18_N26
\inst2|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~7_combout\ = (!\inst2|v_count\(5) & (!\inst2|v_count\(4) & ((!\inst2|v_count\(2)) # (!\inst2|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(5),
	datab => \inst2|v_count\(3),
	datac => \inst2|v_count\(2),
	datad => \inst2|v_count\(4),
	combout => \inst2|process_0~7_combout\);

-- Location: LCCOMB_X29_Y18_N12
\inst2|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~10_combout\ = (\inst2|h_count\(4) & \inst2|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(4),
	datac => \inst2|h_count\(5),
	combout => \inst2|process_0~10_combout\);

-- Location: FF_X30_Y15_N19
\inst4|PACKET_CHAR3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[6]~feeder_combout\,
	ena => \inst4|PACKET_CHAR3[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(6));

-- Location: FF_X30_Y15_N27
\inst4|PACKET_CHAR3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[4]~feeder_combout\,
	ena => \inst4|PACKET_CHAR3[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(4));

-- Location: FF_X30_Y15_N11
\inst4|PACKET_CHAR3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[0]~feeder_combout\,
	ena => \inst4|PACKET_CHAR3[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(0));

-- Location: LCCOMB_X31_Y16_N10
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|Ball_X_pos\(9) & (!\inst|Ball_X_pos\(8) & (!\inst|Ball_X_pos\(1) & !\inst|Ball_X_pos\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(9),
	datab => \inst|Ball_X_pos\(8),
	datac => \inst|Ball_X_pos\(1),
	datad => \inst|Ball_X_pos\(2),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X31_Y16_N2
\inst|Ball_X_motion~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion~6_combout\ = (\switch_one~input_o\) # ((\inst|Ball_X_motion~0_combout\) # (!\bt1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_one~input_o\,
	datab => \bt1~input_o\,
	datac => \inst|Ball_X_motion~0_combout\,
	combout => \inst|Ball_X_motion~6_combout\);

-- Location: LCCOMB_X31_Y16_N12
\inst|Ball_X_motion[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion[1]~7_combout\ = (\inst|Ball_X_motion[1]~5_combout\ & (!\switch_one~input_o\)) # (!\inst|Ball_X_motion[1]~5_combout\ & ((\inst|Ball_X_motion\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch_one~input_o\,
	datac => \inst|Ball_X_motion\(1),
	datad => \inst|Ball_X_motion[1]~5_combout\,
	combout => \inst|Ball_X_motion[1]~7_combout\);

-- Location: LCCOMB_X30_Y14_N12
\inst4|PACKET_CHAR2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[7]~0_combout\ = (!\inst4|PACKET_COUNT\(0) & \inst4|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|PACKET_COUNT\(1),
	combout => \inst4|PACKET_CHAR2[7]~0_combout\);

-- Location: FF_X31_Y14_N25
\inst4|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X31_Y14_N22
\inst4|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector6~0_combout\ = (\inst4|send_data~q\ & ((\inst4|mouse_state.INPUT_PACKETS~q\) # (!\inst4|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|send_data~q\,
	datac => \inst4|mouse_state.INPUT_PACKETS~q\,
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|Selector6~0_combout\);

-- Location: FF_X35_Y14_N1
\inst4|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(0));

-- Location: FF_X30_Y14_N15
\inst4|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|iready_set~0_combout\,
	ena => \inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|iready_set~q\);

-- Location: FF_X31_Y14_N11
\inst4|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X31_Y14_N24
\inst4|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|mouse_state.INPUT_PACKETS~0_combout\ = (\inst4|mouse_state.INPUT_PACKETS~q\) # ((\inst4|mouse_state.WAIT_CMD_ACK~q\ & \inst4|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst4|mouse_state.INPUT_PACKETS~q\,
	datad => \inst4|iready_set~q\,
	combout => \inst4|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: LCCOMB_X35_Y14_N0
\inst4|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[0]~30_combout\ = \inst4|inhibit_wait_count\(0) $ (!\inst4|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inhibit_wait_count\(0),
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|inhibit_wait_count[0]~30_combout\);

-- Location: LCCOMB_X30_Y14_N14
\inst4|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|iready_set~0_combout\ = (\inst4|READ_CHAR~q\ & (((!\inst4|LessThan1~0_combout\)))) # (!\inst4|READ_CHAR~q\ & (\mouse_data~input_o\ & (\inst4|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|READ_CHAR~q\,
	datab => \mouse_data~input_o\,
	datac => \inst4|iready_set~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|iready_set~0_combout\);

-- Location: LCCOMB_X31_Y14_N10
\inst4|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector4~0_combout\ = (\inst4|iready_set~q\ & (\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst4|output_ready~q\)))) # (!\inst4|iready_set~q\ & ((\inst4|mouse_state.WAIT_CMD_ACK~q\) # ((\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & 
-- \inst4|output_ready~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|iready_set~q\,
	datab => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst4|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst4|output_ready~q\,
	combout => \inst4|Selector4~0_combout\);

-- Location: LCCOMB_X27_Y14_N2
\inst4|cursor_column~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~18_combout\ = (\inst4|PACKET_COUNT\(1) & (\inst4|new_cursor_column\(8) & ((\inst4|cursor_column[7]~7_combout\)))) # (!\inst4|PACKET_COUNT\(1) & (((\inst4|new_cursor_column\(8) & \inst4|cursor_column[7]~7_combout\)) # 
-- (!\inst4|PACKET_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_COUNT\(1),
	datab => \inst4|new_cursor_column\(8),
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~18_combout\);

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

-- Location: IOIBUF_X0_Y27_N1
\switch_one~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch_one,
	o => \switch_one~input_o\);

-- Location: CLKCTRL_G4
\inst2|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst2|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst2|vert_sync_out~clkctrl_outclk\);

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

-- Location: LCCOMB_X26_Y14_N26
\inst4|PACKET_CHAR2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[6]~feeder_combout\ = \inst4|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(6),
	combout => \inst4|PACKET_CHAR2[6]~feeder_combout\);

-- Location: LCCOMB_X30_Y15_N18
\inst4|PACKET_CHAR3[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[6]~feeder_combout\ = \inst4|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(6),
	combout => \inst4|PACKET_CHAR3[6]~feeder_combout\);

-- Location: LCCOMB_X30_Y15_N26
\inst4|PACKET_CHAR3[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[4]~feeder_combout\ = \inst4|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(4),
	combout => \inst4|PACKET_CHAR3[4]~feeder_combout\);

-- Location: LCCOMB_X26_Y14_N4
\inst4|PACKET_CHAR2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[2]~feeder_combout\ = \inst4|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(2),
	combout => \inst4|PACKET_CHAR2[2]~feeder_combout\);

-- Location: LCCOMB_X27_Y14_N30
\inst4|PACKET_CHAR2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[1]~feeder_combout\ = \inst4|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(1),
	combout => \inst4|PACKET_CHAR2[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y15_N10
\inst4|PACKET_CHAR3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[0]~feeder_combout\ = \inst4|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(0),
	combout => \inst4|PACKET_CHAR3[0]~feeder_combout\);

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MOUSE_DATA_BUF~q\,
	oe => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => \mouse_data~output_o\);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst4|WideOr4~combout\,
	devoe => ww_devoe,
	o => \mouse_clk~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|green_out~q\,
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
	i => \inst2|blue_out~q\,
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
	i => \inst2|vert_sync_out~q\,
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
	i => \inst2|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => \horiz_sync_out~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|red_out~q\,
	devoe => ww_devoe,
	o => \red_out~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg0[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg0[5]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg0[4]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bt2~input_o\,
	devoe => ww_devoe,
	o => \seg0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bt2~input_o\,
	devoe => ww_devoe,
	o => \seg0[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bt2~input_o\,
	devoe => ww_devoe,
	o => \seg0[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bt2~input_o\,
	devoe => ww_devoe,
	o => \seg0[0]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg1[6]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bt1~input_o\,
	devoe => ww_devoe,
	o => \seg1[5]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bt1~input_o\,
	devoe => ww_devoe,
	o => \seg1[4]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bt1~input_o\,
	devoe => ww_devoe,
	o => \seg1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg1[2]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \seg1[1]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bt1~input_o\,
	devoe => ww_devoe,
	o => \seg1[0]~output_o\);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X5_Y14_N22
\inst4|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst4|filter[0]~feeder_combout\);

-- Location: FF_X5_Y14_N23
\inst4|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(0));

-- Location: LCCOMB_X5_Y14_N30
\inst4|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[1]~feeder_combout\ = \inst4|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(0),
	combout => \inst4|filter[1]~feeder_combout\);

-- Location: FF_X5_Y14_N31
\inst4|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(1));

-- Location: LCCOMB_X5_Y14_N26
\inst4|filter[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[2]~feeder_combout\ = \inst4|filter\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(1),
	combout => \inst4|filter[2]~feeder_combout\);

-- Location: FF_X5_Y14_N27
\inst4|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|filter[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(2));

-- Location: LCCOMB_X5_Y14_N4
\inst4|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[3]~feeder_combout\ = \inst4|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|filter\(2),
	combout => \inst4|filter[3]~feeder_combout\);

-- Location: FF_X5_Y14_N5
\inst4|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(3));

-- Location: LCCOMB_X5_Y14_N8
\inst4|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[4]~feeder_combout\ = \inst4|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(3),
	combout => \inst4|filter[4]~feeder_combout\);

-- Location: FF_X5_Y14_N9
\inst4|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(4));

-- Location: LCCOMB_X5_Y14_N14
\inst4|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[5]~feeder_combout\ = \inst4|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(4),
	combout => \inst4|filter[5]~feeder_combout\);

-- Location: FF_X5_Y14_N15
\inst4|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(5));

-- Location: LCCOMB_X5_Y14_N24
\inst4|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[6]~feeder_combout\ = \inst4|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(5),
	combout => \inst4|filter[6]~feeder_combout\);

-- Location: FF_X5_Y14_N25
\inst4|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(6));

-- Location: LCCOMB_X5_Y14_N18
\inst4|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~2_combout\ = (\inst4|MOUSE_CLK_FILTER~q\ & ((\inst4|filter\(1)) # ((\inst4|filter\(0)) # (\inst4|filter\(6))))) # (!\inst4|MOUSE_CLK_FILTER~q\ & (\inst4|filter\(1) & (\inst4|filter\(0) & \inst4|filter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|MOUSE_CLK_FILTER~q\,
	datab => \inst4|filter\(1),
	datac => \inst4|filter\(0),
	datad => \inst4|filter\(6),
	combout => \inst4|MOUSE_CLK_FILTER~2_combout\);

-- Location: FF_X5_Y14_N21
\inst4|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst4|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(7));

-- Location: LCCOMB_X5_Y14_N20
\inst4|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~0_combout\ = (\inst4|filter\(2) & (\inst4|filter\(4) & \inst4|filter\(7))) # (!\inst4|filter\(2) & ((\inst4|filter\(4)) # (\inst4|filter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|filter\(2),
	datab => \inst4|filter\(4),
	datac => \inst4|filter\(7),
	combout => \inst4|MOUSE_CLK_FILTER~0_combout\);

-- Location: LCCOMB_X5_Y14_N2
\inst4|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~3_combout\ = (\inst4|MOUSE_CLK_FILTER~1_combout\ & ((\inst4|MOUSE_CLK_FILTER~q\) # ((\inst4|MOUSE_CLK_FILTER~2_combout\ & \inst4|MOUSE_CLK_FILTER~0_combout\)))) # (!\inst4|MOUSE_CLK_FILTER~1_combout\ & (\inst4|MOUSE_CLK_FILTER~q\ & 
-- ((\inst4|MOUSE_CLK_FILTER~2_combout\) # (\inst4|MOUSE_CLK_FILTER~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|MOUSE_CLK_FILTER~1_combout\,
	datab => \inst4|MOUSE_CLK_FILTER~q\,
	datac => \inst4|MOUSE_CLK_FILTER~2_combout\,
	datad => \inst4|MOUSE_CLK_FILTER~0_combout\,
	combout => \inst4|MOUSE_CLK_FILTER~3_combout\);

-- Location: LCCOMB_X5_Y14_N28
\inst4|MOUSE_CLK_FILTER~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~feeder_combout\ = \inst4|MOUSE_CLK_FILTER~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|MOUSE_CLK_FILTER~3_combout\,
	combout => \inst4|MOUSE_CLK_FILTER~feeder_combout\);

-- Location: FF_X5_Y14_N29
\inst4|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|MOUSE_CLK_FILTER~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G3
\inst4|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y14_N28
\inst4|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst4|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X35_Y14_N4
\inst4|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[1]~10_combout\ = (\inst4|inhibit_wait_count\(0) & (\inst4|inhibit_wait_count\(1) $ (VCC))) # (!\inst4|inhibit_wait_count\(0) & (\inst4|inhibit_wait_count\(1) & VCC))
-- \inst4|inhibit_wait_count[1]~11\ = CARRY((\inst4|inhibit_wait_count\(0) & \inst4|inhibit_wait_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(0),
	datab => \inst4|inhibit_wait_count\(1),
	datad => VCC,
	combout => \inst4|inhibit_wait_count[1]~10_combout\,
	cout => \inst4|inhibit_wait_count[1]~11\);

-- Location: LCCOMB_X35_Y14_N28
\inst4|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = (\inst4|mouse_state.INHIBIT_TRANS~q\) # ((\inst4|inhibit_wait_count\(10) & \inst4|inhibit_wait_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(10),
	datac => \inst4|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst4|inhibit_wait_count\(9),
	combout => \inst4|Selector0~0_combout\);

-- Location: FF_X35_Y14_N29
\inst4|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X35_Y14_N5
\inst4|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[1]~10_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(1));

-- Location: LCCOMB_X35_Y14_N8
\inst4|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[3]~14_combout\ = (\inst4|inhibit_wait_count\(3) & (\inst4|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst4|inhibit_wait_count\(3) & (!\inst4|inhibit_wait_count[2]~13\ & VCC))
-- \inst4|inhibit_wait_count[3]~15\ = CARRY((\inst4|inhibit_wait_count\(3) & !\inst4|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[2]~13\,
	combout => \inst4|inhibit_wait_count[3]~14_combout\,
	cout => \inst4|inhibit_wait_count[3]~15\);

-- Location: FF_X35_Y14_N9
\inst4|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[3]~14_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(3));

-- Location: LCCOMB_X35_Y14_N14
\inst4|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[6]~20_combout\ = (\inst4|inhibit_wait_count\(6) & (!\inst4|inhibit_wait_count[5]~19\)) # (!\inst4|inhibit_wait_count\(6) & ((\inst4|inhibit_wait_count[5]~19\) # (GND)))
-- \inst4|inhibit_wait_count[6]~21\ = CARRY((!\inst4|inhibit_wait_count[5]~19\) # (!\inst4|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[5]~19\,
	combout => \inst4|inhibit_wait_count[6]~20_combout\,
	cout => \inst4|inhibit_wait_count[6]~21\);

-- Location: FF_X35_Y14_N15
\inst4|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[6]~20_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(6));

-- Location: LCCOMB_X35_Y14_N16
\inst4|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[7]~22_combout\ = (\inst4|inhibit_wait_count\(7) & (\inst4|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst4|inhibit_wait_count\(7) & (!\inst4|inhibit_wait_count[6]~21\ & VCC))
-- \inst4|inhibit_wait_count[7]~23\ = CARRY((\inst4|inhibit_wait_count\(7) & !\inst4|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[6]~21\,
	combout => \inst4|inhibit_wait_count[7]~22_combout\,
	cout => \inst4|inhibit_wait_count[7]~23\);

-- Location: FF_X35_Y14_N17
\inst4|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[7]~22_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(7));

-- Location: LCCOMB_X35_Y14_N18
\inst4|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[8]~24_combout\ = (\inst4|inhibit_wait_count\(8) & (!\inst4|inhibit_wait_count[7]~23\)) # (!\inst4|inhibit_wait_count\(8) & ((\inst4|inhibit_wait_count[7]~23\) # (GND)))
-- \inst4|inhibit_wait_count[8]~25\ = CARRY((!\inst4|inhibit_wait_count[7]~23\) # (!\inst4|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[7]~23\,
	combout => \inst4|inhibit_wait_count[8]~24_combout\,
	cout => \inst4|inhibit_wait_count[8]~25\);

-- Location: FF_X35_Y14_N19
\inst4|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[8]~24_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(8));

-- Location: LCCOMB_X35_Y14_N20
\inst4|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[9]~26_combout\ = (\inst4|inhibit_wait_count\(9) & (\inst4|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst4|inhibit_wait_count\(9) & (!\inst4|inhibit_wait_count[8]~25\ & VCC))
-- \inst4|inhibit_wait_count[9]~27\ = CARRY((\inst4|inhibit_wait_count\(9) & !\inst4|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[8]~25\,
	combout => \inst4|inhibit_wait_count[9]~26_combout\,
	cout => \inst4|inhibit_wait_count[9]~27\);

-- Location: FF_X35_Y14_N21
\inst4|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[9]~26_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(9));

-- Location: LCCOMB_X35_Y14_N22
\inst4|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[10]~28_combout\ = \inst4|inhibit_wait_count\(10) $ (\inst4|inhibit_wait_count[9]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(10),
	cin => \inst4|inhibit_wait_count[9]~27\,
	combout => \inst4|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X35_Y14_N23
\inst4|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[10]~28_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(10));

-- Location: LCCOMB_X35_Y14_N26
\inst4|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = (\inst4|inhibit_wait_count\(9) & (\inst4|inhibit_wait_count\(10) & !\inst4|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(9),
	datac => \inst4|inhibit_wait_count\(10),
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|Selector1~0_combout\);

-- Location: FF_X35_Y14_N27
\inst4|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.LOAD_COMMAND~q\);

-- Location: LCCOMB_X35_Y14_N24
\inst4|mouse_state.LOAD_COMMAND2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|mouse_state.LOAD_COMMAND2~feeder_combout\ = \inst4|mouse_state.LOAD_COMMAND~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|mouse_state.LOAD_COMMAND~q\,
	combout => \inst4|mouse_state.LOAD_COMMAND2~feeder_combout\);

-- Location: FF_X35_Y14_N25
\inst4|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|mouse_state.LOAD_COMMAND2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X31_Y14_N6
\inst4|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector6~1_combout\ = (\inst4|Selector6~0_combout\) # ((\inst4|mouse_state.LOAD_COMMAND2~q\) # (\inst4|mouse_state.LOAD_COMMAND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector6~0_combout\,
	datab => \inst4|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst4|mouse_state.LOAD_COMMAND~q\,
	combout => \inst4|Selector6~1_combout\);

-- Location: FF_X31_Y14_N7
\inst4|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|send_data~q\);

-- Location: LCCOMB_X31_Y14_N28
\inst4|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~2_combout\ = (\inst4|OUTCNT\(3) & (!\inst4|OUTCNT\(2) & (!\inst4|OUTCNT\(1) & \inst4|OUTCNT\(0)))) # (!\inst4|OUTCNT\(3) & ((\inst4|OUTCNT\(1) $ (\inst4|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(3),
	datab => \inst4|OUTCNT\(2),
	datac => \inst4|OUTCNT\(1),
	datad => \inst4|OUTCNT\(0),
	combout => \inst4|OUTCNT~2_combout\);

-- Location: LCCOMB_X31_Y14_N26
\inst4|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|output_ready~0_combout\ = (!\inst4|send_char~q\ & \inst4|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|send_char~q\,
	datad => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst4|output_ready~0_combout\);

-- Location: FF_X31_Y14_N29
\inst4|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~2_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(1));

-- Location: LCCOMB_X31_Y14_N30
\inst4|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~1_combout\ = (!\inst4|OUTCNT\(3) & (\inst4|OUTCNT\(2) $ (((\inst4|OUTCNT\(1) & \inst4|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(3),
	datab => \inst4|OUTCNT\(1),
	datac => \inst4|OUTCNT\(2),
	datad => \inst4|OUTCNT\(0),
	combout => \inst4|OUTCNT~1_combout\);

-- Location: FF_X31_Y14_N31
\inst4|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~1_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(2));

-- Location: LCCOMB_X31_Y14_N8
\inst4|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~3_combout\ = (!\inst4|OUTCNT\(0) & (((!\inst4|OUTCNT\(2) & !\inst4|OUTCNT\(1))) # (!\inst4|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(3),
	datab => \inst4|OUTCNT\(2),
	datac => \inst4|OUTCNT\(0),
	datad => \inst4|OUTCNT\(1),
	combout => \inst4|OUTCNT~3_combout\);

-- Location: FF_X31_Y14_N9
\inst4|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~3_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(0));

-- Location: LCCOMB_X31_Y14_N4
\inst4|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~0_combout\ = (\inst4|OUTCNT\(2) & (\inst4|OUTCNT\(0) & (!\inst4|OUTCNT\(3) & \inst4|OUTCNT\(1)))) # (!\inst4|OUTCNT\(2) & (((\inst4|OUTCNT\(3) & !\inst4|OUTCNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(2),
	datab => \inst4|OUTCNT\(0),
	datac => \inst4|OUTCNT\(3),
	datad => \inst4|OUTCNT\(1),
	combout => \inst4|OUTCNT~0_combout\);

-- Location: FF_X31_Y14_N5
\inst4|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~0_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(3));

-- Location: LCCOMB_X31_Y14_N2
\inst4|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (\inst4|OUTCNT\(3) & ((\inst4|OUTCNT\(2)) # (\inst4|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(2),
	datac => \inst4|OUTCNT\(3),
	datad => \inst4|OUTCNT\(1),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y14_N20
\inst4|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|output_ready~feeder_combout\ = \inst4|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst4|output_ready~feeder_combout\);

-- Location: FF_X31_Y14_N21
\inst4|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|output_ready~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|output_ready~q\);

-- Location: LCCOMB_X31_Y14_N16
\inst4|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = (\inst4|mouse_state.LOAD_COMMAND2~q\) # ((\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst4|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst4|output_ready~q\,
	combout => \inst4|Selector3~0_combout\);

-- Location: FF_X31_Y14_N17
\inst4|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst4|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X32_Y14_N0
\inst4|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|send_char~0_combout\ = (\inst4|send_char~q\) # ((\inst4|LessThan0~0_combout\ & \inst4|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~0_combout\,
	datac => \inst4|send_char~q\,
	datad => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst4|send_char~0_combout\);

-- Location: FF_X32_Y14_N1
\inst4|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|send_char~0_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|send_char~q\);

-- Location: LCCOMB_X32_Y14_N24
\inst4|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_DATA_BUF~0_combout\ = (\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst4|send_char~q\ & !\inst4|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst4|send_char~q\,
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst4|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X32_Y14_N29
\inst4|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(9));

-- Location: LCCOMB_X32_Y14_N18
\inst4|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[8]~3_combout\ = !\inst4|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(9),
	combout => \inst4|SHIFTOUT[8]~3_combout\);

-- Location: FF_X32_Y14_N19
\inst4|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[8]~3_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(8));

-- Location: LCCOMB_X32_Y14_N20
\inst4|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[7]~feeder_combout\ = \inst4|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(8),
	combout => \inst4|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X32_Y14_N21
\inst4|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(7));

-- Location: LCCOMB_X32_Y14_N10
\inst4|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[6]~feeder_combout\ = \inst4|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(7),
	combout => \inst4|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X32_Y14_N11
\inst4|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(6));

-- Location: LCCOMB_X32_Y14_N12
\inst4|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[5]~feeder_combout\ = \inst4|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(6),
	combout => \inst4|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X32_Y14_N13
\inst4|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(5));

-- Location: LCCOMB_X32_Y14_N6
\inst4|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[4]~2_combout\ = !\inst4|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(5),
	combout => \inst4|SHIFTOUT[4]~2_combout\);

-- Location: FF_X32_Y14_N7
\inst4|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[4]~2_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(4));

-- Location: LCCOMB_X32_Y14_N16
\inst4|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[3]~1_combout\ = !\inst4|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(4),
	combout => \inst4|SHIFTOUT[3]~1_combout\);

-- Location: FF_X32_Y14_N17
\inst4|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[3]~1_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(3));

-- Location: LCCOMB_X32_Y14_N26
\inst4|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[2]~0_combout\ = !\inst4|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(3),
	combout => \inst4|SHIFTOUT[2]~0_combout\);

-- Location: FF_X32_Y14_N27
\inst4|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[2]~0_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(2));

-- Location: LCCOMB_X32_Y14_N22
\inst4|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[1]~feeder_combout\ = \inst4|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTOUT\(2),
	combout => \inst4|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X32_Y14_N23
\inst4|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(1));

-- Location: FF_X32_Y14_N25
\inst4|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTOUT\(1),
	clrn => \inst4|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X35_Y14_N30
\inst4|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|WideOr4~combout\ = (\inst4|mouse_state.LOAD_COMMAND2~q\) # ((\inst4|mouse_state.LOAD_COMMAND~q\) # (!\inst4|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst4|mouse_state.LOAD_COMMAND~q\,
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|WideOr4~combout\);

-- Location: LCCOMB_X40_Y15_N0
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

-- Location: FF_X40_Y15_N1
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

-- Location: LCCOMB_X40_Y15_N6
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

-- Location: FF_X40_Y15_N7
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

-- Location: CLKCTRL_G7
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

-- Location: LCCOMB_X28_Y18_N8
\inst2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|h_count\(0) $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(0),
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: FF_X28_Y18_N9
\inst2|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(0));

-- Location: LCCOMB_X28_Y18_N10
\inst2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|h_count\(1) & (!\inst2|Add0~1\)) # (!\inst2|h_count\(1) & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(1),
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: LCCOMB_X28_Y18_N12
\inst2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|h_count\(2) & (\inst2|Add0~3\ $ (GND))) # (!\inst2|h_count\(2) & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|h_count\(2) & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: LCCOMB_X28_Y18_N14
\inst2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|h_count\(3) & (!\inst2|Add0~5\)) # (!\inst2|h_count\(3) & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(3),
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: FF_X28_Y18_N15
\inst2|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(3));

-- Location: LCCOMB_X28_Y18_N16
\inst2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|h_count\(4) & (\inst2|Add0~7\ $ (GND))) # (!\inst2|h_count\(4) & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|h_count\(4) & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(4),
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: FF_X28_Y18_N17
\inst2|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(4));

-- Location: LCCOMB_X28_Y18_N4
\inst2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (\inst2|h_count\(1) & (\inst2|h_count\(3) & (\inst2|h_count\(0) & \inst2|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(1),
	datab => \inst2|h_count\(3),
	datac => \inst2|h_count\(0),
	datad => \inst2|h_count\(4),
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y18_N22
\inst2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|h_count\(7) & (!\inst2|Add0~13\)) # (!\inst2|h_count\(7) & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(7),
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: FF_X28_Y18_N23
\inst2|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(7));

-- Location: LCCOMB_X28_Y18_N24
\inst2|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|h_count\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|h_count\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|h_count\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X28_Y18_N30
\inst2|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|h_count~1_combout\ = (\inst2|Add0~16_combout\ & !\inst2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Add0~16_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|h_count~1_combout\);

-- Location: FF_X28_Y18_N31
\inst2|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(8));

-- Location: LCCOMB_X29_Y18_N28
\inst2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|h_count\(2) & (!\inst2|h_count\(7) & (!\inst2|h_count\(5) & \inst2|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datab => \inst2|h_count\(7),
	datac => \inst2|h_count\(5),
	datad => \inst2|h_count\(8),
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y18_N26
\inst2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|h_count\(9) & (!\inst2|h_count\(6) & (\inst2|Equal0~0_combout\ & \inst2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(9),
	datab => \inst2|h_count\(6),
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal0~1_combout\,
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y18_N18
\inst2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|h_count\(5) & (!\inst2|Add0~9\)) # (!\inst2|h_count\(5) & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(5),
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: LCCOMB_X29_Y18_N22
\inst2|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|h_count~2_combout\ = (!\inst2|Equal0~2_combout\ & \inst2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Add0~10_combout\,
	combout => \inst2|h_count~2_combout\);

-- Location: FF_X29_Y18_N23
\inst2|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(5));

-- Location: LCCOMB_X28_Y18_N20
\inst2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|h_count\(6) & (\inst2|Add0~11\ $ (GND))) # (!\inst2|h_count\(6) & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|h_count\(6) & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(6),
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: FF_X28_Y18_N21
\inst2|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(6));

-- Location: LCCOMB_X28_Y18_N26
\inst2|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = \inst2|Add0~17\ $ (\inst2|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|h_count\(9),
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\);

-- Location: LCCOMB_X28_Y18_N0
\inst2|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|h_count~0_combout\ = (\inst2|Add0~18_combout\ & !\inst2|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add0~18_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|h_count~0_combout\);

-- Location: FF_X28_Y18_N1
\inst2|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(9));

-- Location: LCCOMB_X29_Y18_N8
\inst2|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = ((!\inst2|h_count\(8) & !\inst2|h_count\(7))) # (!\inst2|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(9),
	datab => \inst2|h_count\(8),
	datad => \inst2|h_count\(7),
	combout => \inst2|process_0~0_combout\);

-- Location: FF_X27_Y17_N31
\inst2|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(9),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(9));

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X29_Y14_N26
\inst4|INCNT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~5_combout\ = (\inst4|INCNT\(1) & (\inst4|INCNT\(2) & (!\inst4|INCNT\(3) & \inst4|INCNT\(0)))) # (!\inst4|INCNT\(1) & (!\inst4|INCNT\(2) & (\inst4|INCNT\(3) & !\inst4|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(1),
	datab => \inst4|INCNT\(2),
	datac => \inst4|INCNT\(3),
	datad => \inst4|INCNT\(0),
	combout => \inst4|INCNT~5_combout\);

-- Location: LCCOMB_X29_Y14_N10
\inst4|INCNT[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT[3]~2_combout\ = (\inst4|READ_CHAR~q\ & !\inst4|mouse_state.WAIT_OUTPUT_READY~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|READ_CHAR~q\,
	datad => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst4|INCNT[3]~2_combout\);

-- Location: FF_X29_Y14_N27
\inst4|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~5_combout\,
	ena => \inst4|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(3));

-- Location: LCCOMB_X29_Y14_N28
\inst4|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~4_combout\ = (!\inst4|INCNT\(0) & (((!\inst4|INCNT\(1) & !\inst4|INCNT\(2))) # (!\inst4|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(1),
	datab => \inst4|INCNT\(2),
	datac => \inst4|INCNT\(0),
	datad => \inst4|INCNT\(3),
	combout => \inst4|INCNT~4_combout\);

-- Location: FF_X29_Y14_N29
\inst4|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~4_combout\,
	ena => \inst4|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(0));

-- Location: LCCOMB_X29_Y14_N8
\inst4|INCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~1_combout\ = (!\inst4|INCNT\(3) & (\inst4|INCNT\(2) $ (((\inst4|INCNT\(1) & \inst4|INCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(1),
	datab => \inst4|INCNT\(0),
	datac => \inst4|INCNT\(2),
	datad => \inst4|INCNT\(3),
	combout => \inst4|INCNT~1_combout\);

-- Location: FF_X29_Y14_N9
\inst4|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~1_combout\,
	ena => \inst4|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(2));

-- Location: LCCOMB_X29_Y14_N24
\inst4|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~0_combout\ = ((!\inst4|INCNT\(1) & (!\inst4|INCNT\(2) & !\inst4|INCNT\(0)))) # (!\inst4|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(1),
	datab => \inst4|INCNT\(2),
	datac => \inst4|INCNT\(3),
	datad => \inst4|INCNT\(0),
	combout => \inst4|LessThan1~0_combout\);

-- Location: LCCOMB_X29_Y14_N0
\inst4|SHIFTIN[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[7]~2_combout\ = (\inst4|READ_CHAR~q\ & (\inst4|LessThan1~0_combout\ & !\inst4|mouse_state.WAIT_OUTPUT_READY~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|READ_CHAR~q\,
	datab => \inst4|LessThan1~0_combout\,
	datad => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst4|SHIFTIN[7]~2_combout\);

-- Location: FF_X29_Y14_N5
\inst4|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \mouse_data~input_o\,
	sload => VCC,
	ena => \inst4|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(8));

-- Location: FF_X29_Y14_N1
\inst4|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTIN\(8),
	sload => VCC,
	ena => \inst4|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(7));

-- Location: LCCOMB_X26_Y14_N0
\inst4|PACKET_CHAR2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[7]~feeder_combout\ = \inst4|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(7),
	combout => \inst4|PACKET_CHAR2[7]~feeder_combout\);

-- Location: LCCOMB_X30_Y14_N6
\inst4|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|READ_CHAR~0_combout\ = (\inst4|READ_CHAR~q\ & ((\inst4|LessThan1~0_combout\))) # (!\inst4|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \inst4|READ_CHAR~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|READ_CHAR~0_combout\);

-- Location: FF_X30_Y14_N7
\inst4|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|READ_CHAR~0_combout\,
	ena => \inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|READ_CHAR~q\);

-- Location: LCCOMB_X31_Y14_N0
\inst4|INCNT[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT[3]~0_combout\ = (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse_data~input_o\) # (\inst4|READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \inst4|READ_CHAR~q\,
	datad => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst4|INCNT[3]~0_combout\);

-- Location: LCCOMB_X31_Y14_N12
\inst4|PACKET_CHAR2[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[7]~1_combout\ = (\inst4|PACKET_CHAR2[7]~0_combout\ & (\inst4|READ_CHAR~q\ & (!\inst4|LessThan1~0_combout\ & \inst4|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR2[7]~0_combout\,
	datab => \inst4|READ_CHAR~q\,
	datac => \inst4|LessThan1~0_combout\,
	datad => \inst4|INCNT[3]~0_combout\,
	combout => \inst4|PACKET_CHAR2[7]~1_combout\);

-- Location: FF_X26_Y14_N1
\inst4|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[7]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(7));

-- Location: LCCOMB_X30_Y14_N20
\inst4|new_cursor_row[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[3]~10_combout\ = \inst4|PACKET_COUNT\(0) $ (\inst4|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|PACKET_COUNT\(1),
	combout => \inst4|new_cursor_row[3]~10_combout\);

-- Location: LCCOMB_X30_Y14_N28
\inst4|PACKET_COUNT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_COUNT[1]~feeder_combout\ = \inst4|new_cursor_row[3]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|new_cursor_row[3]~10_combout\,
	combout => \inst4|PACKET_COUNT[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y14_N8
\inst4|PACKET_CHAR3[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[7]~3_combout\ = (\inst4|READ_CHAR~q\ & (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst4|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|READ_CHAR~q\,
	datac => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|PACKET_CHAR3[7]~3_combout\);

-- Location: FF_X30_Y14_N29
\inst4|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_COUNT[1]~feeder_combout\,
	ena => \inst4|PACKET_CHAR3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_COUNT\(1));

-- Location: LCCOMB_X30_Y14_N26
\inst4|PACKET_COUNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_COUNT~0_combout\ = (\inst4|PACKET_COUNT\(1)) # (!\inst4|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|PACKET_COUNT\(1),
	combout => \inst4|PACKET_COUNT~0_combout\);

-- Location: FF_X30_Y14_N27
\inst4|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_COUNT~0_combout\,
	ena => \inst4|PACKET_CHAR3[7]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_COUNT\(0));

-- Location: FF_X29_Y14_N19
\inst4|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTIN\(7),
	sload => VCC,
	ena => \inst4|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(6));

-- Location: LCCOMB_X29_Y14_N16
\inst4|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[5]~feeder_combout\ = \inst4|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(6),
	combout => \inst4|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X29_Y14_N17
\inst4|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[5]~feeder_combout\,
	ena => \inst4|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(5));

-- Location: FF_X27_Y14_N11
\inst4|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTIN\(5),
	sload => VCC,
	ena => \inst4|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(5));

-- Location: LCCOMB_X29_Y14_N22
\inst4|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[4]~feeder_combout\ = \inst4|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(5),
	combout => \inst4|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X29_Y14_N23
\inst4|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[4]~feeder_combout\,
	ena => \inst4|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(4));

-- Location: FF_X27_Y14_N25
\inst4|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTIN\(4),
	sload => VCC,
	ena => \inst4|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(4));

-- Location: FF_X29_Y14_N21
\inst4|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTIN\(4),
	sload => VCC,
	ena => \inst4|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(3));

-- Location: FF_X27_Y14_N29
\inst4|PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTIN\(3),
	sload => VCC,
	ena => \inst4|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(3));

-- Location: LCCOMB_X26_Y14_N20
\inst4|new_cursor_column[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[7]~24_combout\ = (\inst4|cursor_column\(7) & ((\inst4|PACKET_CHAR2\(7) & (\inst4|new_cursor_column[6]~23\ & VCC)) # (!\inst4|PACKET_CHAR2\(7) & (!\inst4|new_cursor_column[6]~23\)))) # (!\inst4|cursor_column\(7) & 
-- ((\inst4|PACKET_CHAR2\(7) & (!\inst4|new_cursor_column[6]~23\)) # (!\inst4|PACKET_CHAR2\(7) & ((\inst4|new_cursor_column[6]~23\) # (GND)))))
-- \inst4|new_cursor_column[7]~25\ = CARRY((\inst4|cursor_column\(7) & (!\inst4|PACKET_CHAR2\(7) & !\inst4|new_cursor_column[6]~23\)) # (!\inst4|cursor_column\(7) & ((!\inst4|new_cursor_column[6]~23\) # (!\inst4|PACKET_CHAR2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst4|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \inst4|new_cursor_column[6]~23\,
	combout => \inst4|new_cursor_column[7]~24_combout\,
	cout => \inst4|new_cursor_column[7]~25\);

-- Location: LCCOMB_X27_Y14_N28
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X30_Y14_N22
\inst4|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Equal4~0_combout\ = (!\inst4|PACKET_COUNT\(0)) # (!\inst4|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PACKET_COUNT\(1),
	datac => \inst4|PACKET_COUNT\(0),
	combout => \inst4|Equal4~0_combout\);

-- Location: LCCOMB_X31_Y14_N18
\inst4|new_cursor_column[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[0]~30_combout\ = (!\inst4|LessThan1~0_combout\ & (!\inst4|new_cursor_row[3]~10_combout\ & (\inst4|READ_CHAR~q\ & \inst4|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan1~0_combout\,
	datab => \inst4|new_cursor_row[3]~10_combout\,
	datac => \inst4|READ_CHAR~q\,
	datad => \inst4|INCNT[3]~0_combout\,
	combout => \inst4|new_cursor_column[0]~30_combout\);

-- Location: FF_X26_Y14_N21
\inst4|new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[7]~24_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(7));

-- Location: LCCOMB_X26_Y14_N22
\inst4|new_cursor_column[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[8]~26_combout\ = ((\inst4|cursor_column\(8) $ (\inst4|PACKET_CHAR2\(7) $ (!\inst4|new_cursor_column[7]~25\)))) # (GND)
-- \inst4|new_cursor_column[8]~27\ = CARRY((\inst4|cursor_column\(8) & ((\inst4|PACKET_CHAR2\(7)) # (!\inst4|new_cursor_column[7]~25\))) # (!\inst4|cursor_column\(8) & (\inst4|PACKET_CHAR2\(7) & !\inst4|new_cursor_column[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(8),
	datab => \inst4|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \inst4|new_cursor_column[7]~25\,
	combout => \inst4|new_cursor_column[8]~26_combout\,
	cout => \inst4|new_cursor_column[8]~27\);

-- Location: FF_X26_Y14_N23
\inst4|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[8]~26_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(8));

-- Location: LCCOMB_X29_Y14_N2
\inst4|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[2]~feeder_combout\ = \inst4|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(3),
	combout => \inst4|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X29_Y14_N3
\inst4|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[2]~feeder_combout\,
	ena => \inst4|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(2));

-- Location: LCCOMB_X29_Y14_N12
\inst4|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[1]~feeder_combout\ = \inst4|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(2),
	combout => \inst4|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X29_Y14_N13
\inst4|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[1]~feeder_combout\,
	ena => \inst4|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(1));

-- Location: FF_X29_Y14_N15
\inst4|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTIN\(1),
	sload => VCC,
	ena => \inst4|SHIFTIN[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(0));

-- Location: LCCOMB_X26_Y14_N2
\inst4|PACKET_CHAR2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[0]~feeder_combout\ = \inst4|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(0),
	combout => \inst4|PACKET_CHAR2[0]~feeder_combout\);

-- Location: FF_X26_Y14_N3
\inst4|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[0]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(0));

-- Location: LCCOMB_X26_Y14_N6
\inst4|new_cursor_column[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[0]~10_combout\ = (\inst4|cursor_column\(0) & (\inst4|PACKET_CHAR2\(0) $ (VCC))) # (!\inst4|cursor_column\(0) & (\inst4|PACKET_CHAR2\(0) & VCC))
-- \inst4|new_cursor_column[0]~11\ = CARRY((\inst4|cursor_column\(0) & \inst4|PACKET_CHAR2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(0),
	datab => \inst4|PACKET_CHAR2\(0),
	datad => VCC,
	combout => \inst4|new_cursor_column[0]~10_combout\,
	cout => \inst4|new_cursor_column[0]~11\);

-- Location: FF_X26_Y14_N7
\inst4|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(0));

-- Location: LCCOMB_X27_Y14_N22
\inst4|cursor_column~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~15_combout\ = (\inst4|new_cursor_column\(1) & \inst4|cursor_column[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(1),
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~15_combout\);

-- Location: LCCOMB_X31_Y14_N14
\inst4|cursor_column[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column[0]~9_combout\ = (!\inst4|PACKET_COUNT\(1) & (\inst4|READ_CHAR~q\ & (!\inst4|LessThan1~0_combout\ & !\inst4|mouse_state.WAIT_OUTPUT_READY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_COUNT\(1),
	datab => \inst4|READ_CHAR~q\,
	datac => \inst4|LessThan1~0_combout\,
	datad => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst4|cursor_column[0]~9_combout\);

-- Location: FF_X27_Y14_N23
\inst4|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~15_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(1));

-- Location: LCCOMB_X26_Y14_N8
\inst4|new_cursor_column[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[1]~12_combout\ = (\inst4|PACKET_CHAR2\(1) & ((\inst4|cursor_column\(1) & (\inst4|new_cursor_column[0]~11\ & VCC)) # (!\inst4|cursor_column\(1) & (!\inst4|new_cursor_column[0]~11\)))) # (!\inst4|PACKET_CHAR2\(1) & 
-- ((\inst4|cursor_column\(1) & (!\inst4|new_cursor_column[0]~11\)) # (!\inst4|cursor_column\(1) & ((\inst4|new_cursor_column[0]~11\) # (GND)))))
-- \inst4|new_cursor_column[1]~13\ = CARRY((\inst4|PACKET_CHAR2\(1) & (!\inst4|cursor_column\(1) & !\inst4|new_cursor_column[0]~11\)) # (!\inst4|PACKET_CHAR2\(1) & ((!\inst4|new_cursor_column[0]~11\) # (!\inst4|cursor_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR2\(1),
	datab => \inst4|cursor_column\(1),
	datad => VCC,
	cin => \inst4|new_cursor_column[0]~11\,
	combout => \inst4|new_cursor_column[1]~12_combout\,
	cout => \inst4|new_cursor_column[1]~13\);

-- Location: FF_X26_Y14_N9
\inst4|new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(1));

-- Location: LCCOMB_X26_Y14_N14
\inst4|new_cursor_column[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[4]~18_combout\ = ((\inst4|cursor_column\(4) $ (\inst4|PACKET_CHAR2\(4) $ (!\inst4|new_cursor_column[3]~17\)))) # (GND)
-- \inst4|new_cursor_column[4]~19\ = CARRY((\inst4|cursor_column\(4) & ((\inst4|PACKET_CHAR2\(4)) # (!\inst4|new_cursor_column[3]~17\))) # (!\inst4|cursor_column\(4) & (\inst4|PACKET_CHAR2\(4) & !\inst4|new_cursor_column[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(4),
	datab => \inst4|PACKET_CHAR2\(4),
	datad => VCC,
	cin => \inst4|new_cursor_column[3]~17\,
	combout => \inst4|new_cursor_column[4]~18_combout\,
	cout => \inst4|new_cursor_column[4]~19\);

-- Location: FF_X26_Y14_N15
\inst4|new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(4));

-- Location: LCCOMB_X26_Y14_N12
\inst4|new_cursor_column[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[3]~16_combout\ = (\inst4|cursor_column\(3) & ((\inst4|PACKET_CHAR2\(3) & (\inst4|new_cursor_column[2]~15\ & VCC)) # (!\inst4|PACKET_CHAR2\(3) & (!\inst4|new_cursor_column[2]~15\)))) # (!\inst4|cursor_column\(3) & 
-- ((\inst4|PACKET_CHAR2\(3) & (!\inst4|new_cursor_column[2]~15\)) # (!\inst4|PACKET_CHAR2\(3) & ((\inst4|new_cursor_column[2]~15\) # (GND)))))
-- \inst4|new_cursor_column[3]~17\ = CARRY((\inst4|cursor_column\(3) & (!\inst4|PACKET_CHAR2\(3) & !\inst4|new_cursor_column[2]~15\)) # (!\inst4|cursor_column\(3) & ((!\inst4|new_cursor_column[2]~15\) # (!\inst4|PACKET_CHAR2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(3),
	datab => \inst4|PACKET_CHAR2\(3),
	datad => VCC,
	cin => \inst4|new_cursor_column[2]~15\,
	combout => \inst4|new_cursor_column[3]~16_combout\,
	cout => \inst4|new_cursor_column[3]~17\);

-- Location: FF_X26_Y14_N13
\inst4|new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(3));

-- Location: LCCOMB_X26_Y14_N28
\inst4|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~0_combout\ = (!\inst4|new_cursor_column\(2) & (!\inst4|new_cursor_column\(1) & (!\inst4|new_cursor_column\(4) & !\inst4|new_cursor_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(2),
	datab => \inst4|new_cursor_column\(1),
	datac => \inst4|new_cursor_column\(4),
	datad => \inst4|new_cursor_column\(3),
	combout => \inst4|RECV_UART~0_combout\);

-- Location: LCCOMB_X27_Y14_N26
\inst4|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan9~0_combout\ = (\inst4|new_cursor_column\(5)) # ((\inst4|new_cursor_column\(6)) # ((\inst4|new_cursor_column\(0)) # (!\inst4|RECV_UART~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(5),
	datab => \inst4|new_cursor_column\(6),
	datac => \inst4|new_cursor_column\(0),
	datad => \inst4|RECV_UART~0_combout\,
	combout => \inst4|LessThan9~0_combout\);

-- Location: LCCOMB_X27_Y14_N8
\inst4|cursor_column[7]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column[7]~17_combout\ = ((!\inst4|new_cursor_column\(8) & ((!\inst4|LessThan9~0_combout\) # (!\inst4|new_cursor_column\(7))))) # (!\inst4|new_cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(9),
	datab => \inst4|new_cursor_column\(8),
	datac => \inst4|new_cursor_column\(7),
	datad => \inst4|LessThan9~0_combout\,
	combout => \inst4|cursor_column[7]~17_combout\);

-- Location: LCCOMB_X26_Y14_N16
\inst4|new_cursor_column[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[5]~20_combout\ = (\inst4|cursor_column\(5) & ((\inst4|PACKET_CHAR2\(5) & (\inst4|new_cursor_column[4]~19\ & VCC)) # (!\inst4|PACKET_CHAR2\(5) & (!\inst4|new_cursor_column[4]~19\)))) # (!\inst4|cursor_column\(5) & 
-- ((\inst4|PACKET_CHAR2\(5) & (!\inst4|new_cursor_column[4]~19\)) # (!\inst4|PACKET_CHAR2\(5) & ((\inst4|new_cursor_column[4]~19\) # (GND)))))
-- \inst4|new_cursor_column[5]~21\ = CARRY((\inst4|cursor_column\(5) & (!\inst4|PACKET_CHAR2\(5) & !\inst4|new_cursor_column[4]~19\)) # (!\inst4|cursor_column\(5) & ((!\inst4|new_cursor_column[4]~19\) # (!\inst4|PACKET_CHAR2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(5),
	datab => \inst4|PACKET_CHAR2\(5),
	datad => VCC,
	cin => \inst4|new_cursor_column[4]~19\,
	combout => \inst4|new_cursor_column[5]~20_combout\,
	cout => \inst4|new_cursor_column[5]~21\);

-- Location: FF_X26_Y14_N17
\inst4|new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[5]~20_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(5));

-- Location: LCCOMB_X26_Y14_N30
\inst4|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~1_combout\ = (!\inst4|new_cursor_column\(5) & (!\inst4|new_cursor_column\(6) & \inst4|RECV_UART~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|new_cursor_column\(5),
	datac => \inst4|new_cursor_column\(6),
	datad => \inst4|RECV_UART~0_combout\,
	combout => \inst4|RECV_UART~1_combout\);

-- Location: LCCOMB_X27_Y14_N18
\inst4|RECV_UART~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~6_combout\ = (\inst4|new_cursor_column\(8) & ((\inst4|new_cursor_column\(7)) # ((\inst4|LessThan9~0_combout\)))) # (!\inst4|new_cursor_column\(8) & (!\inst4|new_cursor_column\(7) & ((\inst4|RECV_UART~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(8),
	datab => \inst4|new_cursor_column\(7),
	datac => \inst4|LessThan9~0_combout\,
	datad => \inst4|RECV_UART~1_combout\,
	combout => \inst4|RECV_UART~6_combout\);

-- Location: LCCOMB_X27_Y14_N10
\inst4|RECV_UART~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~7_combout\ = (\inst4|new_cursor_column\(9)) # (\inst4|RECV_UART~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|new_cursor_column\(9),
	datad => \inst4|RECV_UART~6_combout\,
	combout => \inst4|RECV_UART~7_combout\);

-- Location: LCCOMB_X27_Y14_N14
\inst4|cursor_column~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~6_combout\ = (\inst4|Equal3~0_combout\ & (!\inst4|cursor_column[7]~17_combout\ & ((!\inst4|RECV_UART~7_combout\) # (!\inst4|RECV_UART~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal3~0_combout\,
	datab => \inst4|RECV_UART~2_combout\,
	datac => \inst4|cursor_column[7]~17_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_column~6_combout\);

-- Location: LCCOMB_X27_Y14_N16
\inst4|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~10_combout\ = (\inst4|cursor_column~6_combout\) # ((\inst4|new_cursor_column\(7) & \inst4|cursor_column[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|new_cursor_column\(7),
	datac => \inst4|cursor_column~6_combout\,
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~10_combout\);

-- Location: FF_X27_Y14_N17
\inst4|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~10_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(7));

-- Location: LCCOMB_X27_Y14_N24
\inst4|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~2_combout\ = (!\inst4|cursor_column\(8) & (!\inst4|cursor_column\(7) & !\inst4|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(8),
	datab => \inst4|cursor_column\(7),
	datad => \inst4|cursor_column\(9),
	combout => \inst4|RECV_UART~2_combout\);

-- Location: LCCOMB_X27_Y14_N20
\inst4|cursor_column[7]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column[7]~7_combout\ = (\inst4|Equal3~0_combout\ & (\inst4|cursor_column[7]~17_combout\ & ((!\inst4|RECV_UART~7_combout\) # (!\inst4|RECV_UART~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal3~0_combout\,
	datab => \inst4|RECV_UART~2_combout\,
	datac => \inst4|cursor_column[7]~17_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_column[7]~7_combout\);

-- Location: LCCOMB_X27_Y14_N0
\inst4|cursor_column~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~14_combout\ = (\inst4|new_cursor_column\(2) & \inst4|cursor_column[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(2),
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~14_combout\);

-- Location: FF_X27_Y14_N1
\inst4|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~14_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(2));

-- Location: LCCOMB_X26_Y14_N18
\inst4|new_cursor_column[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[6]~22_combout\ = ((\inst4|PACKET_CHAR2\(6) $ (\inst4|cursor_column\(6) $ (!\inst4|new_cursor_column[5]~21\)))) # (GND)
-- \inst4|new_cursor_column[6]~23\ = CARRY((\inst4|PACKET_CHAR2\(6) & ((\inst4|cursor_column\(6)) # (!\inst4|new_cursor_column[5]~21\))) # (!\inst4|PACKET_CHAR2\(6) & (\inst4|cursor_column\(6) & !\inst4|new_cursor_column[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR2\(6),
	datab => \inst4|cursor_column\(6),
	datad => VCC,
	cin => \inst4|new_cursor_column[5]~21\,
	combout => \inst4|new_cursor_column[6]~22_combout\,
	cout => \inst4|new_cursor_column[6]~23\);

-- Location: FF_X26_Y14_N19
\inst4|new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[6]~22_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(6));

-- Location: LCCOMB_X28_Y14_N0
\inst4|cursor_column~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~19_combout\ = (\inst4|PACKET_COUNT\(1) & (((\inst4|new_cursor_column\(6) & \inst4|cursor_column[7]~7_combout\)))) # (!\inst4|PACKET_COUNT\(1) & (((\inst4|new_cursor_column\(6) & \inst4|cursor_column[7]~7_combout\)) # 
-- (!\inst4|PACKET_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_COUNT\(1),
	datab => \inst4|PACKET_COUNT\(0),
	datac => \inst4|new_cursor_column\(6),
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~19_combout\);

-- Location: FF_X28_Y14_N1
\inst4|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~19_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(6));

-- Location: LCCOMB_X26_Y14_N24
\inst4|new_cursor_column[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[9]~28_combout\ = \inst4|PACKET_CHAR2\(7) $ (\inst4|new_cursor_column[8]~27\ $ (\inst4|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PACKET_CHAR2\(7),
	datad => \inst4|cursor_column\(9),
	cin => \inst4|new_cursor_column[8]~27\,
	combout => \inst4|new_cursor_column[9]~28_combout\);

-- Location: FF_X26_Y14_N25
\inst4|new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(9));

-- Location: LCCOMB_X27_Y14_N12
\inst4|cursor_column~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~8_combout\ = (\inst4|cursor_column~6_combout\) # ((\inst4|new_cursor_column\(9) & \inst4|cursor_column[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|new_cursor_column\(9),
	datac => \inst4|cursor_column~6_combout\,
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~8_combout\);

-- Location: FF_X27_Y14_N13
\inst4|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~8_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(9));

-- Location: LCCOMB_X28_Y14_N2
\inst4|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~11_combout\ = (\inst4|new_cursor_column\(5) & \inst4|cursor_column[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|new_cursor_column\(5),
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~11_combout\);

-- Location: FF_X28_Y14_N3
\inst4|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~11_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(5));

-- Location: LCCOMB_X27_Y14_N6
\inst4|cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~13_combout\ = (\inst4|new_cursor_column\(3) & \inst4|cursor_column[7]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(3),
	datad => \inst4|cursor_column[7]~7_combout\,
	combout => \inst4|cursor_column~13_combout\);

-- Location: FF_X27_Y14_N7
\inst4|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~13_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(3));

-- Location: LCCOMB_X28_Y14_N12
\inst10|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add1~2_combout\ = (\inst4|cursor_column\(5) & (!\inst10|Add1~1\)) # (!\inst4|cursor_column\(5) & ((\inst10|Add1~1\) # (GND)))
-- \inst10|Add1~3\ = CARRY((!\inst10|Add1~1\) # (!\inst4|cursor_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_column\(5),
	datad => VCC,
	cin => \inst10|Add1~1\,
	combout => \inst10|Add1~2_combout\,
	cout => \inst10|Add1~3\);

-- Location: LCCOMB_X28_Y14_N14
\inst10|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add1~4_combout\ = (\inst4|cursor_column\(6) & (\inst10|Add1~3\ $ (GND))) # (!\inst4|cursor_column\(6) & (!\inst10|Add1~3\ & VCC))
-- \inst10|Add1~5\ = CARRY((\inst4|cursor_column\(6) & !\inst10|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_column\(6),
	datad => VCC,
	cin => \inst10|Add1~3\,
	combout => \inst10|Add1~4_combout\,
	cout => \inst10|Add1~5\);

-- Location: LCCOMB_X28_Y14_N20
\inst10|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add1~10_combout\ = \inst10|Add1~9\ $ (\inst4|cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|cursor_column\(9),
	cin => \inst10|Add1~9\,
	combout => \inst10|Add1~10_combout\);

-- Location: FF_X27_Y17_N29
\inst2|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(8),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(8));

-- Location: FF_X27_Y17_N27
\inst2|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(7),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(7));

-- Location: FF_X27_Y17_N21
\inst2|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(4),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(4));

-- Location: FF_X27_Y17_N7
\inst2|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(3),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(3));

-- Location: FF_X27_Y17_N1
\inst2|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(0),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(0));

-- Location: LCCOMB_X28_Y17_N0
\inst10|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~1_cout\ = CARRY((!\inst4|cursor_column\(0) & \inst2|pixel_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(0),
	datab => \inst2|pixel_column\(0),
	datad => VCC,
	cout => \inst10|LessThan1~1_cout\);

-- Location: LCCOMB_X28_Y17_N2
\inst10|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~3_cout\ = CARRY((\inst2|pixel_column\(1) & (\inst4|cursor_column\(1) & !\inst10|LessThan1~1_cout\)) # (!\inst2|pixel_column\(1) & ((\inst4|cursor_column\(1)) # (!\inst10|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(1),
	datab => \inst4|cursor_column\(1),
	datad => VCC,
	cin => \inst10|LessThan1~1_cout\,
	cout => \inst10|LessThan1~3_cout\);

-- Location: LCCOMB_X28_Y17_N4
\inst10|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~5_cout\ = CARRY((\inst2|pixel_column\(2) & ((!\inst10|LessThan1~3_cout\) # (!\inst4|cursor_column\(2)))) # (!\inst2|pixel_column\(2) & (!\inst4|cursor_column\(2) & !\inst10|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(2),
	datab => \inst4|cursor_column\(2),
	datad => VCC,
	cin => \inst10|LessThan1~3_cout\,
	cout => \inst10|LessThan1~5_cout\);

-- Location: LCCOMB_X28_Y17_N6
\inst10|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~7_cout\ = CARRY((\inst4|cursor_column\(3) & (!\inst2|pixel_column\(3) & !\inst10|LessThan1~5_cout\)) # (!\inst4|cursor_column\(3) & ((!\inst10|LessThan1~5_cout\) # (!\inst2|pixel_column\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(3),
	datab => \inst2|pixel_column\(3),
	datad => VCC,
	cin => \inst10|LessThan1~5_cout\,
	cout => \inst10|LessThan1~7_cout\);

-- Location: LCCOMB_X28_Y17_N8
\inst10|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~9_cout\ = CARRY((\inst10|Add1~0_combout\ & (\inst2|pixel_column\(4) & !\inst10|LessThan1~7_cout\)) # (!\inst10|Add1~0_combout\ & ((\inst2|pixel_column\(4)) # (!\inst10|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add1~0_combout\,
	datab => \inst2|pixel_column\(4),
	datad => VCC,
	cin => \inst10|LessThan1~7_cout\,
	cout => \inst10|LessThan1~9_cout\);

-- Location: LCCOMB_X28_Y17_N10
\inst10|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~11_cout\ = CARRY((\inst2|pixel_column\(5) & (\inst10|Add1~2_combout\ & !\inst10|LessThan1~9_cout\)) # (!\inst2|pixel_column\(5) & ((\inst10|Add1~2_combout\) # (!\inst10|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(5),
	datab => \inst10|Add1~2_combout\,
	datad => VCC,
	cin => \inst10|LessThan1~9_cout\,
	cout => \inst10|LessThan1~11_cout\);

-- Location: LCCOMB_X28_Y17_N12
\inst10|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~13_cout\ = CARRY((\inst2|pixel_column\(6) & ((!\inst10|LessThan1~11_cout\) # (!\inst10|Add1~4_combout\))) # (!\inst2|pixel_column\(6) & (!\inst10|Add1~4_combout\ & !\inst10|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(6),
	datab => \inst10|Add1~4_combout\,
	datad => VCC,
	cin => \inst10|LessThan1~11_cout\,
	cout => \inst10|LessThan1~13_cout\);

-- Location: LCCOMB_X28_Y17_N14
\inst10|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~15_cout\ = CARRY((\inst10|Add1~6_combout\ & ((!\inst10|LessThan1~13_cout\) # (!\inst2|pixel_column\(7)))) # (!\inst10|Add1~6_combout\ & (!\inst2|pixel_column\(7) & !\inst10|LessThan1~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add1~6_combout\,
	datab => \inst2|pixel_column\(7),
	datad => VCC,
	cin => \inst10|LessThan1~13_cout\,
	cout => \inst10|LessThan1~15_cout\);

-- Location: LCCOMB_X28_Y17_N16
\inst10|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~17_cout\ = CARRY((\inst10|Add1~8_combout\ & (\inst2|pixel_column\(8) & !\inst10|LessThan1~15_cout\)) # (!\inst10|Add1~8_combout\ & ((\inst2|pixel_column\(8)) # (!\inst10|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add1~8_combout\,
	datab => \inst2|pixel_column\(8),
	datad => VCC,
	cin => \inst10|LessThan1~15_cout\,
	cout => \inst10|LessThan1~17_cout\);

-- Location: LCCOMB_X28_Y17_N18
\inst10|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan1~18_combout\ = (\inst2|pixel_column\(9) & ((\inst10|LessThan1~17_cout\) # (!\inst10|Add1~10_combout\))) # (!\inst2|pixel_column\(9) & (\inst10|LessThan1~17_cout\ & !\inst10|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_column\(9),
	datad => \inst10|Add1~10_combout\,
	cin => \inst10|LessThan1~17_cout\,
	combout => \inst10|LessThan1~18_combout\);

-- Location: LCCOMB_X30_Y14_N24
\inst4|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Equal3~0_combout\ = (\inst4|PACKET_COUNT\(0)) # (\inst4|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|PACKET_COUNT\(1),
	combout => \inst4|Equal3~0_combout\);

-- Location: LCCOMB_X30_Y15_N4
\inst4|PACKET_CHAR3[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[7]~feeder_combout\ = \inst4|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(7),
	combout => \inst4|PACKET_CHAR3[7]~feeder_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst4|PACKET_CHAR3[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[7]~2_combout\ = (\inst4|READ_CHAR~q\ & (!\inst4|Equal4~0_combout\ & (!\inst4|LessThan1~0_combout\ & !\inst4|mouse_state.WAIT_OUTPUT_READY~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|READ_CHAR~q\,
	datab => \inst4|Equal4~0_combout\,
	datac => \inst4|LessThan1~0_combout\,
	datad => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	combout => \inst4|PACKET_CHAR3[7]~2_combout\);

-- Location: FF_X30_Y15_N5
\inst4|PACKET_CHAR3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[7]~feeder_combout\,
	ena => \inst4|PACKET_CHAR3[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(7));

-- Location: LCCOMB_X31_Y17_N20
\inst4|new_cursor_row[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[8]~27_combout\ = ((\inst4|PACKET_CHAR3\(7) $ (\inst4|cursor_row\(8) $ (\inst4|new_cursor_row[7]~26\)))) # (GND)
-- \inst4|new_cursor_row[8]~28\ = CARRY((\inst4|PACKET_CHAR3\(7) & (\inst4|cursor_row\(8) & !\inst4|new_cursor_row[7]~26\)) # (!\inst4|PACKET_CHAR3\(7) & ((\inst4|cursor_row\(8)) # (!\inst4|new_cursor_row[7]~26\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR3\(7),
	datab => \inst4|cursor_row\(8),
	datad => VCC,
	cin => \inst4|new_cursor_row[7]~26\,
	combout => \inst4|new_cursor_row[8]~27_combout\,
	cout => \inst4|new_cursor_row[8]~28\);

-- Location: LCCOMB_X31_Y17_N22
\inst4|new_cursor_row[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[9]~29_combout\ = \inst4|new_cursor_row[8]~28\ $ (!\inst4|PACKET_CHAR3\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|PACKET_CHAR3\(7),
	cin => \inst4|new_cursor_row[8]~28\,
	combout => \inst4|new_cursor_row[9]~29_combout\);

-- Location: FF_X31_Y17_N23
\inst4|new_cursor_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[9]~29_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(9));

-- Location: LCCOMB_X30_Y15_N20
\inst4|PACKET_CHAR3[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[5]~feeder_combout\ = \inst4|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(5),
	combout => \inst4|PACKET_CHAR3[5]~feeder_combout\);

-- Location: FF_X30_Y15_N21
\inst4|PACKET_CHAR3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[5]~feeder_combout\,
	ena => \inst4|PACKET_CHAR3[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(5));

-- Location: LCCOMB_X30_Y17_N0
\inst4|cursor_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~5_combout\ = ((\inst4|new_cursor_row\(4) & (\inst4|cursor_row~0_combout\ & !\inst4|RECV_UART~5_combout\))) # (!\inst4|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(4),
	datab => \inst4|Equal3~0_combout\,
	datac => \inst4|cursor_row~0_combout\,
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|cursor_row~5_combout\);

-- Location: FF_X30_Y17_N1
\inst4|cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~5_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(4));

-- Location: LCCOMB_X30_Y15_N16
\inst4|PACKET_CHAR3[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[3]~feeder_combout\ = \inst4|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(3),
	combout => \inst4|PACKET_CHAR3[3]~feeder_combout\);

-- Location: FF_X30_Y15_N17
\inst4|PACKET_CHAR3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[3]~feeder_combout\,
	ena => \inst4|PACKET_CHAR3[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(3));

-- Location: LCCOMB_X30_Y15_N6
\inst4|PACKET_CHAR3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[2]~feeder_combout\ = \inst4|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(2),
	combout => \inst4|PACKET_CHAR3[2]~feeder_combout\);

-- Location: FF_X30_Y15_N7
\inst4|PACKET_CHAR3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[2]~feeder_combout\,
	ena => \inst4|PACKET_CHAR3[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(2));

-- Location: LCCOMB_X30_Y15_N24
\inst4|PACKET_CHAR3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[1]~feeder_combout\ = \inst4|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(1),
	combout => \inst4|PACKET_CHAR3[1]~feeder_combout\);

-- Location: FF_X30_Y15_N25
\inst4|PACKET_CHAR3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[1]~feeder_combout\,
	ena => \inst4|PACKET_CHAR3[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(1));

-- Location: LCCOMB_X31_Y17_N4
\inst4|new_cursor_row[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[0]~11_combout\ = (\inst4|PACKET_CHAR3\(0) & (\inst4|cursor_row\(0) $ (VCC))) # (!\inst4|PACKET_CHAR3\(0) & ((\inst4|cursor_row\(0)) # (GND)))
-- \inst4|new_cursor_row[0]~12\ = CARRY((\inst4|cursor_row\(0)) # (!\inst4|PACKET_CHAR3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR3\(0),
	datab => \inst4|cursor_row\(0),
	datad => VCC,
	combout => \inst4|new_cursor_row[0]~11_combout\,
	cout => \inst4|new_cursor_row[0]~12\);

-- Location: LCCOMB_X31_Y17_N6
\inst4|new_cursor_row[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[1]~13_combout\ = (\inst4|cursor_row\(1) & ((\inst4|PACKET_CHAR3\(1) & (!\inst4|new_cursor_row[0]~12\)) # (!\inst4|PACKET_CHAR3\(1) & (\inst4|new_cursor_row[0]~12\ & VCC)))) # (!\inst4|cursor_row\(1) & ((\inst4|PACKET_CHAR3\(1) & 
-- ((\inst4|new_cursor_row[0]~12\) # (GND))) # (!\inst4|PACKET_CHAR3\(1) & (!\inst4|new_cursor_row[0]~12\))))
-- \inst4|new_cursor_row[1]~14\ = CARRY((\inst4|cursor_row\(1) & (\inst4|PACKET_CHAR3\(1) & !\inst4|new_cursor_row[0]~12\)) # (!\inst4|cursor_row\(1) & ((\inst4|PACKET_CHAR3\(1)) # (!\inst4|new_cursor_row[0]~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(1),
	datab => \inst4|PACKET_CHAR3\(1),
	datad => VCC,
	cin => \inst4|new_cursor_row[0]~12\,
	combout => \inst4|new_cursor_row[1]~13_combout\,
	cout => \inst4|new_cursor_row[1]~14\);

-- Location: LCCOMB_X31_Y17_N8
\inst4|new_cursor_row[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[2]~15_combout\ = ((\inst4|cursor_row\(2) $ (\inst4|PACKET_CHAR3\(2) $ (\inst4|new_cursor_row[1]~14\)))) # (GND)
-- \inst4|new_cursor_row[2]~16\ = CARRY((\inst4|cursor_row\(2) & ((!\inst4|new_cursor_row[1]~14\) # (!\inst4|PACKET_CHAR3\(2)))) # (!\inst4|cursor_row\(2) & (!\inst4|PACKET_CHAR3\(2) & !\inst4|new_cursor_row[1]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(2),
	datab => \inst4|PACKET_CHAR3\(2),
	datad => VCC,
	cin => \inst4|new_cursor_row[1]~14\,
	combout => \inst4|new_cursor_row[2]~15_combout\,
	cout => \inst4|new_cursor_row[2]~16\);

-- Location: LCCOMB_X31_Y17_N12
\inst4|new_cursor_row[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[4]~19_combout\ = ((\inst4|PACKET_CHAR3\(4) $ (\inst4|cursor_row\(4) $ (\inst4|new_cursor_row[3]~18\)))) # (GND)
-- \inst4|new_cursor_row[4]~20\ = CARRY((\inst4|PACKET_CHAR3\(4) & (\inst4|cursor_row\(4) & !\inst4|new_cursor_row[3]~18\)) # (!\inst4|PACKET_CHAR3\(4) & ((\inst4|cursor_row\(4)) # (!\inst4|new_cursor_row[3]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR3\(4),
	datab => \inst4|cursor_row\(4),
	datad => VCC,
	cin => \inst4|new_cursor_row[3]~18\,
	combout => \inst4|new_cursor_row[4]~19_combout\,
	cout => \inst4|new_cursor_row[4]~20\);

-- Location: LCCOMB_X31_Y17_N14
\inst4|new_cursor_row[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[5]~21_combout\ = (\inst4|cursor_row\(5) & ((\inst4|PACKET_CHAR3\(5) & (!\inst4|new_cursor_row[4]~20\)) # (!\inst4|PACKET_CHAR3\(5) & (\inst4|new_cursor_row[4]~20\ & VCC)))) # (!\inst4|cursor_row\(5) & ((\inst4|PACKET_CHAR3\(5) & 
-- ((\inst4|new_cursor_row[4]~20\) # (GND))) # (!\inst4|PACKET_CHAR3\(5) & (!\inst4|new_cursor_row[4]~20\))))
-- \inst4|new_cursor_row[5]~22\ = CARRY((\inst4|cursor_row\(5) & (\inst4|PACKET_CHAR3\(5) & !\inst4|new_cursor_row[4]~20\)) # (!\inst4|cursor_row\(5) & ((\inst4|PACKET_CHAR3\(5)) # (!\inst4|new_cursor_row[4]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(5),
	datab => \inst4|PACKET_CHAR3\(5),
	datad => VCC,
	cin => \inst4|new_cursor_row[4]~20\,
	combout => \inst4|new_cursor_row[5]~21_combout\,
	cout => \inst4|new_cursor_row[5]~22\);

-- Location: LCCOMB_X31_Y17_N16
\inst4|new_cursor_row[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[6]~23_combout\ = ((\inst4|PACKET_CHAR3\(6) $ (\inst4|cursor_row\(6) $ (\inst4|new_cursor_row[5]~22\)))) # (GND)
-- \inst4|new_cursor_row[6]~24\ = CARRY((\inst4|PACKET_CHAR3\(6) & (\inst4|cursor_row\(6) & !\inst4|new_cursor_row[5]~22\)) # (!\inst4|PACKET_CHAR3\(6) & ((\inst4|cursor_row\(6)) # (!\inst4|new_cursor_row[5]~22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR3\(6),
	datab => \inst4|cursor_row\(6),
	datad => VCC,
	cin => \inst4|new_cursor_row[5]~22\,
	combout => \inst4|new_cursor_row[6]~23_combout\,
	cout => \inst4|new_cursor_row[6]~24\);

-- Location: FF_X31_Y17_N17
\inst4|new_cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[6]~23_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(6));

-- Location: FF_X31_Y17_N15
\inst4|new_cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[5]~21_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(5));

-- Location: FF_X31_Y17_N9
\inst4|new_cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[2]~15_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(2));

-- Location: FF_X31_Y17_N7
\inst4|new_cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[1]~13_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(1));

-- Location: FF_X31_Y17_N13
\inst4|new_cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[4]~19_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(4));

-- Location: LCCOMB_X31_Y17_N0
\inst4|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~0_combout\ = (!\inst4|new_cursor_row\(3) & (!\inst4|new_cursor_row\(2) & (!\inst4|new_cursor_row\(1) & !\inst4|new_cursor_row\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(3),
	datab => \inst4|new_cursor_row\(2),
	datac => \inst4|new_cursor_row\(1),
	datad => \inst4|new_cursor_row\(4),
	combout => \inst4|LessThan5~0_combout\);

-- Location: LCCOMB_X31_Y17_N26
\inst4|RECV_UART~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~3_combout\ = (!\inst4|new_cursor_row\(7) & (!\inst4|new_cursor_row\(6) & (!\inst4|new_cursor_row\(5) & \inst4|LessThan5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(7),
	datab => \inst4|new_cursor_row\(6),
	datac => \inst4|new_cursor_row\(5),
	datad => \inst4|LessThan5~0_combout\,
	combout => \inst4|RECV_UART~3_combout\);

-- Location: LCCOMB_X31_Y17_N28
\inst4|RECV_UART~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~4_combout\ = (\inst4|new_cursor_row\(9)) # ((\inst4|RECV_UART~3_combout\ & ((\inst4|new_cursor_row\(0)) # (!\inst4|new_cursor_row\(8)))) # (!\inst4|RECV_UART~3_combout\ & ((\inst4|new_cursor_row\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(9),
	datab => \inst4|new_cursor_row\(0),
	datac => \inst4|RECV_UART~3_combout\,
	datad => \inst4|new_cursor_row\(8),
	combout => \inst4|RECV_UART~4_combout\);

-- Location: LCCOMB_X31_Y17_N2
\inst4|RECV_UART~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~5_combout\ = (!\inst4|cursor_row\(8) & (!\inst4|cursor_row\(7) & \inst4|RECV_UART~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datac => \inst4|cursor_row\(7),
	datad => \inst4|RECV_UART~4_combout\,
	combout => \inst4|RECV_UART~5_combout\);

-- Location: LCCOMB_X30_Y17_N22
\inst4|cursor_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~9_combout\ = (\inst4|new_cursor_row\(0) & (\inst4|Equal3~0_combout\ & (\inst4|cursor_row~0_combout\ & !\inst4|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(0),
	datab => \inst4|Equal3~0_combout\,
	datac => \inst4|cursor_row~0_combout\,
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|cursor_row~9_combout\);

-- Location: FF_X30_Y17_N23
\inst4|cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~9_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(0));

-- Location: FF_X31_Y17_N5
\inst4|new_cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[0]~11_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(0));

-- Location: LCCOMB_X32_Y17_N12
\inst4|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~1_combout\ = (\inst4|new_cursor_row\(5) & (\inst4|new_cursor_row\(8) & (\inst4|new_cursor_row\(6) & \inst4|new_cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(5),
	datab => \inst4|new_cursor_row\(8),
	datac => \inst4|new_cursor_row\(6),
	datad => \inst4|new_cursor_row\(7),
	combout => \inst4|LessThan5~1_combout\);

-- Location: LCCOMB_X32_Y17_N2
\inst4|cursor_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~0_combout\ = (!\inst4|new_cursor_row\(9) & (((\inst4|LessThan5~0_combout\ & !\inst4|new_cursor_row\(0))) # (!\inst4|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan5~0_combout\,
	datab => \inst4|new_cursor_row\(9),
	datac => \inst4|new_cursor_row\(0),
	datad => \inst4|LessThan5~1_combout\,
	combout => \inst4|cursor_row~0_combout\);

-- Location: LCCOMB_X30_Y17_N30
\inst4|cursor_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~3_combout\ = ((!\inst4|RECV_UART~5_combout\ & ((\inst4|new_cursor_row\(6)) # (!\inst4|cursor_row~0_combout\)))) # (!\inst4|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(6),
	datab => \inst4|Equal3~0_combout\,
	datac => \inst4|cursor_row~0_combout\,
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|cursor_row~3_combout\);

-- Location: FF_X30_Y17_N31
\inst4|cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~3_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(6));

-- Location: LCCOMB_X31_Y17_N18
\inst4|new_cursor_row[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[7]~25_combout\ = (\inst4|PACKET_CHAR3\(7) & ((\inst4|cursor_row\(7) & (!\inst4|new_cursor_row[6]~24\)) # (!\inst4|cursor_row\(7) & ((\inst4|new_cursor_row[6]~24\) # (GND))))) # (!\inst4|PACKET_CHAR3\(7) & ((\inst4|cursor_row\(7) & 
-- (\inst4|new_cursor_row[6]~24\ & VCC)) # (!\inst4|cursor_row\(7) & (!\inst4|new_cursor_row[6]~24\))))
-- \inst4|new_cursor_row[7]~26\ = CARRY((\inst4|PACKET_CHAR3\(7) & ((!\inst4|new_cursor_row[6]~24\) # (!\inst4|cursor_row\(7)))) # (!\inst4|PACKET_CHAR3\(7) & (!\inst4|cursor_row\(7) & !\inst4|new_cursor_row[6]~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR3\(7),
	datab => \inst4|cursor_row\(7),
	datad => VCC,
	cin => \inst4|new_cursor_row[6]~24\,
	combout => \inst4|new_cursor_row[7]~25_combout\,
	cout => \inst4|new_cursor_row[7]~26\);

-- Location: FF_X31_Y17_N19
\inst4|new_cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[7]~25_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(7));

-- Location: LCCOMB_X30_Y17_N28
\inst4|cursor_row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~2_combout\ = ((!\inst4|RECV_UART~5_combout\ & ((\inst4|new_cursor_row\(7)) # (!\inst4|cursor_row~0_combout\)))) # (!\inst4|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal3~0_combout\,
	datab => \inst4|new_cursor_row\(7),
	datac => \inst4|cursor_row~0_combout\,
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|cursor_row~2_combout\);

-- Location: FF_X30_Y17_N29
\inst4|cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~2_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(7));

-- Location: FF_X31_Y17_N21
\inst4|new_cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[8]~27_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(8));

-- Location: LCCOMB_X31_Y17_N24
\inst4|cursor_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~1_combout\ = (\inst4|Equal3~0_combout\ & (!\inst4|RECV_UART~5_combout\ & ((\inst4|new_cursor_row\(8)) # (!\inst4|cursor_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row~0_combout\,
	datab => \inst4|new_cursor_row\(8),
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|cursor_row~1_combout\);

-- Location: FF_X31_Y17_N25
\inst4|cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~1_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(8));

-- Location: LCCOMB_X31_Y18_N10
\inst2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|v_count\(0) $ (VCC)
-- \inst2|Add1~1\ = CARRY(\inst2|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(0),
	datad => VCC,
	combout => \inst2|Add1~0_combout\,
	cout => \inst2|Add1~1\);

-- Location: LCCOMB_X31_Y18_N12
\inst2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst2|v_count\(1) & (!\inst2|Add1~1\)) # (!\inst2|v_count\(1) & ((\inst2|Add1~1\) # (GND)))
-- \inst2|Add1~3\ = CARRY((!\inst2|Add1~1\) # (!\inst2|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(1),
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: FF_X28_Y18_N13
\inst2|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(2));

-- Location: LCCOMB_X28_Y18_N6
\inst2|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~9_combout\ = ((!\inst2|h_count\(2) & ((!\inst2|h_count\(0)) # (!\inst2|h_count\(1))))) # (!\inst2|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(1),
	datab => \inst2|h_count\(3),
	datac => \inst2|h_count\(0),
	datad => \inst2|h_count\(2),
	combout => \inst2|process_0~9_combout\);

-- Location: LCCOMB_X29_Y18_N18
\inst2|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~11_combout\ = (!\inst2|h_count\(6) & (!\inst2|h_count\(8) & ((\inst2|process_0~9_combout\) # (!\inst2|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~10_combout\,
	datab => \inst2|h_count\(6),
	datac => \inst2|process_0~9_combout\,
	datad => \inst2|h_count\(8),
	combout => \inst2|process_0~11_combout\);

-- Location: LCCOMB_X31_Y18_N18
\inst2|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~8_combout\ = (\inst2|v_count\(4) & (\inst2|Add1~7\ $ (GND))) # (!\inst2|v_count\(4) & (!\inst2|Add1~7\ & VCC))
-- \inst2|Add1~9\ = CARRY((\inst2|v_count\(4) & !\inst2|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(4),
	datad => VCC,
	cin => \inst2|Add1~7\,
	combout => \inst2|Add1~8_combout\,
	cout => \inst2|Add1~9\);

-- Location: LCCOMB_X31_Y18_N20
\inst2|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|v_count\(5) & (!\inst2|Add1~9\)) # (!\inst2|v_count\(5) & ((\inst2|Add1~9\) # (GND)))
-- \inst2|Add1~11\ = CARRY((!\inst2|Add1~9\) # (!\inst2|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X30_Y18_N6
\inst2|v_count[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[5]~2_combout\ = (\inst2|process_0~12_combout\ & ((\inst2|Equal1~1_combout\ & ((\inst2|v_count\(5)))) # (!\inst2|Equal1~1_combout\ & (\inst2|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Add1~10_combout\,
	datac => \inst2|v_count\(5),
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[5]~2_combout\);

-- Location: FF_X30_Y18_N7
\inst2|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(5));

-- Location: LCCOMB_X31_Y18_N22
\inst2|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~12_combout\ = (\inst2|v_count\(6) & (\inst2|Add1~11\ $ (GND))) # (!\inst2|v_count\(6) & (!\inst2|Add1~11\ & VCC))
-- \inst2|Add1~13\ = CARRY((\inst2|v_count\(6) & !\inst2|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(6),
	datad => VCC,
	cin => \inst2|Add1~11\,
	combout => \inst2|Add1~12_combout\,
	cout => \inst2|Add1~13\);

-- Location: LCCOMB_X31_Y18_N24
\inst2|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = (\inst2|v_count\(7) & (!\inst2|Add1~13\)) # (!\inst2|v_count\(7) & ((\inst2|Add1~13\) # (GND)))
-- \inst2|Add1~15\ = CARRY((!\inst2|Add1~13\) # (!\inst2|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(7),
	datad => VCC,
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\,
	cout => \inst2|Add1~15\);

-- Location: LCCOMB_X30_Y18_N2
\inst2|v_count[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[7]~4_combout\ = (\inst2|process_0~12_combout\ & ((\inst2|Equal1~1_combout\ & ((\inst2|v_count\(7)))) # (!\inst2|Equal1~1_combout\ & (\inst2|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Add1~14_combout\,
	datac => \inst2|v_count\(7),
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[7]~4_combout\);

-- Location: FF_X30_Y18_N3
\inst2|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[7]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(7));

-- Location: LCCOMB_X31_Y18_N26
\inst2|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~16_combout\ = (\inst2|v_count\(8) & (\inst2|Add1~15\ $ (GND))) # (!\inst2|v_count\(8) & (!\inst2|Add1~15\ & VCC))
-- \inst2|Add1~17\ = CARRY((\inst2|v_count\(8) & !\inst2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(8),
	datad => VCC,
	cin => \inst2|Add1~15\,
	combout => \inst2|Add1~16_combout\,
	cout => \inst2|Add1~17\);

-- Location: LCCOMB_X30_Y18_N30
\inst2|v_count[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[8]~0_combout\ = (\inst2|process_0~12_combout\ & ((\inst2|Equal1~1_combout\ & ((\inst2|v_count\(8)))) # (!\inst2|Equal1~1_combout\ & (\inst2|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Add1~16_combout\,
	datac => \inst2|v_count\(8),
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[8]~0_combout\);

-- Location: FF_X30_Y18_N31
\inst2|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(8));

-- Location: LCCOMB_X30_Y18_N16
\inst2|v_count[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[6]~3_combout\ = (\inst2|process_0~12_combout\ & ((\inst2|Equal1~1_combout\ & ((\inst2|v_count\(6)))) # (!\inst2|Equal1~1_combout\ & (\inst2|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Add1~12_combout\,
	datac => \inst2|v_count\(6),
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[6]~3_combout\);

-- Location: FF_X30_Y18_N17
\inst2|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(6));

-- Location: LCCOMB_X30_Y18_N28
\inst2|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~8_combout\ = (\inst2|process_0~7_combout\ & (!\inst2|v_count\(7) & (!\inst2|v_count\(8) & !\inst2|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~7_combout\,
	datab => \inst2|v_count\(7),
	datac => \inst2|v_count\(8),
	datad => \inst2|v_count\(6),
	combout => \inst2|process_0~8_combout\);

-- Location: LCCOMB_X29_Y18_N20
\inst2|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~12_combout\ = ((\inst2|process_0~11_combout\) # ((\inst2|process_0~0_combout\) # (\inst2|process_0~8_combout\))) # (!\inst2|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(9),
	datab => \inst2|process_0~11_combout\,
	datac => \inst2|process_0~0_combout\,
	datad => \inst2|process_0~8_combout\,
	combout => \inst2|process_0~12_combout\);

-- Location: LCCOMB_X30_Y18_N24
\inst2|v_count~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count~8_combout\ = (\inst2|Add1~2_combout\ & \inst2|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~2_combout\,
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count~8_combout\);

-- Location: LCCOMB_X29_Y18_N10
\inst2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|h_count\(2)) # ((\inst2|h_count\(8)) # ((!\inst2|h_count\(7)) # (!\inst2|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datab => \inst2|h_count\(8),
	datac => \inst2|h_count\(5),
	datad => \inst2|h_count\(7),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y18_N16
\inst2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = ((\inst2|h_count\(6)) # ((\inst2|Equal1~0_combout\) # (!\inst2|Equal0~0_combout\))) # (!\inst2|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(9),
	datab => \inst2|h_count\(6),
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|Equal1~0_combout\,
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y18_N22
\inst2|v_count[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[0]~9_combout\ = (!\inst2|process_0~12_combout\) # (!\inst2|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal1~1_combout\,
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[0]~9_combout\);

-- Location: FF_X30_Y18_N25
\inst2|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count~8_combout\,
	ena => \inst2|v_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(1));

-- Location: LCCOMB_X31_Y18_N14
\inst2|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = (\inst2|v_count\(2) & (\inst2|Add1~3\ $ (GND))) # (!\inst2|v_count\(2) & (!\inst2|Add1~3\ & VCC))
-- \inst2|Add1~5\ = CARRY((\inst2|v_count\(2) & !\inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: LCCOMB_X31_Y18_N16
\inst2|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~6_combout\ = (\inst2|v_count\(3) & (!\inst2|Add1~5\)) # (!\inst2|v_count\(3) & ((\inst2|Add1~5\) # (GND)))
-- \inst2|Add1~7\ = CARRY((!\inst2|Add1~5\) # (!\inst2|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(3),
	datad => VCC,
	cin => \inst2|Add1~5\,
	combout => \inst2|Add1~6_combout\,
	cout => \inst2|Add1~7\);

-- Location: LCCOMB_X30_Y18_N18
\inst2|v_count[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[3]~5_combout\ = (\inst2|process_0~12_combout\ & ((\inst2|Equal1~1_combout\ & ((\inst2|v_count\(3)))) # (!\inst2|Equal1~1_combout\ & (\inst2|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Add1~6_combout\,
	datac => \inst2|v_count\(3),
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[3]~5_combout\);

-- Location: FF_X30_Y18_N19
\inst2|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(3));

-- Location: LCCOMB_X30_Y18_N0
\inst2|v_count[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[4]~6_combout\ = (\inst2|process_0~12_combout\ & ((\inst2|Equal1~1_combout\ & ((\inst2|v_count\(4)))) # (!\inst2|Equal1~1_combout\ & (\inst2|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Add1~8_combout\,
	datac => \inst2|v_count\(4),
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[4]~6_combout\);

-- Location: FF_X30_Y18_N1
\inst2|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(4));

-- Location: LCCOMB_X30_Y18_N20
\inst2|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = (\inst2|v_count\(5) & (\inst2|v_count\(6) & (\inst2|v_count\(8) & \inst2|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(5),
	datab => \inst2|v_count\(6),
	datac => \inst2|v_count\(8),
	datad => \inst2|v_count\(7),
	combout => \inst2|LessThan7~0_combout\);

-- Location: LCCOMB_X31_Y18_N28
\inst2|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~18_combout\ = \inst2|Add1~17\ $ (\inst2|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst2|v_count\(9),
	cin => \inst2|Add1~17\,
	combout => \inst2|Add1~18_combout\);

-- Location: LCCOMB_X30_Y18_N12
\inst2|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[9]~1_combout\ = (\inst2|process_0~12_combout\ & ((\inst2|Equal1~1_combout\ & ((\inst2|v_count\(9)))) # (!\inst2|Equal1~1_combout\ & (\inst2|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Add1~18_combout\,
	datac => \inst2|v_count\(9),
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[9]~1_combout\);

-- Location: FF_X30_Y18_N13
\inst2|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(9));

-- Location: LCCOMB_X31_Y18_N0
\inst2|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = (!\inst2|LessThan7~0_combout\ & !\inst2|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|LessThan7~0_combout\,
	datad => \inst2|v_count\(9),
	combout => \inst2|LessThan7~1_combout\);

-- Location: FF_X32_Y18_N5
\inst2|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|v_count\(4),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(4));

-- Location: FF_X32_Y18_N7
\inst2|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|v_count\(3),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(3));

-- Location: FF_X32_Y18_N29
\inst2|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|v_count\(6),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(6));

-- Location: LCCOMB_X32_Y18_N26
\inst10|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add2~0_combout\ = (\inst2|pixel_row\(5) & (\inst2|pixel_row\(4) & (\inst2|pixel_row\(3) & \inst2|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(5),
	datab => \inst2|pixel_row\(4),
	datac => \inst2|pixel_row\(3),
	datad => \inst2|pixel_row\(6),
	combout => \inst10|Add2~0_combout\);

-- Location: FF_X32_Y18_N1
\inst2|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|v_count\(8),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(8));

-- Location: LCCOMB_X32_Y18_N4
\inst10|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add2~1_combout\ = \inst2|pixel_row\(8) $ (((\inst2|pixel_row\(7) & \inst10|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(7),
	datab => \inst10|Add2~0_combout\,
	datad => \inst2|pixel_row\(8),
	combout => \inst10|Add2~1_combout\);

-- Location: LCCOMB_X32_Y18_N6
\inst10|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add2~3_combout\ = \inst2|pixel_row\(6) $ (((\inst2|pixel_row\(5) & (\inst2|pixel_row\(4) & \inst2|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(5),
	datab => \inst2|pixel_row\(4),
	datac => \inst2|pixel_row\(3),
	datad => \inst2|pixel_row\(6),
	combout => \inst10|Add2~3_combout\);

-- Location: FF_X32_Y18_N3
\inst2|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|v_count\(5),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(5));

-- Location: LCCOMB_X32_Y18_N2
\inst10|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add2~4_combout\ = \inst2|pixel_row\(5) $ (((\inst2|pixel_row\(4) & \inst2|pixel_row\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(4),
	datac => \inst2|pixel_row\(5),
	datad => \inst2|pixel_row\(3),
	combout => \inst10|Add2~4_combout\);

-- Location: LCCOMB_X30_Y17_N2
\inst4|cursor_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~6_combout\ = (\inst4|new_cursor_row\(3) & (\inst4|Equal3~0_combout\ & (\inst4|cursor_row~0_combout\ & !\inst4|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(3),
	datab => \inst4|Equal3~0_combout\,
	datac => \inst4|cursor_row~0_combout\,
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|cursor_row~6_combout\);

-- Location: FF_X30_Y17_N3
\inst4|cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~6_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(3));

-- Location: LCCOMB_X30_Y18_N14
\inst2|v_count[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[2]~7_combout\ = (\inst2|process_0~12_combout\ & ((\inst2|Equal1~1_combout\ & ((\inst2|v_count\(2)))) # (!\inst2|Equal1~1_combout\ & (\inst2|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~1_combout\,
	datab => \inst2|Add1~4_combout\,
	datac => \inst2|v_count\(2),
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count[2]~7_combout\);

-- Location: FF_X30_Y18_N15
\inst2|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(2));

-- Location: LCCOMB_X31_Y18_N8
\inst2|pixel_row[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|pixel_row[2]~feeder_combout\ = \inst2|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|v_count\(2),
	combout => \inst2|pixel_row[2]~feeder_combout\);

-- Location: FF_X31_Y18_N9
\inst2|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|pixel_row[2]~feeder_combout\,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(2));

-- Location: LCCOMB_X30_Y17_N24
\inst4|cursor_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~8_combout\ = (\inst4|new_cursor_row\(1) & (\inst4|Equal3~0_combout\ & (\inst4|cursor_row~0_combout\ & !\inst4|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(1),
	datab => \inst4|Equal3~0_combout\,
	datac => \inst4|cursor_row~0_combout\,
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|cursor_row~8_combout\);

-- Location: FF_X30_Y17_N25
\inst4|cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~8_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(1));

-- Location: LCCOMB_X30_Y18_N10
\inst2|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count~10_combout\ = (\inst2|Add1~0_combout\ & \inst2|process_0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Add1~0_combout\,
	datad => \inst2|process_0~12_combout\,
	combout => \inst2|v_count~10_combout\);

-- Location: FF_X30_Y18_N11
\inst2|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count~10_combout\,
	ena => \inst2|v_count[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(0));

-- Location: LCCOMB_X31_Y18_N4
\inst2|pixel_row[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|pixel_row[0]~feeder_combout\ = \inst2|v_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|v_count\(0),
	combout => \inst2|pixel_row[0]~feeder_combout\);

-- Location: FF_X31_Y18_N5
\inst2|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|pixel_row[0]~feeder_combout\,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(0));

-- Location: LCCOMB_X30_Y17_N4
\inst10|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan2~1_cout\ = CARRY((\inst4|cursor_row\(0) & !\inst2|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(0),
	datab => \inst2|pixel_row\(0),
	datad => VCC,
	cout => \inst10|LessThan2~1_cout\);

-- Location: LCCOMB_X30_Y17_N6
\inst10|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan2~3_cout\ = CARRY((\inst2|pixel_row\(1) & ((!\inst10|LessThan2~1_cout\) # (!\inst4|cursor_row\(1)))) # (!\inst2|pixel_row\(1) & (!\inst4|cursor_row\(1) & !\inst10|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(1),
	datab => \inst4|cursor_row\(1),
	datad => VCC,
	cin => \inst10|LessThan2~1_cout\,
	cout => \inst10|LessThan2~3_cout\);

-- Location: LCCOMB_X30_Y17_N8
\inst10|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan2~5_cout\ = CARRY((\inst4|cursor_row\(2) & ((!\inst10|LessThan2~3_cout\) # (!\inst2|pixel_row\(2)))) # (!\inst4|cursor_row\(2) & (!\inst2|pixel_row\(2) & !\inst10|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(2),
	datab => \inst2|pixel_row\(2),
	datad => VCC,
	cin => \inst10|LessThan2~3_cout\,
	cout => \inst10|LessThan2~5_cout\);

-- Location: LCCOMB_X30_Y17_N10
\inst10|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan2~7_cout\ = CARRY((\inst2|pixel_row\(3) & (!\inst4|cursor_row\(3) & !\inst10|LessThan2~5_cout\)) # (!\inst2|pixel_row\(3) & ((!\inst10|LessThan2~5_cout\) # (!\inst4|cursor_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(3),
	datab => \inst4|cursor_row\(3),
	datad => VCC,
	cin => \inst10|LessThan2~5_cout\,
	cout => \inst10|LessThan2~7_cout\);

-- Location: LCCOMB_X30_Y17_N12
\inst10|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan2~9_cout\ = CARRY((\inst10|Add2~5_combout\ & (\inst4|cursor_row\(4) & !\inst10|LessThan2~7_cout\)) # (!\inst10|Add2~5_combout\ & ((\inst4|cursor_row\(4)) # (!\inst10|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add2~5_combout\,
	datab => \inst4|cursor_row\(4),
	datad => VCC,
	cin => \inst10|LessThan2~7_cout\,
	cout => \inst10|LessThan2~9_cout\);

-- Location: LCCOMB_X30_Y17_N14
\inst10|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan2~11_cout\ = CARRY((\inst4|cursor_row\(5) & (\inst10|Add2~4_combout\ & !\inst10|LessThan2~9_cout\)) # (!\inst4|cursor_row\(5) & ((\inst10|Add2~4_combout\) # (!\inst10|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(5),
	datab => \inst10|Add2~4_combout\,
	datad => VCC,
	cin => \inst10|LessThan2~9_cout\,
	cout => \inst10|LessThan2~11_cout\);

-- Location: LCCOMB_X30_Y17_N16
\inst10|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan2~13_cout\ = CARRY((\inst4|cursor_row\(6) & ((!\inst10|LessThan2~11_cout\) # (!\inst10|Add2~3_combout\))) # (!\inst4|cursor_row\(6) & (!\inst10|Add2~3_combout\ & !\inst10|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(6),
	datab => \inst10|Add2~3_combout\,
	datad => VCC,
	cin => \inst10|LessThan2~11_cout\,
	cout => \inst10|LessThan2~13_cout\);

-- Location: LCCOMB_X30_Y17_N18
\inst10|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan2~15_cout\ = CARRY((\inst10|Add2~2_combout\ & ((!\inst10|LessThan2~13_cout\) # (!\inst4|cursor_row\(7)))) # (!\inst10|Add2~2_combout\ & (!\inst4|cursor_row\(7) & !\inst10|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add2~2_combout\,
	datab => \inst4|cursor_row\(7),
	datad => VCC,
	cin => \inst10|LessThan2~13_cout\,
	cout => \inst10|LessThan2~15_cout\);

-- Location: LCCOMB_X30_Y17_N20
\inst10|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan2~16_combout\ = (\inst4|cursor_row\(8) & ((!\inst10|Add2~1_combout\) # (!\inst10|LessThan2~15_cout\))) # (!\inst4|cursor_row\(8) & (!\inst10|LessThan2~15_cout\ & !\inst10|Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datad => \inst10|Add2~1_combout\,
	cin => \inst10|LessThan2~15_cout\,
	combout => \inst10|LessThan2~16_combout\);

-- Location: FF_X29_Y17_N13
\inst2|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_h~q\);

-- Location: LCCOMB_X31_Y18_N6
\inst2|video_on_v~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|video_on_v~feeder_combout\ = \inst2|LessThan7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|LessThan7~1_combout\,
	combout => \inst2|video_on_v~feeder_combout\);

-- Location: FF_X31_Y18_N7
\inst2|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|video_on_v~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_v~q\);

-- Location: LCCOMB_X27_Y17_N30
\inst10|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add0~10_combout\ = \inst2|pixel_column\(9) $ (\inst10|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(9),
	cin => \inst10|Add0~9\,
	combout => \inst10|Add0~10_combout\);

-- Location: LCCOMB_X32_Y17_N4
\inst2|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|red_out~0_combout\ = (!\inst10|Add2~6_combout\ & (\inst2|video_on_h~q\ & (\inst2|video_on_v~q\ & !\inst10|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add2~6_combout\,
	datab => \inst2|video_on_h~q\,
	datac => \inst2|video_on_v~q\,
	datad => \inst10|Add0~10_combout\,
	combout => \inst2|red_out~0_combout\);

-- Location: LCCOMB_X30_Y17_N26
\inst4|cursor_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~4_combout\ = ((!\inst4|RECV_UART~5_combout\ & ((\inst4|new_cursor_row\(5)) # (!\inst4|cursor_row~0_combout\)))) # (!\inst4|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(5),
	datab => \inst4|Equal3~0_combout\,
	datac => \inst4|cursor_row~0_combout\,
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|cursor_row~4_combout\);

-- Location: FF_X30_Y17_N27
\inst4|cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~4_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(5));

-- Location: LCCOMB_X29_Y17_N18
\inst10|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add3~0_combout\ = (\inst4|cursor_row\(3) & (\inst4|cursor_row\(4) $ (VCC))) # (!\inst4|cursor_row\(3) & (\inst4|cursor_row\(4) & VCC))
-- \inst10|Add3~1\ = CARRY((\inst4|cursor_row\(3) & \inst4|cursor_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(3),
	datab => \inst4|cursor_row\(4),
	datad => VCC,
	combout => \inst10|Add3~0_combout\,
	cout => \inst10|Add3~1\);

-- Location: LCCOMB_X29_Y17_N20
\inst10|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add3~2_combout\ = (\inst4|cursor_row\(5) & (!\inst10|Add3~1\)) # (!\inst4|cursor_row\(5) & ((\inst10|Add3~1\) # (GND)))
-- \inst10|Add3~3\ = CARRY((!\inst10|Add3~1\) # (!\inst4|cursor_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(5),
	datad => VCC,
	cin => \inst10|Add3~1\,
	combout => \inst10|Add3~2_combout\,
	cout => \inst10|Add3~3\);

-- Location: LCCOMB_X31_Y17_N30
\inst4|cursor_row~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~7_combout\ = (\inst4|cursor_row~0_combout\ & (\inst4|new_cursor_row\(2) & (\inst4|Equal3~0_combout\ & !\inst4|RECV_UART~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row~0_combout\,
	datab => \inst4|new_cursor_row\(2),
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|cursor_row~7_combout\);

-- Location: FF_X31_Y17_N31
\inst4|cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~7_combout\,
	ena => \inst4|cursor_column[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(2));

-- Location: LCCOMB_X29_Y17_N0
\inst10|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan3~1_cout\ = CARRY((\inst2|pixel_row\(0) & !\inst4|cursor_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(0),
	datab => \inst4|cursor_row\(0),
	datad => VCC,
	cout => \inst10|LessThan3~1_cout\);

-- Location: LCCOMB_X29_Y17_N2
\inst10|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan3~3_cout\ = CARRY((\inst2|pixel_row\(1) & (\inst4|cursor_row\(1) & !\inst10|LessThan3~1_cout\)) # (!\inst2|pixel_row\(1) & ((\inst4|cursor_row\(1)) # (!\inst10|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(1),
	datab => \inst4|cursor_row\(1),
	datad => VCC,
	cin => \inst10|LessThan3~1_cout\,
	cout => \inst10|LessThan3~3_cout\);

-- Location: LCCOMB_X29_Y17_N4
\inst10|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan3~5_cout\ = CARRY((\inst2|pixel_row\(2) & ((!\inst10|LessThan3~3_cout\) # (!\inst4|cursor_row\(2)))) # (!\inst2|pixel_row\(2) & (!\inst4|cursor_row\(2) & !\inst10|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(2),
	datab => \inst4|cursor_row\(2),
	datad => VCC,
	cin => \inst10|LessThan3~3_cout\,
	cout => \inst10|LessThan3~5_cout\);

-- Location: LCCOMB_X29_Y17_N6
\inst10|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan3~7_cout\ = CARRY((\inst4|cursor_row\(3) & (!\inst2|pixel_row\(3) & !\inst10|LessThan3~5_cout\)) # (!\inst4|cursor_row\(3) & ((!\inst10|LessThan3~5_cout\) # (!\inst2|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(3),
	datab => \inst2|pixel_row\(3),
	datad => VCC,
	cin => \inst10|LessThan3~5_cout\,
	cout => \inst10|LessThan3~7_cout\);

-- Location: LCCOMB_X29_Y17_N8
\inst10|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan3~9_cout\ = CARRY((\inst2|pixel_row\(4) & ((!\inst10|LessThan3~7_cout\) # (!\inst10|Add3~0_combout\))) # (!\inst2|pixel_row\(4) & (!\inst10|Add3~0_combout\ & !\inst10|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(4),
	datab => \inst10|Add3~0_combout\,
	datad => VCC,
	cin => \inst10|LessThan3~7_cout\,
	cout => \inst10|LessThan3~9_cout\);

-- Location: LCCOMB_X29_Y17_N10
\inst10|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan3~11_cout\ = CARRY((\inst2|pixel_row\(5) & (\inst10|Add3~2_combout\ & !\inst10|LessThan3~9_cout\)) # (!\inst2|pixel_row\(5) & ((\inst10|Add3~2_combout\) # (!\inst10|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(5),
	datab => \inst10|Add3~2_combout\,
	datad => VCC,
	cin => \inst10|LessThan3~9_cout\,
	cout => \inst10|LessThan3~11_cout\);

-- Location: LCCOMB_X29_Y17_N12
\inst10|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan3~13_cout\ = CARRY((\inst10|Add3~4_combout\ & (\inst2|pixel_row\(6) & !\inst10|LessThan3~11_cout\)) # (!\inst10|Add3~4_combout\ & ((\inst2|pixel_row\(6)) # (!\inst10|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add3~4_combout\,
	datab => \inst2|pixel_row\(6),
	datad => VCC,
	cin => \inst10|LessThan3~11_cout\,
	cout => \inst10|LessThan3~13_cout\);

-- Location: LCCOMB_X29_Y17_N14
\inst10|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan3~15_cout\ = CARRY((\inst2|pixel_row\(7) & (\inst10|Add3~6_combout\ & !\inst10|LessThan3~13_cout\)) # (!\inst2|pixel_row\(7) & ((\inst10|Add3~6_combout\) # (!\inst10|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(7),
	datab => \inst10|Add3~6_combout\,
	datad => VCC,
	cin => \inst10|LessThan3~13_cout\,
	cout => \inst10|LessThan3~15_cout\);

-- Location: LCCOMB_X29_Y17_N16
\inst10|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|LessThan3~16_combout\ = (\inst10|Add3~8_combout\ & (!\inst10|LessThan3~15_cout\ & \inst2|pixel_row\(8))) # (!\inst10|Add3~8_combout\ & ((\inst2|pixel_row\(8)) # (!\inst10|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add3~8_combout\,
	datad => \inst2|pixel_row\(8),
	cin => \inst10|LessThan3~15_cout\,
	combout => \inst10|LessThan3~16_combout\);

-- Location: LCCOMB_X29_Y17_N30
\inst2|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|green_out~0_combout\ = (!\inst10|Add3~10_combout\ & (!\inst10|Add1~10_combout\ & (\inst2|red_out~0_combout\ & !\inst10|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add3~10_combout\,
	datab => \inst10|Add1~10_combout\,
	datac => \inst2|red_out~0_combout\,
	datad => \inst10|LessThan3~16_combout\,
	combout => \inst2|green_out~0_combout\);

-- Location: LCCOMB_X28_Y17_N28
\inst2|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|green_out~1_combout\ = (!\inst10|LessThan0~18_combout\ & (!\inst10|LessThan1~18_combout\ & (!\inst10|LessThan2~16_combout\ & \inst2|green_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|LessThan0~18_combout\,
	datab => \inst10|LessThan1~18_combout\,
	datac => \inst10|LessThan2~16_combout\,
	datad => \inst2|green_out~0_combout\,
	combout => \inst2|green_out~1_combout\);

-- Location: FF_X28_Y17_N29
\inst2|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|green_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|green_out~q\);

-- Location: LCCOMB_X31_Y18_N30
\inst2|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|pixel_row[1]~feeder_combout\ = \inst2|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|v_count\(1),
	combout => \inst2|pixel_row[1]~feeder_combout\);

-- Location: FF_X31_Y18_N31
\inst2|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|pixel_row[1]~feeder_combout\,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(1));

-- Location: FF_X27_Y17_N23
\inst2|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(5),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(5));

-- Location: FF_X27_Y17_N5
\inst2|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(2),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(2));

-- Location: LCCOMB_X28_Y17_N20
\inst3|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~2_combout\ = (\inst2|pixel_column\(1) & ((\inst2|pixel_column\(2)) # ((\inst3|altsyncram_component|auto_generated|q_a\(6))))) # (!\inst2|pixel_column\(1) & (!\inst2|pixel_column\(2) & (\inst3|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(1),
	datab => \inst2|pixel_column\(2),
	datac => \inst3|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst3|Mux0~2_combout\);

-- Location: LCCOMB_X28_Y17_N30
\inst3|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~3_combout\ = (\inst2|pixel_column\(2) & ((\inst3|Mux0~2_combout\ & (\inst3|altsyncram_component|auto_generated|q_a\(4))) # (!\inst3|Mux0~2_combout\ & ((\inst3|altsyncram_component|auto_generated|q_a\(5)))))) # (!\inst2|pixel_column\(2) & 
-- (((\inst3|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(2),
	datab => \inst3|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst3|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst3|Mux0~2_combout\,
	combout => \inst3|Mux0~3_combout\);

-- Location: FF_X28_Y18_N11
\inst2|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|h_count\(1));

-- Location: FF_X29_Y18_N15
\inst2|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|h_count\(1),
	sload => VCC,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(1));

-- Location: LCCOMB_X28_Y17_N24
\inst3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (\inst2|pixel_column\(1) & (\inst2|pixel_column\(2))) # (!\inst2|pixel_column\(1) & ((\inst2|pixel_column\(2) & ((\inst3|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst2|pixel_column\(2) & 
-- (\inst3|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(1),
	datab => \inst2|pixel_column\(2),
	datac => \inst3|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst3|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y17_N26
\inst3|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|Mux0~1_combout\ = (\inst2|pixel_column\(1) & ((\inst3|Mux0~0_combout\ & (\inst3|altsyncram_component|auto_generated|q_a\(0))) # (!\inst3|Mux0~0_combout\ & ((\inst3|altsyncram_component|auto_generated|q_a\(2)))))) # (!\inst2|pixel_column\(1) & 
-- (((\inst3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst3|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst2|pixel_column\(1),
	datad => \inst3|Mux0~0_combout\,
	combout => \inst3|Mux0~1_combout\);

-- Location: LCCOMB_X28_Y17_N22
\inst2|blue_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|blue_out~1_combout\ = (\inst2|blue_out~0_combout\ & ((\inst2|pixel_column\(3) & ((\inst3|Mux0~1_combout\))) # (!\inst2|pixel_column\(3) & (\inst3|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|blue_out~0_combout\,
	datab => \inst2|pixel_column\(3),
	datac => \inst3|Mux0~3_combout\,
	datad => \inst3|Mux0~1_combout\,
	combout => \inst2|blue_out~1_combout\);

-- Location: FF_X28_Y17_N23
\inst2|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|blue_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|blue_out~q\);

-- Location: LCCOMB_X30_Y18_N4
\inst2|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = ((\inst2|v_count\(0) $ (!\inst2|v_count\(1))) # (!\inst2|v_count\(3))) # (!\inst2|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(0),
	datab => \inst2|v_count\(1),
	datac => \inst2|v_count\(2),
	datad => \inst2|v_count\(3),
	combout => \inst2|process_0~1_combout\);

-- Location: LCCOMB_X30_Y18_N8
\inst2|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = (\inst2|v_count\(9)) # (((\inst2|process_0~1_combout\) # (\inst2|v_count\(4))) # (!\inst2|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(9),
	datab => \inst2|LessThan7~0_combout\,
	datac => \inst2|process_0~1_combout\,
	datad => \inst2|v_count\(4),
	combout => \inst2|process_0~2_combout\);

-- Location: FF_X30_Y18_N9
\inst2|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vert_sync~q\);

-- Location: LCCOMB_X1_Y14_N20
\inst2|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|vert_sync_out~feeder_combout\ = \inst2|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|vert_sync~q\,
	combout => \inst2|vert_sync_out~feeder_combout\);

-- Location: FF_X1_Y14_N21
\inst2|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vert_sync_out~q\);

-- Location: LCCOMB_X29_Y18_N14
\inst2|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = (\inst2|h_count\(9) & (!\inst2|h_count\(8) & \inst2|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(9),
	datab => \inst2|h_count\(8),
	datad => \inst2|h_count\(7),
	combout => \inst2|process_0~3_combout\);

-- Location: LCCOMB_X29_Y18_N24
\inst2|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = ((\inst2|process_0~5_combout\ & (\inst2|h_count\(5) & \inst2|h_count\(6))) # (!\inst2|process_0~5_combout\ & (!\inst2|h_count\(5) & !\inst2|h_count\(6)))) # (!\inst2|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~5_combout\,
	datab => \inst2|process_0~3_combout\,
	datac => \inst2|h_count\(5),
	datad => \inst2|h_count\(6),
	combout => \inst2|process_0~6_combout\);

-- Location: FF_X29_Y18_N25
\inst2|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|horiz_sync~q\);

-- Location: FF_X29_Y18_N9
\inst2|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|horiz_sync_out~q\);

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

-- Location: LCCOMB_X32_Y16_N0
\inst|Ball_X_pos[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[1]~9_combout\ = (\inst|Ball_X_motion\(1) & (\inst|Ball_X_pos\(1) $ (VCC))) # (!\inst|Ball_X_motion\(1) & (\inst|Ball_X_pos\(1) & VCC))
-- \inst|Ball_X_pos[1]~10\ = CARRY((\inst|Ball_X_motion\(1) & \inst|Ball_X_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion\(1),
	datab => \inst|Ball_X_pos\(1),
	datad => VCC,
	combout => \inst|Ball_X_pos[1]~9_combout\,
	cout => \inst|Ball_X_pos[1]~10\);

-- Location: FF_X32_Y16_N1
\inst|Ball_X_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(1));

-- Location: LCCOMB_X32_Y16_N2
\inst|Ball_X_pos[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[2]~11_combout\ = (\inst|Ball_X_motion\(2) & ((\inst|Ball_X_pos\(2) & (\inst|Ball_X_pos[1]~10\ & VCC)) # (!\inst|Ball_X_pos\(2) & (!\inst|Ball_X_pos[1]~10\)))) # (!\inst|Ball_X_motion\(2) & ((\inst|Ball_X_pos\(2) & 
-- (!\inst|Ball_X_pos[1]~10\)) # (!\inst|Ball_X_pos\(2) & ((\inst|Ball_X_pos[1]~10\) # (GND)))))
-- \inst|Ball_X_pos[2]~12\ = CARRY((\inst|Ball_X_motion\(2) & (!\inst|Ball_X_pos\(2) & !\inst|Ball_X_pos[1]~10\)) # (!\inst|Ball_X_motion\(2) & ((!\inst|Ball_X_pos[1]~10\) # (!\inst|Ball_X_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion\(2),
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|Ball_X_pos[1]~10\,
	combout => \inst|Ball_X_pos[2]~11_combout\,
	cout => \inst|Ball_X_pos[2]~12\);

-- Location: FF_X32_Y16_N3
\inst|Ball_X_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(2));

-- Location: LCCOMB_X32_Y16_N4
\inst|Ball_X_pos[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[3]~13_combout\ = ((\inst|Ball_X_pos\(3) $ (\inst|Ball_X_motion\(3) $ (!\inst|Ball_X_pos[2]~12\)))) # (GND)
-- \inst|Ball_X_pos[3]~14\ = CARRY((\inst|Ball_X_pos\(3) & ((\inst|Ball_X_motion\(3)) # (!\inst|Ball_X_pos[2]~12\))) # (!\inst|Ball_X_pos\(3) & (\inst|Ball_X_motion\(3) & !\inst|Ball_X_pos[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(3),
	datab => \inst|Ball_X_motion\(3),
	datad => VCC,
	cin => \inst|Ball_X_pos[2]~12\,
	combout => \inst|Ball_X_pos[3]~13_combout\,
	cout => \inst|Ball_X_pos[3]~14\);

-- Location: LCCOMB_X32_Y16_N8
\inst|Ball_X_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[5]~17_combout\ = ((\inst|Ball_X_pos\(5) $ (\inst|Ball_X_motion\(3) $ (!\inst|Ball_X_pos[4]~16\)))) # (GND)
-- \inst|Ball_X_pos[5]~18\ = CARRY((\inst|Ball_X_pos\(5) & ((\inst|Ball_X_motion\(3)) # (!\inst|Ball_X_pos[4]~16\))) # (!\inst|Ball_X_pos\(5) & (\inst|Ball_X_motion\(3) & !\inst|Ball_X_pos[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(5),
	datab => \inst|Ball_X_motion\(3),
	datad => VCC,
	cin => \inst|Ball_X_pos[4]~16\,
	combout => \inst|Ball_X_pos[5]~17_combout\,
	cout => \inst|Ball_X_pos[5]~18\);

-- Location: LCCOMB_X32_Y16_N10
\inst|Ball_X_pos[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[6]~19_combout\ = (\inst|Ball_X_pos\(6) & ((\inst|Ball_X_motion\(3) & (\inst|Ball_X_pos[5]~18\ & VCC)) # (!\inst|Ball_X_motion\(3) & (!\inst|Ball_X_pos[5]~18\)))) # (!\inst|Ball_X_pos\(6) & ((\inst|Ball_X_motion\(3) & 
-- (!\inst|Ball_X_pos[5]~18\)) # (!\inst|Ball_X_motion\(3) & ((\inst|Ball_X_pos[5]~18\) # (GND)))))
-- \inst|Ball_X_pos[6]~20\ = CARRY((\inst|Ball_X_pos\(6) & (!\inst|Ball_X_motion\(3) & !\inst|Ball_X_pos[5]~18\)) # (!\inst|Ball_X_pos\(6) & ((!\inst|Ball_X_pos[5]~18\) # (!\inst|Ball_X_motion\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(6),
	datab => \inst|Ball_X_motion\(3),
	datad => VCC,
	cin => \inst|Ball_X_pos[5]~18\,
	combout => \inst|Ball_X_pos[6]~19_combout\,
	cout => \inst|Ball_X_pos[6]~20\);

-- Location: LCCOMB_X32_Y16_N12
\inst|Ball_X_pos[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[7]~21_combout\ = ((\inst|Ball_X_pos\(7) $ (\inst|Ball_X_motion\(3) $ (!\inst|Ball_X_pos[6]~20\)))) # (GND)
-- \inst|Ball_X_pos[7]~22\ = CARRY((\inst|Ball_X_pos\(7) & ((\inst|Ball_X_motion\(3)) # (!\inst|Ball_X_pos[6]~20\))) # (!\inst|Ball_X_pos\(7) & (\inst|Ball_X_motion\(3) & !\inst|Ball_X_pos[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(7),
	datab => \inst|Ball_X_motion\(3),
	datad => VCC,
	cin => \inst|Ball_X_pos[6]~20\,
	combout => \inst|Ball_X_pos[7]~21_combout\,
	cout => \inst|Ball_X_pos[7]~22\);

-- Location: FF_X32_Y16_N13
\inst|Ball_X_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(7));

-- Location: FF_X32_Y16_N11
\inst|Ball_X_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(6));

-- Location: FF_X32_Y16_N9
\inst|Ball_X_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(5));

-- Location: FF_X32_Y16_N5
\inst|Ball_X_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(3));

-- Location: LCCOMB_X31_Y16_N0
\inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|Ball_X_pos\(4) & (!\inst|Ball_X_pos\(6) & (!\inst|Ball_X_pos\(5) & !\inst|Ball_X_pos\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(4),
	datab => \inst|Ball_X_pos\(6),
	datac => \inst|Ball_X_pos\(5),
	datad => \inst|Ball_X_pos\(3),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y16_N26
\inst|Ball_X_motion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion~0_combout\ = (\bt2~input_o\ & (((\inst|Ball_X_pos\(7)) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~0_combout\,
	datab => \bt2~input_o\,
	datac => \inst|Ball_X_pos\(7),
	datad => \inst|Equal0~1_combout\,
	combout => \inst|Ball_X_motion~0_combout\);

-- Location: LCCOMB_X31_Y16_N24
\inst|Ball_X_motion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion~1_combout\ = (\inst|Ball_X_motion~0_combout\) # (!\bt1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bt1~input_o\,
	datac => \inst|Ball_X_motion~0_combout\,
	combout => \inst|Ball_X_motion~1_combout\);

-- Location: LCCOMB_X32_Y16_N18
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|Ball_X_pos\(3) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|Ball_X_pos\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(3),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X32_Y16_N22
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|Ball_X_pos\(5) & (\inst|Add1~3\ $ (GND))) # (!\inst|Ball_X_pos\(5) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|Ball_X_pos\(5) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(5),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X31_Y16_N4
\inst|Ball_X_motion[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion[1]~2_combout\ = (\inst|Ball_X_pos\(2)) # ((\inst|Ball_X_pos\(1)) # (\inst|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(2),
	datac => \inst|Ball_X_pos\(1),
	datad => \inst|Add1~0_combout\,
	combout => \inst|Ball_X_motion[1]~2_combout\);

-- Location: LCCOMB_X32_Y16_N24
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|Ball_X_pos\(6) & (!\inst|Add1~5\)) # (!\inst|Ball_X_pos\(6) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|Ball_X_pos\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(6),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X31_Y16_N14
\inst|Ball_X_motion[1]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion[1]~3_combout\ = (\inst|Add1~2_combout\) # ((\inst|Add1~4_combout\) # ((\inst|Ball_X_motion[1]~2_combout\) # (\inst|Add1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst|Add1~4_combout\,
	datac => \inst|Ball_X_motion[1]~2_combout\,
	datad => \inst|Add1~6_combout\,
	combout => \inst|Ball_X_motion[1]~3_combout\);

-- Location: LCCOMB_X32_Y16_N14
\inst|Ball_X_pos[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[8]~23_combout\ = (\inst|Ball_X_pos\(8) & ((\inst|Ball_X_motion\(3) & (\inst|Ball_X_pos[7]~22\ & VCC)) # (!\inst|Ball_X_motion\(3) & (!\inst|Ball_X_pos[7]~22\)))) # (!\inst|Ball_X_pos\(8) & ((\inst|Ball_X_motion\(3) & 
-- (!\inst|Ball_X_pos[7]~22\)) # (!\inst|Ball_X_motion\(3) & ((\inst|Ball_X_pos[7]~22\) # (GND)))))
-- \inst|Ball_X_pos[8]~24\ = CARRY((\inst|Ball_X_pos\(8) & (!\inst|Ball_X_motion\(3) & !\inst|Ball_X_pos[7]~22\)) # (!\inst|Ball_X_pos\(8) & ((!\inst|Ball_X_pos[7]~22\) # (!\inst|Ball_X_motion\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(8),
	datab => \inst|Ball_X_motion\(3),
	datad => VCC,
	cin => \inst|Ball_X_pos[7]~22\,
	combout => \inst|Ball_X_pos[8]~23_combout\,
	cout => \inst|Ball_X_pos[8]~24\);

-- Location: FF_X32_Y16_N15
\inst|Ball_X_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(8));

-- Location: LCCOMB_X32_Y16_N26
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|Ball_X_pos\(7) & (\inst|Add1~7\ $ (GND))) # (!\inst|Ball_X_pos\(7) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|Ball_X_pos\(7) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(7),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X32_Y16_N28
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|Ball_X_pos\(8) & (!\inst|Add1~9\)) # (!\inst|Ball_X_pos\(8) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|Ball_X_pos\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_pos\(8),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X31_Y16_N16
\inst|Ball_X_motion[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion[1]~4_combout\ = (\inst|Add1~8_combout\ & (\inst|Add1~12_combout\ & !\inst|Add1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~8_combout\,
	datac => \inst|Add1~12_combout\,
	datad => \inst|Add1~10_combout\,
	combout => \inst|Ball_X_motion[1]~4_combout\);

-- Location: LCCOMB_X31_Y16_N18
\inst|Ball_X_motion[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_motion[1]~5_combout\ = (((!\inst|Ball_X_motion[1]~3_combout\ & \inst|Ball_X_motion[1]~4_combout\)) # (!\bt1~input_o\)) # (!\inst|Ball_X_motion~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_motion~0_combout\,
	datab => \bt1~input_o\,
	datac => \inst|Ball_X_motion[1]~3_combout\,
	datad => \inst|Ball_X_motion[1]~4_combout\,
	combout => \inst|Ball_X_motion[1]~5_combout\);

-- Location: FF_X31_Y16_N25
\inst|Ball_X_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_motion~1_combout\,
	ena => \inst|Ball_X_motion[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_motion\(3));

-- Location: LCCOMB_X32_Y16_N16
\inst|Ball_X_pos[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_X_pos[9]~25_combout\ = \inst|Ball_X_motion\(3) $ (\inst|Ball_X_pos[8]~24\ $ (!\inst|Ball_X_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_X_motion\(3),
	datad => \inst|Ball_X_pos\(9),
	cin => \inst|Ball_X_pos[8]~24\,
	combout => \inst|Ball_X_pos[9]~25_combout\);

-- Location: FF_X32_Y16_N17
\inst|Ball_X_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_X_pos[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_X_pos\(9));

-- Location: LCCOMB_X32_Y16_N30
\inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = \inst|Add1~11\ $ (!\inst|Ball_X_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|Ball_X_pos\(9),
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\);

-- Location: LCCOMB_X35_Y16_N6
\inst|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~1_cout\ = CARRY(\inst2|pixel_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_column\(0),
	datad => VCC,
	cout => \inst|LessThan1~1_cout\);

-- Location: LCCOMB_X35_Y16_N8
\inst|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~3_cout\ = CARRY((\inst|Ball_X_pos\(1) & ((!\inst|LessThan1~1_cout\) # (!\inst2|pixel_column\(1)))) # (!\inst|Ball_X_pos\(1) & (!\inst2|pixel_column\(1) & !\inst|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_X_pos\(1),
	datab => \inst2|pixel_column\(1),
	datad => VCC,
	cin => \inst|LessThan1~1_cout\,
	cout => \inst|LessThan1~3_cout\);

-- Location: LCCOMB_X35_Y16_N10
\inst|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~5_cout\ = CARRY((\inst2|pixel_column\(2) & ((!\inst|LessThan1~3_cout\) # (!\inst|Ball_X_pos\(2)))) # (!\inst2|pixel_column\(2) & (!\inst|Ball_X_pos\(2) & !\inst|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(2),
	datab => \inst|Ball_X_pos\(2),
	datad => VCC,
	cin => \inst|LessThan1~3_cout\,
	cout => \inst|LessThan1~5_cout\);

-- Location: LCCOMB_X35_Y16_N12
\inst|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~7_cout\ = CARRY((\inst2|pixel_column\(3) & (\inst|Add1~0_combout\ & !\inst|LessThan1~5_cout\)) # (!\inst2|pixel_column\(3) & ((\inst|Add1~0_combout\) # (!\inst|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(3),
	datab => \inst|Add1~0_combout\,
	datad => VCC,
	cin => \inst|LessThan1~5_cout\,
	cout => \inst|LessThan1~7_cout\);

-- Location: LCCOMB_X35_Y16_N14
\inst|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~9_cout\ = CARRY((\inst|Add1~2_combout\ & (\inst2|pixel_column\(4) & !\inst|LessThan1~7_cout\)) # (!\inst|Add1~2_combout\ & ((\inst2|pixel_column\(4)) # (!\inst|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datab => \inst2|pixel_column\(4),
	datad => VCC,
	cin => \inst|LessThan1~7_cout\,
	cout => \inst|LessThan1~9_cout\);

-- Location: LCCOMB_X35_Y16_N16
\inst|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~11_cout\ = CARRY((\inst2|pixel_column\(5) & (\inst|Add1~4_combout\ & !\inst|LessThan1~9_cout\)) # (!\inst2|pixel_column\(5) & ((\inst|Add1~4_combout\) # (!\inst|LessThan1~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(5),
	datab => \inst|Add1~4_combout\,
	datad => VCC,
	cin => \inst|LessThan1~9_cout\,
	cout => \inst|LessThan1~11_cout\);

-- Location: LCCOMB_X35_Y16_N18
\inst|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~13_cout\ = CARRY((\inst2|pixel_column\(6) & ((!\inst|LessThan1~11_cout\) # (!\inst|Add1~6_combout\))) # (!\inst2|pixel_column\(6) & (!\inst|Add1~6_combout\ & !\inst|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(6),
	datab => \inst|Add1~6_combout\,
	datad => VCC,
	cin => \inst|LessThan1~11_cout\,
	cout => \inst|LessThan1~13_cout\);

-- Location: LCCOMB_X35_Y16_N20
\inst|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~15_cout\ = CARRY((\inst2|pixel_column\(7) & (\inst|Add1~8_combout\ & !\inst|LessThan1~13_cout\)) # (!\inst2|pixel_column\(7) & ((\inst|Add1~8_combout\) # (!\inst|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(7),
	datab => \inst|Add1~8_combout\,
	datad => VCC,
	cin => \inst|LessThan1~13_cout\,
	cout => \inst|LessThan1~15_cout\);

-- Location: LCCOMB_X35_Y16_N22
\inst|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~17_cout\ = CARRY((\inst2|pixel_column\(8) & ((!\inst|LessThan1~15_cout\) # (!\inst|Add1~10_combout\))) # (!\inst2|pixel_column\(8) & (!\inst|Add1~10_combout\ & !\inst|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(8),
	datab => \inst|Add1~10_combout\,
	datad => VCC,
	cin => \inst|LessThan1~15_cout\,
	cout => \inst|LessThan1~17_cout\);

-- Location: LCCOMB_X35_Y16_N24
\inst|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan1~18_combout\ = (\inst2|pixel_column\(9) & ((\inst|LessThan1~17_cout\) # (!\inst|Add1~12_combout\))) # (!\inst2|pixel_column\(9) & (\inst|LessThan1~17_cout\ & !\inst|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(9),
	datad => \inst|Add1~12_combout\,
	cin => \inst|LessThan1~17_cout\,
	combout => \inst|LessThan1~18_combout\);

-- Location: LCCOMB_X32_Y18_N28
\inst10|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add2~6_combout\ = (\inst2|pixel_row\(7) & (\inst10|Add2~0_combout\ & \inst2|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(7),
	datab => \inst10|Add2~0_combout\,
	datad => \inst2|pixel_row\(8),
	combout => \inst10|Add2~6_combout\);

-- Location: LCCOMB_X36_Y18_N0
\inst|Ball_Y_pos[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[1]~9_combout\ = \inst|Ball_Y_pos\(1) $ (VCC)
-- \inst|Ball_Y_pos[1]~10\ = CARRY(\inst|Ball_Y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(1),
	datad => VCC,
	combout => \inst|Ball_Y_pos[1]~9_combout\,
	cout => \inst|Ball_Y_pos[1]~10\);

-- Location: FF_X36_Y18_N1
\inst|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(1));

-- Location: LCCOMB_X36_Y18_N2
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

-- Location: LCCOMB_X36_Y18_N4
\inst|Ball_Y_pos[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[3]~13_combout\ = ((\inst|Ball_Y_pos\(3) $ (\inst|Ball_Y_motion\(2) $ (!\inst|Ball_Y_pos[2]~12\)))) # (GND)
-- \inst|Ball_Y_pos[3]~14\ = CARRY((\inst|Ball_Y_pos\(3) & ((\inst|Ball_Y_motion\(2)) # (!\inst|Ball_Y_pos[2]~12\))) # (!\inst|Ball_Y_pos\(3) & (\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(3),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[2]~12\,
	combout => \inst|Ball_Y_pos[3]~13_combout\,
	cout => \inst|Ball_Y_pos[3]~14\);

-- Location: LCCOMB_X36_Y18_N8
\inst|Ball_Y_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[5]~17_combout\ = ((\inst|Ball_Y_pos\(5) $ (\inst|Ball_Y_motion\(2) $ (!\inst|Ball_Y_pos[4]~16\)))) # (GND)
-- \inst|Ball_Y_pos[5]~18\ = CARRY((\inst|Ball_Y_pos\(5) & ((\inst|Ball_Y_motion\(2)) # (!\inst|Ball_Y_pos[4]~16\))) # (!\inst|Ball_Y_pos\(5) & (\inst|Ball_Y_motion\(2) & !\inst|Ball_Y_pos[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datab => \inst|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst|Ball_Y_pos[4]~16\,
	combout => \inst|Ball_Y_pos[5]~17_combout\,
	cout => \inst|Ball_Y_pos[5]~18\);

-- Location: FF_X36_Y18_N9
\inst|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(5));

-- Location: LCCOMB_X36_Y18_N10
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

-- Location: LCCOMB_X36_Y18_N12
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

-- Location: LCCOMB_X36_Y18_N14
\inst|Ball_Y_pos[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[8]~23_combout\ = (\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(8) & (\inst|Ball_Y_pos[7]~22\ & VCC)) # (!\inst|Ball_Y_pos\(8) & (!\inst|Ball_Y_pos[7]~22\)))) # (!\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(8) & 
-- (!\inst|Ball_Y_pos[7]~22\)) # (!\inst|Ball_Y_pos\(8) & ((\inst|Ball_Y_pos[7]~22\) # (GND)))))
-- \inst|Ball_Y_pos[8]~24\ = CARRY((\inst|Ball_Y_motion\(2) & (!\inst|Ball_Y_pos\(8) & !\inst|Ball_Y_pos[7]~22\)) # (!\inst|Ball_Y_motion\(2) & ((!\inst|Ball_Y_pos[7]~22\) # (!\inst|Ball_Y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_motion\(2),
	datab => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|Ball_Y_pos[7]~22\,
	combout => \inst|Ball_Y_pos[8]~23_combout\,
	cout => \inst|Ball_Y_pos[8]~24\);

-- Location: FF_X36_Y18_N15
\inst|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(8));

-- Location: FF_X36_Y18_N3
\inst|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(2));

-- Location: LCCOMB_X35_Y18_N24
\inst|Ball_Y_motion[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~1_combout\ = (\inst|Ball_Y_pos\(3) & ((\inst|Ball_Y_pos\(1)) # ((\inst|Ball_Y_pos\(8)) # (\inst|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(3),
	datab => \inst|Ball_Y_pos\(1),
	datac => \inst|Ball_Y_pos\(8),
	datad => \inst|Ball_Y_pos\(2),
	combout => \inst|Ball_Y_motion[2]~1_combout\);

-- Location: LCCOMB_X35_Y18_N22
\inst|Ball_Y_motion[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~2_combout\ = (\inst|Ball_Y_pos\(5)) # ((\inst|Ball_Y_pos\(4) & ((\inst|Ball_Y_motion\(2)) # (\inst|Ball_Y_motion[2]~1_combout\))) # (!\inst|Ball_Y_pos\(4) & (\inst|Ball_Y_motion\(2) & \inst|Ball_Y_motion[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst|Ball_Y_motion\(2),
	datac => \inst|Ball_Y_pos\(5),
	datad => \inst|Ball_Y_motion[2]~1_combout\,
	combout => \inst|Ball_Y_motion[2]~2_combout\);

-- Location: FF_X36_Y18_N13
\inst|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(7));

-- Location: LCCOMB_X35_Y18_N18
\inst|Ball_Y_motion[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~0_combout\ = (\inst|Ball_Y_pos\(6) & ((\inst|Ball_Y_motion\(2)) # ((\inst|Ball_Y_pos\(7) & \inst|Ball_Y_pos\(8))))) # (!\inst|Ball_Y_pos\(6) & (\inst|Ball_Y_motion\(2) & ((\inst|Ball_Y_pos\(7)) # (\inst|Ball_Y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(6),
	datab => \inst|Ball_Y_pos\(7),
	datac => \inst|Ball_Y_pos\(8),
	datad => \inst|Ball_Y_motion\(2),
	combout => \inst|Ball_Y_motion[2]~0_combout\);

-- Location: LCCOMB_X36_Y18_N18
\inst|Ball_Y_motion[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_motion[2]~3_combout\ = (\inst|Ball_Y_pos\(9)) # ((\inst|Ball_Y_motion[2]~2_combout\ & ((\inst|Ball_Y_motion\(2)) # (\inst|Ball_Y_motion[2]~0_combout\))) # (!\inst|Ball_Y_motion[2]~2_combout\ & (\inst|Ball_Y_motion\(2) & 
-- \inst|Ball_Y_motion[2]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(9),
	datab => \inst|Ball_Y_motion[2]~2_combout\,
	datac => \inst|Ball_Y_motion\(2),
	datad => \inst|Ball_Y_motion[2]~0_combout\,
	combout => \inst|Ball_Y_motion[2]~3_combout\);

-- Location: FF_X36_Y18_N19
\inst|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_motion[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_motion\(2));

-- Location: LCCOMB_X36_Y18_N16
\inst|Ball_Y_pos[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Ball_Y_pos[9]~25_combout\ = \inst|Ball_Y_motion\(2) $ (\inst|Ball_Y_pos[8]~24\ $ (!\inst|Ball_Y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_motion\(2),
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|Ball_Y_pos[8]~24\,
	combout => \inst|Ball_Y_pos[9]~25_combout\);

-- Location: FF_X36_Y18_N17
\inst|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(9));

-- Location: LCCOMB_X32_Y18_N0
\inst10|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add2~2_combout\ = \inst2|pixel_row\(7) $ (\inst10|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(7),
	datad => \inst10|Add2~0_combout\,
	combout => \inst10|Add2~2_combout\);

-- Location: FF_X36_Y18_N11
\inst|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(6));

-- Location: LCCOMB_X32_Y18_N30
\inst10|Add2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10|Add2~5_combout\ = \inst2|pixel_row\(4) $ (\inst2|pixel_row\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(4),
	datad => \inst2|pixel_row\(3),
	combout => \inst10|Add2~5_combout\);

-- Location: FF_X36_Y18_N5
\inst|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|vert_sync_out~clkctrl_outclk\,
	d => \inst|Ball_Y_pos[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|Ball_Y_pos\(3));

-- Location: LCCOMB_X32_Y18_N8
\inst|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~1_cout\ = CARRY((\inst|Ball_Y_pos\(1) & !\inst2|pixel_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(1),
	datab => \inst2|pixel_row\(1),
	datad => VCC,
	cout => \inst|LessThan2~1_cout\);

-- Location: LCCOMB_X32_Y18_N10
\inst|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~3_cout\ = CARRY((\inst2|pixel_row\(2) & ((!\inst|LessThan2~1_cout\) # (!\inst|Ball_Y_pos\(2)))) # (!\inst2|pixel_row\(2) & (!\inst|Ball_Y_pos\(2) & !\inst|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(2),
	datab => \inst|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst|LessThan2~1_cout\,
	cout => \inst|LessThan2~3_cout\);

-- Location: LCCOMB_X32_Y18_N12
\inst|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~5_cout\ = CARRY((\inst2|pixel_row\(3) & ((\inst|Ball_Y_pos\(3)) # (!\inst|LessThan2~3_cout\))) # (!\inst2|pixel_row\(3) & (\inst|Ball_Y_pos\(3) & !\inst|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(3),
	datab => \inst|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst|LessThan2~3_cout\,
	cout => \inst|LessThan2~5_cout\);

-- Location: LCCOMB_X32_Y18_N14
\inst|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~7_cout\ = CARRY((\inst|Ball_Y_pos\(4) & (\inst10|Add2~5_combout\ & !\inst|LessThan2~5_cout\)) # (!\inst|Ball_Y_pos\(4) & ((\inst10|Add2~5_combout\) # (!\inst|LessThan2~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(4),
	datab => \inst10|Add2~5_combout\,
	datad => VCC,
	cin => \inst|LessThan2~5_cout\,
	cout => \inst|LessThan2~7_cout\);

-- Location: LCCOMB_X32_Y18_N16
\inst|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~9_cout\ = CARRY((\inst|Ball_Y_pos\(5) & ((!\inst|LessThan2~7_cout\) # (!\inst10|Add2~4_combout\))) # (!\inst|Ball_Y_pos\(5) & (!\inst10|Add2~4_combout\ & !\inst|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(5),
	datab => \inst10|Add2~4_combout\,
	datad => VCC,
	cin => \inst|LessThan2~7_cout\,
	cout => \inst|LessThan2~9_cout\);

-- Location: LCCOMB_X32_Y18_N18
\inst|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~11_cout\ = CARRY((\inst10|Add2~3_combout\ & ((!\inst|LessThan2~9_cout\) # (!\inst|Ball_Y_pos\(6)))) # (!\inst10|Add2~3_combout\ & (!\inst|Ball_Y_pos\(6) & !\inst|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add2~3_combout\,
	datab => \inst|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst|LessThan2~9_cout\,
	cout => \inst|LessThan2~11_cout\);

-- Location: LCCOMB_X32_Y18_N20
\inst|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~13_cout\ = CARRY((\inst|Ball_Y_pos\(7) & ((!\inst|LessThan2~11_cout\) # (!\inst10|Add2~2_combout\))) # (!\inst|Ball_Y_pos\(7) & (!\inst10|Add2~2_combout\ & !\inst|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datab => \inst10|Add2~2_combout\,
	datad => VCC,
	cin => \inst|LessThan2~11_cout\,
	cout => \inst|LessThan2~13_cout\);

-- Location: LCCOMB_X32_Y18_N22
\inst|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~15_cout\ = CARRY((\inst10|Add2~1_combout\ & ((!\inst|LessThan2~13_cout\) # (!\inst|Ball_Y_pos\(8)))) # (!\inst10|Add2~1_combout\ & (!\inst|Ball_Y_pos\(8) & !\inst|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|Add2~1_combout\,
	datab => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|LessThan2~13_cout\,
	cout => \inst|LessThan2~15_cout\);

-- Location: LCCOMB_X32_Y18_N24
\inst|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan2~16_combout\ = (\inst10|Add2~6_combout\ & (!\inst|LessThan2~15_cout\ & \inst|Ball_Y_pos\(9))) # (!\inst10|Add2~6_combout\ & ((\inst|Ball_Y_pos\(9)) # (!\inst|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|Add2~6_combout\,
	datad => \inst|Ball_Y_pos\(9),
	cin => \inst|LessThan2~15_cout\,
	combout => \inst|LessThan2~16_combout\);

-- Location: LCCOMB_X36_Y18_N22
\inst|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|Ball_Y_pos\(5) & (!\inst|Add3~1\)) # (!\inst|Ball_Y_pos\(5) & ((\inst|Add3~1\) # (GND)))
-- \inst|Add3~3\ = CARRY((!\inst|Add3~1\) # (!\inst|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X36_Y18_N26
\inst|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|Ball_Y_pos\(7) & (!\inst|Add3~5\)) # (!\inst|Ball_Y_pos\(7) & ((\inst|Add3~5\) # (GND)))
-- \inst|Add3~7\ = CARRY((!\inst|Add3~5\) # (!\inst|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X36_Y18_N28
\inst|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = (\inst|Ball_Y_pos\(8) & (\inst|Add3~7\ $ (GND))) # (!\inst|Ball_Y_pos\(8) & (!\inst|Add3~7\ & VCC))
-- \inst|Add3~9\ = CARRY((\inst|Ball_Y_pos\(8) & !\inst|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X36_Y18_N30
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

-- Location: LCCOMB_X35_Y18_N0
\inst|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~1_cout\ = CARRY(\inst2|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(0),
	datad => VCC,
	cout => \inst|LessThan3~1_cout\);

-- Location: LCCOMB_X35_Y18_N2
\inst|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~3_cout\ = CARRY((\inst2|pixel_row\(1) & (\inst|Ball_Y_pos\(1) & !\inst|LessThan3~1_cout\)) # (!\inst2|pixel_row\(1) & ((\inst|Ball_Y_pos\(1)) # (!\inst|LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(1),
	datab => \inst|Ball_Y_pos\(1),
	datad => VCC,
	cin => \inst|LessThan3~1_cout\,
	cout => \inst|LessThan3~3_cout\);

-- Location: LCCOMB_X35_Y18_N4
\inst|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~5_cout\ = CARRY((\inst|Ball_Y_pos\(2) & (\inst2|pixel_row\(2) & !\inst|LessThan3~3_cout\)) # (!\inst|Ball_Y_pos\(2) & ((\inst2|pixel_row\(2)) # (!\inst|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(2),
	datab => \inst2|pixel_row\(2),
	datad => VCC,
	cin => \inst|LessThan3~3_cout\,
	cout => \inst|LessThan3~5_cout\);

-- Location: LCCOMB_X35_Y18_N6
\inst|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~7_cout\ = CARRY((\inst|Ball_Y_pos\(3) & (!\inst2|pixel_row\(3) & !\inst|LessThan3~5_cout\)) # (!\inst|Ball_Y_pos\(3) & ((!\inst|LessThan3~5_cout\) # (!\inst2|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Ball_Y_pos\(3),
	datab => \inst2|pixel_row\(3),
	datad => VCC,
	cin => \inst|LessThan3~5_cout\,
	cout => \inst|LessThan3~7_cout\);

-- Location: LCCOMB_X35_Y18_N8
\inst|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~9_cout\ = CARRY((\inst|Add3~0_combout\ & (\inst2|pixel_row\(4) & !\inst|LessThan3~7_cout\)) # (!\inst|Add3~0_combout\ & ((\inst2|pixel_row\(4)) # (!\inst|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~0_combout\,
	datab => \inst2|pixel_row\(4),
	datad => VCC,
	cin => \inst|LessThan3~7_cout\,
	cout => \inst|LessThan3~9_cout\);

-- Location: LCCOMB_X35_Y18_N10
\inst|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~11_cout\ = CARRY((\inst2|pixel_row\(5) & (\inst|Add3~2_combout\ & !\inst|LessThan3~9_cout\)) # (!\inst2|pixel_row\(5) & ((\inst|Add3~2_combout\) # (!\inst|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(5),
	datab => \inst|Add3~2_combout\,
	datad => VCC,
	cin => \inst|LessThan3~9_cout\,
	cout => \inst|LessThan3~11_cout\);

-- Location: LCCOMB_X35_Y18_N12
\inst|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~13_cout\ = CARRY((\inst|Add3~4_combout\ & (\inst2|pixel_row\(6) & !\inst|LessThan3~11_cout\)) # (!\inst|Add3~4_combout\ & ((\inst2|pixel_row\(6)) # (!\inst|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add3~4_combout\,
	datab => \inst2|pixel_row\(6),
	datad => VCC,
	cin => \inst|LessThan3~11_cout\,
	cout => \inst|LessThan3~13_cout\);

-- Location: LCCOMB_X35_Y18_N14
\inst|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~15_cout\ = CARRY((\inst2|pixel_row\(7) & (\inst|Add3~6_combout\ & !\inst|LessThan3~13_cout\)) # (!\inst2|pixel_row\(7) & ((\inst|Add3~6_combout\) # (!\inst|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_row\(7),
	datab => \inst|Add3~6_combout\,
	datad => VCC,
	cin => \inst|LessThan3~13_cout\,
	cout => \inst|LessThan3~15_cout\);

-- Location: LCCOMB_X35_Y18_N16
\inst|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan3~16_combout\ = (\inst2|pixel_row\(8) & ((!\inst|Add3~8_combout\) # (!\inst|LessThan3~15_cout\))) # (!\inst2|pixel_row\(8) & (!\inst|LessThan3~15_cout\ & !\inst|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|pixel_row\(8),
	datad => \inst|Add3~8_combout\,
	cin => \inst|LessThan3~15_cout\,
	combout => \inst|LessThan3~16_combout\);

-- Location: LCCOMB_X35_Y16_N2
\inst2|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|red_out~1_combout\ = (!\inst|Add1~12_combout\ & (\inst2|red_out~0_combout\ & (!\inst|Add3~10_combout\ & !\inst|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~12_combout\,
	datab => \inst2|red_out~0_combout\,
	datac => \inst|Add3~10_combout\,
	datad => \inst|LessThan3~16_combout\,
	combout => \inst2|red_out~1_combout\);

-- Location: LCCOMB_X35_Y16_N0
\inst2|red_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|red_out~2_combout\ = (!\inst|LessThan0~16_combout\ & (!\inst|LessThan1~18_combout\ & (!\inst|LessThan2~16_combout\ & \inst2|red_out~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan0~16_combout\,
	datab => \inst|LessThan1~18_combout\,
	datac => \inst|LessThan2~16_combout\,
	datad => \inst2|red_out~1_combout\,
	combout => \inst2|red_out~2_combout\);

-- Location: FF_X35_Y16_N1
\inst2|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|red_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|red_out~q\);

ww_green_out <= \green_out~output_o\;

ww_blue_out <= \blue_out~output_o\;

ww_vert_sync_out <= \vert_sync_out~output_o\;

ww_horiz_sync_out <= \horiz_sync_out~output_o\;

ww_red_out <= \red_out~output_o\;

ww_seg0(6) <= \seg0[6]~output_o\;

ww_seg0(5) <= \seg0[5]~output_o\;

ww_seg0(4) <= \seg0[4]~output_o\;

ww_seg0(3) <= \seg0[3]~output_o\;

ww_seg0(2) <= \seg0[2]~output_o\;

ww_seg0(1) <= \seg0[1]~output_o\;

ww_seg0(0) <= \seg0[0]~output_o\;

ww_seg1(6) <= \seg1[6]~output_o\;

ww_seg1(5) <= \seg1[5]~output_o\;

ww_seg1(4) <= \seg1[4]~output_o\;

ww_seg1(3) <= \seg1[3]~output_o\;

ww_seg1(2) <= \seg1[2]~output_o\;

ww_seg1(1) <= \seg1[1]~output_o\;

ww_seg1(0) <= \seg1[0]~output_o\;

mouse_data <= \mouse_data~output_o\;

mouse_clk <= \mouse_clk~output_o\;
END structure;


