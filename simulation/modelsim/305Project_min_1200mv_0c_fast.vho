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

-- DATE "05/03/2018 12:43:04"

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

ENTITY 	TextExample IS
    PORT (
	red_out : OUT std_logic;
	clk : IN std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	horiz_sync_out : OUT std_logic
	);
END TextExample;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TextExample IS
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst1|q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|Add1~12_combout\ : std_logic;
SIGNAL \inst2|process_0~4_combout\ : std_logic;
SIGNAL \inst2|process_0~9_combout\ : std_logic;
SIGNAL \inst2|Equal1~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|pixel_column[3]~feeder_combout\ : std_logic;
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
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
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
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|h_count~1_combout\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|process_0~12_combout\ : std_logic;
SIGNAL \inst2|Add1~0_combout\ : std_logic;
SIGNAL \inst2|process_0~10_combout\ : std_logic;
SIGNAL \inst2|process_0~11_combout\ : std_logic;
SIGNAL \inst2|v_count~6_combout\ : std_logic;
SIGNAL \inst2|Equal1~1_combout\ : std_logic;
SIGNAL \inst2|v_count[9]~0_combout\ : std_logic;
SIGNAL \inst2|Add1~1\ : std_logic;
SIGNAL \inst2|Add1~3\ : std_logic;
SIGNAL \inst2|Add1~4_combout\ : std_logic;
SIGNAL \inst2|v_count[6]~3_combout\ : std_logic;
SIGNAL \inst2|Add1~8_combout\ : std_logic;
SIGNAL \inst2|v_count[4]~10_combout\ : std_logic;
SIGNAL \inst2|process_0~7_combout\ : std_logic;
SIGNAL \inst2|process_0~8_combout\ : std_logic;
SIGNAL \inst2|process_0~13_combout\ : std_logic;
SIGNAL \inst2|v_count[2]~8_combout\ : std_logic;
SIGNAL \inst2|Add1~5\ : std_logic;
SIGNAL \inst2|Add1~6_combout\ : std_logic;
SIGNAL \inst2|v_count[3]~9_combout\ : std_logic;
SIGNAL \inst2|Add1~7\ : std_logic;
SIGNAL \inst2|Add1~9\ : std_logic;
SIGNAL \inst2|Add1~11\ : std_logic;
SIGNAL \inst2|Add1~13\ : std_logic;
SIGNAL \inst2|Add1~14_combout\ : std_logic;
SIGNAL \inst2|v_count[7]~4_combout\ : std_logic;
SIGNAL \inst2|Add1~10_combout\ : std_logic;
SIGNAL \inst2|v_count[5]~2_combout\ : std_logic;
SIGNAL \inst2|Add1~15\ : std_logic;
SIGNAL \inst2|Add1~16_combout\ : std_logic;
SIGNAL \inst2|v_count[8]~5_combout\ : std_logic;
SIGNAL \inst2|LessThan7~0_combout\ : std_logic;
SIGNAL \inst2|LessThan7~1_combout\ : std_logic;
SIGNAL \inst2|video_on_v~q\ : std_logic;
SIGNAL \inst2|process_0~0_combout\ : std_logic;
SIGNAL \inst2|video_on_h~q\ : std_logic;
SIGNAL \inst2|green_out~0_combout\ : std_logic;
SIGNAL \inst2|Add1~2_combout\ : std_logic;
SIGNAL \inst2|v_count~7_combout\ : std_logic;
SIGNAL \inst2|pixel_column[4]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst2|pixel_column[5]~feeder_combout\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|Mux0~1_combout\ : std_logic;
SIGNAL \inst|Mux0~2_combout\ : std_logic;
SIGNAL \inst|Mux0~3_combout\ : std_logic;
SIGNAL \inst2|green_out~1_combout\ : std_logic;
SIGNAL \inst2|green_out~q\ : std_logic;
SIGNAL \inst2|blue_out~feeder_combout\ : std_logic;
SIGNAL \inst2|blue_out~q\ : std_logic;
SIGNAL \inst2|process_0~1_combout\ : std_logic;
SIGNAL \inst2|Add1~17\ : std_logic;
SIGNAL \inst2|Add1~18_combout\ : std_logic;
SIGNAL \inst2|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst2|process_0~2_combout\ : std_logic;
SIGNAL \inst2|vert_sync~q\ : std_logic;
SIGNAL \inst2|vert_sync_out~q\ : std_logic;
SIGNAL \inst2|process_0~5_combout\ : std_logic;
SIGNAL \inst2|process_0~3_combout\ : std_logic;
SIGNAL \inst2|process_0~6_combout\ : std_logic;
SIGNAL \inst2|horiz_sync~q\ : std_logic;
SIGNAL \inst2|horiz_sync_out~q\ : std_logic;
SIGNAL \inst2|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
vert_sync_out <= ww_vert_sync_out;
horiz_sync_out <= ww_horiz_sync_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|pixel_column\(5) & \~GND~combout\ & vcc & \inst2|pixel_column\(4) & \inst2|pixel_row\(3) & \inst2|pixel_row\(2) & \inst2|pixel_row\(1));

