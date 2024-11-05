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

-- DATE "11/05/2024 18:33:17"

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
	clk : IN std_logic;
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
-- clk	=>  Location: PIN_J27,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_u : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL ww_o : std_logic;
SIGNAL ww_boutf : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ff_r|q~q\ : std_logic;
SIGNAL \r~input_o\ : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \u~output_o\ : std_logic;
SIGNAL \i~output_o\ : std_logic;
SIGNAL \o~output_o\ : std_logic;
SIGNAL \boutf~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \q~input_o\ : std_logic;
SIGNAL \ff_q|q~feeder_combout\ : std_logic;
SIGNAL \ff_q|q~q\ : std_logic;
SIGNAL \z~input_o\ : std_logic;
SIGNAL \ff_z|q~feeder_combout\ : std_logic;
SIGNAL \ff_z|q~q\ : std_logic;
SIGNAL \c1|c~0_combout\ : std_logic;
SIGNAL \ff_y|q~q\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \ff_x|q~feeder_combout\ : std_logic;
SIGNAL \ff_x|q~q\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \ff_w|q~feeder_combout\ : std_logic;
SIGNAL \ff_w|q~q\ : std_logic;
SIGNAL \c2|c~0_combout\ : std_logic;
SIGNAL \ff_u|q~q\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \ff_e|q~feeder_combout\ : std_logic;
SIGNAL \ff_e|q~q\ : std_logic;
SIGNAL \n~input_o\ : std_logic;
SIGNAL \ff_n|q~feeder_combout\ : std_logic;
SIGNAL \ff_n|q~q\ : std_logic;
SIGNAL \c2|bout~0_combout\ : std_logic;
SIGNAL \c3|c~combout\ : std_logic;
SIGNAL \ff_i|q~q\ : std_logic;
SIGNAL \v~input_o\ : std_logic;
SIGNAL \ff_v|q~feeder_combout\ : std_logic;
SIGNAL \ff_v|q~q\ : std_logic;
SIGNAL \c3|bout~0_combout\ : std_logic;
SIGNAL \c4|c~combout\ : std_logic;
SIGNAL \ff_o|q~q\ : std_logic;
SIGNAL \c4|bout~0_combout\ : std_logic;
SIGNAL \ff_bout|q~q\ : std_logic;

BEGIN

ww_q <= q;
ww_w <= w;
ww_e <= e;
ww_r <= r;
ww_z <= z;
ww_x <= x;
ww_n <= n;
ww_v <= v;
ww_clk <= clk;
y <= ww_y;
u <= ww_u;
i <= ww_i;
o <= ww_o;
boutf <= ww_boutf;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: FF_X75_Y1_N17
\ff_r|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \r~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_r|q~q\);

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

-- Location: IOOBUF_X60_Y0_N9
\y~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ff_y|q~q\,
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
	i => \ff_u|q~q\,
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
	i => \ff_i|q~q\,
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
	i => \ff_o|q~q\,
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
	i => \ff_bout|q~q\,
	devoe => ww_devoe,
	o => \boutf~output_o\);

-- Location: IOIBUF_X115_Y37_N1
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

-- Location: LCCOMB_X75_Y1_N22
\ff_q|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ff_q|q~feeder_combout\ = \q~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \q~input_o\,
	combout => \ff_q|q~feeder_combout\);

-- Location: FF_X75_Y1_N23
\ff_q|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ff_q|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_q|q~q\);

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

-- Location: LCCOMB_X75_Y1_N8
\ff_z|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ff_z|q~feeder_combout\ = \z~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \z~input_o\,
	combout => \ff_z|q~feeder_combout\);

-- Location: FF_X75_Y1_N9
\ff_z|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ff_z|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_z|q~q\);

-- Location: LCCOMB_X75_Y1_N28
\c1|c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c1|c~0_combout\ = \ff_q|q~q\ $ (\ff_z|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ff_q|q~q\,
	datad => \ff_z|q~q\,
	combout => \c1|c~0_combout\);

-- Location: FF_X75_Y1_N29
\ff_y|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c1|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_y|q~q\);

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

-- Location: LCCOMB_X75_Y1_N12
\ff_x|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ff_x|q~feeder_combout\ = \x~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \x~input_o\,
	combout => \ff_x|q~feeder_combout\);

-- Location: FF_X75_Y1_N13
\ff_x|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ff_x|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_x|q~q\);

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

