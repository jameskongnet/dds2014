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

-- DATE "12/06/2013 20:19:05"

-- 
-- Device: Altera EP3C10E144C8 Package TQFP144
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

ENTITY 	translate IS
    PORT (
	clk : IN std_logic;
	mst_rst : OUT std_logic;
	d : OUT std_logic_vector(7 DOWNTO 0);
	a : OUT std_logic_vector(5 DOWNTO 0);
	wrb : OUT std_logic;
	io_ud : OUT std_logic
	);
END translate;

-- Design Ports Information
-- mst_rst	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d[0]	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d[1]	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d[2]	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d[3]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d[4]	=>  Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d[5]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d[6]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- d[7]	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[0]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[2]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[3]	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[4]	=>  Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- a[5]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- wrb	=>  Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- io_ud	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clk	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF translate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_mst_rst : std_logic;
SIGNAL ww_d : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_wrb : std_logic;
SIGNAL ww_io_ud : std_logic;
SIGNAL \count_clk[10]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count_clk[4]~16_combout\ : std_logic;
SIGNAL \count_clk[6]~20_combout\ : std_logic;
SIGNAL \count_clk[7]~22_combout\ : std_logic;
SIGNAL \dount[3]~9_combout\ : std_logic;
SIGNAL \dount[4]~12_combout\ : std_logic;
SIGNAL \count_clk[0]~30_combout\ : std_logic;
SIGNAL \mst_rst~output_o\ : std_logic;
SIGNAL \d[0]~output_o\ : std_logic;
SIGNAL \d[1]~output_o\ : std_logic;
SIGNAL \d[2]~output_o\ : std_logic;
SIGNAL \d[3]~output_o\ : std_logic;
SIGNAL \d[4]~output_o\ : std_logic;
SIGNAL \d[5]~output_o\ : std_logic;
SIGNAL \d[6]~output_o\ : std_logic;
SIGNAL \d[7]~output_o\ : std_logic;
SIGNAL \a[0]~output_o\ : std_logic;
SIGNAL \a[1]~output_o\ : std_logic;
SIGNAL \a[2]~output_o\ : std_logic;
SIGNAL \a[3]~output_o\ : std_logic;
SIGNAL \a[4]~output_o\ : std_logic;
SIGNAL \a[5]~output_o\ : std_logic;
SIGNAL \wrb~output_o\ : std_logic;
SIGNAL \io_ud~output_o\ : std_logic;
SIGNAL \count_clk[1]~10_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \cl_en~0_combout\ : std_logic;
SIGNAL \cl_en~q\ : std_logic;
SIGNAL \count_clk[1]~11\ : std_logic;
SIGNAL \count_clk[2]~12_combout\ : std_logic;
SIGNAL \count_clk[2]~13\ : std_logic;
SIGNAL \count_clk[3]~14_combout\ : std_logic;
SIGNAL \count_clk[3]~15\ : std_logic;
SIGNAL \count_clk[4]~17\ : std_logic;
SIGNAL \count_clk[5]~18_combout\ : std_logic;
SIGNAL \count_clk[5]~19\ : std_logic;
SIGNAL \count_clk[6]~21\ : std_logic;
SIGNAL \count_clk[7]~23\ : std_logic;
SIGNAL \count_clk[8]~24_combout\ : std_logic;
SIGNAL \count_clk[8]~25\ : std_logic;
SIGNAL \count_clk[9]~26_combout\ : std_logic;
SIGNAL \count_clk[9]~27\ : std_logic;
SIGNAL \count_clk[10]~28_combout\ : std_logic;
SIGNAL \count_clk[10]~clkctrl_outclk\ : std_logic;
SIGNAL \dount[1]~5_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \dount[0]~11_combout\ : std_logic;
SIGNAL \dount[1]~6\ : std_logic;
SIGNAL \dount[2]~7_combout\ : std_logic;
SIGNAL \dount[2]~8\ : std_logic;
SIGNAL \dount[3]~10\ : std_logic;
SIGNAL \dount[4]~13\ : std_logic;
SIGNAL \dount[5]~14_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \mst_rst~reg0_q\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \data_tmp[3]~0_combout\ : std_logic;
SIGNAL \data_tmp[0]~1_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \data_tmp[3]~3_combout\ : std_logic;
SIGNAL \data_tmp[3]~2_combout\ : std_logic;
SIGNAL \data_tmp[3]~4_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \count[3]~_wirecell_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \address_tmp[0]~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \io_ud~reg0_q\ : std_logic;
SIGNAL dount : std_logic_vector(5 DOWNTO 0);
SIGNAL data_tmp : std_logic_vector(7 DOWNTO 0);
SIGNAL count_clk : std_logic_vector(31 DOWNTO 0);
SIGNAL count : std_logic_vector(5 DOWNTO 0);
SIGNAL address_tmp : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_cl_en~q\ : std_logic;
SIGNAL ALT_INV_count : std_logic_vector(3 DOWNTO 1);
SIGNAL ALT_INV_count_clk : std_logic_vector(10 DOWNTO 10);

