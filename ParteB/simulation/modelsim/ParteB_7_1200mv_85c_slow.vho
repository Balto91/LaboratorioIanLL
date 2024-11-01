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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/01/2024 12:53:11"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
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

ENTITY 	Restador IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	bin : IN std_logic;
	c : OUT std_logic;
	bout : OUT std_logic;
	clk : IN std_logic
	);
END Restador;

-- Design Ports Information
-- c	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bout	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Restador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_bin : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL ww_bout : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \c~output_o\ : std_logic;
SIGNAL \bout~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \d2|q~feeder_combout\ : std_logic;
SIGNAL \d2|q~q\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \d1|q~q\ : std_logic;
SIGNAL \c_aux~0_combout\ : std_logic;
SIGNAL \d3|q~q\ : std_logic;
SIGNAL \bin~input_o\ : std_logic;
SIGNAL \d4|q~feeder_combout\ : std_logic;
SIGNAL \d4|q~q\ : std_logic;
SIGNAL \bout_aux~0_combout\ : std_logic;
SIGNAL \d5|q~q\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_bin <= bin;
c <= ww_c;
bout <= ww_bout;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X72_Y0_N9
\c~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|q~q\,
	devoe => ww_devoe,
	o => \c~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\bout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d5|q~q\,
	devoe => ww_devoe,
	o => \bout~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X57_Y1_N26
\d2|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d2|q~feeder_combout\ = \b~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b~input_o\,
	combout => \d2|q~feeder_combout\);

-- Location: FF_X57_Y1_N27
\d2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d2|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d2|q~q\);

-- Location: IOIBUF_X85_Y0_N8
\a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: FF_X57_Y1_N29
\d1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	asdata => \a~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d1|q~q\);

-- Location: LCCOMB_X57_Y1_N24
\c_aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c_aux~0_combout\ = \d4|q~q\ $ (\d2|q~q\ $ (\d1|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d4|q~q\,
	datac => \d2|q~q\,
	datad => \d1|q~q\,
	combout => \c_aux~0_combout\);

-- Location: FF_X57_Y1_N25
\d3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \c_aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d3|q~q\);

-- Location: IOIBUF_X94_Y0_N8
\bin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin,
	o => \bin~input_o\);

-- Location: LCCOMB_X57_Y1_N12
\d4|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \d4|q~feeder_combout\ = \bin~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bin~input_o\,
	combout => \d4|q~feeder_combout\);

-- Location: FF_X57_Y1_N13
\d4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \d4|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d4|q~q\);

-- Location: LCCOMB_X57_Y1_N30
\bout_aux~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \bout_aux~0_combout\ = (\d1|q~q\ & (\d2|q~q\ & \d4|q~q\)) # (!\d1|q~q\ & ((\d2|q~q\) # (\d4|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \d1|q~q\,
	datac => \d2|q~q\,
	datad => \d4|q~q\,
	combout => \bout_aux~0_combout\);

-- Location: FF_X57_Y1_N31
\d5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \bout_aux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d5|q~q\);

ww_c <= \c~output_o\;

ww_bout <= \bout~output_o\;
END structure;


