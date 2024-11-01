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

-- DATE "11/01/2024 17:02:46"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fourbitsr IS
    PORT (
	q : IN std_logic;
	w : IN std_logic;
	e : IN std_logic;
	r : IN std_logic;
	z : IN std_logic;
	x : IN std_logic;
	n : IN std_logic;
	v : IN std_logic;
	y : OUT std_logic;
	u : OUT std_logic;
	i : OUT std_logic;
	o : OUT std_logic;
	boutf : OUT std_logic
	);
END fourbitsr;

-- Design Ports Information
-- y	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- boutf	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fourbitsr IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_r : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_u : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_o : std_logic;
SIGNAL ww_boutf : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \u~output_o\ : std_logic;
SIGNAL \i~output_o\ : std_logic;
SIGNAL \o~output_o\ : std_logic;
SIGNAL \boutf~output_o\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \q~input_o\ : std_logic;
SIGNAL \c1|c~0_combout\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \c2|c~0_combout\ : std_logic;
SIGNAL \c2|bout~0_combout\ : std_logic;
SIGNAL \n~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \c3|c~combout\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \v~input_o\ : std_logic;
SIGNAL \c3|bout~0_combout\ : std_logic;
SIGNAL \c4|c~combout\ : std_logic;
SIGNAL \c4|bout~0_combout\ : std_logic;

BEGIN

ww_q <= q;
ww_w <= w;
ww_e <= e;
ww_r <= r;
ww_z <= z;
ww_x <= x;
ww_n <= n;
ww_v <= v;
y <= ww_y;
u <= ww_u;
i <= ww_i;
o <= ww_o;
boutf <= ww_boutf;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X60_Y0_N9
\y~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c1|c~0_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\u~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c2|c~0_combout\,
	devoe => ww_devoe,
	o => \u~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\i~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c3|c~combout\,
	devoe => ww_devoe,
	o => \i~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\o~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4|c~combout\,
	devoe => ww_devoe,
	o => \o~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\boutf~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \c4|bout~0_combout\,
	devoe => ww_devoe,
	o => \boutf~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\z~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_z,
	o => \z~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\q~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_q,
	o => \q~input_o\);

-- Location: LCCOMB_X75_Y1_N24
\c1|c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c1|c~0_combout\ = \z~input_o\ $ (\q~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \z~input_o\,
	datad => \q~input_o\,
	combout => \c1|c~0_combout\);

-- Location: IOIBUF_X67_Y0_N15
\w~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\x~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: LCCOMB_X75_Y1_N26
\c2|c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c2|c~0_combout\ = \w~input_o\ $ (\x~input_o\ $ (((\z~input_o\ & !\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w~input_o\,
	datab => \x~input_o\,
	datac => \z~input_o\,
	datad => \q~input_o\,
	combout => \c2|c~0_combout\);

-- Location: LCCOMB_X75_Y1_N28
\c2|bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c2|bout~0_combout\ = (\w~input_o\ & (\x~input_o\ & (\z~input_o\ & !\q~input_o\))) # (!\w~input_o\ & ((\x~input_o\) # ((\z~input_o\ & !\q~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \w~input_o\,
	datab => \x~input_o\,
	datac => \z~input_o\,
	datad => \q~input_o\,
	combout => \c2|bout~0_combout\);

-- Location: IOIBUF_X81_Y0_N22
\n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n,
	o => \n~input_o\);

-- Location: IOIBUF_X85_Y0_N8
\e~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: LCCOMB_X75_Y1_N14
\c3|c\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c3|c~combout\ = \c2|bout~0_combout\ $ (\n~input_o\ $ (\e~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c2|bout~0_combout\,
	datac => \n~input_o\,
	datad => \e~input_o\,
	combout => \c3|c~combout\);

-- Location: IOIBUF_X56_Y0_N15
\r~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_r,
	o => \r~input_o\);

-- Location: IOIBUF_X74_Y73_N15
\v~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_v,
	o => \v~input_o\);

-- Location: LCCOMB_X75_Y1_N0
\c3|bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c3|bout~0_combout\ = (\c2|bout~0_combout\ & ((\n~input_o\) # (!\e~input_o\))) # (!\c2|bout~0_combout\ & (\n~input_o\ & !\e~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c2|bout~0_combout\,
	datac => \n~input_o\,
	datad => \e~input_o\,
	combout => \c3|bout~0_combout\);

-- Location: LCCOMB_X75_Y1_N10
\c4|c\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c4|c~combout\ = \r~input_o\ $ (\v~input_o\ $ (\c3|bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~input_o\,
	datac => \v~input_o\,
	datad => \c3|bout~0_combout\,
	combout => \c4|c~combout\);

-- Location: LCCOMB_X75_Y1_N4
\c4|bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c4|bout~0_combout\ = (\r~input_o\ & (\v~input_o\ & \c3|bout~0_combout\)) # (!\r~input_o\ & ((\v~input_o\) # (\c3|bout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \r~input_o\,
	datac => \v~input_o\,
	datad => \c3|bout~0_combout\,
	combout => \c4|bout~0_combout\);

ww_y <= \y~output_o\;

ww_u <= \u~output_o\;

ww_i <= \i~output_o\;

ww_o <= \o~output_o\;

ww_boutf <= \boutf~output_o\;
END structure;