\inst|altsyncram_component|auto_generated|q_a\(0) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|altsyncram_component|auto_generated|q_a\(1) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|altsyncram_component|auto_generated|q_a\(2) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|altsyncram_component|auto_generated|q_a\(3) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|altsyncram_component|auto_generated|q_a\(4) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|altsyncram_component|auto_generated|q_a\(5) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|altsyncram_component|auto_generated|q_a\(6) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|altsyncram_component|auto_generated|q_a\(7) <= \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst1|q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|q~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: M9K_X25_Y16_N0
\inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init1 => X"00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "char_rom:inst|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
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
	portaaddr => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y17_N20
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

-- Location: FF_X26_Y16_N7
\inst2|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|pixel_column[3]~feeder_combout\,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(3));

-- Location: LCCOMB_X26_Y16_N22
\inst2|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~4_combout\ = (\inst2|h_count\(2)) # ((\inst2|h_count\(0) & (\inst2|h_count\(1) & !\inst2|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(0),
	datab => \inst2|h_count\(1),
	datac => \inst2|h_count\(2),
	datad => \inst2|h_count\(5),
	combout => \inst2|process_0~4_combout\);

-- Location: LCCOMB_X26_Y16_N2
\inst2|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~9_combout\ = ((!\inst2|h_count\(2) & ((!\inst2|h_count\(0)) # (!\inst2|h_count\(1))))) # (!\inst2|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(3),
	datab => \inst2|h_count\(1),
	datac => \inst2|h_count\(2),
	datad => \inst2|h_count\(0),
	combout => \inst2|process_0~9_combout\);

-- Location: LCCOMB_X24_Y16_N10
\inst2|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~0_combout\ = (\inst2|h_count\(2)) # ((\inst2|h_count\(8)) # ((!\inst2|h_count\(5)) # (!\inst2|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datab => \inst2|h_count\(8),
	datac => \inst2|h_count\(7),
	datad => \inst2|h_count\(5),
	combout => \inst2|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y16_N22
\inst2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|h_count\(2) & (!\inst2|h_count\(7) & (\inst2|h_count\(8) & !\inst2|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(2),
	datab => \inst2|h_count\(7),
	datac => \inst2|h_count\(8),
	datad => \inst2|h_count\(5),
	combout => \inst2|Equal0~1_combout\);

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

-- Location: LCCOMB_X26_Y16_N6
\inst2|pixel_column[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[3]~feeder_combout\ = \inst2|h_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|h_count\(3),
	combout => \inst2|pixel_column[3]~feeder_combout\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: LCCOMB_X22_Y1_N24
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

-- Location: FF_X22_Y1_N25
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

-- Location: CLKCTRL_G17
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

-- Location: LCCOMB_X27_Y16_N8
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

-- Location: FF_X27_Y16_N9
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

-- Location: LCCOMB_X27_Y16_N10
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

-- Location: LCCOMB_X27_Y16_N12
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

-- Location: LCCOMB_X27_Y16_N14
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

-- Location: FF_X27_Y16_N15
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

-- Location: LCCOMB_X27_Y16_N16
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

-- Location: FF_X27_Y16_N17
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

-- Location: LCCOMB_X27_Y16_N6
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

-- Location: LCCOMB_X27_Y16_N18
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

-- Location: LCCOMB_X27_Y16_N28
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

-- Location: FF_X27_Y16_N29
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

-- Location: LCCOMB_X27_Y16_N20
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

-- Location: FF_X27_Y16_N21
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

-- Location: LCCOMB_X27_Y16_N22
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

-- Location: LCCOMB_X27_Y16_N24
\inst2|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|h_count\(8) & (\inst2|Add0~15\ $ (GND))) # (!\inst2|h_count\(8) & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|h_count\(8) & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(8),
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X27_Y16_N26
\inst2|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = \inst2|h_count\(9) $ (\inst2|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(9),
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\);

-- Location: LCCOMB_X27_Y16_N4
\inst2|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|h_count~0_combout\ = (!\inst2|Equal0~2_combout\ & \inst2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Equal0~2_combout\,
	datac => \inst2|Add0~18_combout\,
	combout => \inst2|h_count~0_combout\);

-- Location: FF_X27_Y16_N5
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

-- Location: LCCOMB_X24_Y16_N4
\inst2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (\inst2|Equal0~1_combout\ & (\inst2|Equal0~0_combout\ & (\inst2|h_count\(9) & !\inst2|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|h_count\(9),
	datad => \inst2|h_count\(6),
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y16_N2
\inst2|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|h_count~1_combout\ = (!\inst2|Equal0~2_combout\ & \inst2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|Equal0~2_combout\,
	datad => \inst2|Add0~16_combout\,
	combout => \inst2|h_count~1_combout\);

-- Location: FF_X27_Y16_N3
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

-- Location: FF_X27_Y16_N23
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

-- Location: LCCOMB_X24_Y16_N20
\inst2|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~12_combout\ = (((!\inst2|h_count\(8) & !\inst2|h_count\(7))) # (!\inst2|h_count\(9))) # (!\inst2|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(9),
	datab => \inst2|h_count\(8),
	datac => \inst2|h_count\(9),
	datad => \inst2|h_count\(7),
	combout => \inst2|process_0~12_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~0_combout\ = \inst2|v_count\(0) $ (VCC)
-- \inst2|Add1~1\ = CARRY(\inst2|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(0),
	datad => VCC,
	combout => \inst2|Add1~0_combout\,
	cout => \inst2|Add1~1\);

-- Location: LCCOMB_X27_Y16_N30
\inst2|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~10_combout\ = (\inst2|h_count\(4) & \inst2|h_count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|h_count\(4),
	datad => \inst2|h_count\(5),
	combout => \inst2|process_0~10_combout\);

-- Location: LCCOMB_X27_Y16_N0
\inst2|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~11_combout\ = (!\inst2|h_count\(8) & (!\inst2|h_count\(6) & ((\inst2|process_0~9_combout\) # (!\inst2|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~9_combout\,
	datab => \inst2|h_count\(8),
	datac => \inst2|process_0~10_combout\,
	datad => \inst2|h_count\(6),
	combout => \inst2|process_0~11_combout\);

-- Location: LCCOMB_X23_Y17_N6
\inst2|v_count~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count~6_combout\ = (\inst2|Add1~0_combout\ & ((\inst2|process_0~8_combout\) # ((\inst2|process_0~12_combout\) # (\inst2|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~8_combout\,
	datab => \inst2|process_0~12_combout\,
	datac => \inst2|Add1~0_combout\,
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|v_count~6_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst2|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Equal1~1_combout\ = (\inst2|Equal1~0_combout\) # (((\inst2|h_count\(6)) # (!\inst2|Equal0~0_combout\)) # (!\inst2|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal1~0_combout\,
	datab => \inst2|h_count\(9),
	datac => \inst2|Equal0~0_combout\,
	datad => \inst2|h_count\(6),
	combout => \inst2|Equal1~1_combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst2|v_count[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[9]~0_combout\ = ((!\inst2|process_0~8_combout\ & (!\inst2|process_0~12_combout\ & !\inst2|process_0~11_combout\))) # (!\inst2|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~8_combout\,
	datab => \inst2|process_0~12_combout\,
	datac => \inst2|Equal1~1_combout\,
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|v_count[9]~0_combout\);

-- Location: FF_X23_Y17_N7
\inst2|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count~6_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(0));

-- Location: LCCOMB_X24_Y17_N10
\inst2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~2_combout\ = (\inst2|v_count\(1) & (!\inst2|Add1~1\)) # (!\inst2|v_count\(1) & ((\inst2|Add1~1\) # (GND)))
-- \inst2|Add1~3\ = CARRY((!\inst2|Add1~1\) # (!\inst2|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(1),
	datad => VCC,
	cin => \inst2|Add1~1\,
	combout => \inst2|Add1~2_combout\,
	cout => \inst2|Add1~3\);

-- Location: LCCOMB_X24_Y17_N12
\inst2|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~4_combout\ = (\inst2|v_count\(2) & (\inst2|Add1~3\ $ (GND))) # (!\inst2|v_count\(2) & (!\inst2|Add1~3\ & VCC))
-- \inst2|Add1~5\ = CARRY((\inst2|v_count\(2) & !\inst2|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(2),
	datad => VCC,
	cin => \inst2|Add1~3\,
	combout => \inst2|Add1~4_combout\,
	cout => \inst2|Add1~5\);

-- Location: LCCOMB_X23_Y17_N26
\inst2|v_count[6]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[6]~3_combout\ = (\inst2|v_count[9]~0_combout\ & (\inst2|Add1~12_combout\ & ((\inst2|process_0~13_combout\)))) # (!\inst2|v_count[9]~0_combout\ & (((\inst2|v_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add1~12_combout\,
	datab => \inst2|v_count[9]~0_combout\,
	datac => \inst2|v_count\(6),
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|v_count[6]~3_combout\);

-- Location: FF_X23_Y17_N27
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

-- Location: LCCOMB_X24_Y17_N16
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

-- Location: LCCOMB_X23_Y17_N2
\inst2|v_count[4]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[4]~10_combout\ = (\inst2|v_count[9]~0_combout\ & (\inst2|Add1~8_combout\ & ((\inst2|process_0~13_combout\)))) # (!\inst2|v_count[9]~0_combout\ & (((\inst2|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~0_combout\,
	datab => \inst2|Add1~8_combout\,
	datac => \inst2|v_count\(4),
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|v_count[4]~10_combout\);

-- Location: FF_X23_Y17_N3
\inst2|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(4));

-- Location: LCCOMB_X23_Y17_N24
\inst2|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~7_combout\ = (!\inst2|v_count\(5) & (!\inst2|v_count\(4) & ((!\inst2|v_count\(3)) # (!\inst2|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(5),
	datab => \inst2|v_count\(4),
	datac => \inst2|v_count\(2),
	datad => \inst2|v_count\(3),
	combout => \inst2|process_0~7_combout\);

-- Location: LCCOMB_X23_Y17_N22
\inst2|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~8_combout\ = (!\inst2|v_count\(8) & (!\inst2|v_count\(7) & (!\inst2|v_count\(6) & \inst2|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(8),
	datab => \inst2|v_count\(7),
	datac => \inst2|v_count\(6),
	datad => \inst2|process_0~7_combout\,
	combout => \inst2|process_0~8_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst2|process_0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~13_combout\ = (\inst2|process_0~12_combout\) # ((\inst2|process_0~8_combout\) # (\inst2|process_0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|process_0~12_combout\,
	datac => \inst2|process_0~8_combout\,
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|process_0~13_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst2|v_count[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[2]~8_combout\ = (\inst2|v_count[9]~0_combout\ & (\inst2|Add1~4_combout\ & ((\inst2|process_0~13_combout\)))) # (!\inst2|v_count[9]~0_combout\ & (((\inst2|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~0_combout\,
	datab => \inst2|Add1~4_combout\,
	datac => \inst2|v_count\(2),
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|v_count[2]~8_combout\);

-- Location: FF_X23_Y17_N31
\inst2|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(2));

-- Location: LCCOMB_X24_Y17_N14
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

-- Location: LCCOMB_X23_Y17_N28
\inst2|v_count[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[3]~9_combout\ = (\inst2|v_count[9]~0_combout\ & (\inst2|Add1~6_combout\ & ((\inst2|process_0~13_combout\)))) # (!\inst2|v_count[9]~0_combout\ & (((\inst2|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~0_combout\,
	datab => \inst2|Add1~6_combout\,
	datac => \inst2|v_count\(3),
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|v_count[3]~9_combout\);

-- Location: FF_X23_Y17_N29
\inst2|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(3));

-- Location: LCCOMB_X24_Y17_N18
\inst2|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~10_combout\ = (\inst2|v_count\(5) & (!\inst2|Add1~9\)) # (!\inst2|v_count\(5) & ((\inst2|Add1~9\) # (GND)))
-- \inst2|Add1~11\ = CARRY((!\inst2|Add1~9\) # (!\inst2|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(5),
	datad => VCC,
	cin => \inst2|Add1~9\,
	combout => \inst2|Add1~10_combout\,
	cout => \inst2|Add1~11\);

-- Location: LCCOMB_X24_Y17_N22
\inst2|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~14_combout\ = (\inst2|v_count\(7) & (!\inst2|Add1~13\)) # (!\inst2|v_count\(7) & ((\inst2|Add1~13\) # (GND)))
-- \inst2|Add1~15\ = CARRY((!\inst2|Add1~13\) # (!\inst2|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|v_count\(7),
	datad => VCC,
	cin => \inst2|Add1~13\,
	combout => \inst2|Add1~14_combout\,
	cout => \inst2|Add1~15\);

-- Location: LCCOMB_X23_Y17_N20
\inst2|v_count[7]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[7]~4_combout\ = (\inst2|v_count[9]~0_combout\ & (\inst2|Add1~14_combout\ & ((\inst2|process_0~13_combout\)))) # (!\inst2|v_count[9]~0_combout\ & (((\inst2|v_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~0_combout\,
	datab => \inst2|Add1~14_combout\,
	datac => \inst2|v_count\(7),
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|v_count[7]~4_combout\);

-- Location: FF_X23_Y17_N21
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

-- Location: LCCOMB_X23_Y17_N0
\inst2|v_count[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[5]~2_combout\ = (\inst2|v_count[9]~0_combout\ & (\inst2|Add1~10_combout\ & ((\inst2|process_0~13_combout\)))) # (!\inst2|v_count[9]~0_combout\ & (((\inst2|v_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~0_combout\,
	datab => \inst2|Add1~10_combout\,
	datac => \inst2|v_count\(5),
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|v_count[5]~2_combout\);

-- Location: FF_X23_Y17_N1
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

-- Location: LCCOMB_X24_Y17_N24
\inst2|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~16_combout\ = (\inst2|v_count\(8) & (\inst2|Add1~15\ $ (GND))) # (!\inst2|v_count\(8) & (!\inst2|Add1~15\ & VCC))
-- \inst2|Add1~17\ = CARRY((\inst2|v_count\(8) & !\inst2|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(8),
	datad => VCC,
	cin => \inst2|Add1~15\,
	combout => \inst2|Add1~16_combout\,
	cout => \inst2|Add1~17\);

-- Location: LCCOMB_X24_Y17_N6
\inst2|v_count[8]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[8]~5_combout\ = (\inst2|v_count[9]~0_combout\ & (\inst2|Add1~16_combout\ & ((\inst2|process_0~13_combout\)))) # (!\inst2|v_count[9]~0_combout\ & (((\inst2|v_count\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~0_combout\,
	datab => \inst2|Add1~16_combout\,
	datac => \inst2|v_count\(8),
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|v_count[8]~5_combout\);

-- Location: FF_X24_Y17_N7
\inst2|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count[8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(8));

-- Location: LCCOMB_X24_Y17_N0
\inst2|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~0_combout\ = (\inst2|v_count\(6) & (\inst2|v_count\(7) & (\inst2|v_count\(5) & \inst2|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(6),
	datab => \inst2|v_count\(7),
	datac => \inst2|v_count\(5),
	datad => \inst2|v_count\(8),
	combout => \inst2|LessThan7~0_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst2|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|LessThan7~1_combout\ = (!\inst2|v_count\(9) & !\inst2|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(9),
	datad => \inst2|LessThan7~0_combout\,
	combout => \inst2|LessThan7~1_combout\);

-- Location: FF_X26_Y16_N5
\inst2|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_v~q\);

-- Location: LCCOMB_X26_Y16_N24
\inst2|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~0_combout\ = ((!\inst2|h_count\(7) & !\inst2|h_count\(8))) # (!\inst2|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(7),
	datab => \inst2|h_count\(8),
	datad => \inst2|h_count\(9),
	combout => \inst2|process_0~0_combout\);

-- Location: FF_X26_Y16_N25
\inst2|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|video_on_h~q\);

-- Location: LCCOMB_X26_Y16_N4
\inst2|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|green_out~0_combout\ = (\inst2|video_on_v~q\ & \inst2|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|video_on_v~q\,
	datad => \inst2|video_on_h~q\,
	combout => \inst2|green_out~0_combout\);

-- Location: LCCOMB_X23_Y17_N16
\inst2|v_count~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count~7_combout\ = (\inst2|Add1~2_combout\ & ((\inst2|process_0~8_combout\) # ((\inst2|process_0~12_combout\) # (\inst2|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~8_combout\,
	datab => \inst2|process_0~12_combout\,
	datac => \inst2|Add1~2_combout\,
	datad => \inst2|process_0~11_combout\,
	combout => \inst2|v_count~7_combout\);

-- Location: FF_X23_Y17_N17
\inst2|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|v_count~7_combout\,
	ena => \inst2|v_count[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|v_count\(1));

-- Location: FF_X24_Y17_N15
\inst2|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|v_count\(1),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(1));

-- Location: FF_X24_Y17_N3
\inst2|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|v_count\(2),
	sload => VCC,
	ena => \inst2|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_row\(2));

-- Location: FF_X24_Y17_N13
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

-- Location: LCCOMB_X26_Y16_N26
\inst2|pixel_column[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[4]~feeder_combout\ = \inst2|h_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|h_count\(4),
	combout => \inst2|pixel_column[4]~feeder_combout\);

-- Location: FF_X26_Y16_N27
\inst2|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|pixel_column[4]~feeder_combout\,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(4));

-- Location: LCCOMB_X24_Y16_N2
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

-- Location: LCCOMB_X26_Y16_N0
\inst2|pixel_column[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|pixel_column[5]~feeder_combout\ = \inst2|h_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|h_count\(5),
	combout => \inst2|pixel_column[5]~feeder_combout\);

-- Location: FF_X26_Y16_N1
\inst2|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|pixel_column[5]~feeder_combout\,
	ena => \inst2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|pixel_column\(5));

-- Location: FF_X27_Y16_N11
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

-- Location: FF_X26_Y16_N19
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

-- Location: FF_X27_Y16_N13
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

-- Location: FF_X26_Y16_N11
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

-- Location: LCCOMB_X26_Y16_N10
\inst|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst2|pixel_column\(1) & (((\inst2|pixel_column\(2))))) # (!\inst2|pixel_column\(1) & ((\inst2|pixel_column\(2) & ((\inst|altsyncram_component|auto_generated|q_a\(1)))) # (!\inst2|pixel_column\(2) & 
-- (\inst|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst2|pixel_column\(1),
	datac => \inst2|pixel_column\(2),
	datad => \inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~1_combout\ = (\inst2|pixel_column\(1) & ((\inst|Mux0~0_combout\ & (\inst|altsyncram_component|auto_generated|q_a\(0))) # (!\inst|Mux0~0_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(2)))))) # (!\inst2|pixel_column\(1) & 
-- (((\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(1),
	datab => \inst|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst|Mux0~0_combout\,
	combout => \inst|Mux0~1_combout\);

-- Location: LCCOMB_X26_Y16_N18
\inst|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~2_combout\ = (\inst2|pixel_column\(2) & (((\inst2|pixel_column\(1))))) # (!\inst2|pixel_column\(2) & ((\inst2|pixel_column\(1) & (\inst|altsyncram_component|auto_generated|q_a\(6))) # (!\inst2|pixel_column\(1) & 
-- ((\inst|altsyncram_component|auto_generated|q_a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(2),
	datab => \inst|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst2|pixel_column\(1),
	datad => \inst|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y16_N16
\inst|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux0~3_combout\ = (\inst2|pixel_column\(2) & ((\inst|Mux0~2_combout\ & (\inst|altsyncram_component|auto_generated|q_a\(4))) # (!\inst|Mux0~2_combout\ & ((\inst|altsyncram_component|auto_generated|q_a\(5)))))) # (!\inst2|pixel_column\(2) & 
-- (((\inst|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst2|pixel_column\(2),
	datac => \inst|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst|Mux0~2_combout\,
	combout => \inst|Mux0~3_combout\);

-- Location: LCCOMB_X26_Y16_N12
\inst2|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|green_out~1_combout\ = (\inst2|green_out~0_combout\ & ((\inst2|pixel_column\(3) & (\inst|Mux0~1_combout\)) # (!\inst2|pixel_column\(3) & ((\inst|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|pixel_column\(3),
	datab => \inst2|green_out~0_combout\,
	datac => \inst|Mux0~1_combout\,
	datad => \inst|Mux0~3_combout\,
	combout => \inst2|green_out~1_combout\);

-- Location: FF_X26_Y16_N13
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

-- Location: LCCOMB_X26_Y16_N20
\inst2|blue_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|blue_out~feeder_combout\ = \inst2|green_out~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|green_out~1_combout\,
	combout => \inst2|blue_out~feeder_combout\);

-- Location: FF_X26_Y16_N21
\inst2|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	d => \inst2|blue_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|blue_out~q\);

-- Location: LCCOMB_X24_Y17_N28
\inst2|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~1_combout\ = ((\inst2|v_count\(1) $ (!\inst2|v_count\(0))) # (!\inst2|v_count\(2))) # (!\inst2|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(1),
	datab => \inst2|v_count\(3),
	datac => \inst2|v_count\(0),
	datad => \inst2|v_count\(2),
	combout => \inst2|process_0~1_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst2|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Add1~18_combout\ = \inst2|v_count\(9) $ (\inst2|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(9),
	cin => \inst2|Add1~17\,
	combout => \inst2|Add1~18_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst2|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|v_count[9]~1_combout\ = (\inst2|v_count[9]~0_combout\ & (\inst2|Add1~18_combout\ & ((\inst2|process_0~13_combout\)))) # (!\inst2|v_count[9]~0_combout\ & (((\inst2|v_count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count[9]~0_combout\,
	datab => \inst2|Add1~18_combout\,
	datac => \inst2|v_count\(9),
	datad => \inst2|process_0~13_combout\,
	combout => \inst2|v_count[9]~1_combout\);

-- Location: FF_X24_Y17_N31
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

-- Location: LCCOMB_X24_Y17_N4
\inst2|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~2_combout\ = (\inst2|v_count\(4)) # ((\inst2|process_0~1_combout\) # ((\inst2|v_count\(9)) # (!\inst2|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|v_count\(4),
	datab => \inst2|process_0~1_combout\,
	datac => \inst2|v_count\(9),
	datad => \inst2|LessThan7~0_combout\,
	combout => \inst2|process_0~2_combout\);

-- Location: FF_X24_Y17_N5
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

-- Location: FF_X24_Y17_N25
\inst2|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|q~clkctrl_outclk\,
	asdata => \inst2|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|vert_sync_out~q\);

-- Location: LCCOMB_X26_Y16_N28
\inst2|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~5_combout\ = (\inst2|h_count\(4) & ((\inst2|process_0~4_combout\) # (\inst2|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|process_0~4_combout\,
	datab => \inst2|h_count\(4),
	datad => \inst2|h_count\(3),
	combout => \inst2|process_0~5_combout\);

-- Location: LCCOMB_X26_Y16_N14
\inst2|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~3_combout\ = (\inst2|h_count\(7) & (!\inst2|h_count\(8) & \inst2|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(7),
	datab => \inst2|h_count\(8),
	datad => \inst2|h_count\(9),
	combout => \inst2|process_0~3_combout\);

-- Location: LCCOMB_X26_Y16_N8
\inst2|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|process_0~6_combout\ = ((\inst2|h_count\(6) & (\inst2|process_0~5_combout\ & \inst2|h_count\(5))) # (!\inst2|h_count\(6) & (!\inst2|process_0~5_combout\ & !\inst2|h_count\(5)))) # (!\inst2|process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|h_count\(6),
	datab => \inst2|process_0~5_combout\,
	datac => \inst2|process_0~3_combout\,
	datad => \inst2|h_count\(5),
	combout => \inst2|process_0~6_combout\);

-- Location: FF_X26_Y16_N9
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

-- Location: FF_X26_Y16_N15
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

ww_red_out <= \red_out~output_o\;

ww_green_out <= \green_out~output_o\;

ww_blue_out <= \blue_out~output_o\;

ww_vert_sync_out <= \vert_sync_out~output_o\;

ww_horiz_sync_out <= \horiz_sync_out~output_o\;
END structure;