-- Location: LCCOMB_X75_Y1_N6
\ff_w|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ff_w|q~feeder_combout\ = \w~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \w~input_o\,
	combout => \ff_w|q~feeder_combout\);

-- Location: FF_X75_Y1_N7
\ff_w|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ff_w|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_w|q~q\);

-- Location: LCCOMB_X75_Y1_N30
\c2|c~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c2|c~0_combout\ = \ff_x|q~q\ $ (\ff_w|q~q\ $ (((\ff_z|q~q\ & !\ff_q|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_z|q~q\,
	datab => \ff_q|q~q\,
	datac => \ff_x|q~q\,
	datad => \ff_w|q~q\,
	combout => \c2|c~0_combout\);

-- Location: FF_X75_Y1_N31
\ff_u|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c2|c~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_u|q~q\);

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

-- Location: LCCOMB_X75_Y1_N4
\ff_e|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ff_e|q~feeder_combout\ = \e~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \e~input_o\,
	combout => \ff_e|q~feeder_combout\);

-- Location: FF_X75_Y1_N5
\ff_e|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ff_e|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_e|q~q\);

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

-- Location: LCCOMB_X75_Y1_N26
\ff_n|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ff_n|q~feeder_combout\ = \n~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \n~input_o\,
	combout => \ff_n|q~feeder_combout\);

-- Location: FF_X75_Y1_N27
\ff_n|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ff_n|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_n|q~q\);

-- Location: LCCOMB_X75_Y1_N18
\c2|bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c2|bout~0_combout\ = (\ff_x|q~q\ & (((\ff_z|q~q\ & !\ff_q|q~q\)) # (!\ff_w|q~q\))) # (!\ff_x|q~q\ & (\ff_z|q~q\ & (!\ff_q|q~q\ & !\ff_w|q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_x|q~q\,
	datab => \ff_z|q~q\,
	datac => \ff_q|q~q\,
	datad => \ff_w|q~q\,
	combout => \c2|bout~0_combout\);

-- Location: LCCOMB_X75_Y1_N20
\c3|c\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c3|c~combout\ = \ff_e|q~q\ $ (\ff_n|q~q\ $ (\c2|bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ff_e|q~q\,
	datac => \ff_n|q~q\,
	datad => \c2|bout~0_combout\,
	combout => \c3|c~combout\);

-- Location: FF_X75_Y1_N21
\ff_i|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c3|c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_i|q~q\);

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

-- Location: LCCOMB_X75_Y1_N14
\ff_v|q~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ff_v|q~feeder_combout\ = \v~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \v~input_o\,
	combout => \ff_v|q~feeder_combout\);

-- Location: FF_X75_Y1_N15
\ff_v|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ff_v|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_v|q~q\);

-- Location: LCCOMB_X75_Y1_N16
\c3|bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c3|bout~0_combout\ = (\ff_n|q~q\ & ((\c2|bout~0_combout\) # (!\ff_e|q~q\))) # (!\ff_n|q~q\ & (!\ff_e|q~q\ & \c2|bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_n|q~q\,
	datab => \ff_e|q~q\,
	datad => \c2|bout~0_combout\,
	combout => \c3|bout~0_combout\);

-- Location: LCCOMB_X75_Y1_N10
\c4|c\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c4|c~combout\ = \ff_r|q~q\ $ (\ff_v|q~q\ $ (\c3|bout~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_r|q~q\,
	datac => \ff_v|q~q\,
	datad => \c3|bout~0_combout\,
	combout => \c4|c~combout\);

-- Location: FF_X75_Y1_N11
\ff_o|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c4|c~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_o|q~q\);

-- Location: LCCOMB_X75_Y1_N24
\c4|bout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \c4|bout~0_combout\ = (\ff_r|q~q\ & (\ff_v|q~q\ & \c3|bout~0_combout\)) # (!\ff_r|q~q\ & ((\ff_v|q~q\) # (\c3|bout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ff_r|q~q\,
	datac => \ff_v|q~q\,
	datad => \c3|bout~0_combout\,
	combout => \c4|bout~0_combout\);

-- Location: FF_X75_Y1_N25
\ff_bout|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \c4|bout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ff_bout|q~q\);

ww_y <= \y~output_o\;

ww_u <= \u~output_o\;

ww_i <= \i~output_o\;

ww_o <= \o~output_o\;

ww_boutf <= \boutf~output_o\;
END structure;


