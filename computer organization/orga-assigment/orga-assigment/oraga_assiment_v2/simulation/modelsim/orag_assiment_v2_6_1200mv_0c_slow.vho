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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/11/2024 15:59:48"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	one_bit_reg IS
    PORT (
	Q : OUT std_logic;
	data : IN std_logic;
	\select\ : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic
	);
END one_bit_reg;

-- Design Ports Information
-- Q	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- select	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF one_bit_reg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_data : std_logic;
SIGNAL \ww_select\ : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \select~input_o\ : std_logic;
SIGNAL \data~input_o\ : std_logic;
SIGNAL \comb_4|Q~0_combout\ : std_logic;
SIGNAL \comb_4|Q~q\ : std_logic;

BEGIN

Q <= ww_Q;
ww_data <= data;
\ww_select\ <= \select\;
ww_clk <= clk;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X12_Y0_N9
\Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb_4|Q~q\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOIBUF_X12_Y0_N1
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\select~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_select\,
	o => \select~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\data~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data,
	o => \data~input_o\);

-- Location: LCCOMB_X13_Y1_N28
\comb_4|Q~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb_4|Q~0_combout\ = (!\reset~input_o\ & ((\select~input_o\ & ((\data~input_o\))) # (!\select~input_o\ & (\comb_4|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \select~input_o\,
	datac => \comb_4|Q~q\,
	datad => \data~input_o\,
	combout => \comb_4|Q~0_combout\);

-- Location: FF_X13_Y1_N29
\comb_4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \comb_4|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_4|Q~q\);

ww_Q <= \Q~output_o\;
END structure;