BEGIN

ww_clk <= clk;
mst_rst <= ww_mst_rst;
d <= ww_d;
a <= ww_a;
wrb <= ww_wrb;
io_ud <= ww_io_ud;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count_clk[10]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & count_clk(10));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_cl_en~q\ <= NOT \cl_en~q\;
ALT_INV_count(1) <= NOT count(1);
ALT_INV_count(3) <= NOT count(3);
ALT_INV_count_clk(10) <= NOT count_clk(10);

-- Location: FF_X1_Y11_N11
\dount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \dount[3]~9_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dount(3));

-- Location: FF_X1_Y11_N13
\dount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \dount[4]~12_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dount(4));

-- Location: FF_X16_Y5_N13
\count_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[7]~22_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(7));

-- Location: FF_X16_Y5_N11
\count_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[6]~20_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(6));

-- Location: FF_X16_Y5_N7
\count_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[4]~16_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(4));

-- Location: LCCOMB_X16_Y5_N6
\count_clk[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[4]~16_combout\ = (count_clk(4) & (!\count_clk[3]~15\)) # (!count_clk(4) & ((\count_clk[3]~15\) # (GND)))
-- \count_clk[4]~17\ = CARRY((!\count_clk[3]~15\) # (!count_clk(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk(4),
	datad => VCC,
	cin => \count_clk[3]~15\,
	combout => \count_clk[4]~16_combout\,
	cout => \count_clk[4]~17\);

-- Location: LCCOMB_X16_Y5_N10
\count_clk[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[6]~20_combout\ = (count_clk(6) & (!\count_clk[5]~19\)) # (!count_clk(6) & ((\count_clk[5]~19\) # (GND)))
-- \count_clk[6]~21\ = CARRY((!\count_clk[5]~19\) # (!count_clk(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk(6),
	datad => VCC,
	cin => \count_clk[5]~19\,
	combout => \count_clk[6]~20_combout\,
	cout => \count_clk[6]~21\);

-- Location: LCCOMB_X16_Y5_N12
\count_clk[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[7]~22_combout\ = (count_clk(7) & (\count_clk[6]~21\ $ (GND))) # (!count_clk(7) & (!\count_clk[6]~21\ & VCC))
-- \count_clk[7]~23\ = CARRY((count_clk(7) & !\count_clk[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk(7),
	datad => VCC,
	cin => \count_clk[6]~21\,
	combout => \count_clk[7]~22_combout\,
	cout => \count_clk[7]~23\);

-- Location: LCCOMB_X1_Y11_N10
\dount[3]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dount[3]~9_combout\ = (dount(3) & (\dount[2]~8\ $ (GND))) # (!dount(3) & (!\dount[2]~8\ & VCC))
-- \dount[3]~10\ = CARRY((dount(3) & !\dount[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dount(3),
	datad => VCC,
	cin => \dount[2]~8\,
	combout => \dount[3]~9_combout\,
	cout => \dount[3]~10\);

-- Location: LCCOMB_X1_Y11_N12
\dount[4]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dount[4]~12_combout\ = (dount(4) & (!\dount[3]~10\)) # (!dount(4) & ((\dount[3]~10\) # (GND)))
-- \dount[4]~13\ = CARRY((!\dount[3]~10\) # (!dount(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => dount(4),
	datad => VCC,
	cin => \dount[3]~10\,
	combout => \dount[4]~12_combout\,
	cout => \dount[4]~13\);

-- Location: FF_X17_Y5_N5
\count_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(0));

-- Location: LCCOMB_X17_Y5_N4
\count_clk[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[0]~30_combout\ = count_clk(0) $ (!\cl_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_clk(0),
	datad => \cl_en~q\,
	combout => \count_clk[0]~30_combout\);

-- Location: IOOBUF_X0_Y18_N23
\mst_rst~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mst_rst~reg0_q\,
	devoe => ww_devoe,
	o => \mst_rst~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\d[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_tmp(0),
	devoe => ww_devoe,
	o => \d[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\d[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\d[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_tmp(2),
	devoe => ww_devoe,
	o => \d[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\d[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_tmp(3),
	devoe => ww_devoe,
	o => \d[3]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\d[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_tmp(4),
	devoe => ww_devoe,
	o => \d[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\d[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \d[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\d[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_tmp(6),
	devoe => ww_devoe,
	o => \d[6]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\d[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => data_tmp(7),
	devoe => ww_devoe,
	o => \d[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\a[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address_tmp(0),
	devoe => ww_devoe,
	o => \a[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\a[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address_tmp(1),
	devoe => ww_devoe,
	o => \a[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\a[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address_tmp(2),
	devoe => ww_devoe,
	o => \a[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\a[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address_tmp(3),
	devoe => ww_devoe,
	o => \a[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\a[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address_tmp(4),
	devoe => ww_devoe,
	o => \a[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\a[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => address_tmp(5),
	devoe => ww_devoe,
	o => \a[5]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\wrb~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_count_clk(10),
	devoe => ww_devoe,
	o => \wrb~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\io_ud~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \io_ud~reg0_q\,
	devoe => ww_devoe,
	o => \io_ud~output_o\);

-- Location: LCCOMB_X16_Y5_N0
\count_clk[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[1]~10_combout\ = (count_clk(0) & (count_clk(1) $ (VCC))) # (!count_clk(0) & (count_clk(1) & VCC))
-- \count_clk[1]~11\ = CARRY((count_clk(0) & count_clk(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count_clk(0),
	datab => count_clk(1),
	datad => VCC,
	combout => \count_clk[1]~10_combout\,
	cout => \count_clk[1]~11\);

-- Location: LCCOMB_X12_Y4_N14
\Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count(0) $ (VCC)
-- \Add1~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X12_Y4_N22
\Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (count(4) & (\Add1~7\ $ (GND))) # (!count(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((count(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X12_Y4_N24
\Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = \Add1~9\ $ (count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(5),
	cin => \Add1~9\,
	combout => \Add1~10_combout\);

-- Location: LCCOMB_X12_Y4_N28
\count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~2_combout\ = \Add1~10_combout\ $ (((\Equal0~0_combout\ & (!count(4) & count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => count(4),
	datac => count(5),
	datad => \Add1~10_combout\,
	combout => \count~2_combout\);

-- Location: FF_X12_Y4_N29
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X12_Y4_N8
\count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = \Add1~0_combout\ $ (((\Equal0~0_combout\ & (!count(4) & count(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => count(4),
	datac => \Add1~0_combout\,
	datad => count(5),
	combout => \count~0_combout\);

-- Location: FF_X12_Y4_N9
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: LCCOMB_X12_Y4_N16
\Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count(1) & (!\Add1~1\)) # (!count(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: FF_X12_Y4_N17
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Add1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X12_Y4_N18
\Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (count(2) & (\Add1~3\ $ (GND))) # (!count(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((count(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X12_Y4_N20
\Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (count(3) & (!\Add1~5\)) # (!count(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: FF_X12_Y4_N21
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Add1~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: FF_X12_Y4_N23
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Add1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X12_Y4_N26
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(2) & (!count(3) & (!count(0) & !count(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(3),
	datac => count(0),
	datad => count(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X16_Y5_N24
\cl_en~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cl_en~0_combout\ = (\cl_en~q\) # ((count(5) & (!count(4) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(4),
	datac => \cl_en~q\,
	datad => \Equal0~0_combout\,
	combout => \cl_en~0_combout\);

-- Location: FF_X16_Y5_N25
cl_en : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \cl_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cl_en~q\);

-- Location: FF_X16_Y5_N1
\count_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[1]~10_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(1));

-- Location: LCCOMB_X16_Y5_N2
\count_clk[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[2]~12_combout\ = (count_clk(2) & (!\count_clk[1]~11\)) # (!count_clk(2) & ((\count_clk[1]~11\) # (GND)))
-- \count_clk[2]~13\ = CARRY((!\count_clk[1]~11\) # (!count_clk(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk(2),
	datad => VCC,
	cin => \count_clk[1]~11\,
	combout => \count_clk[2]~12_combout\,
	cout => \count_clk[2]~13\);

-- Location: FF_X16_Y5_N3
\count_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[2]~12_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(2));

-- Location: LCCOMB_X16_Y5_N4
\count_clk[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[3]~14_combout\ = (count_clk(3) & (\count_clk[2]~13\ $ (GND))) # (!count_clk(3) & (!\count_clk[2]~13\ & VCC))
-- \count_clk[3]~15\ = CARRY((count_clk(3) & !\count_clk[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk(3),
	datad => VCC,
	cin => \count_clk[2]~13\,
	combout => \count_clk[3]~14_combout\,
	cout => \count_clk[3]~15\);

-- Location: FF_X16_Y5_N5
\count_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[3]~14_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(3));

-- Location: LCCOMB_X16_Y5_N8
\count_clk[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[5]~18_combout\ = (count_clk(5) & (\count_clk[4]~17\ $ (GND))) # (!count_clk(5) & (!\count_clk[4]~17\ & VCC))
-- \count_clk[5]~19\ = CARRY((count_clk(5) & !\count_clk[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk(5),
	datad => VCC,
	cin => \count_clk[4]~17\,
	combout => \count_clk[5]~18_combout\,
	cout => \count_clk[5]~19\);

-- Location: FF_X16_Y5_N9
\count_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[5]~18_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(5));

-- Location: LCCOMB_X16_Y5_N14
\count_clk[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[8]~24_combout\ = (count_clk(8) & (!\count_clk[7]~23\)) # (!count_clk(8) & ((\count_clk[7]~23\) # (GND)))
-- \count_clk[8]~25\ = CARRY((!\count_clk[7]~23\) # (!count_clk(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk(8),
	datad => VCC,
	cin => \count_clk[7]~23\,
	combout => \count_clk[8]~24_combout\,
	cout => \count_clk[8]~25\);

-- Location: FF_X16_Y5_N15
\count_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[8]~24_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(8));

-- Location: LCCOMB_X16_Y5_N16
\count_clk[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[9]~26_combout\ = (count_clk(9) & (\count_clk[8]~25\ $ (GND))) # (!count_clk(9) & (!\count_clk[8]~25\ & VCC))
-- \count_clk[9]~27\ = CARRY((count_clk(9) & !\count_clk[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk(9),
	datad => VCC,
	cin => \count_clk[8]~25\,
	combout => \count_clk[9]~26_combout\,
	cout => \count_clk[9]~27\);

-- Location: FF_X16_Y5_N17
\count_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[9]~26_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(9));

-- Location: LCCOMB_X16_Y5_N18
\count_clk[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count_clk[10]~28_combout\ = \count_clk[9]~27\ $ (count_clk(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count_clk(10),
	cin => \count_clk[9]~27\,
	combout => \count_clk[10]~28_combout\);

-- Location: FF_X16_Y5_N19
\count_clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count_clk[10]~28_combout\,
	ena => \ALT_INV_cl_en~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(10));

-- Location: CLKCTRL_G2
\count_clk[10]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \count_clk[10]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \count_clk[10]~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y11_N6
\dount[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dount[1]~5_combout\ = (dount(1) & (dount(0) $ (VCC))) # (!dount(1) & (dount(0) & VCC))
-- \dount[1]~6\ = CARRY((dount(1) & dount(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dount(1),
	datab => dount(0),
	datad => VCC,
	combout => \dount[1]~5_combout\,
	cout => \dount[1]~6\);

-- Location: FF_X1_Y11_N7
\dount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \dount[1]~5_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dount(1));

-- Location: LCCOMB_X1_Y11_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (dount(3)) # ((dount(2)) # ((dount(0) & dount(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dount(3),
	datab => dount(0),
	datac => dount(2),
	datad => dount(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X1_Y11_N18
\dount[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dount[0]~11_combout\ = dount(0) $ (((!dount(4) & (!dount(5) & !\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dount(4),
	datab => dount(5),
	datac => dount(0),
	datad => \LessThan0~0_combout\,
	combout => \dount[0]~11_combout\);

-- Location: FF_X1_Y11_N19
\dount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \dount[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dount(0));

-- Location: LCCOMB_X1_Y11_N8
\dount[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dount[2]~7_combout\ = (dount(2) & (!\dount[1]~6\)) # (!dount(2) & ((\dount[1]~6\) # (GND)))
-- \dount[2]~8\ = CARRY((!\dount[1]~6\) # (!dount(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dount(2),
	datad => VCC,
	cin => \dount[1]~6\,
	combout => \dount[2]~7_combout\,
	cout => \dount[2]~8\);

-- Location: FF_X1_Y11_N9
\dount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \dount[2]~7_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dount(2));

-- Location: LCCOMB_X1_Y11_N14
\dount[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dount[5]~14_combout\ = dount(5) $ (!\dount[4]~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => dount(5),
	cin => \dount[4]~13\,
	combout => \dount[5]~14_combout\);

-- Location: FF_X1_Y11_N15
\dount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \dount[5]~14_combout\,
	ena => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dount(5));

-- Location: LCCOMB_X1_Y11_N24
\LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!dount(4) & (!dount(5) & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dount(4),
	datac => dount(5),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X1_Y11_N25
\mst_rst~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mst_rst~reg0_q\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: LCCOMB_X12_Y4_N12
\Selector11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (count(3) & count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(3),
	datad => count(0),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X12_Y4_N10
\data_tmp[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_tmp[3]~0_combout\ = (!count(4) & !count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(4),
	datad => count(5),
	combout => \data_tmp[3]~0_combout\);

-- Location: LCCOMB_X12_Y4_N4
\data_tmp[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_tmp[0]~1_combout\ = (\data_tmp[3]~0_combout\ & ((count(2) & ((!count(3)) # (!count(1)))) # (!count(2) & ((count(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datab => count(1),
	datac => count(3),
	datad => \data_tmp[3]~0_combout\,
	combout => \data_tmp[0]~1_combout\);

-- Location: FF_X12_Y4_N13
\data_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	sclr => ALT_INV_count(1),
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tmp(0));

-- Location: LCCOMB_X12_Y4_N30
\count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = \Add1~4_combout\ $ (((count(5) & (!count(4) & \Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(5),
	datab => count(4),
	datac => \Equal0~0_combout\,
	datad => \Add1~4_combout\,
	combout => \count~1_combout\);

-- Location: FF_X12_Y4_N31
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X13_Y4_N30
\Selector10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ((count(1) & (count(0))) # (!count(1) & ((!count(2))))) # (!count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => count(3),
	combout => \Selector10~0_combout\);

-- Location: FF_X13_Y4_N31
\data_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tmp(2));

-- Location: LCCOMB_X13_Y4_N18
\data_tmp[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_tmp[3]~3_combout\ = (count(4)) # (count(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => count(5),
	combout => \data_tmp[3]~3_combout\);

-- Location: LCCOMB_X13_Y4_N12
\data_tmp[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_tmp[3]~2_combout\ = (count(3) & ((count(1) & (count(2) & data_tmp(3))) # (!count(1) & (!count(2))))) # (!count(3) & (((count(2)) # (data_tmp(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(3),
	datac => count(2),
	datad => data_tmp(3),
	combout => \data_tmp[3]~2_combout\);

-- Location: LCCOMB_X13_Y4_N28
\data_tmp[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \data_tmp[3]~4_combout\ = (data_tmp(3) & (((\data_tmp[3]~3_combout\) # (\data_tmp[3]~2_combout\)))) # (!data_tmp(3) & (\data_tmp[3]~0_combout\ & ((\data_tmp[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_tmp[3]~0_combout\,
	datab => \data_tmp[3]~3_combout\,
	datac => data_tmp(3),
	datad => \data_tmp[3]~2_combout\,
	combout => \data_tmp[3]~4_combout\);

-- Location: FF_X13_Y4_N29
\data_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data_tmp[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tmp(3));

-- Location: LCCOMB_X12_Y4_N2
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (count(3) & !count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(3),
	datad => count(0),
	combout => \Selector8~0_combout\);

-- Location: FF_X12_Y4_N3
\data_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	sclr => ALT_INV_count(1),
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tmp(4));

-- Location: LCCOMB_X12_Y4_N0
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (count(0)) # ((count(3) & (!count(2) & !count(1))) # (!count(3) & ((count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(3),
	datad => count(1),
	combout => \Selector7~0_combout\);

-- Location: FF_X12_Y4_N1
\data_tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tmp(6));

-- Location: LCCOMB_X11_Y4_N8
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (count(3) & ((!count(2)))) # (!count(3) & (count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datad => count(2),
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X11_Y4_N4
\count[3]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~_wirecell_combout\ = !count(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => count(3),
	combout => \count[3]~_wirecell_combout\);

-- Location: FF_X11_Y4_N9
\data_tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	asdata => \count[3]~_wirecell_combout\,
	sload => count(1),
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => data_tmp(7));

-- Location: LCCOMB_X13_Y4_N0
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = count(0) $ (count(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => count(2),
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X13_Y4_N24
\address_tmp[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \address_tmp[0]~0_combout\ = (count(1) & (!count(0))) # (!count(1) & ((\Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datac => count(0),
	datad => \Selector5~0_combout\,
	combout => \address_tmp[0]~0_combout\);

-- Location: FF_X13_Y4_N25
\address_tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \address_tmp[0]~0_combout\,
	asdata => count(0),
	sload => ALT_INV_count(3),
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_tmp(0));

-- Location: LCCOMB_X12_Y4_N6
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (count(0) & (((count(1))))) # (!count(0) & ((count(3) & (count(2) & !count(1))) # (!count(3) & ((count(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(3),
	datad => count(1),
	combout => \Selector4~0_combout\);

-- Location: FF_X12_Y4_N7
\address_tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_tmp(1));

-- Location: LCCOMB_X11_Y4_N30
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ((!count(0) & count(2))) # (!count(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(3),
	datab => count(0),
	datad => count(2),
	combout => \Selector3~0_combout\);

-- Location: FF_X11_Y4_N31
\address_tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	asdata => VCC,
	sload => count(1),
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_tmp(2));

-- Location: LCCOMB_X11_Y4_N16
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (count(3) & ((!count(2)) # (!count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(3),
	datad => count(2),
	combout => \Selector2~0_combout\);

-- Location: FF_X11_Y4_N17
\address_tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	asdata => count(3),
	sload => count(1),
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_tmp(3));

-- Location: LCCOMB_X11_Y4_N2
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!count(0) & (count(3) & count(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(3),
	datad => count(2),
	combout => \Selector1~0_combout\);

-- Location: FF_X11_Y4_N3
\address_tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	asdata => count(3),
	sload => count(1),
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_tmp(4));

-- Location: LCCOMB_X10_Y4_N0
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (count(2) & count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	datad => count(0),
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X10_Y4_N22
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

-- Location: FF_X10_Y4_N1
\address_tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	asdata => \~GND~combout\,
	sclr => count(1),
	sload => ALT_INV_count(3),
	ena => \data_tmp[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => address_tmp(5));

-- Location: LCCOMB_X13_Y4_N22
\LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (count(0)) # ((count(2)) # ((count(1)) # (count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datab => count(2),
	datac => count(1),
	datad => count(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X13_Y4_N6
\LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!count(5) & ((!count(4)) # (!\LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datac => \LessThan1~0_combout\,
	datad => count(4),
	combout => \LessThan1~1_combout\);

-- Location: FF_X13_Y4_N7
\io_ud~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \io_ud~reg0_q\);

ww_mst_rst <= \mst_rst~output_o\;

ww_d(0) <= \d[0]~output_o\;

ww_d(1) <= \d[1]~output_o\;

ww_d(2) <= \d[2]~output_o\;

ww_d(3) <= \d[3]~output_o\;

ww_d(4) <= \d[4]~output_o\;

ww_d(5) <= \d[5]~output_o\;

ww_d(6) <= \d[6]~output_o\;

ww_d(7) <= \d[7]~output_o\;

ww_a(0) <= \a[0]~output_o\;

ww_a(1) <= \a[1]~output_o\;

ww_a(2) <= \a[2]~output_o\;

ww_a(3) <= \a[3]~output_o\;

ww_a(4) <= \a[4]~output_o\;

ww_a(5) <= \a[5]~output_o\;

ww_wrb <= \wrb~output_o\;

ww_io_ud <= \io_ud~output_o\;
END structure;


