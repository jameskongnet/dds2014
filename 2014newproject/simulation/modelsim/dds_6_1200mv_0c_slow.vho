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

-- DATE "01/20/2014 15:54:55"

-- 
-- Device: Altera EP4CGX30CF23C6 Package FBGA484
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

ENTITY 	dds IS
    PORT (
	RST : IN std_logic;
	CEN : IN std_logic;
	CLK : IN std_logic;
	F1H : IN std_logic_vector(15 DOWNTO 0);
	F1L : IN std_logic_vector(31 DOWNTO 0);
	F2H : IN std_logic_vector(15 DOWNTO 0);
	F2L : IN std_logic_vector(31 DOWNTO 0);
	PTW1 : IN std_logic_vector(13 DOWNTO 0);
	PTW2 : IN std_logic_vector(13 DOWNTO 0);
	TRAIANGLE : IN std_logic;
	MODE : IN std_logic_vector(2 DOWNTO 0);
	DFWH : IN std_logic_vector(15 DOWNTO 0);
	DFWL : IN std_logic_vector(31 DOWNTO 0);
	RAMPRATE : IN std_logic_vector(19 DOWNTO 0);
	AOUT : OUT std_logic_vector(5 DOWNTO 0);
	DOUT : OUT std_logic_vector(7 DOWNTO 0);
	READY : OUT std_logic;
	RESET : OUT std_logic;
	WRITE : OUT std_logic;
	PLLEN : IN std_logic;
	CLKMUILT : IN std_logic_vector(4 DOWNTO 0);
	PLLRANGE : IN std_logic;
	CONFIGERR : OUT std_logic
	);
END dds;

-- Design Ports Information
-- RST	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AOUT[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AOUT[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AOUT[2]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AOUT[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AOUT[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AOUT[5]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[2]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[3]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[4]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[5]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[6]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DOUT[7]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- READY	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WRITE	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CONFIGERR	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[0]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[16]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[8]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[17]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[9]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[18]	=>  Location: PIN_U14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[10]	=>  Location: PIN_A1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[3]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[19]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[11]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[12]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[4]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[13]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[14]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[6]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[15]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RAMPRATE[7]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODE[2]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODE[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MODE[1]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CEN	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[24]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[8]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKMUILT[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[8]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[24]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[16]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[16]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[0]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[24]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[8]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[8]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[16]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[8]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[8]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[0]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[9]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[25]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[9]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKMUILT[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[9]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[25]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[9]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[1]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[17]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[17]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[1]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[9]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[9]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[25]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[17]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[9]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[9]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[2]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[26]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[2]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[18]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[10]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[10]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[10]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[10]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[10]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[10]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[18]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRAIANGLE	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[26]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKMUILT[2]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[26]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[10]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[18]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[10]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[11]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[27]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[11]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKMUILT[3]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[11]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[27]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[3]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[19]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[19]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[27]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[11]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[11]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[19]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[11]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[11]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[3]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[4]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[12]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[12]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[20]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[4]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[4]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[20]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[28]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[12]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[12]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[4]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[28]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLKMUILT[4]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[4]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[12]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[12]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[4]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[12]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[20]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[4]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[12]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[28]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[5]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[13]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[21]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[5]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[5]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[21]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[29]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[29]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[13]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[13]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PLLEN	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[5]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[13]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[13]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[5]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[5]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[21]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[13]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[29]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[13]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[30]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[6]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[22]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[14]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[14]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[14]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[14]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[14]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[22]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[6]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[6]	=>  Location: PIN_T16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[30]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PLLRANGE	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[6]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[30]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[14]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[22]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[31]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW2[7]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[23]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[15]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWH[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[15]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[23]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[7]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1L[31]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PTW1[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F1H[15]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[15]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[15]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2H[7]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[31]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F2L[23]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DFWL[7]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dds IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_CEN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_F1H : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_F1L : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_F2H : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_F2L : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_PTW1 : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_PTW2 : std_logic_vector(13 DOWNTO 0);
SIGNAL ww_TRAIANGLE : std_logic;
SIGNAL ww_MODE : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DFWH : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_DFWL : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_RAMPRATE : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_AOUT : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_DOUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_READY : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_WRITE : std_logic;
SIGNAL ww_PLLEN : std_logic;
SIGNAL ww_CLKMUILT : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_PLLRANGE : std_logic;
SIGNAL ww_CONFIGERR : std_logic;
SIGNAL \count_clk[10]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \count_clk[2]~12_combout\ : std_logic;
SIGNAL \count_clk[4]~16_combout\ : std_logic;
SIGNAL \count_clk[5]~18_combout\ : std_logic;
SIGNAL \Selector20~8_combout\ : std_logic;
SIGNAL \Selector19~2_combout\ : std_logic;
SIGNAL \Selector19~5_combout\ : std_logic;
SIGNAL \Selector19~12_combout\ : std_logic;
SIGNAL \Selector19~15_combout\ : std_logic;
SIGNAL \Selector19~16_combout\ : std_logic;
SIGNAL \Selector19~17_combout\ : std_logic;
SIGNAL \Selector19~18_combout\ : std_logic;
SIGNAL \Selector19~19_combout\ : std_logic;
SIGNAL \Selector19~20_combout\ : std_logic;
SIGNAL \Selector18~8_combout\ : std_logic;
SIGNAL \Selector18~9_combout\ : std_logic;
SIGNAL \Selector18~13_combout\ : std_logic;
SIGNAL \Selector18~14_combout\ : std_logic;
SIGNAL \Selector18~15_combout\ : std_logic;
SIGNAL \Selector18~16_combout\ : std_logic;
SIGNAL \Selector18~17_combout\ : std_logic;
SIGNAL \AOUT[3]~6_combout\ : std_logic;
SIGNAL \AOUT[3]~7_combout\ : std_logic;
SIGNAL \AOUT[3]~9_combout\ : std_logic;
SIGNAL \AOUT[3]~10_combout\ : std_logic;
SIGNAL \AOUT[3]~11_combout\ : std_logic;
SIGNAL \AOUT[3]~12_combout\ : std_logic;
SIGNAL \AOUT[3]~16_combout\ : std_logic;
SIGNAL \AOUT[3]~19_combout\ : std_logic;
SIGNAL \AOUT[3]~25_combout\ : std_logic;
SIGNAL \AOUT[3]~28_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Selector16~1_combout\ : std_logic;
SIGNAL \Selector16~2_combout\ : std_logic;
SIGNAL \Selector16~3_combout\ : std_logic;
SIGNAL \Selector16~11_combout\ : std_logic;
SIGNAL \DOUT[0]~3_combout\ : std_logic;
SIGNAL \DOUT[0]~5_combout\ : std_logic;
SIGNAL \DOUT[0]~14_combout\ : std_logic;
SIGNAL \DOUT[0]~21_combout\ : std_logic;
SIGNAL \DOUT[0]~22_combout\ : std_logic;
SIGNAL \Selector26~10_combout\ : std_logic;
SIGNAL \Selector26~11_combout\ : std_logic;
SIGNAL \Selector26~12_combout\ : std_logic;
SIGNAL \Selector26~13_combout\ : std_logic;
SIGNAL \Selector26~19_combout\ : std_logic;
SIGNAL \Selector26~29_combout\ : std_logic;
SIGNAL \Selector26~38_combout\ : std_logic;
SIGNAL \DOUT[4]~38_combout\ : std_logic;
SIGNAL \AOUT[3]~33_combout\ : std_logic;
SIGNAL \DOUT[4]~40_combout\ : std_logic;
SIGNAL \DOUT[4]~41_combout\ : std_logic;
SIGNAL \DOUT[4]~47_combout\ : std_logic;
SIGNAL \DOUT[4]~50_combout\ : std_logic;
SIGNAL \DOUT[4]~51_combout\ : std_logic;
SIGNAL \DOUT[4]~52_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \Selector23~3_combout\ : std_logic;
SIGNAL \Selector23~7_combout\ : std_logic;
SIGNAL \Selector23~8_combout\ : std_logic;
SIGNAL \Selector23~10_combout\ : std_logic;
SIGNAL \Selector23~11_combout\ : std_logic;
SIGNAL \Selector23~12_combout\ : std_logic;
SIGNAL \Selector23~13_combout\ : std_logic;
SIGNAL \Selector22~15_combout\ : std_logic;
SIGNAL \Selector22~25_combout\ : std_logic;
SIGNAL \Selector22~39_combout\ : std_logic;
SIGNAL \Selector21~16_combout\ : std_logic;
SIGNAL \Selector21~21_combout\ : std_logic;
SIGNAL \Selector21~36_combout\ : std_logic;
SIGNAL \Selector21~37_combout\ : std_logic;
SIGNAL \Selector21~38_combout\ : std_logic;
SIGNAL \Selector13~2_combout\ : std_logic;
SIGNAL \Selector12~18_combout\ : std_logic;
SIGNAL \Selector34~3_combout\ : std_logic;
SIGNAL \Selector35~10_combout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \Selector31~3_combout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \WREN~0_combout\ : std_logic;
SIGNAL \Selector26~47_combout\ : std_logic;
SIGNAL \Selector26~50_combout\ : std_logic;
SIGNAL \Selector21~44_combout\ : std_logic;
SIGNAL \Selector21~46_combout\ : std_logic;
SIGNAL \Selector36~3_combout\ : std_logic;
SIGNAL \Selector18~22_combout\ : std_logic;
SIGNAL \Selector18~23_combout\ : std_logic;
SIGNAL \count_clk[0]~30_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RAMPRATE[0]~input_o\ : std_logic;
SIGNAL \RAMPRATE[8]~input_o\ : std_logic;
SIGNAL \RAMPRATE[1]~input_o\ : std_logic;
SIGNAL \RAMPRATE[17]~input_o\ : std_logic;
SIGNAL \RAMPRATE[18]~input_o\ : std_logic;
SIGNAL \RAMPRATE[10]~input_o\ : std_logic;
SIGNAL \RAMPRATE[2]~input_o\ : std_logic;
SIGNAL \RAMPRATE[4]~input_o\ : std_logic;
SIGNAL \RAMPRATE[5]~input_o\ : std_logic;
SIGNAL \RAMPRATE[15]~input_o\ : std_logic;
SIGNAL \RAMPRATE[7]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \F2L[8]~input_o\ : std_logic;
SIGNAL \DFWH[8]~input_o\ : std_logic;
SIGNAL \F1L[16]~input_o\ : std_logic;
SIGNAL \PTW1[0]~input_o\ : std_logic;
SIGNAL \F2L[0]~input_o\ : std_logic;
SIGNAL \PTW2[1]~input_o\ : std_logic;
SIGNAL \DFWL[17]~input_o\ : std_logic;
SIGNAL \F1L[17]~input_o\ : std_logic;
SIGNAL \F2L[1]~input_o\ : std_logic;
SIGNAL \PTW1[1]~input_o\ : std_logic;
SIGNAL \F2L[25]~input_o\ : std_logic;
SIGNAL \PTW2[9]~input_o\ : std_logic;
SIGNAL \F2H[9]~input_o\ : std_logic;
SIGNAL \DFWL[18]~input_o\ : std_logic;
SIGNAL \DFWH[10]~input_o\ : std_logic;
SIGNAL \F1L[10]~input_o\ : std_logic;
SIGNAL \TRAIANGLE~input_o\ : std_logic;
SIGNAL \F2H[2]~input_o\ : std_logic;
SIGNAL \F2L[26]~input_o\ : std_logic;
SIGNAL \F2H[10]~input_o\ : std_logic;
SIGNAL \F2L[11]~input_o\ : std_logic;
SIGNAL \DFWH[11]~input_o\ : std_logic;
SIGNAL \F1L[3]~input_o\ : std_logic;
SIGNAL \PTW1[3]~input_o\ : std_logic;
SIGNAL \F2L[3]~input_o\ : std_logic;
SIGNAL \F2L[4]~input_o\ : std_logic;
SIGNAL \F2L[20]~input_o\ : std_logic;
SIGNAL \F1L[28]~input_o\ : std_logic;
SIGNAL \F2L[12]~input_o\ : std_logic;
SIGNAL \F2H[13]~input_o\ : std_logic;
SIGNAL \F1L[21]~input_o\ : std_logic;
SIGNAL \F2L[5]~input_o\ : std_logic;
SIGNAL \F1L[5]~input_o\ : std_logic;
SIGNAL \F2L[21]~input_o\ : std_logic;
SIGNAL \DFWL[5]~input_o\ : std_logic;
SIGNAL \F1H[5]~input_o\ : std_logic;
SIGNAL \F2L[13]~input_o\ : std_logic;
SIGNAL \F1L[13]~input_o\ : std_logic;
SIGNAL \F2H[5]~input_o\ : std_logic;
SIGNAL \PTW2[5]~input_o\ : std_logic;
SIGNAL \DFWL[21]~input_o\ : std_logic;
SIGNAL \DFWL[13]~input_o\ : std_logic;
SIGNAL \DFWL[29]~input_o\ : std_logic;
SIGNAL \DFWH[13]~input_o\ : std_logic;
SIGNAL \DFWH[5]~input_o\ : std_logic;
SIGNAL \DFWL[30]~input_o\ : std_logic;
SIGNAL \DFWL[22]~input_o\ : std_logic;
SIGNAL \F1H[14]~input_o\ : std_logic;
SIGNAL \F1H[6]~input_o\ : std_logic;
SIGNAL \F2L[22]~input_o\ : std_logic;
SIGNAL \DFWH[15]~input_o\ : std_logic;
SIGNAL \F1L[7]~input_o\ : std_logic;
SIGNAL \F1H[7]~input_o\ : std_logic;
SIGNAL \F2L[7]~input_o\ : std_logic;
SIGNAL \F2H[7]~input_o\ : std_logic;
SIGNAL \F2L[31]~input_o\ : std_logic;
SIGNAL \F2L[23]~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \FTW1L[16]~feeder_combout\ : std_logic;
SIGNAL \PTW1REG[0]~feeder_combout\ : std_logic;
SIGNAL \DFWLREG[17]~feeder_combout\ : std_logic;
SIGNAL \PTW1REG[1]~feeder_combout\ : std_logic;
SIGNAL \FTW2H[9]~feeder_combout\ : std_logic;
SIGNAL \DFWLREG[18]~feeder_combout\ : std_logic;
SIGNAL \FTW2H[2]~feeder_combout\ : std_logic;
SIGNAL \FTW2L[11]~feeder_combout\ : std_logic;
SIGNAL \DFWHREG[11]~feeder_combout\ : std_logic;
SIGNAL \FTW1L[3]~feeder_combout\ : std_logic;
SIGNAL \FTW2L[3]~feeder_combout\ : std_logic;
SIGNAL \FTW1L[28]~feeder_combout\ : std_logic;
SIGNAL \FTW2L[12]~feeder_combout\ : std_logic;
SIGNAL \FTW2H[13]~feeder_combout\ : std_logic;
SIGNAL \FTW2L[5]~feeder_combout\ : std_logic;
SIGNAL \DFWLREG[5]~feeder_combout\ : std_logic;
SIGNAL \FTW1H[5]~feeder_combout\ : std_logic;
SIGNAL \FTW2L[13]~feeder_combout\ : std_logic;
SIGNAL \DFWLREG[22]~feeder_combout\ : std_logic;
SIGNAL \FTW1H[6]~feeder_combout\ : std_logic;
SIGNAL \FTW1H[7]~feeder_combout\ : std_logic;
SIGNAL \FTW2L[7]~feeder_combout\ : std_logic;
SIGNAL \AOUT[0]~output_o\ : std_logic;
SIGNAL \AOUT[1]~output_o\ : std_logic;
SIGNAL \AOUT[2]~output_o\ : std_logic;
SIGNAL \AOUT[3]~output_o\ : std_logic;
SIGNAL \AOUT[4]~output_o\ : std_logic;
SIGNAL \AOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[0]~output_o\ : std_logic;
SIGNAL \DOUT[1]~output_o\ : std_logic;
SIGNAL \DOUT[2]~output_o\ : std_logic;
SIGNAL \DOUT[3]~output_o\ : std_logic;
SIGNAL \DOUT[4]~output_o\ : std_logic;
SIGNAL \DOUT[5]~output_o\ : std_logic;
SIGNAL \DOUT[6]~output_o\ : std_logic;
SIGNAL \DOUT[7]~output_o\ : std_logic;
SIGNAL \READY~output_o\ : std_logic;
SIGNAL \RESET~output_o\ : std_logic;
SIGNAL \WRITE~output_o\ : std_logic;
SIGNAL \CONFIGERR~output_o\ : std_logic;
SIGNAL \count_clk[1]~10_combout\ : std_logic;
SIGNAL \count_clk[1]~11\ : std_logic;
SIGNAL \count_clk[2]~13\ : std_logic;
SIGNAL \count_clk[3]~14_combout\ : std_logic;
SIGNAL \count_clk[3]~15\ : std_logic;
SIGNAL \count_clk[4]~17\ : std_logic;
SIGNAL \count_clk[5]~19\ : std_logic;
SIGNAL \count_clk[6]~20_combout\ : std_logic;
SIGNAL \count_clk[6]~21\ : std_logic;
SIGNAL \count_clk[7]~22_combout\ : std_logic;
SIGNAL \count_clk[7]~23\ : std_logic;
SIGNAL \count_clk[8]~24_combout\ : std_logic;
SIGNAL \count_clk[8]~25\ : std_logic;
SIGNAL \count_clk[9]~26_combout\ : std_logic;
SIGNAL \count_clk[9]~27\ : std_logic;
SIGNAL \count_clk[10]~28_combout\ : std_logic;
SIGNAL \count_clk[10]~clkctrl_outclk\ : std_logic;
SIGNAL \STEP[0]~7_combout\ : std_logic;
SIGNAL \STEP[0]~8\ : std_logic;
SIGNAL \STEP[1]~10\ : std_logic;
SIGNAL \STEP[2]~12\ : std_logic;
SIGNAL \STEP[3]~13_combout\ : std_logic;
SIGNAL \STEP[1]~9_combout\ : std_logic;
SIGNAL \Selector20~17_combout\ : std_logic;
SIGNAL \MODE[0]~input_o\ : std_logic;
SIGNAL \Selector35~6_combout\ : std_logic;
SIGNAL \MODE[1]~input_o\ : std_logic;
SIGNAL \Selector35~4_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector35~5_combout\ : std_logic;
SIGNAL \Selector35~8_combout\ : std_logic;
SIGNAL \Selector35~9_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \AOUT[3]~1_combout\ : std_logic;
SIGNAL \AOUT[3]~23_combout\ : std_logic;
SIGNAL \AOUT[3]~24_combout\ : std_logic;
SIGNAL \Selector35~7_combout\ : std_logic;
SIGNAL \Selector31~2_combout\ : std_logic;
SIGNAL \Selector30~2_combout\ : std_logic;
SIGNAL \STEP[5]~18\ : std_logic;
SIGNAL \STEP[6]~19_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \MODEREG[0]~2_combout\ : std_logic;
SIGNAL \MODEREG[0]~3_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector30~1_combout\ : std_logic;
SIGNAL \Selector35~11_combout\ : std_logic;
SIGNAL \Selector33~4_combout\ : std_logic;
SIGNAL \Selector33~2_combout\ : std_logic;
SIGNAL \Selector33~3_combout\ : std_logic;
SIGNAL \STEP[3]~14\ : std_logic;
SIGNAL \STEP[4]~15_combout\ : std_logic;
SIGNAL \Selector20~31_combout\ : std_logic;
SIGNAL \Selector34~4_combout\ : std_logic;
SIGNAL \AOUT[3]~4_combout\ : std_logic;
SIGNAL \AOUT[3]~3_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \Selector34~5_combout\ : std_logic;
SIGNAL \Selector34~6_combout\ : std_logic;
SIGNAL \STEP[2]~11_combout\ : std_logic;
SIGNAL \Selector19~23_combout\ : std_logic;
SIGNAL \Selector34~2_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \STEP[4]~16\ : std_logic;
SIGNAL \STEP[5]~17_combout\ : std_logic;
SIGNAL \Selector12~11_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \CEN~input_o\ : std_logic;
SIGNAL \COUNTEREN~q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Selector20~33_combout\ : std_logic;
SIGNAL \Selector20~9_combout\ : std_logic;
SIGNAL \Selector20~10_combout\ : std_logic;
SIGNAL \Selector20~11_combout\ : std_logic;
SIGNAL \Selector20~12_combout\ : std_logic;
SIGNAL \Selector20~14_combout\ : std_logic;
SIGNAL \Selector20~13_combout\ : std_logic;
SIGNAL \Selector20~15_combout\ : std_logic;
SIGNAL \AOUT[0]~0_combout\ : std_logic;
SIGNAL \Selector20~35_combout\ : std_logic;
SIGNAL \Selector20~36_combout\ : std_logic;
SIGNAL \Selector20~24_combout\ : std_logic;
SIGNAL \Selector20~25_combout\ : std_logic;
SIGNAL \Selector20~26_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Selector20~27_combout\ : std_logic;
SIGNAL \Selector20~28_combout\ : std_logic;
SIGNAL \Selector20~29_combout\ : std_logic;
SIGNAL \Selector20~18_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \Selector20~34_combout\ : std_logic;
SIGNAL \Selector20~19_combout\ : std_logic;
SIGNAL \Selector20~20_combout\ : std_logic;
SIGNAL \Selector20~21_combout\ : std_logic;
SIGNAL \Selector20~22_combout\ : std_logic;
SIGNAL \Selector20~23_combout\ : std_logic;
SIGNAL \Selector20~30_combout\ : std_logic;
SIGNAL \AOUT[0]~reg0_q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \Selector19~3_combout\ : std_logic;
SIGNAL \Selector19~4_combout\ : std_logic;
SIGNAL \Selector19~6_combout\ : std_logic;
SIGNAL \Selector19~7_combout\ : std_logic;
SIGNAL \Selector19~8_combout\ : std_logic;
SIGNAL \Selector19~9_combout\ : std_logic;
SIGNAL \AOUT[3]~2_combout\ : std_logic;
SIGNAL \Selector19~10_combout\ : std_logic;
SIGNAL \Selector19~11_combout\ : std_logic;
SIGNAL \Selector19~13_combout\ : std_logic;
SIGNAL \Selector19~14_combout\ : std_logic;
SIGNAL \Selector19~21_combout\ : std_logic;
SIGNAL \AOUT[1]~reg0_q\ : std_logic;
SIGNAL \Selector18~4_combout\ : std_logic;
SIGNAL \Selector18~3_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \Selector18~5_combout\ : std_logic;
SIGNAL \Selector18~6_combout\ : std_logic;
SIGNAL \Selector18~7_combout\ : std_logic;
SIGNAL \Selector18~10_combout\ : std_logic;
SIGNAL \Selector18~11_combout\ : std_logic;
SIGNAL \Selector18~12_combout\ : std_logic;
SIGNAL \Selector18~18_combout\ : std_logic;
SIGNAL \Selector18~19_combout\ : std_logic;
SIGNAL \AOUT[2]~reg0_q\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \AOUT[3]~5_combout\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \AOUT[3]~22_combout\ : std_logic;
SIGNAL \AOUT[3]~26_combout\ : std_logic;
SIGNAL \AOUT[3]~27_combout\ : std_logic;
SIGNAL \AOUT[3]~29_combout\ : std_logic;
SIGNAL \AOUT[3]~30_combout\ : std_logic;
SIGNAL \AOUT[3]~13_combout\ : std_logic;
SIGNAL \AOUT[3]~14_combout\ : std_logic;
SIGNAL \AOUT[3]~15_combout\ : std_logic;
SIGNAL \Selector20~32_combout\ : std_logic;
SIGNAL \AOUT[3]~17_combout\ : std_logic;
SIGNAL \AOUT[3]~8_combout\ : std_logic;
SIGNAL \AOUT[3]~18_combout\ : std_logic;
SIGNAL \AOUT[3]~20_combout\ : std_logic;
SIGNAL \AOUT[3]~21_combout\ : std_logic;
SIGNAL \AOUT[3]~31_combout\ : std_logic;
SIGNAL \AOUT[3]~reg0_q\ : std_logic;
SIGNAL \Selector16~19_combout\ : std_logic;
SIGNAL \Selector16~20_combout\ : std_logic;
SIGNAL \Selector16~12_combout\ : std_logic;
SIGNAL \Selector16~13_combout\ : std_logic;
SIGNAL \Selector20~16_combout\ : std_logic;
SIGNAL \Selector16~14_combout\ : std_logic;
SIGNAL \Selector16~15_combout\ : std_logic;
SIGNAL \Selector16~16_combout\ : std_logic;
SIGNAL \Selector18~20_combout\ : std_logic;
SIGNAL \Selector16~8_combout\ : std_logic;
SIGNAL \Selector16~9_combout\ : std_logic;
SIGNAL \Selector16~4_combout\ : std_logic;
SIGNAL \Selector16~5_combout\ : std_logic;
SIGNAL \Selector16~6_combout\ : std_logic;
SIGNAL \Selector16~7_combout\ : std_logic;
SIGNAL \Selector16~10_combout\ : std_logic;
SIGNAL \Selector16~17_combout\ : std_logic;
SIGNAL \Selector16~18_combout\ : std_logic;
SIGNAL \AOUT[4]~reg0_q\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \AOUT[5]~reg0_q\ : std_logic;
SIGNAL \DOUT[0]~15_combout\ : std_logic;
SIGNAL \RAMPRATE[16]~input_o\ : std_logic;
SIGNAL \Selector19~22_combout\ : std_logic;
SIGNAL \DOUT[0]~4_combout\ : std_logic;
SIGNAL \DFWL[24]~input_o\ : std_logic;
SIGNAL \DFWLREG[0]~0_combout\ : std_logic;
SIGNAL \Selector28~2_combout\ : std_logic;
SIGNAL \Selector28~3_combout\ : std_logic;
SIGNAL \F1H[0]~input_o\ : std_logic;
SIGNAL \FTW1H[0]~feeder_combout\ : std_logic;
SIGNAL \FTW1L[0]~0_combout\ : std_logic;
SIGNAL \F1L[24]~input_o\ : std_logic;
SIGNAL \CLKMUILT[0]~input_o\ : std_logic;
SIGNAL \F1L[8]~input_o\ : std_logic;
SIGNAL \FTW1L[8]~feeder_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL \Selector28~1_combout\ : std_logic;
SIGNAL \DOUT[0]~6_combout\ : std_logic;
SIGNAL \DOUT[0]~13_combout\ : std_logic;
SIGNAL \PTW2[0]~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \DFWL[8]~input_o\ : std_logic;
SIGNAL \DOUT[0]~8_combout\ : std_logic;
SIGNAL \DOUT[0]~7_combout\ : std_logic;
SIGNAL \DFWL[16]~input_o\ : std_logic;
SIGNAL \DFWLREG[16]~feeder_combout\ : std_logic;
SIGNAL \DFWH[0]~input_o\ : std_logic;
SIGNAL \F1L[0]~input_o\ : std_logic;
SIGNAL \Selector28~4_combout\ : std_logic;
SIGNAL \Selector28~5_combout\ : std_logic;
SIGNAL \Selector28~6_combout\ : std_logic;
SIGNAL \Selector28~7_combout\ : std_logic;
SIGNAL \F2L[24]~input_o\ : std_logic;
SIGNAL \FTW2L[24]~feeder_combout\ : std_logic;
SIGNAL \MODE[2]~input_o\ : std_logic;
SIGNAL \FTW2L[0]~0_combout\ : std_logic;
SIGNAL \F2H[8]~input_o\ : std_logic;
SIGNAL \DFWL[0]~input_o\ : std_logic;
SIGNAL \PTW2[8]~input_o\ : std_logic;
SIGNAL \PTW2REG[8]~feeder_combout\ : std_logic;
SIGNAL \F2H[0]~input_o\ : std_logic;
SIGNAL \DOUT[0]~12_combout\ : std_logic;
SIGNAL \Selector28~11_combout\ : std_logic;
SIGNAL \Selector28~12_combout\ : std_logic;
SIGNAL \DOUT[0]~9_combout\ : std_logic;
SIGNAL \F2L[16]~input_o\ : std_logic;
SIGNAL \DOUT[0]~10_combout\ : std_logic;
SIGNAL \PTW1[8]~input_o\ : std_logic;
SIGNAL \F1H[8]~input_o\ : std_logic;
SIGNAL \Selector28~8_combout\ : std_logic;
SIGNAL \Selector28~9_combout\ : std_logic;
SIGNAL \Selector28~10_combout\ : std_logic;
SIGNAL \Selector28~13_combout\ : std_logic;
SIGNAL \Selector28~14_combout\ : std_logic;
SIGNAL \Selector28~15_combout\ : std_logic;
SIGNAL \Selector28~16_combout\ : std_logic;
SIGNAL \DOUT[0]~20_combout\ : std_logic;
SIGNAL \DOUT[0]~18_combout\ : std_logic;
SIGNAL \DOUT[0]~16_combout\ : std_logic;
SIGNAL \DOUT[0]~17_combout\ : std_logic;
SIGNAL \DOUT[0]~19_combout\ : std_logic;
SIGNAL \DOUT[0]~23_combout\ : std_logic;
SIGNAL \DOUT[0]~24_combout\ : std_logic;
SIGNAL \DOUT[0]~25_combout\ : std_logic;
SIGNAL \DOUT[0]~26_combout\ : std_logic;
SIGNAL \DOUT[0]~27_combout\ : std_logic;
SIGNAL \DOUT[0]~28_combout\ : std_logic;
SIGNAL \DOUT[0]~29_combout\ : std_logic;
SIGNAL \DOUT[0]~reg0_q\ : std_logic;
SIGNAL \F2L[9]~input_o\ : std_logic;
SIGNAL \DFWH[9]~input_o\ : std_logic;
SIGNAL \DFWL[25]~input_o\ : std_logic;
SIGNAL \Selector27~2_combout\ : std_logic;
SIGNAL \Selector27~3_combout\ : std_logic;
SIGNAL \F1H[1]~input_o\ : std_logic;
SIGNAL \FTW1H[1]~feeder_combout\ : std_logic;
SIGNAL \F1L[25]~input_o\ : std_logic;
SIGNAL \CLKMUILT[1]~input_o\ : std_logic;
SIGNAL \F1L[9]~input_o\ : std_logic;
SIGNAL \FTW1L[9]~feeder_combout\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \DFWL[9]~input_o\ : std_logic;
SIGNAL \DFWH[1]~input_o\ : std_logic;
SIGNAL \F1L[1]~input_o\ : std_logic;
SIGNAL \Selector27~4_combout\ : std_logic;
SIGNAL \Selector27~5_combout\ : std_logic;
SIGNAL \RAMPRATE[9]~input_o\ : std_logic;
SIGNAL \Selector27~6_combout\ : std_logic;
SIGNAL \Selector27~7_combout\ : std_logic;
SIGNAL \DOUT[0]~11_combout\ : std_logic;
SIGNAL \F2L[17]~input_o\ : std_logic;
SIGNAL \Selector27~10_combout\ : std_logic;
SIGNAL \PTW1[9]~input_o\ : std_logic;
SIGNAL \F1H[9]~input_o\ : std_logic;
SIGNAL \Selector27~8_combout\ : std_logic;
SIGNAL \Selector27~9_combout\ : std_logic;
SIGNAL \AOUT[3]~32_combout\ : std_logic;
SIGNAL \DFWL[1]~input_o\ : std_logic;
SIGNAL \F2H[1]~input_o\ : std_logic;
SIGNAL \Selector27~11_combout\ : std_logic;
SIGNAL \Selector27~12_combout\ : std_logic;
SIGNAL \Selector27~13_combout\ : std_logic;
SIGNAL \Selector27~14_combout\ : std_logic;
SIGNAL \Selector27~15_combout\ : std_logic;
SIGNAL \Selector27~16_combout\ : std_logic;
SIGNAL \DOUT[1]~reg0_q\ : std_logic;
SIGNAL \DFWH[2]~input_o\ : std_logic;
SIGNAL \Selector26~14_combout\ : std_logic;
SIGNAL \DFWL[26]~input_o\ : std_logic;
SIGNAL \Selector26~15_combout\ : std_logic;
SIGNAL \PTW2[2]~input_o\ : std_logic;
SIGNAL \DFWL[10]~input_o\ : std_logic;
SIGNAL \Selector26~16_combout\ : std_logic;
SIGNAL \Selector26~17_combout\ : std_logic;
SIGNAL \Selector26~46_combout\ : std_logic;
SIGNAL \Selector26~18_combout\ : std_logic;
SIGNAL \Selector26~20_combout\ : std_logic;
SIGNAL \Selector26~21_combout\ : std_logic;
SIGNAL \DOUT[2]~0_combout\ : std_logic;
SIGNAL \F2L[18]~input_o\ : std_logic;
SIGNAL \Selector26~40_combout\ : std_logic;
SIGNAL \Selector26~39_combout\ : std_logic;
SIGNAL \Selector26~41_combout\ : std_logic;
SIGNAL \Selector18~21_combout\ : std_logic;
SIGNAL \PTW2[10]~input_o\ : std_logic;
SIGNAL \DFWL[2]~input_o\ : std_logic;
SIGNAL \Selector26~42_combout\ : std_logic;
SIGNAL \Selector26~43_combout\ : std_logic;
SIGNAL \Selector26~44_combout\ : std_logic;
SIGNAL \CLKMUILT[2]~input_o\ : std_logic;
SIGNAL \Selector26~35_combout\ : std_logic;
SIGNAL \Selector26~36_combout\ : std_logic;
SIGNAL \F1H[2]~input_o\ : std_logic;
SIGNAL \FTW1H[2]~feeder_combout\ : std_logic;
SIGNAL \F1L[26]~input_o\ : std_logic;
SIGNAL \Selector26~33_combout\ : std_logic;
SIGNAL \Selector26~49_combout\ : std_logic;
SIGNAL \F1L[18]~input_o\ : std_logic;
SIGNAL \Selector26~30_combout\ : std_logic;
SIGNAL \TRAIANGLEREG~0_combout\ : std_logic;
SIGNAL \TRAIANGLEREG~q\ : std_logic;
SIGNAL \F1L[2]~input_o\ : std_logic;
SIGNAL \Selector26~31_combout\ : std_logic;
SIGNAL \Selector26~48_combout\ : std_logic;
SIGNAL \Selector26~32_combout\ : std_logic;
SIGNAL \Selector26~34_combout\ : std_logic;
SIGNAL \Selector26~37_combout\ : std_logic;
SIGNAL \F2L[10]~input_o\ : std_logic;
SIGNAL \Selector26~27_combout\ : std_logic;
SIGNAL \PTW1[10]~input_o\ : std_logic;
SIGNAL \Selector26~22_combout\ : std_logic;
SIGNAL \F1H[10]~input_o\ : std_logic;
SIGNAL \Selector26~25_combout\ : std_logic;
SIGNAL \Selector22~12_combout\ : std_logic;
SIGNAL \F2L[2]~input_o\ : std_logic;
SIGNAL \FTW2L[2]~feeder_combout\ : std_logic;
SIGNAL \PTW1[2]~input_o\ : std_logic;
SIGNAL \Selector26~23_combout\ : std_logic;
SIGNAL \Selector26~24_combout\ : std_logic;
SIGNAL \Selector26~26_combout\ : std_logic;
SIGNAL \Selector26~28_combout\ : std_logic;
SIGNAL \Selector26~45_combout\ : std_logic;
SIGNAL \DOUT[2]~reg0_q\ : std_logic;
SIGNAL \RAMPRATE[19]~input_o\ : std_logic;
SIGNAL \RAMPRATE[3]~input_o\ : std_logic;
SIGNAL \DFWL[27]~input_o\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \F1H[3]~input_o\ : std_logic;
SIGNAL \F1L[27]~input_o\ : std_logic;
SIGNAL \CLKMUILT[3]~input_o\ : std_logic;
SIGNAL \F1L[11]~input_o\ : std_logic;
SIGNAL \FTW1L[11]~feeder_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \PTW2[3]~input_o\ : std_logic;
SIGNAL \PTW2REG[3]~feeder_combout\ : std_logic;
SIGNAL \DFWL[11]~input_o\ : std_logic;
SIGNAL \RAMPRATE[11]~input_o\ : std_logic;
SIGNAL \DFWL[19]~input_o\ : std_logic;
SIGNAL \DFWH[3]~input_o\ : std_logic;
SIGNAL \F1L[19]~input_o\ : std_logic;
SIGNAL \Selector25~4_combout\ : std_logic;
SIGNAL \Selector25~5_combout\ : std_logic;
SIGNAL \Selector25~6_combout\ : std_logic;
SIGNAL \Selector25~7_combout\ : std_logic;
SIGNAL \F2L[27]~input_o\ : std_logic;
SIGNAL \FTW2L[27]~feeder_combout\ : std_logic;
SIGNAL \F2H[11]~input_o\ : std_logic;
SIGNAL \DFWL[3]~input_o\ : std_logic;
SIGNAL \PTW2[11]~input_o\ : std_logic;
SIGNAL \F2H[3]~input_o\ : std_logic;
SIGNAL \Selector25~11_combout\ : std_logic;
SIGNAL \Selector25~12_combout\ : std_logic;
SIGNAL \F2L[19]~input_o\ : std_logic;
SIGNAL \PTW1[11]~input_o\ : std_logic;
SIGNAL \F1H[11]~input_o\ : std_logic;
SIGNAL \Selector25~8_combout\ : std_logic;
SIGNAL \Selector25~9_combout\ : std_logic;
SIGNAL \Selector25~10_combout\ : std_logic;
SIGNAL \Selector25~13_combout\ : std_logic;
SIGNAL \Selector25~14_combout\ : std_logic;
SIGNAL \Selector25~15_combout\ : std_logic;
SIGNAL \Selector25~16_combout\ : std_logic;
SIGNAL \DOUT[3]~reg0_q\ : std_logic;
SIGNAL \RAMPRATE[12]~input_o\ : std_logic;
SIGNAL \F1L[4]~input_o\ : std_logic;
SIGNAL \DOUT[4]~31_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \F1L[20]~input_o\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \F2H[12]~input_o\ : std_logic;
SIGNAL \FTW2H[12]~feeder_combout\ : std_logic;
SIGNAL \PTW1[4]~input_o\ : std_logic;
SIGNAL \F1H[12]~input_o\ : std_logic;
SIGNAL \DOUT[4]~30_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \DOUT[4]~33_combout\ : std_logic;
SIGNAL \DOUT[4]~36_combout\ : std_logic;
SIGNAL \CLKMUILT[4]~input_o\ : std_logic;
SIGNAL \Selector24~6_combout\ : std_logic;
SIGNAL \F2L[28]~input_o\ : std_logic;
SIGNAL \FTW2L[28]~feeder_combout\ : std_logic;
SIGNAL \DFWL[4]~input_o\ : std_logic;
SIGNAL \PTW2[12]~input_o\ : std_logic;
SIGNAL \PTW1[12]~input_o\ : std_logic;
SIGNAL \DOUT[4]~35_combout\ : std_logic;
SIGNAL \Selector24~4_combout\ : std_logic;
SIGNAL \Selector24~5_combout\ : std_logic;
SIGNAL \F1H[4]~input_o\ : std_logic;
SIGNAL \F2H[4]~input_o\ : std_logic;
SIGNAL \F1L[12]~input_o\ : std_logic;
SIGNAL \Selector24~7_combout\ : std_logic;
SIGNAL \Selector24~8_combout\ : std_logic;
SIGNAL \Selector24~9_combout\ : std_logic;
SIGNAL \DOUT[4]~37_combout\ : std_logic;
SIGNAL \DFWH[12]~input_o\ : std_logic;
SIGNAL \DFWH[4]~input_o\ : std_logic;
SIGNAL \DFWL[20]~input_o\ : std_logic;
SIGNAL \DFWL[28]~input_o\ : std_logic;
SIGNAL \PTW2[4]~input_o\ : std_logic;
SIGNAL \PTW2REG[4]~feeder_combout\ : std_logic;
SIGNAL \DFWL[12]~input_o\ : std_logic;
SIGNAL \DOUT[4]~39_combout\ : std_logic;
SIGNAL \Selector24~10_combout\ : std_logic;
SIGNAL \Selector24~11_combout\ : std_logic;
SIGNAL \Selector24~12_combout\ : std_logic;
SIGNAL \Selector24~13_combout\ : std_logic;
SIGNAL \Selector24~14_combout\ : std_logic;
SIGNAL \Selector24~15_combout\ : std_logic;
SIGNAL \Selector24~16_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \DOUT[4]~42_combout\ : std_logic;
SIGNAL \DOUT[4]~43_combout\ : std_logic;
SIGNAL \DOUT[4]~44_combout\ : std_logic;
SIGNAL \DOUT[4]~45_combout\ : std_logic;
SIGNAL \DOUT[4]~46_combout\ : std_logic;
SIGNAL \DOUT[4]~48_combout\ : std_logic;
SIGNAL \DOUT[4]~49_combout\ : std_logic;
SIGNAL \DOUT[4]~53_combout\ : std_logic;
SIGNAL \DOUT[4]~reg0_q\ : std_logic;
SIGNAL \RAMPRATE[13]~input_o\ : std_logic;
SIGNAL \PTW1[5]~input_o\ : std_logic;
SIGNAL \F1H[13]~input_o\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \DOUT[4]~32_combout\ : std_logic;
SIGNAL \DOUT[4]~34_combout\ : std_logic;
SIGNAL \F1L[29]~input_o\ : std_logic;
SIGNAL \PLLEN~input_o\ : std_logic;
SIGNAL \PLLENREG~q\ : std_logic;
SIGNAL \F2L[29]~input_o\ : std_logic;
SIGNAL \PTW1[13]~input_o\ : std_logic;
SIGNAL \PTW2[13]~input_o\ : std_logic;
SIGNAL \Selector23~4_combout\ : std_logic;
SIGNAL \Selector23~5_combout\ : std_logic;
SIGNAL \Selector23~6_combout\ : std_logic;
SIGNAL \Selector23~9_combout\ : std_logic;
SIGNAL \Selector23~14_combout\ : std_logic;
SIGNAL \Selector23~15_combout\ : std_logic;
SIGNAL \Selector23~16_combout\ : std_logic;
SIGNAL \DOUT[5]~reg0_q\ : std_logic;
SIGNAL \Selector22~50_combout\ : std_logic;
SIGNAL \RAMPRATE[14]~input_o\ : std_logic;
SIGNAL \Selector22~13_combout\ : std_logic;
SIGNAL \DFWH[6]~input_o\ : std_logic;
SIGNAL \Selector22~14_combout\ : std_logic;
SIGNAL \DFWH[14]~input_o\ : std_logic;
SIGNAL \RAMPRATE[6]~input_o\ : std_logic;
SIGNAL \Selector22~19_combout\ : std_logic;
SIGNAL \Selector22~46_combout\ : std_logic;
SIGNAL \PTW2[6]~input_o\ : std_logic;
SIGNAL \DFWL[14]~input_o\ : std_logic;
SIGNAL \Selector22~16_combout\ : std_logic;
SIGNAL \Selector22~17_combout\ : std_logic;
SIGNAL \Selector22~45_combout\ : std_logic;
SIGNAL \Selector22~18_combout\ : std_logic;
SIGNAL \Selector22~20_combout\ : std_logic;
SIGNAL \Selector22~21_combout\ : std_logic;
SIGNAL \DOUT[6]~1_combout\ : std_logic;
SIGNAL \F1L[30]~input_o\ : std_logic;
SIGNAL \Selector22~33_combout\ : std_logic;
SIGNAL \Selector22~48_combout\ : std_logic;
SIGNAL \F1L[14]~input_o\ : std_logic;
SIGNAL \Selector22~29_combout\ : std_logic;
SIGNAL \F1L[22]~input_o\ : std_logic;
SIGNAL \Selector22~30_combout\ : std_logic;
SIGNAL \F1L[6]~input_o\ : std_logic;
SIGNAL \Selector22~31_combout\ : std_logic;
SIGNAL \Selector22~47_combout\ : std_logic;
SIGNAL \Selector22~32_combout\ : std_logic;
SIGNAL \Selector22~34_combout\ : std_logic;
SIGNAL \PLLRANGE~input_o\ : std_logic;
SIGNAL \PLLRANGEREG~q\ : std_logic;
SIGNAL \Selector22~35_combout\ : std_logic;
SIGNAL \Selector22~36_combout\ : std_logic;
SIGNAL \Selector22~22_combout\ : std_logic;
SIGNAL \F2L[14]~input_o\ : std_logic;
SIGNAL \Selector22~27_combout\ : std_logic;
SIGNAL \F2L[6]~input_o\ : std_logic;
SIGNAL \FTW2L[6]~feeder_combout\ : std_logic;
SIGNAL \PTW1[6]~input_o\ : std_logic;
SIGNAL \Selector22~23_combout\ : std_logic;
SIGNAL \Selector22~24_combout\ : std_logic;
SIGNAL \Selector22~26_combout\ : std_logic;
SIGNAL \Selector22~28_combout\ : std_logic;
SIGNAL \F2H[14]~input_o\ : std_logic;
SIGNAL \Selector22~38_combout\ : std_logic;
SIGNAL \Selector22~40_combout\ : std_logic;
SIGNAL \F2H[6]~input_o\ : std_logic;
SIGNAL \FTW2H[6]~feeder_combout\ : std_logic;
SIGNAL \F2L[30]~input_o\ : std_logic;
SIGNAL \Selector22~37_combout\ : std_logic;
SIGNAL \Selector22~49_combout\ : std_logic;
SIGNAL \DFWL[6]~input_o\ : std_logic;
SIGNAL \Selector22~41_combout\ : std_logic;
SIGNAL \Selector22~42_combout\ : std_logic;
SIGNAL \Selector22~43_combout\ : std_logic;
SIGNAL \Selector22~44_combout\ : std_logic;
SIGNAL \DOUT[6]~reg0_q\ : std_logic;
SIGNAL \Selector21~10_combout\ : std_logic;
SIGNAL \DFWH[7]~input_o\ : std_logic;
SIGNAL \Selector21~11_combout\ : std_logic;
SIGNAL \DFWL[31]~input_o\ : std_logic;
SIGNAL \Selector21~12_combout\ : std_logic;
SIGNAL \PTW2[7]~input_o\ : std_logic;
SIGNAL \DFWL[23]~input_o\ : std_logic;
SIGNAL \DFWLREG[23]~feeder_combout\ : std_logic;
SIGNAL \DFWL[15]~input_o\ : std_logic;
SIGNAL \Selector21~13_combout\ : std_logic;
SIGNAL \Selector21~14_combout\ : std_logic;
SIGNAL \Selector21~43_combout\ : std_logic;
SIGNAL \Selector21~15_combout\ : std_logic;
SIGNAL \Selector21~17_combout\ : std_logic;
SIGNAL \Selector21~18_combout\ : std_logic;
SIGNAL \DOUT[7]~2_combout\ : std_logic;
SIGNAL \F1L[15]~input_o\ : std_logic;
SIGNAL \Selector21~19_combout\ : std_logic;
SIGNAL \F1L[23]~input_o\ : std_logic;
SIGNAL \Selector21~20_combout\ : std_logic;
SIGNAL \Selector21~22_combout\ : std_logic;
SIGNAL \F1L[31]~input_o\ : std_logic;
SIGNAL \Selector21~23_combout\ : std_logic;
SIGNAL \Selector21~45_combout\ : std_logic;
SIGNAL \Selector21~24_combout\ : std_logic;
SIGNAL \F2H[15]~input_o\ : std_logic;
SIGNAL \Selector21~35_combout\ : std_logic;
SIGNAL \DFWL[7]~input_o\ : std_logic;
SIGNAL \Selector21~39_combout\ : std_logic;
SIGNAL \Selector21~40_combout\ : std_logic;
SIGNAL \Selector21~41_combout\ : std_logic;
SIGNAL \Selector21~32_combout\ : std_logic;
SIGNAL \Selector21~33_combout\ : std_logic;
SIGNAL \Selector21~25_combout\ : std_logic;
SIGNAL \F2L[15]~input_o\ : std_logic;
SIGNAL \Selector21~30_combout\ : std_logic;
SIGNAL \F1H[15]~input_o\ : std_logic;
SIGNAL \Selector21~28_combout\ : std_logic;
SIGNAL \PTW1[7]~input_o\ : std_logic;
SIGNAL \Selector21~26_combout\ : std_logic;
SIGNAL \Selector21~27_combout\ : std_logic;
SIGNAL \Selector21~29_combout\ : std_logic;
SIGNAL \Selector21~31_combout\ : std_logic;
SIGNAL \Selector21~34_combout\ : std_logic;
SIGNAL \Selector21~42_combout\ : std_logic;
SIGNAL \DOUT[7]~reg0_q\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \Selector13~3_combout\ : std_logic;
SIGNAL \READY~reg0_q\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \RESET~reg0_q\ : std_logic;
SIGNAL \WREN~1_combout\ : std_logic;
SIGNAL \WREN~2_combout\ : std_logic;
SIGNAL \WREN~q\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Selector12~12_combout\ : std_logic;
SIGNAL \WRITE~0_combout\ : std_logic;
SIGNAL \Selector12~15_combout\ : std_logic;
SIGNAL \Selector12~16_combout\ : std_logic;
SIGNAL \Selector12~17_combout\ : std_logic;
SIGNAL \Selector12~19_combout\ : std_logic;
SIGNAL \Selector12~20_combout\ : std_logic;
SIGNAL \Selector12~21_combout\ : std_logic;
SIGNAL \Selector12~13_combout\ : std_logic;
SIGNAL \Selector12~14_combout\ : std_logic;
SIGNAL \Selector12~22_combout\ : std_logic;
SIGNAL \Selector12~27_combout\ : std_logic;
SIGNAL \Selector12~23_combout\ : std_logic;
SIGNAL \Selector12~24_combout\ : std_logic;
SIGNAL \Selector12~25_combout\ : std_logic;
SIGNAL \Selector12~31_combout\ : std_logic;
SIGNAL \Selector12~32_combout\ : std_logic;
SIGNAL \Selector12~26_combout\ : std_logic;
SIGNAL \Selector12~29_combout\ : std_logic;
SIGNAL \Selector12~30_combout\ : std_logic;
SIGNAL \Selector12~28_combout\ : std_logic;
SIGNAL \WRITE~reg0_q\ : std_logic;
SIGNAL count_clk : std_logic_vector(31 DOWNTO 0);
SIGNAL STEP : std_logic_vector(6 DOWNTO 0);
SIGNAL PTW2REG : std_logic_vector(13 DOWNTO 0);
SIGNAL PTW1REG : std_logic_vector(13 DOWNTO 0);
SIGNAL MODEREG : std_logic_vector(2 DOWNTO 0);
SIGNAL FTW2L : std_logic_vector(31 DOWNTO 0);
SIGNAL FTW2H : std_logic_vector(15 DOWNTO 0);
SIGNAL FTW1L : std_logic_vector(31 DOWNTO 0);
SIGNAL FTW1H : std_logic_vector(15 DOWNTO 0);
SIGNAL DFWLREG : std_logic_vector(31 DOWNTO 0);
SIGNAL DFWHREG : std_logic_vector(15 DOWNTO 0);
SIGNAL CLKMUILTREG : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_COUNTEREN~q\ : std_logic;
SIGNAL ALT_INV_STEP : std_logic_vector(6 DOWNTO 6);

BEGIN

ww_RST <= RST;
ww_CEN <= CEN;
ww_CLK <= CLK;
ww_F1H <= F1H;
ww_F1L <= F1L;
ww_F2H <= F2H;
ww_F2L <= F2L;
ww_PTW1 <= PTW1;
ww_PTW2 <= PTW2;
ww_TRAIANGLE <= TRAIANGLE;
ww_MODE <= MODE;
ww_DFWH <= DFWH;
ww_DFWL <= DFWL;
ww_RAMPRATE <= RAMPRATE;
AOUT <= ww_AOUT;
DOUT <= ww_DOUT;
READY <= ww_READY;
RESET <= ww_RESET;
WRITE <= ww_WRITE;
ww_PLLEN <= PLLEN;
ww_CLKMUILT <= CLKMUILT;
ww_PLLRANGE <= PLLRANGE;
CONFIGERR <= ww_CONFIGERR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\count_clk[10]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & count_clk(10));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_COUNTEREN~q\ <= NOT \COUNTEREN~q\;
ALT_INV_STEP(6) <= NOT STEP(6);

-- Location: FF_X38_Y1_N13
\count_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[5]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(5));

-- Location: FF_X38_Y1_N11
\count_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[4]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(4));

-- Location: FF_X38_Y1_N7
\count_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(2));

-- Location: LCCOMB_X38_Y1_N6
\count_clk[2]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count_clk[2]~12_combout\ = (count_clk(2) & (!\count_clk[1]~11\)) # (!count_clk(2) & ((\count_clk[1]~11\) # (GND)))
-- \count_clk[2]~13\ = CARRY((!\count_clk[1]~11\) # (!count_clk(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk(2),
	datad => VCC,
	cin => \count_clk[1]~11\,
	combout => \count_clk[2]~12_combout\,
	cout => \count_clk[2]~13\);

-- Location: LCCOMB_X38_Y1_N10
\count_clk[4]~16\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X38_Y1_N12
\count_clk[5]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count_clk[5]~18_combout\ = (count_clk(5) & (\count_clk[4]~17\ $ (GND))) # (!count_clk(5) & (!\count_clk[4]~17\ & VCC))
-- \count_clk[5]~19\ = CARRY((count_clk(5) & !\count_clk[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count_clk(5),
	datad => VCC,
	cin => \count_clk[4]~17\,
	combout => \count_clk[5]~18_combout\,
	cout => \count_clk[5]~19\);

-- Location: LCCOMB_X64_Y53_N0
\Selector20~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~8_combout\ = (STEP(0) & !STEP(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STEP(0),
	datad => STEP(3),
	combout => \Selector20~8_combout\);

-- Location: LCCOMB_X62_Y54_N12
\Selector19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~2_combout\ = (!STEP(6) & ((STEP(0) & (\AOUT[1]~reg0_q\ $ (STEP(4)))) # (!STEP(0) & (\AOUT[1]~reg0_q\ & STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \AOUT[1]~reg0_q\,
	datac => STEP(6),
	datad => STEP(4),
	combout => \Selector19~2_combout\);

-- Location: LCCOMB_X62_Y54_N6
\Selector19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~5_combout\ = (STEP(2) & ((STEP(0) & (!STEP(6) & !STEP(4))) # (!STEP(0) & (STEP(6) $ (STEP(4)))))) # (!STEP(2) & ((STEP(0) & (STEP(6) $ (STEP(4)))) # (!STEP(0) & (STEP(6) & STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(0),
	datac => STEP(6),
	datad => STEP(4),
	combout => \Selector19~5_combout\);

-- Location: LCCOMB_X63_Y54_N26
\Selector19~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~12_combout\ = (\AOUT[1]~reg0_q\ & ((STEP(6)) # (STEP(0) $ (!STEP(2))))) # (!\AOUT[1]~reg0_q\ & (!STEP(0) & (STEP(6) & !STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \AOUT[1]~reg0_q\,
	datac => STEP(6),
	datad => STEP(2),
	combout => \Selector19~12_combout\);

-- Location: LCCOMB_X62_Y54_N16
\Selector19~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~15_combout\ = (STEP(4) & (!STEP(6) & STEP(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(4),
	datac => STEP(6),
	datad => STEP(2),
	combout => \Selector19~15_combout\);

-- Location: LCCOMB_X62_Y54_N2
\Selector19~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~16_combout\ = (\Selector19~15_combout\ & ((\Equal1~0_combout\) # ((\AOUT[1]~reg0_q\ & \Equal4~0_combout\)))) # (!\Selector19~15_combout\ & (((\AOUT[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \AOUT[1]~reg0_q\,
	datac => \Equal4~0_combout\,
	datad => \Selector19~15_combout\,
	combout => \Selector19~16_combout\);

-- Location: LCCOMB_X62_Y54_N24
\Selector19~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~17_combout\ = (STEP(6) & (!STEP(1))) # (!STEP(6) & ((STEP(4) & ((!STEP(2)) # (!STEP(1)))) # (!STEP(4) & ((STEP(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(4),
	datac => STEP(6),
	datad => STEP(2),
	combout => \Selector19~17_combout\);

-- Location: LCCOMB_X62_Y54_N10
\Selector19~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~18_combout\ = (STEP(1) & ((\AOUT[1]~reg0_q\) # ((STEP(0)) # (\Selector19~17_combout\)))) # (!STEP(1) & (\AOUT[1]~reg0_q\ & (!STEP(0) & \Selector19~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \AOUT[1]~reg0_q\,
	datac => STEP(0),
	datad => \Selector19~17_combout\,
	combout => \Selector19~18_combout\);

-- Location: LCCOMB_X62_Y54_N8
\Selector19~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~19_combout\ = (\AOUT[1]~reg0_q\) # ((\Decoder1~0_combout\ & \always1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => \AOUT[1]~reg0_q\,
	datac => \always1~0_combout\,
	combout => \Selector19~19_combout\);

-- Location: LCCOMB_X62_Y54_N14
\Selector19~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~20_combout\ = (\Selector19~18_combout\ & (((\Selector19~19_combout\)) # (!STEP(0)))) # (!\Selector19~18_combout\ & (STEP(0) & ((\Selector19~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~18_combout\,
	datab => STEP(0),
	datac => \Selector19~19_combout\,
	datad => \Selector19~16_combout\,
	combout => \Selector19~20_combout\);

-- Location: LCCOMB_X65_Y51_N24
\Selector18~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~8_combout\ = (STEP(5) & ((STEP(2) & (STEP(1) & !STEP(4))) # (!STEP(2) & (STEP(1) $ (!STEP(4)))))) # (!STEP(5) & ((STEP(2) & (!STEP(1) & STEP(4))) # (!STEP(2) & (STEP(1) & !STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => STEP(2),
	datac => STEP(1),
	datad => STEP(4),
	combout => \Selector18~8_combout\);

-- Location: LCCOMB_X65_Y51_N30
\Selector18~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~9_combout\ = (STEP(0) & (STEP(2))) # (!STEP(0) & ((\Selector18~8_combout\ & (STEP(2))) # (!\Selector18~8_combout\ & ((\AOUT[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(2),
	datac => \AOUT[2]~reg0_q\,
	datad => \Selector18~8_combout\,
	combout => \Selector18~9_combout\);

-- Location: LCCOMB_X65_Y51_N8
\Selector18~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~13_combout\ = (STEP(1) & (\AOUT[2]~reg0_q\ & ((STEP(5)) # (!STEP(0))))) # (!STEP(1) & ((\AOUT[2]~reg0_q\) # (STEP(0) $ (!STEP(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => \AOUT[2]~reg0_q\,
	datad => STEP(5),
	combout => \Selector18~13_combout\);

-- Location: LCCOMB_X65_Y51_N22
\Selector18~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~14_combout\ = (STEP(5) & ((STEP(1) & (!STEP(2) & !STEP(0))) # (!STEP(1) & (STEP(2) & STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(2),
	datac => STEP(0),
	datad => STEP(5),
	combout => \Selector18~14_combout\);

-- Location: LCCOMB_X65_Y51_N16
\Selector18~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~15_combout\ = (STEP(4) & (((STEP(2))))) # (!STEP(4) & ((\Selector18~14_combout\ & (!STEP(2))) # (!\Selector18~14_combout\ & ((\AOUT[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~14_combout\,
	datab => STEP(2),
	datac => \AOUT[2]~reg0_q\,
	datad => STEP(4),
	combout => \Selector18~15_combout\);

-- Location: LCCOMB_X65_Y51_N10
\Selector18~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~16_combout\ = (STEP(1) & (\AOUT[2]~reg0_q\ & (STEP(0) $ (STEP(5))))) # (!STEP(1) & ((\AOUT[2]~reg0_q\) # ((!STEP(0) & STEP(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => \AOUT[2]~reg0_q\,
	datad => STEP(5),
	combout => \Selector18~16_combout\);

-- Location: LCCOMB_X65_Y51_N12
\Selector18~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~17_combout\ = (STEP(4) & ((\Selector18~15_combout\ & (\Selector18~16_combout\)) # (!\Selector18~15_combout\ & ((\Selector18~13_combout\))))) # (!STEP(4) & (((\Selector18~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~16_combout\,
	datab => STEP(4),
	datac => \Selector18~13_combout\,
	datad => \Selector18~15_combout\,
	combout => \Selector18~17_combout\);

-- Location: LCCOMB_X63_Y54_N0
\AOUT[3]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~6_combout\ = (\COUNTEREN~q\ & ((!STEP(6)) # (!STEP(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datac => STEP(6),
	datad => \COUNTEREN~q\,
	combout => \AOUT[3]~6_combout\);

-- Location: LCCOMB_X63_Y54_N22
\AOUT[3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~7_combout\ = (STEP(3) & ((STEP(5) & (!STEP(0))) # (!STEP(5) & ((!STEP(1)))))) # (!STEP(3) & (((STEP(5) & !STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(3),
	datac => STEP(5),
	datad => STEP(1),
	combout => \AOUT[3]~7_combout\);

-- Location: LCCOMB_X63_Y54_N30
\AOUT[3]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~9_combout\ = (STEP(4) & (STEP(2) & (STEP(6) & STEP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(2),
	datac => STEP(6),
	datad => STEP(3),
	combout => \AOUT[3]~9_combout\);

-- Location: LCCOMB_X63_Y54_N16
\AOUT[3]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~10_combout\ = (!\AOUT[3]~9_combout\ & (\AOUT[3]~6_combout\ & ((\AOUT[3]~7_combout\) # (!\AOUT[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~9_combout\,
	datab => \AOUT[3]~8_combout\,
	datac => \AOUT[3]~7_combout\,
	datad => \AOUT[3]~6_combout\,
	combout => \AOUT[3]~10_combout\);

-- Location: LCCOMB_X63_Y54_N18
\AOUT[3]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~11_combout\ = (!STEP(4) & (!STEP(2) & (!STEP(6) & STEP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(2),
	datac => STEP(6),
	datad => STEP(0),
	combout => \AOUT[3]~11_combout\);

-- Location: LCCOMB_X63_Y54_N8
\AOUT[3]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~12_combout\ = ((STEP(5) & (\always1~0_combout\ & \Selector20~31_combout\))) # (!\AOUT[3]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \AOUT[3]~11_combout\,
	datac => \always1~0_combout\,
	datad => \Selector20~31_combout\,
	combout => \AOUT[3]~12_combout\);

-- Location: LCCOMB_X64_Y54_N22
\AOUT[3]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~16_combout\ = (STEP(6) & (STEP(3) & (!STEP(2) & STEP(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(6),
	datab => STEP(3),
	datac => STEP(2),
	datad => STEP(4),
	combout => \AOUT[3]~16_combout\);

-- Location: LCCOMB_X64_Y54_N12
\AOUT[3]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~19_combout\ = (STEP(3) & (STEP(1) & STEP(5))) # (!STEP(3) & ((!STEP(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(3),
	datac => STEP(1),
	datad => STEP(5),
	combout => \AOUT[3]~19_combout\);

-- Location: LCCOMB_X64_Y54_N10
\AOUT[3]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~25_combout\ = (STEP(0) & ((STEP(2)) # ((\AOUT[3]~24_combout\) # (!STEP(1))))) # (!STEP(0) & (STEP(2) $ ((STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(0),
	datac => STEP(1),
	datad => \AOUT[3]~24_combout\,
	combout => \AOUT[3]~25_combout\);

-- Location: LCCOMB_X62_Y54_N20
\AOUT[3]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~28_combout\ = (STEP(1) & ((STEP(5) & (!STEP(0) & !STEP(2))) # (!STEP(5) & (STEP(0) & STEP(2))))) # (!STEP(1) & ((STEP(5) & (STEP(0) & STEP(2))) # (!STEP(5) & (STEP(0) $ (STEP(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(5),
	datac => STEP(0),
	datad => STEP(2),
	combout => \AOUT[3]~28_combout\);

-- Location: LCCOMB_X58_Y49_N22
\Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (STEP(3)) # ((STEP(2)) # (STEP(1) $ (STEP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(0),
	combout => \Selector16~0_combout\);

-- Location: LCCOMB_X58_Y49_N16
\Selector16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~1_combout\ = (STEP(3) & ((STEP(1) & (STEP(2) & STEP(0))) # (!STEP(1) & (STEP(2) $ (STEP(0)))))) # (!STEP(3) & (STEP(1) & (STEP(2) $ (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(0),
	combout => \Selector16~1_combout\);

-- Location: LCCOMB_X58_Y49_N10
\Selector16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~2_combout\ = (\Selector16~0_combout\ & (!\AOUT[4]~reg0_q\ & ((!\Selector16~1_combout\)))) # (!\Selector16~0_combout\ & (\Equal1~0_combout\ & ((!\Selector16~1_combout\) # (!\AOUT[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~0_combout\,
	datab => \AOUT[4]~reg0_q\,
	datac => \Equal1~0_combout\,
	datad => \Selector16~1_combout\,
	combout => \Selector16~2_combout\);

-- Location: LCCOMB_X58_Y49_N12
\Selector16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~3_combout\ = (STEP(5) & (\AOUT[4]~reg0_q\)) # (!STEP(5) & ((!\Selector16~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AOUT[4]~reg0_q\,
	datac => STEP(5),
	datad => \Selector16~2_combout\,
	combout => \Selector16~3_combout\);

-- Location: LCCOMB_X63_Y49_N12
\Selector16~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~11_combout\ = (\AOUT[4]~reg0_q\ & (((STEP(1)) # (!STEP(5))) # (!STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \AOUT[4]~reg0_q\,
	datac => STEP(5),
	datad => STEP(1),
	combout => \Selector16~11_combout\);

-- Location: FF_X58_Y51_N19
\FTW2L[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[8]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(8));

-- Location: LCCOMB_X59_Y49_N26
\DOUT[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~3_combout\ = (STEP(1) & (STEP(3))) # (!STEP(1) & ((STEP(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datac => STEP(4),
	datad => STEP(1),
	combout => \DOUT[0]~3_combout\);

-- Location: FF_X59_Y51_N11
\DFWHREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[8]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(8));

-- Location: LCCOMB_X57_Y53_N26
\DOUT[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~5_combout\ = (!STEP(5) & STEP(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STEP(5),
	datad => STEP(2),
	combout => \DOUT[0]~5_combout\);

-- Location: FF_X59_Y53_N27
\FTW1L[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1L[16]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(16));

-- Location: FF_X59_Y53_N11
\PTW1REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \PTW1REG[0]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(0));

-- Location: FF_X59_Y53_N23
\FTW2L[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[0]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(0));

-- Location: LCCOMB_X57_Y53_N8
\DOUT[0]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~14_combout\ = (STEP(5)) # ((STEP(6) & STEP(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(6),
	datac => STEP(5),
	datad => STEP(2),
	combout => \DOUT[0]~14_combout\);

-- Location: LCCOMB_X61_Y53_N8
\DOUT[0]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~21_combout\ = (STEP(1) & (!STEP(3) & STEP(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(1),
	datac => STEP(3),
	datad => STEP(0),
	combout => \DOUT[0]~21_combout\);

-- Location: LCCOMB_X61_Y53_N26
\DOUT[0]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~22_combout\ = (\DOUT[0]~21_combout\ & ((\AOUT[3]~4_combout\) # ((!\Equal1~0_combout\ & \AOUT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~4_combout\,
	datab => \DOUT[0]~21_combout\,
	datac => \Equal1~0_combout\,
	datad => \AOUT[3]~3_combout\,
	combout => \DOUT[0]~22_combout\);

-- Location: FF_X64_Y51_N1
\PTW2REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[1]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(1));

-- Location: FF_X58_Y53_N7
\DFWLREG[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DFWLREG[17]~feeder_combout\,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(17));

-- Location: FF_X63_Y53_N11
\FTW1L[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[17]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(17));

-- Location: FF_X59_Y53_N1
\FTW2L[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[1]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(1));

-- Location: FF_X59_Y53_N5
\PTW1REG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \PTW1REG[1]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(1));

-- Location: FF_X59_Y53_N21
\FTW2L[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[25]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(25));

-- Location: FF_X64_Y53_N13
\PTW2REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[9]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(9));

-- Location: FF_X59_Y51_N13
\FTW2H[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2H[9]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(9));

-- Location: LCCOMB_X57_Y50_N22
\Selector26~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~10_combout\ = (STEP(1) & (((\DOUT[2]~reg0_q\)))) # (!STEP(1) & ((STEP(0) & (\RAMPRATE[18]~input_o\)) # (!STEP(0) & ((\DOUT[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMPRATE[18]~input_o\,
	datab => STEP(1),
	datac => STEP(0),
	datad => \DOUT[2]~reg0_q\,
	combout => \Selector26~10_combout\);

-- Location: LCCOMB_X57_Y50_N8
\Selector26~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~11_combout\ = (STEP(0) & (((\DOUT[2]~reg0_q\)))) # (!STEP(0) & ((STEP(1) & (\RAMPRATE[10]~input_o\)) # (!STEP(1) & ((\DOUT[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \RAMPRATE[10]~input_o\,
	datac => STEP(1),
	datad => \DOUT[2]~reg0_q\,
	combout => \Selector26~11_combout\);

-- Location: LCCOMB_X57_Y50_N26
\Selector26~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~12_combout\ = (STEP(3) & (((STEP(2))))) # (!STEP(3) & ((STEP(2) & ((\Selector26~10_combout\))) # (!STEP(2) & (\Selector26~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => \Selector26~11_combout\,
	datac => \Selector26~10_combout\,
	datad => STEP(2),
	combout => \Selector26~12_combout\);

-- Location: LCCOMB_X57_Y50_N12
\Selector26~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~13_combout\ = (STEP(3) & (\DOUT[2]~reg0_q\ & ((\Selector26~12_combout\) # (!\AOUT[3]~15_combout\)))) # (!STEP(3) & (((\Selector26~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => \DOUT[2]~reg0_q\,
	datac => \Selector26~12_combout\,
	datad => \AOUT[3]~15_combout\,
	combout => \Selector26~13_combout\);

-- Location: FF_X59_Y50_N13
\DFWLREG[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DFWLREG[18]~feeder_combout\,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(18));

-- Location: FF_X59_Y51_N1
\DFWHREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[10]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(10));

-- Location: LCCOMB_X59_Y51_N0
\Selector26~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~19_combout\ = (STEP(0) & (\RAMPRATE[2]~input_o\ & ((STEP(1))))) # (!STEP(0) & (((DFWHREG(10) & !STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMPRATE[2]~input_o\,
	datab => STEP(0),
	datac => DFWHREG(10),
	datad => STEP(1),
	combout => \Selector26~19_combout\);

-- Location: FF_X58_Y50_N13
\FTW1L[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[10]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(10));

-- Location: LCCOMB_X58_Y50_N12
\Selector26~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~29_combout\ = (STEP(0) & (\DOUT[2]~reg0_q\)) # (!STEP(0) & ((STEP(1) & ((FTW1L(10)))) # (!STEP(1) & (\DOUT[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~reg0_q\,
	datab => STEP(0),
	datac => FTW1L(10),
	datad => STEP(1),
	combout => \Selector26~29_combout\);

-- Location: FF_X57_Y51_N7
\FTW2H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2H[2]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(2));

-- Location: FF_X57_Y51_N5
\FTW2L[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[26]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(26));

-- Location: LCCOMB_X57_Y51_N4
\Selector26~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~38_combout\ = (STEP(1) & (FTW2H(2) & ((STEP(0))))) # (!STEP(1) & (((FTW2L(26) & !STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2H(2),
	datab => STEP(1),
	datac => FTW2L(26),
	datad => STEP(0),
	combout => \Selector26~38_combout\);

-- Location: FF_X58_Y51_N7
\FTW2H[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[10]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(10));

-- Location: FF_X62_Y53_N21
\FTW2L[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[11]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(11));

-- Location: FF_X59_Y51_N27
\DFWHREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DFWHREG[11]~feeder_combout\,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(11));

-- Location: FF_X61_Y53_N13
\FTW1L[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1L[3]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(3));

-- Location: FF_X59_Y53_N31
\PTW1REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[3]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(3));

-- Location: FF_X59_Y53_N17
\FTW2L[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[3]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(3));

-- Location: FF_X65_Y49_N7
\FTW2L[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[4]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(4));

-- Location: FF_X65_Y49_N27
\FTW2L[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[20]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(20));

-- Location: FF_X64_Y49_N21
\FTW1L[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1L[28]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(28));

-- Location: FF_X65_Y49_N31
\FTW2L[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[12]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(12));

-- Location: LCCOMB_X64_Y51_N6
\DOUT[4]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~38_combout\ = (STEP(1)) # (STEP(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datad => STEP(2),
	combout => \DOUT[4]~38_combout\);

-- Location: LCCOMB_X64_Y51_N8
\AOUT[3]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~33_combout\ = (!STEP(1) & STEP(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datad => STEP(3),
	combout => \AOUT[3]~33_combout\);

-- Location: LCCOMB_X64_Y49_N12
\DOUT[4]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~40_combout\ = (STEP(6) & STEP(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STEP(6),
	datad => STEP(4),
	combout => \DOUT[4]~40_combout\);

-- Location: LCCOMB_X64_Y53_N22
\DOUT[4]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~41_combout\ = (STEP(3) & ((STEP(5) & (STEP(0) $ (STEP(4)))) # (!STEP(5) & (!STEP(0) & !STEP(4))))) # (!STEP(3) & ((STEP(5) & (!STEP(0) & !STEP(4))) # (!STEP(5) & (STEP(0) & STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(5),
	datac => STEP(0),
	datad => STEP(4),
	combout => \DOUT[4]~41_combout\);

-- Location: LCCOMB_X64_Y53_N30
\DOUT[4]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~47_combout\ = (STEP(0) & ((STEP(3)) # (!STEP(4)))) # (!STEP(0) & ((STEP(4)) # (!STEP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(0),
	datac => STEP(4),
	datad => STEP(3),
	combout => \DOUT[4]~47_combout\);

-- Location: LCCOMB_X63_Y53_N18
\DOUT[4]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~50_combout\ = (STEP(3) & ((STEP(0) & (STEP(4))) # (!STEP(0) & ((STEP(1)))))) # (!STEP(3) & (STEP(0) $ (((STEP(4) & !STEP(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(4),
	datac => STEP(1),
	datad => STEP(3),
	combout => \DOUT[4]~50_combout\);

-- Location: LCCOMB_X63_Y53_N20
\DOUT[4]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~51_combout\ = (STEP(4) & (STEP(0) & (!STEP(1) & !STEP(3)))) # (!STEP(4) & (STEP(1) $ (((!STEP(0) & STEP(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(4),
	datac => STEP(1),
	datad => STEP(3),
	combout => \DOUT[4]~51_combout\);

-- Location: LCCOMB_X63_Y53_N14
\DOUT[4]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~52_combout\ = (\DOUT[4]~50_combout\ & (!\Equal1~0_combout\ & (\DOUT[4]~51_combout\ & !STEP(2)))) # (!\DOUT[4]~50_combout\ & ((\DOUT[4]~51_combout\ $ (!STEP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \DOUT[4]~51_combout\,
	datac => STEP(2),
	datad => \DOUT[4]~50_combout\,
	combout => \DOUT[4]~52_combout\);

-- Location: FF_X62_Y52_N1
\FTW2H[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2H[13]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(13));

-- Location: FF_X65_Y49_N5
\FTW1L[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[21]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(21));

-- Location: FF_X65_Y49_N23
\FTW2L[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[5]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(5));

-- Location: FF_X65_Y49_N29
\FTW1L[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[5]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(5));

-- Location: LCCOMB_X65_Y49_N28
\Selector23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\DOUT[4]~31_combout\ & (((STEP(5))))) # (!\DOUT[4]~31_combout\ & ((STEP(5) & (FTW2L(5))) # (!STEP(5) & ((FTW1L(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~31_combout\,
	datab => FTW2L(5),
	datac => FTW1L(5),
	datad => STEP(5),
	combout => \Selector23~2_combout\);

-- Location: FF_X65_Y49_N15
\FTW2L[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[21]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(21));

-- Location: LCCOMB_X65_Y49_N4
\Selector23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~3_combout\ = (\DOUT[4]~31_combout\ & ((\Selector23~2_combout\ & (FTW2L(21))) # (!\Selector23~2_combout\ & ((FTW1L(21)))))) # (!\DOUT[4]~31_combout\ & (((\Selector23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~31_combout\,
	datab => FTW2L(21),
	datac => FTW1L(21),
	datad => \Selector23~2_combout\,
	combout => \Selector23~3_combout\);

-- Location: FF_X59_Y51_N23
\DFWLREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DFWLREG[5]~feeder_combout\,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(5));

-- Location: FF_X65_Y49_N25
\FTW1H[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1H[5]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(5));

-- Location: FF_X65_Y49_N11
\FTW2L[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[13]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(13));

-- Location: FF_X65_Y49_N1
\FTW1L[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[13]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(13));

-- Location: LCCOMB_X65_Y49_N0
\Selector23~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~7_combout\ = (STEP(5) & ((FTW2L(13)) # ((\DOUT[4]~31_combout\)))) # (!STEP(5) & (((FTW1L(13) & !\DOUT[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(13),
	datab => STEP(5),
	datac => FTW1L(13),
	datad => \DOUT[4]~31_combout\,
	combout => \Selector23~7_combout\);

-- Location: FF_X65_Y49_N3
\FTW2H[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[5]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(5));

-- Location: LCCOMB_X65_Y49_N2
\Selector23~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~8_combout\ = (\DOUT[4]~31_combout\ & ((\Selector23~7_combout\ & ((FTW2H(5)))) # (!\Selector23~7_combout\ & (FTW1H(5))))) # (!\DOUT[4]~31_combout\ & (((\Selector23~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~31_combout\,
	datab => FTW1H(5),
	datac => FTW2H(5),
	datad => \Selector23~7_combout\,
	combout => \Selector23~8_combout\);

-- Location: FF_X64_Y51_N19
\PTW2REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[5]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(5));

-- Location: FF_X64_Y51_N9
\DFWLREG[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[21]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(21));

-- Location: FF_X64_Y51_N17
\DFWLREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[13]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(13));

-- Location: LCCOMB_X64_Y51_N16
\Selector23~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~10_combout\ = (\DOUT[4]~38_combout\ & ((DFWLREG(21)) # ((\DOUT[4]~39_combout\)))) # (!\DOUT[4]~38_combout\ & (((DFWLREG(13) & !\DOUT[4]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~38_combout\,
	datab => DFWLREG(21),
	datac => DFWLREG(13),
	datad => \DOUT[4]~39_combout\,
	combout => \Selector23~10_combout\);

-- Location: FF_X64_Y51_N31
\DFWLREG[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[29]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(29));

-- Location: LCCOMB_X64_Y51_N30
\Selector23~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~11_combout\ = (\DOUT[4]~39_combout\ & ((\Selector23~10_combout\ & ((DFWLREG(29)))) # (!\Selector23~10_combout\ & (PTW2REG(5))))) # (!\DOUT[4]~39_combout\ & (((\Selector23~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PTW2REG(5),
	datab => \DOUT[4]~39_combout\,
	datac => DFWLREG(29),
	datad => \Selector23~10_combout\,
	combout => \Selector23~11_combout\);

-- Location: FF_X64_Y51_N29
\DFWHREG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[13]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(13));

-- Location: FF_X64_Y51_N27
\DFWHREG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[5]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(5));

-- Location: LCCOMB_X64_Y51_N26
\Selector23~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~12_combout\ = (\AOUT[3]~33_combout\ & ((\DOUT[4]~37_combout\ & ((DFWHREG(13)))) # (!\DOUT[4]~37_combout\ & (DFWHREG(5))))) # (!\AOUT[3]~33_combout\ & (\DOUT[4]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~33_combout\,
	datab => \DOUT[4]~37_combout\,
	datac => DFWHREG(5),
	datad => DFWHREG(13),
	combout => \Selector23~12_combout\);

-- Location: LCCOMB_X64_Y51_N12
\Selector23~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~13_combout\ = (\Selector23~12_combout\ & ((\RAMPRATE[5]~input_o\) # ((\AOUT[3]~33_combout\)))) # (!\Selector23~12_combout\ & (((\Selector23~11_combout\ & !\AOUT[3]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~12_combout\,
	datab => \RAMPRATE[5]~input_o\,
	datac => \Selector23~11_combout\,
	datad => \AOUT[3]~33_combout\,
	combout => \Selector23~13_combout\);

-- Location: FF_X62_Y49_N23
\DFWLREG[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[30]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(30));

-- Location: LCCOMB_X62_Y49_N22
\Selector22~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~15_combout\ = (STEP(1) & ((STEP(0) & (\DOUT[6]~reg0_q\)) # (!STEP(0) & ((DFWLREG(30)))))) # (!STEP(1) & (\DOUT[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(1),
	datac => DFWLREG(30),
	datad => STEP(0),
	combout => \Selector22~15_combout\);

-- Location: FF_X62_Y49_N11
\DFWLREG[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DFWLREG[22]~feeder_combout\,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(22));

-- Location: FF_X63_Y50_N7
\FTW1H[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[14]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(14));

-- Location: LCCOMB_X63_Y50_N6
\Selector22~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~25_combout\ = (STEP(0) & (\DOUT[6]~reg0_q\)) # (!STEP(0) & ((STEP(1) & ((FTW1H(14)))) # (!STEP(1) & (\DOUT[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(0),
	datac => FTW1H(14),
	datad => STEP(1),
	combout => \Selector22~25_combout\);

-- Location: FF_X63_Y50_N1
\FTW1H[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1H[6]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(6));

-- Location: FF_X62_Y52_N27
\FTW2L[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[22]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(22));

-- Location: LCCOMB_X62_Y52_N26
\Selector22~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~39_combout\ = (STEP(1) & (\DOUT[6]~reg0_q\)) # (!STEP(1) & ((STEP(0) & ((FTW2L(22)))) # (!STEP(0) & (\DOUT[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(1),
	datac => FTW2L(22),
	datad => STEP(0),
	combout => \Selector22~39_combout\);

-- Location: FF_X59_Y50_N27
\DFWHREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[15]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(15));

-- Location: LCCOMB_X59_Y50_N26
\Selector21~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~16_combout\ = (STEP(0) & (\RAMPRATE[7]~input_o\ & ((STEP(1))))) # (!STEP(0) & (((DFWHREG(15) & !STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMPRATE[7]~input_o\,
	datab => STEP(0),
	datac => DFWHREG(15),
	datad => STEP(1),
	combout => \Selector21~16_combout\);

-- Location: FF_X63_Y50_N3
\FTW1L[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[7]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(7));

-- Location: LCCOMB_X63_Y50_N2
\Selector21~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~21_combout\ = (STEP(1) & ((STEP(0) & (FTW1L(7))) # (!STEP(0) & ((\DOUT[7]~reg0_q\))))) # (!STEP(1) & (STEP(0) & ((\DOUT[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => FTW1L(7),
	datad => \DOUT[7]~reg0_q\,
	combout => \Selector21~21_combout\);

-- Location: FF_X63_Y50_N29
\FTW1H[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1H[7]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(7));

-- Location: FF_X62_Y53_N13
\FTW2L[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[7]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(7));

-- Location: FF_X62_Y52_N7
\FTW2H[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[7]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(7));

-- Location: FF_X62_Y52_N29
\FTW2L[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[31]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(31));

-- Location: LCCOMB_X62_Y52_N28
\Selector21~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~36_combout\ = (STEP(1) & (FTW2H(7) & ((STEP(0))))) # (!STEP(1) & (((FTW2L(31) & !STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2H(7),
	datab => STEP(1),
	datac => FTW2L(31),
	datad => STEP(0),
	combout => \Selector21~36_combout\);

-- Location: FF_X62_Y52_N23
\FTW2L[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[23]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(23));

-- Location: LCCOMB_X62_Y52_N22
\Selector21~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~37_combout\ = (STEP(1) & (\DOUT[7]~reg0_q\)) # (!STEP(1) & ((STEP(0) & ((FTW2L(23)))) # (!STEP(0) & (\DOUT[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \DOUT[7]~reg0_q\,
	datac => FTW2L(23),
	datad => STEP(0),
	combout => \Selector21~37_combout\);

-- Location: LCCOMB_X62_Y52_N4
\Selector21~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~38_combout\ = (STEP(2) & (((STEP(3)) # (\Selector21~46_combout\)))) # (!STEP(2) & (\Selector21~37_combout\ & (!STEP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~37_combout\,
	datab => STEP(2),
	datac => STEP(3),
	datad => \Selector21~46_combout\,
	combout => \Selector21~38_combout\);

-- Location: LCCOMB_X61_Y52_N10
\Selector13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~2_combout\ = (STEP(4) & ((\READY~reg0_q\) # ((!STEP(5) & STEP(6))))) # (!STEP(4) & (\READY~reg0_q\ & (STEP(5) $ (STEP(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => STEP(6),
	datac => STEP(4),
	datad => \READY~reg0_q\,
	combout => \Selector13~2_combout\);

-- Location: LCCOMB_X63_Y52_N14
\Selector12~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~18_combout\ = (STEP(3) & (STEP(0) $ (STEP(1) $ (!STEP(2))))) # (!STEP(3) & ((STEP(0) & (!STEP(1) & STEP(2))) # (!STEP(0) & (STEP(1) & !STEP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(3),
	combout => \Selector12~18_combout\);

-- Location: FF_X38_Y1_N27
\count_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(0));

-- Location: LCCOMB_X62_Y51_N10
\Selector34~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~3_combout\ = (\Selector20~17_combout\ & (!STEP(6) & (STEP(0) & \Selector35~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~17_combout\,
	datab => STEP(6),
	datac => STEP(0),
	datad => \Selector35~4_combout\,
	combout => \Selector34~3_combout\);

-- Location: LCCOMB_X61_Y51_N16
\Selector35~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~10_combout\ = (STEP(1) & (((!\Selector30~1_combout\ & \Selector31~2_combout\)) # (!\Selector33~2_combout\))) # (!STEP(1) & (!\Selector30~1_combout\ & ((\Selector31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \Selector30~1_combout\,
	datac => \Selector33~2_combout\,
	datad => \Selector31~2_combout\,
	combout => \Selector35~10_combout\);

-- Location: LCCOMB_X61_Y51_N10
\Selector36~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector36~2_combout\ = ((\Selector35~7_combout\) # ((\Selector36~3_combout\ & \Selector35~11_combout\))) # (!\Selector30~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~3_combout\,
	datab => \Selector30~1_combout\,
	datac => \Selector35~11_combout\,
	datad => \Selector35~7_combout\,
	combout => \Selector36~2_combout\);

-- Location: LCCOMB_X61_Y51_N0
\Selector31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~3_combout\ = (\Selector33~2_combout\) # ((STEP(5) & !\Selector31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \Selector33~2_combout\,
	datad => \Selector31~2_combout\,
	combout => \Selector31~3_combout\);

-- Location: LCCOMB_X64_Y51_N14
\Selector14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (STEP(4)) # (STEP(5) $ (STEP(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(5),
	datad => STEP(6),
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X58_Y49_N30
\WREN~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WREN~0_combout\ = (STEP(3) & (STEP(6) & STEP(4))) # (!STEP(3) & (!STEP(6) & !STEP(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(6),
	datac => STEP(4),
	combout => \WREN~0_combout\);

-- Location: LCCOMB_X58_Y51_N20
\Selector26~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~47_combout\ = (\Selector26~19_combout\) # ((\DOUT[2]~reg0_q\ & (STEP(1) $ (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \DOUT[2]~reg0_q\,
	datac => \Selector26~19_combout\,
	datad => STEP(0),
	combout => \Selector26~47_combout\);

-- Location: LCCOMB_X57_Y51_N30
\Selector26~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~50_combout\ = (\Selector26~38_combout\) # ((\DOUT[2]~reg0_q\ & (STEP(0) $ (STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \DOUT[2]~reg0_q\,
	datac => STEP(1),
	datad => \Selector26~38_combout\,
	combout => \Selector26~50_combout\);

-- Location: LCCOMB_X59_Y50_N30
\Selector21~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~44_combout\ = (\Selector21~16_combout\) # ((\DOUT[7]~reg0_q\ & (STEP(0) $ (STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[7]~reg0_q\,
	datab => STEP(0),
	datac => \Selector21~16_combout\,
	datad => STEP(1),
	combout => \Selector21~44_combout\);

-- Location: LCCOMB_X62_Y52_N2
\Selector21~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~46_combout\ = (\Selector21~36_combout\) # ((\DOUT[7]~reg0_q\ & (STEP(1) $ (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => \DOUT[7]~reg0_q\,
	datad => \Selector21~36_combout\,
	combout => \Selector21~46_combout\);

-- Location: LCCOMB_X61_Y51_N30
\Selector36~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector36~3_combout\ = (\Selector35~4_combout\ & ((\Selector35~5_combout\) # (\Selector35~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~5_combout\,
	datab => \Selector35~6_combout\,
	datad => \Selector35~4_combout\,
	combout => \Selector36~3_combout\);

-- Location: LCCOMB_X65_Y51_N20
\Selector18~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~22_combout\ = (STEP(0) & ((STEP(4) & (!STEP(1))) # (!STEP(4) & ((STEP(2)))))) # (!STEP(0) & (!STEP(1) & (STEP(4) $ (!STEP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(4),
	datac => STEP(1),
	datad => STEP(2),
	combout => \Selector18~22_combout\);

-- Location: LCCOMB_X65_Y51_N26
\Selector18~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~23_combout\ = (STEP(1) & ((\AOUT[2]~reg0_q\) # ((!STEP(5) & \Selector18~22_combout\)))) # (!STEP(1) & (\AOUT[2]~reg0_q\ & ((STEP(5)) # (\Selector18~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(5),
	datac => \AOUT[2]~reg0_q\,
	datad => \Selector18~22_combout\,
	combout => \Selector18~23_combout\);

-- Location: LCCOMB_X38_Y1_N26
\count_clk[0]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count_clk[0]~30_combout\ = !count_clk(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count_clk(0),
	combout => \count_clk[0]~30_combout\);

-- Location: IOIBUF_X54_Y0_N22
\RAMPRATE[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(0),
	o => \RAMPRATE[0]~input_o\);

-- Location: IOIBUF_X49_Y67_N22
\RAMPRATE[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(8),
	o => \RAMPRATE[8]~input_o\);

-- Location: IOIBUF_X15_Y67_N1
\RAMPRATE[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(1),
	o => \RAMPRATE[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\RAMPRATE[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(17),
	o => \RAMPRATE[17]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\RAMPRATE[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(18),
	o => \RAMPRATE[18]~input_o\);

-- Location: IOIBUF_X26_Y67_N8
\RAMPRATE[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(10),
	o => \RAMPRATE[10]~input_o\);

-- Location: IOIBUF_X52_Y67_N22
\RAMPRATE[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(2),
	o => \RAMPRATE[2]~input_o\);

-- Location: IOIBUF_X65_Y67_N15
\RAMPRATE[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(4),
	o => \RAMPRATE[4]~input_o\);

-- Location: IOIBUF_X81_Y21_N8
\RAMPRATE[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(5),
	o => \RAMPRATE[5]~input_o\);

-- Location: IOIBUF_X81_Y50_N1
\RAMPRATE[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(15),
	o => \RAMPRATE[15]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\RAMPRATE[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(7),
	o => \RAMPRATE[7]~input_o\);

-- Location: IOIBUF_X38_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X26_Y67_N1
\F2L[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(8),
	o => \F2L[8]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\DFWH[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(8),
	o => \DFWH[8]~input_o\);

-- Location: IOIBUF_X81_Y64_N1
\F1L[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(16),
	o => \F1L[16]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\PTW1[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(0),
	o => \PTW1[0]~input_o\);

-- Location: IOIBUF_X31_Y67_N1
\F2L[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(0),
	o => \F2L[0]~input_o\);

-- Location: IOIBUF_X81_Y6_N15
\PTW2[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(1),
	o => \PTW2[1]~input_o\);

-- Location: IOIBUF_X29_Y67_N8
\DFWL[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(17),
	o => \DFWL[17]~input_o\);

-- Location: IOIBUF_X19_Y67_N22
\F1L[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(17),
	o => \F1L[17]~input_o\);

-- Location: IOIBUF_X58_Y67_N8
\F2L[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(1),
	o => \F2L[1]~input_o\);

-- Location: IOIBUF_X40_Y67_N1
\PTW1[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(1),
	o => \PTW1[1]~input_o\);

-- Location: IOIBUF_X58_Y67_N1
\F2L[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(25),
	o => \F2L[25]~input_o\);

-- Location: IOIBUF_X81_Y53_N1
\PTW2[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(9),
	o => \PTW2[9]~input_o\);

-- Location: IOIBUF_X44_Y0_N15
\F2H[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(9),
	o => \F2H[9]~input_o\);

-- Location: IOIBUF_X56_Y67_N22
\DFWL[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(18),
	o => \DFWL[18]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\DFWH[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(10),
	o => \DFWH[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\F1L[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(10),
	o => \F1L[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N8
\TRAIANGLE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TRAIANGLE,
	o => \TRAIANGLE~input_o\);

-- Location: IOIBUF_X49_Y67_N15
\F2H[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(2),
	o => \F2H[2]~input_o\);

-- Location: IOIBUF_X33_Y0_N15
\F2L[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(26),
	o => \F2L[26]~input_o\);

-- Location: IOIBUF_X29_Y67_N22
\F2H[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(10),
	o => \F2H[10]~input_o\);

-- Location: IOIBUF_X70_Y67_N22
\F2L[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(11),
	o => \F2L[11]~input_o\);

-- Location: IOIBUF_X17_Y67_N15
\DFWH[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(11),
	o => \DFWH[11]~input_o\);

-- Location: IOIBUF_X81_Y64_N8
\F1L[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(3),
	o => \F1L[3]~input_o\);

-- Location: IOIBUF_X81_Y62_N1
\PTW1[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(3),
	o => \PTW1[3]~input_o\);

-- Location: IOIBUF_X81_Y61_N8
\F2L[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(3),
	o => \F2L[3]~input_o\);

-- Location: IOIBUF_X81_Y17_N1
\F2L[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(4),
	o => \F2L[4]~input_o\);

-- Location: IOIBUF_X81_Y8_N8
\F2L[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(20),
	o => \F2L[20]~input_o\);

-- Location: IOIBUF_X68_Y0_N1
\F1L[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(28),
	o => \F1L[28]~input_o\);

-- Location: IOIBUF_X65_Y0_N15
\F2L[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(12),
	o => \F2L[12]~input_o\);

-- Location: IOIBUF_X17_Y67_N22
\F2H[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(13),
	o => \F2H[13]~input_o\);

-- Location: IOIBUF_X81_Y6_N8
\F1L[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(21),
	o => \F1L[21]~input_o\);

-- Location: IOIBUF_X81_Y25_N8
\F2L[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(5),
	o => \F2L[5]~input_o\);

-- Location: IOIBUF_X81_Y65_N22
\F1L[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(5),
	o => \F1L[5]~input_o\);

-- Location: IOIBUF_X81_Y6_N1
\F2L[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(21),
	o => \F2L[21]~input_o\);

-- Location: IOIBUF_X31_Y67_N15
\DFWL[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(5),
	o => \DFWL[5]~input_o\);

-- Location: IOIBUF_X81_Y9_N1
\F1H[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(5),
	o => \F1H[5]~input_o\);

-- Location: IOIBUF_X81_Y3_N1
\F2L[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(13),
	o => \F2L[13]~input_o\);

-- Location: IOIBUF_X81_Y2_N1
\F1L[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(13),
	o => \F1L[13]~input_o\);

-- Location: IOIBUF_X81_Y5_N1
\F2H[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(5),
	o => \F2H[5]~input_o\);

-- Location: IOIBUF_X81_Y19_N1
\PTW2[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(5),
	o => \PTW2[5]~input_o\);

-- Location: IOIBUF_X68_Y67_N1
\DFWL[21]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(21),
	o => \DFWL[21]~input_o\);

-- Location: IOIBUF_X81_Y11_N1
\DFWL[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(13),
	o => \DFWL[13]~input_o\);

-- Location: IOIBUF_X19_Y67_N8
\DFWL[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(29),
	o => \DFWL[29]~input_o\);

-- Location: IOIBUF_X81_Y23_N8
\DFWH[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(13),
	o => \DFWH[13]~input_o\);

-- Location: IOIBUF_X81_Y59_N15
\DFWH[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(5),
	o => \DFWH[5]~input_o\);

-- Location: IOIBUF_X81_Y7_N8
\DFWL[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(30),
	o => \DFWL[30]~input_o\);

-- Location: IOIBUF_X81_Y26_N8
\DFWL[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(22),
	o => \DFWL[22]~input_o\);

-- Location: IOIBUF_X81_Y9_N8
\F1H[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(14),
	o => \F1H[14]~input_o\);

-- Location: IOIBUF_X63_Y0_N8
\F1H[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(6),
	o => \F1H[6]~input_o\);

-- Location: IOIBUF_X81_Y14_N1
\F2L[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(22),
	o => \F2L[22]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\DFWH[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(15),
	o => \DFWH[15]~input_o\);

-- Location: IOIBUF_X81_Y56_N1
\F1L[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(7),
	o => \F1L[7]~input_o\);

-- Location: IOIBUF_X81_Y16_N1
\F1H[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(7),
	o => \F1H[7]~input_o\);

-- Location: IOIBUF_X65_Y67_N8
\F2L[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(7),
	o => \F2L[7]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\F2H[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(7),
	o => \F2H[7]~input_o\);

-- Location: IOIBUF_X81_Y63_N1
\F2L[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(31),
	o => \F2L[31]~input_o\);

-- Location: IOIBUF_X81_Y4_N8
\F2L[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(23),
	o => \F2L[23]~input_o\);

-- Location: CLKCTRL_G29
\CLK~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X59_Y53_N26
\FTW1L[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1L[16]~feeder_combout\ = \F1L[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1L[16]~input_o\,
	combout => \FTW1L[16]~feeder_combout\);

-- Location: LCCOMB_X59_Y53_N10
\PTW1REG[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PTW1REG[0]~feeder_combout\ = \PTW1[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PTW1[0]~input_o\,
	combout => \PTW1REG[0]~feeder_combout\);

-- Location: LCCOMB_X58_Y53_N6
\DFWLREG[17]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DFWLREG[17]~feeder_combout\ = \DFWL[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFWL[17]~input_o\,
	combout => \DFWLREG[17]~feeder_combout\);

-- Location: LCCOMB_X59_Y53_N4
\PTW1REG[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PTW1REG[1]~feeder_combout\ = \PTW1[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PTW1[1]~input_o\,
	combout => \PTW1REG[1]~feeder_combout\);

-- Location: LCCOMB_X59_Y51_N12
\FTW2H[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2H[9]~feeder_combout\ = \F2H[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2H[9]~input_o\,
	combout => \FTW2H[9]~feeder_combout\);

-- Location: LCCOMB_X59_Y50_N12
\DFWLREG[18]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DFWLREG[18]~feeder_combout\ = \DFWL[18]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFWL[18]~input_o\,
	combout => \DFWLREG[18]~feeder_combout\);

-- Location: LCCOMB_X57_Y51_N6
\FTW2H[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2H[2]~feeder_combout\ = \F2H[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2H[2]~input_o\,
	combout => \FTW2H[2]~feeder_combout\);

-- Location: LCCOMB_X62_Y53_N20
\FTW2L[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[11]~feeder_combout\ = \F2L[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[11]~input_o\,
	combout => \FTW2L[11]~feeder_combout\);

-- Location: LCCOMB_X59_Y51_N26
\DFWHREG[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DFWHREG[11]~feeder_combout\ = \DFWH[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFWH[11]~input_o\,
	combout => \DFWHREG[11]~feeder_combout\);

-- Location: LCCOMB_X61_Y53_N12
\FTW1L[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1L[3]~feeder_combout\ = \F1L[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1L[3]~input_o\,
	combout => \FTW1L[3]~feeder_combout\);

-- Location: LCCOMB_X59_Y53_N16
\FTW2L[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[3]~feeder_combout\ = \F2L[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[3]~input_o\,
	combout => \FTW2L[3]~feeder_combout\);

-- Location: LCCOMB_X64_Y49_N20
\FTW1L[28]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1L[28]~feeder_combout\ = \F1L[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1L[28]~input_o\,
	combout => \FTW1L[28]~feeder_combout\);

-- Location: LCCOMB_X65_Y49_N30
\FTW2L[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[12]~feeder_combout\ = \F2L[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[12]~input_o\,
	combout => \FTW2L[12]~feeder_combout\);

-- Location: LCCOMB_X62_Y52_N0
\FTW2H[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2H[13]~feeder_combout\ = \F2H[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2H[13]~input_o\,
	combout => \FTW2H[13]~feeder_combout\);

-- Location: LCCOMB_X65_Y49_N22
\FTW2L[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[5]~feeder_combout\ = \F2L[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[5]~input_o\,
	combout => \FTW2L[5]~feeder_combout\);

-- Location: LCCOMB_X59_Y51_N22
\DFWLREG[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DFWLREG[5]~feeder_combout\ = \DFWL[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFWL[5]~input_o\,
	combout => \DFWLREG[5]~feeder_combout\);

-- Location: LCCOMB_X65_Y49_N24
\FTW1H[5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1H[5]~feeder_combout\ = \F1H[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1H[5]~input_o\,
	combout => \FTW1H[5]~feeder_combout\);

-- Location: LCCOMB_X65_Y49_N10
\FTW2L[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[13]~feeder_combout\ = \F2L[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[13]~input_o\,
	combout => \FTW2L[13]~feeder_combout\);

-- Location: LCCOMB_X62_Y49_N10
\DFWLREG[22]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DFWLREG[22]~feeder_combout\ = \DFWL[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFWL[22]~input_o\,
	combout => \DFWLREG[22]~feeder_combout\);

-- Location: LCCOMB_X63_Y50_N0
\FTW1H[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1H[6]~feeder_combout\ = \F1H[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1H[6]~input_o\,
	combout => \FTW1H[6]~feeder_combout\);

-- Location: LCCOMB_X63_Y50_N28
\FTW1H[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1H[7]~feeder_combout\ = \F1H[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1H[7]~input_o\,
	combout => \FTW1H[7]~feeder_combout\);

-- Location: LCCOMB_X62_Y53_N12
\FTW2L[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[7]~feeder_combout\ = \F2L[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[7]~input_o\,
	combout => \FTW2L[7]~feeder_combout\);

-- Location: IOOBUF_X56_Y67_N9
\AOUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AOUT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \AOUT[0]~output_o\);

-- Location: IOOBUF_X63_Y67_N16
\AOUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AOUT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \AOUT[1]~output_o\);

-- Location: IOOBUF_X81_Y47_N9
\AOUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AOUT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \AOUT[2]~output_o\);

-- Location: IOOBUF_X81_Y62_N9
\AOUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AOUT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \AOUT[3]~output_o\);

-- Location: IOOBUF_X81_Y55_N9
\AOUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AOUT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \AOUT[4]~output_o\);

-- Location: IOOBUF_X81_Y39_N9
\AOUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AOUT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \AOUT[5]~output_o\);

-- Location: IOOBUF_X22_Y67_N2
\DOUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[0]~reg0_q\,
	devoe => ww_devoe,
	o => \DOUT[0]~output_o\);

-- Location: IOOBUF_X44_Y67_N9
\DOUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[1]~reg0_q\,
	devoe => ww_devoe,
	o => \DOUT[1]~output_o\);

-- Location: IOOBUF_X81_Y52_N9
\DOUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[2]~reg0_q\,
	devoe => ww_devoe,
	o => \DOUT[2]~output_o\);

-- Location: IOOBUF_X19_Y67_N2
\DOUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[3]~reg0_q\,
	devoe => ww_devoe,
	o => \DOUT[3]~output_o\);

-- Location: IOOBUF_X81_Y49_N9
\DOUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[4]~reg0_q\,
	devoe => ww_devoe,
	o => \DOUT[4]~output_o\);

-- Location: IOOBUF_X70_Y67_N16
\DOUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[5]~reg0_q\,
	devoe => ww_devoe,
	o => \DOUT[5]~output_o\);

-- Location: IOOBUF_X81_Y47_N2
\DOUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[6]~reg0_q\,
	devoe => ww_devoe,
	o => \DOUT[6]~output_o\);

-- Location: IOOBUF_X81_Y46_N16
\DOUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DOUT[7]~reg0_q\,
	devoe => ww_devoe,
	o => \DOUT[7]~output_o\);

-- Location: IOOBUF_X81_Y52_N2
\READY~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \READY~reg0_q\,
	devoe => ww_devoe,
	o => \READY~output_o\);

-- Location: IOOBUF_X33_Y67_N9
\RESET~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESET~reg0_q\,
	devoe => ww_devoe,
	o => \RESET~output_o\);

-- Location: IOOBUF_X81_Y52_N16
\WRITE~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WRITE~reg0_q\,
	devoe => ww_devoe,
	o => \WRITE~output_o\);

-- Location: IOOBUF_X10_Y67_N16
\CONFIGERR~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \CONFIGERR~output_o\);

-- Location: LCCOMB_X38_Y1_N4
\count_clk[1]~10\ : cycloneiv_lcell_comb
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

-- Location: FF_X38_Y1_N5
\count_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(1));

-- Location: LCCOMB_X38_Y1_N8
\count_clk[3]~14\ : cycloneiv_lcell_comb
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

-- Location: FF_X38_Y1_N9
\count_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[3]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(3));

-- Location: LCCOMB_X38_Y1_N14
\count_clk[6]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count_clk[6]~20_combout\ = (count_clk(6) & (!\count_clk[5]~19\)) # (!count_clk(6) & ((\count_clk[5]~19\) # (GND)))
-- \count_clk[6]~21\ = CARRY((!\count_clk[5]~19\) # (!count_clk(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk(6),
	datad => VCC,
	cin => \count_clk[5]~19\,
	combout => \count_clk[6]~20_combout\,
	cout => \count_clk[6]~21\);

-- Location: FF_X38_Y1_N15
\count_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[6]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(6));

-- Location: LCCOMB_X38_Y1_N16
\count_clk[7]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \count_clk[7]~22_combout\ = (count_clk(7) & (\count_clk[6]~21\ $ (GND))) # (!count_clk(7) & (!\count_clk[6]~21\ & VCC))
-- \count_clk[7]~23\ = CARRY((count_clk(7) & !\count_clk[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count_clk(7),
	datad => VCC,
	cin => \count_clk[6]~21\,
	combout => \count_clk[7]~22_combout\,
	cout => \count_clk[7]~23\);

-- Location: FF_X38_Y1_N17
\count_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[7]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(7));

-- Location: LCCOMB_X38_Y1_N18
\count_clk[8]~24\ : cycloneiv_lcell_comb
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

-- Location: FF_X38_Y1_N19
\count_clk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[8]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(8));

-- Location: LCCOMB_X38_Y1_N20
\count_clk[9]~26\ : cycloneiv_lcell_comb
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

-- Location: FF_X38_Y1_N21
\count_clk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[9]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(9));

-- Location: LCCOMB_X38_Y1_N22
\count_clk[10]~28\ : cycloneiv_lcell_comb
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

-- Location: FF_X38_Y1_N23
\count_clk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \count_clk[10]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count_clk(10));

-- Location: CLKCTRL_G24
\count_clk[10]~clkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X62_Y51_N16
\STEP[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \STEP[0]~7_combout\ = (((\Selector36~2_combout\ & STEP(0))))
-- \STEP[0]~8\ = CARRY((\Selector36~2_combout\ & STEP(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector36~2_combout\,
	datab => STEP(0),
	datad => VCC,
	combout => \STEP[0]~7_combout\,
	cout => \STEP[0]~8\);

-- Location: LCCOMB_X62_Y51_N18
\STEP[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \STEP[1]~9_combout\ = (\Selector35~10_combout\ & (!\STEP[0]~8\)) # (!\Selector35~10_combout\ & ((\STEP[0]~8\) # (GND)))
-- \STEP[1]~10\ = CARRY((!\STEP[0]~8\) # (!\Selector35~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~10_combout\,
	datad => VCC,
	cin => \STEP[0]~8\,
	combout => \STEP[1]~9_combout\,
	cout => \STEP[1]~10\);

-- Location: LCCOMB_X62_Y51_N20
\STEP[2]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \STEP[2]~11_combout\ = (\STEP[1]~10\ & (((STEP(2)) # (\Selector34~6_combout\)))) # (!\STEP[1]~10\ & ((((STEP(2)) # (\Selector34~6_combout\)))))
-- \STEP[2]~12\ = CARRY((!\STEP[1]~10\ & ((STEP(2)) # (\Selector34~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector34~6_combout\,
	datad => VCC,
	cin => \STEP[1]~10\,
	combout => \STEP[2]~11_combout\,
	cout => \STEP[2]~12\);

-- Location: LCCOMB_X62_Y51_N22
\STEP[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \STEP[3]~13_combout\ = (\Selector33~3_combout\ & (!\STEP[2]~12\)) # (!\Selector33~3_combout\ & ((\STEP[2]~12\) # (GND)))
-- \STEP[3]~14\ = CARRY((!\STEP[2]~12\) # (!\Selector33~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Selector33~3_combout\,
	datad => VCC,
	cin => \STEP[2]~12\,
	combout => \STEP[3]~13_combout\,
	cout => \STEP[3]~14\);

-- Location: FF_X62_Y51_N23
\STEP[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \STEP[3]~13_combout\,
	sclr => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STEP(3));

-- Location: FF_X62_Y51_N19
\STEP[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \STEP[1]~9_combout\,
	sclr => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STEP(1));

-- Location: LCCOMB_X62_Y51_N12
\Selector20~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~17_combout\ = (STEP(3) & STEP(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STEP(3),
	datad => STEP(5),
	combout => \Selector20~17_combout\);

-- Location: IOIBUF_X61_Y67_N8
\MODE[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODE(0),
	o => \MODE[0]~input_o\);

-- Location: LCCOMB_X61_Y51_N20
\Selector35~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~6_combout\ = (STEP(4) & (((STEP(6)) # (!STEP(3))))) # (!STEP(4) & ((STEP(2)) # ((STEP(6) & STEP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(6),
	datac => STEP(4),
	datad => STEP(3),
	combout => \Selector35~6_combout\);

-- Location: IOIBUF_X81_Y11_N22
\MODE[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODE(1),
	o => \MODE[1]~input_o\);

-- Location: FF_X63_Y51_N25
\MODEREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \MODE[1]~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODEREG(1));

-- Location: LCCOMB_X63_Y51_N22
\Selector35~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~4_combout\ = (STEP(1) & ((MODEREG(1) & ((MODEREG(2)) # (!MODEREG(0)))) # (!MODEREG(1) & ((MODEREG(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datab => MODEREG(1),
	datac => MODEREG(0),
	datad => STEP(1),
	combout => \Selector35~4_combout\);

-- Location: LCCOMB_X61_Y51_N18
\Selector31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = ((!\Selector35~5_combout\ & !\Selector35~6_combout\)) # (!\Selector35~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~5_combout\,
	datab => \Selector35~6_combout\,
	datad => \Selector35~4_combout\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X61_Y51_N22
\Selector35~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~5_combout\ = (STEP(1) & (((STEP(5)) # (!STEP(6))))) # (!STEP(1) & ((STEP(6) $ (!STEP(5))) # (!STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(6),
	datac => STEP(5),
	datad => STEP(1),
	combout => \Selector35~5_combout\);

-- Location: LCCOMB_X63_Y51_N2
\Selector35~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~8_combout\ = ((STEP(6)) # (!STEP(3))) # (!STEP(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(1),
	datac => STEP(6),
	datad => STEP(3),
	combout => \Selector35~8_combout\);

-- Location: LCCOMB_X63_Y51_N16
\Selector35~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~9_combout\ = (STEP(4)) # ((STEP(2)) # ((\Selector35~8_combout\) # (!STEP(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(2),
	datac => STEP(5),
	datad => \Selector35~8_combout\,
	combout => \Selector35~9_combout\);

-- Location: LCCOMB_X61_Y51_N14
\Selector31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (STEP(0) & (((!\Selector35~6_combout\ & !\Selector35~5_combout\)) # (!\Selector35~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~6_combout\,
	datab => STEP(0),
	datac => \Selector35~5_combout\,
	datad => \Selector35~9_combout\,
	combout => \Selector31~1_combout\);

-- Location: LCCOMB_X63_Y51_N4
\AOUT[3]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~1_combout\ = (MODEREG(2) & (!MODEREG(1) & (!MODEREG(0) & !STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datab => MODEREG(1),
	datac => MODEREG(0),
	datad => STEP(2),
	combout => \AOUT[3]~1_combout\);

-- Location: LCCOMB_X63_Y51_N20
\AOUT[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~23_combout\ = (!MODEREG(2) & (!MODEREG(1) & (MODEREG(0) & STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datab => MODEREG(1),
	datac => MODEREG(0),
	datad => STEP(2),
	combout => \AOUT[3]~23_combout\);

-- Location: LCCOMB_X63_Y51_N30
\AOUT[3]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~24_combout\ = (STEP(3) & (!STEP(1) & ((\AOUT[3]~23_combout\)))) # (!STEP(3) & (STEP(1) & (\AOUT[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(1),
	datac => \AOUT[3]~1_combout\,
	datad => \AOUT[3]~23_combout\,
	combout => \AOUT[3]~24_combout\);

-- Location: LCCOMB_X61_Y51_N2
\Selector35~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~7_combout\ = (!\Selector35~6_combout\ & (!\Selector35~5_combout\ & ((!\AOUT[3]~24_combout\) # (!STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~6_combout\,
	datab => STEP(0),
	datac => \Selector35~5_combout\,
	datad => \AOUT[3]~24_combout\,
	combout => \Selector35~7_combout\);

-- Location: LCCOMB_X61_Y51_N12
\Selector31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector31~2_combout\ = (\Selector31~1_combout\ & (!\Selector35~7_combout\ & ((\Selector31~0_combout\) # (!\Selector35~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~11_combout\,
	datab => \Selector31~0_combout\,
	datac => \Selector31~1_combout\,
	datad => \Selector35~7_combout\,
	combout => \Selector31~2_combout\);

-- Location: LCCOMB_X59_Y51_N28
\Selector30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector30~2_combout\ = (STEP(6)) # ((!\Selector30~1_combout\ & \Selector31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(6),
	datab => \Selector30~1_combout\,
	datad => \Selector31~2_combout\,
	combout => \Selector30~2_combout\);

-- Location: LCCOMB_X62_Y51_N26
\STEP[5]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \STEP[5]~17_combout\ = (\Selector31~3_combout\ & (!\STEP[4]~16\)) # (!\Selector31~3_combout\ & ((\STEP[4]~16\) # (GND)))
-- \STEP[5]~18\ = CARRY((!\STEP[4]~16\) # (!\Selector31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Selector31~3_combout\,
	datad => VCC,
	cin => \STEP[4]~16\,
	combout => \STEP[5]~17_combout\,
	cout => \STEP[5]~18\);

-- Location: LCCOMB_X62_Y51_N28
\STEP[6]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \STEP[6]~19_combout\ = \STEP[5]~18\ $ (!\Selector30~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Selector30~2_combout\,
	cin => \STEP[5]~18\,
	combout => \STEP[6]~19_combout\);

-- Location: FF_X62_Y51_N29
\STEP[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \STEP[6]~19_combout\,
	sclr => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STEP(6));

-- Location: LCCOMB_X62_Y51_N30
\Decoder1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!STEP(6) & (!STEP(2) & !STEP(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(6),
	datac => STEP(2),
	datad => STEP(4),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X63_Y51_N18
\MODEREG[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MODEREG[0]~2_combout\ = (!STEP(3) & (!STEP(5) & \COUNTEREN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(3),
	datac => STEP(5),
	datad => \COUNTEREN~q\,
	combout => \MODEREG[0]~2_combout\);

-- Location: LCCOMB_X62_Y51_N6
\MODEREG[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \MODEREG[0]~3_combout\ = (!STEP(1) & (!STEP(0) & (\Decoder1~0_combout\ & \MODEREG[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => \Decoder1~0_combout\,
	datad => \MODEREG[0]~2_combout\,
	combout => \MODEREG[0]~3_combout\);

-- Location: FF_X63_Y51_N15
\MODEREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \MODE[0]~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODEREG(0));

-- Location: LCCOMB_X63_Y51_N14
\Selector30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (MODEREG(2)) # ((MODEREG(0)) # (MODEREG(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datac => MODEREG(0),
	datad => MODEREG(1),
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X61_Y51_N28
\Selector30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector30~1_combout\ = (\Decoder1~0_combout\ & (STEP(1) & (\Selector20~17_combout\ & \Selector30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => STEP(1),
	datac => \Selector20~17_combout\,
	datad => \Selector30~0_combout\,
	combout => \Selector30~1_combout\);

-- Location: LCCOMB_X61_Y51_N26
\Selector35~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector35~11_combout\ = (STEP(3) & (\Decoder1~0_combout\ & STEP(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(3),
	datac => \Decoder1~0_combout\,
	datad => STEP(5),
	combout => \Selector35~11_combout\);

-- Location: LCCOMB_X61_Y51_N4
\Selector33~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~4_combout\ = (((!\Selector35~5_combout\ & !\Selector35~6_combout\)) # (!\Selector35~4_combout\)) # (!\Selector35~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~5_combout\,
	datab => \Selector35~6_combout\,
	datac => \Selector35~11_combout\,
	datad => \Selector35~4_combout\,
	combout => \Selector33~4_combout\);

-- Location: LCCOMB_X61_Y51_N8
\Selector33~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~2_combout\ = (STEP(0) & (\Selector30~1_combout\ & (\Selector33~4_combout\ & !\Selector35~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \Selector30~1_combout\,
	datac => \Selector33~4_combout\,
	datad => \Selector35~7_combout\,
	combout => \Selector33~2_combout\);

-- Location: LCCOMB_X61_Y51_N6
\Selector33~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector33~3_combout\ = (\Selector33~2_combout\) # ((STEP(3) & !\Selector31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(3),
	datac => \Selector33~2_combout\,
	datad => \Selector31~2_combout\,
	combout => \Selector33~3_combout\);

-- Location: LCCOMB_X62_Y51_N24
\STEP[4]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \STEP[4]~15_combout\ = (\STEP[3]~14\ & (((STEP(4)) # (\Selector32~0_combout\)))) # (!\STEP[3]~14\ & ((((STEP(4)) # (\Selector32~0_combout\)))))
-- \STEP[4]~16\ = CARRY((!\STEP[3]~14\ & ((STEP(4)) # (\Selector32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => \Selector32~0_combout\,
	datad => VCC,
	cin => \STEP[3]~14\,
	combout => \STEP[4]~15_combout\,
	cout => \STEP[4]~16\);

-- Location: FF_X62_Y51_N25
\STEP[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \STEP[4]~15_combout\,
	sclr => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STEP(4));

-- Location: LCCOMB_X63_Y51_N24
\Selector20~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~31_combout\ = (STEP(1) & STEP(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(1),
	datad => STEP(3),
	combout => \Selector20~31_combout\);

-- Location: LCCOMB_X62_Y51_N4
\Selector34~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~4_combout\ = (!\Selector34~3_combout\ & (\Selector20~31_combout\ & (STEP(5) & !STEP(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~3_combout\,
	datab => \Selector20~31_combout\,
	datac => STEP(5),
	datad => STEP(6),
	combout => \Selector34~4_combout\);

-- Location: LCCOMB_X61_Y53_N30
\AOUT[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~4_combout\ = (!STEP(6) & STEP(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(6),
	datad => STEP(4),
	combout => \AOUT[3]~4_combout\);

-- Location: LCCOMB_X61_Y53_N16
\AOUT[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~3_combout\ = (STEP(6) & !STEP(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(6),
	datad => STEP(4),
	combout => \AOUT[3]~3_combout\);

-- Location: LCCOMB_X61_Y53_N28
\Selector34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (!STEP(5) & (STEP(1) & (!STEP(3) & \AOUT[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => STEP(1),
	datac => STEP(3),
	datad => \AOUT[3]~3_combout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X61_Y53_N6
\Selector34~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\Selector34~0_combout\) # ((\Selector20~17_combout\ & (!STEP(1) & \AOUT[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~17_combout\,
	datab => STEP(1),
	datac => \AOUT[3]~4_combout\,
	datad => \Selector34~0_combout\,
	combout => \Selector34~1_combout\);

-- Location: LCCOMB_X62_Y51_N2
\Selector34~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~5_combout\ = (\Selector34~4_combout\ & ((\Selector19~23_combout\) # ((!\Selector34~1_combout\) # (!STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~23_combout\,
	datab => STEP(0),
	datac => \Selector34~4_combout\,
	datad => \Selector34~1_combout\,
	combout => \Selector34~5_combout\);

-- Location: LCCOMB_X62_Y51_N0
\Selector34~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~6_combout\ = (STEP(0) & ((\Selector34~2_combout\) # ((!STEP(4) & \Selector34~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(4),
	datac => \Selector34~2_combout\,
	datad => \Selector34~5_combout\,
	combout => \Selector34~6_combout\);

-- Location: FF_X62_Y51_N21
\STEP[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \STEP[2]~11_combout\,
	sclr => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STEP(2));

-- Location: LCCOMB_X64_Y51_N28
\Selector19~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~23_combout\ = STEP(4) $ (STEP(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datad => STEP(2),
	combout => \Selector19~23_combout\);

-- Location: LCCOMB_X62_Y51_N8
\Selector34~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector34~2_combout\ = (\AOUT[3]~24_combout\ & (STEP(0) & (!\Selector19~23_combout\ & \Selector34~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~24_combout\,
	datab => STEP(0),
	datac => \Selector19~23_combout\,
	datad => \Selector34~1_combout\,
	combout => \Selector34~2_combout\);

-- Location: LCCOMB_X62_Y51_N14
\Selector32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (STEP(0) & ((\Selector34~2_combout\) # ((!STEP(2) & \Selector34~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(0),
	datac => \Selector34~2_combout\,
	datad => \Selector34~5_combout\,
	combout => \Selector32~0_combout\);

-- Location: FF_X62_Y51_N27
\STEP[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \STEP[5]~17_combout\,
	sclr => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STEP(5));

-- Location: LCCOMB_X64_Y52_N30
\Selector12~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~11_combout\ = (!STEP(0) & (!STEP(1) & (!STEP(2) & !STEP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(3),
	combout => \Selector12~11_combout\);

-- Location: LCCOMB_X65_Y51_N4
\Selector14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\Selector14~0_combout\ & (((\COUNTEREN~q\)))) # (!\Selector14~0_combout\ & ((\Selector12~11_combout\ & (!STEP(5))) # (!\Selector12~11_combout\ & ((\COUNTEREN~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector14~0_combout\,
	datab => STEP(5),
	datac => \COUNTEREN~q\,
	datad => \Selector12~11_combout\,
	combout => \Selector14~1_combout\);

-- Location: IOIBUF_X81_Y65_N15
\CEN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CEN,
	o => \CEN~input_o\);

-- Location: FF_X65_Y51_N5
COUNTEREN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector14~1_combout\,
	asdata => \CEN~input_o\,
	sload => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNTEREN~q\);

-- Location: FF_X62_Y51_N17
\STEP[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \STEP[0]~7_combout\,
	sclr => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => STEP(0));

-- Location: LCCOMB_X63_Y51_N6
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (MODEREG(2) & (!MODEREG(0) & !MODEREG(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datab => MODEREG(0),
	datad => MODEREG(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X59_Y52_N16
\Selector20~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~33_combout\ = (STEP(4) & (!STEP(3) & (STEP(0)))) # (!STEP(4) & (((\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(0),
	datac => \Equal1~0_combout\,
	datad => STEP(4),
	combout => \Selector20~33_combout\);

-- Location: LCCOMB_X59_Y52_N14
\Selector20~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~9_combout\ = (STEP(3) & ((\Selector20~33_combout\) # ((!STEP(4)) # (!STEP(2))))) # (!STEP(3) & (\Selector20~33_combout\ & (STEP(2) $ (!STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => \Selector20~33_combout\,
	datac => STEP(2),
	datad => STEP(4),
	combout => \Selector20~9_combout\);

-- Location: LCCOMB_X59_Y52_N24
\Selector20~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~10_combout\ = (STEP(4)) # ((!STEP(3) & (!STEP(2) & \Selector20~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(3),
	datac => STEP(2),
	datad => \Selector20~33_combout\,
	combout => \Selector20~10_combout\);

-- Location: LCCOMB_X59_Y52_N26
\Selector20~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~11_combout\ = (STEP(1) & ((STEP(0) & ((!\Selector20~10_combout\))) # (!STEP(0) & ((\Selector20~10_combout\) # (!STEP(2)))))) # (!STEP(1) & (STEP(0) & (STEP(2) & \Selector20~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => STEP(2),
	datad => \Selector20~10_combout\,
	combout => \Selector20~11_combout\);

-- Location: LCCOMB_X59_Y52_N12
\Selector20~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~12_combout\ = (STEP(2) & (((STEP(0))) # (!STEP(1)))) # (!STEP(2) & (((\Selector20~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => STEP(2),
	datad => \Selector20~10_combout\,
	combout => \Selector20~12_combout\);

-- Location: LCCOMB_X59_Y52_N8
\Selector20~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~14_combout\ = (\AOUT[0]~reg0_q\ & ((STEP(0)) # ((\Selector20~11_combout\) # (\Selector20~12_combout\)))) # (!\AOUT[0]~reg0_q\ & (\Selector20~11_combout\ & (STEP(0) $ (\Selector20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \AOUT[0]~reg0_q\,
	datac => \Selector20~11_combout\,
	datad => \Selector20~12_combout\,
	combout => \Selector20~14_combout\);

-- Location: LCCOMB_X59_Y52_N2
\Selector20~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~13_combout\ = (STEP(0) & ((\AOUT[0]~reg0_q\ & (\Selector20~11_combout\ & \Selector20~12_combout\)) # (!\AOUT[0]~reg0_q\ & ((!\Selector20~12_combout\))))) # (!STEP(0) & ((\AOUT[0]~reg0_q\ & (!\Selector20~11_combout\)) # (!\AOUT[0]~reg0_q\ & 
-- (\Selector20~11_combout\ & \Selector20~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \AOUT[0]~reg0_q\,
	datac => \Selector20~11_combout\,
	datad => \Selector20~12_combout\,
	combout => \Selector20~13_combout\);

-- Location: LCCOMB_X59_Y52_N10
\Selector20~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~15_combout\ = \Selector20~14_combout\ $ (((\Selector20~9_combout\ & \Selector20~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector20~9_combout\,
	datac => \Selector20~14_combout\,
	datad => \Selector20~13_combout\,
	combout => \Selector20~15_combout\);

-- Location: LCCOMB_X59_Y52_N20
\AOUT[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[0]~0_combout\ = (STEP(5) & (\AOUT[0]~reg0_q\)) # (!STEP(5) & ((\Selector20~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datac => \AOUT[0]~reg0_q\,
	datad => \Selector20~15_combout\,
	combout => \AOUT[0]~0_combout\);

-- Location: LCCOMB_X61_Y52_N26
\Selector20~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~35_combout\ = (STEP(3) & ((STEP(5) & (STEP(2))) # (!STEP(5) & ((STEP(1)))))) # (!STEP(3) & ((STEP(1) & ((STEP(5)) # (!STEP(2)))) # (!STEP(1) & ((!STEP(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(1),
	datac => STEP(3),
	datad => STEP(5),
	combout => \Selector20~35_combout\);

-- Location: LCCOMB_X59_Y52_N18
\Selector20~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~36_combout\ = (\AOUT[0]~reg0_q\ & ((\Selector20~35_combout\) # ((!STEP(2) & !STEP(1))))) # (!\AOUT[0]~reg0_q\ & (!STEP(2) & (\Selector20~35_combout\ & !STEP(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \AOUT[0]~reg0_q\,
	datac => \Selector20~35_combout\,
	datad => STEP(1),
	combout => \Selector20~36_combout\);

-- Location: LCCOMB_X59_Y52_N28
\Selector20~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~24_combout\ = (\AOUT[0]~reg0_q\) # ((STEP(1) & STEP(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(1),
	datac => STEP(5),
	datad => \AOUT[0]~reg0_q\,
	combout => \Selector20~24_combout\);

-- Location: LCCOMB_X61_Y52_N16
\Selector20~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~25_combout\ = (STEP(1) & ((STEP(3)) # (!STEP(5)))) # (!STEP(1) & ((STEP(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(1),
	datac => STEP(3),
	datad => STEP(5),
	combout => \Selector20~25_combout\);

-- Location: LCCOMB_X59_Y52_N30
\Selector20~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~26_combout\ = (STEP(2) & (((STEP(3))))) # (!STEP(2) & ((\AOUT[0]~reg0_q\) # (\Selector20~25_combout\ $ (STEP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \AOUT[0]~reg0_q\,
	datac => \Selector20~25_combout\,
	datad => STEP(3),
	combout => \Selector20~26_combout\);

-- Location: LCCOMB_X63_Y51_N26
\Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!MODEREG(2) & (MODEREG(0) & !MODEREG(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datab => MODEREG(0),
	datad => MODEREG(1),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X59_Y52_N0
\Selector20~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~27_combout\ = (STEP(1)) # ((\Equal4~0_combout\ & ((\AOUT[0]~reg0_q\))) # (!\Equal4~0_combout\ & (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => STEP(1),
	datac => \Equal4~0_combout\,
	datad => \AOUT[0]~reg0_q\,
	combout => \Selector20~27_combout\);

-- Location: LCCOMB_X59_Y52_N6
\Selector20~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~28_combout\ = (STEP(1) & ((STEP(5) & (\AOUT[0]~reg0_q\)) # (!STEP(5) & ((\Selector20~27_combout\))))) # (!STEP(1) & ((STEP(5) & ((\Selector20~27_combout\))) # (!STEP(5) & (\AOUT[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \AOUT[0]~reg0_q\,
	datac => STEP(5),
	datad => \Selector20~27_combout\,
	combout => \Selector20~28_combout\);

-- Location: LCCOMB_X59_Y52_N4
\Selector20~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~29_combout\ = (STEP(2) & ((\Selector20~26_combout\ & ((\Selector20~28_combout\))) # (!\Selector20~26_combout\ & (\Selector20~24_combout\)))) # (!STEP(2) & (((\Selector20~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector20~24_combout\,
	datac => \Selector20~26_combout\,
	datad => \Selector20~28_combout\,
	combout => \Selector20~29_combout\);

-- Location: LCCOMB_X61_Y52_N8
\Selector20~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~18_combout\ = ((STEP(1)) # (STEP(3) $ (!STEP(5)))) # (!STEP(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(1),
	datac => STEP(3),
	datad => STEP(5),
	combout => \Selector20~18_combout\);

-- Location: LCCOMB_X63_Y51_N0
\always1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \always1~0_combout\ = (MODEREG(0) & ((MODEREG(2)) # (!MODEREG(1)))) # (!MODEREG(0) & ((MODEREG(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datac => MODEREG(0),
	datad => MODEREG(1),
	combout => \always1~0_combout\);

-- Location: LCCOMB_X61_Y52_N0
\Selector20~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~34_combout\ = (!STEP(2) & (\always1~0_combout\ & (STEP(1) & \Selector20~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \always1~0_combout\,
	datac => STEP(1),
	datad => \Selector20~17_combout\,
	combout => \Selector20~34_combout\);

-- Location: LCCOMB_X61_Y52_N22
\Selector20~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~19_combout\ = (\Selector20~34_combout\) # ((\AOUT[0]~reg0_q\ & \Selector20~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[0]~reg0_q\,
	datac => \Selector20~18_combout\,
	datad => \Selector20~34_combout\,
	combout => \Selector20~19_combout\);

-- Location: LCCOMB_X61_Y52_N28
\Selector20~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~20_combout\ = (STEP(1) & (STEP(3) $ (STEP(5)))) # (!STEP(1) & (STEP(3) & STEP(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(1),
	datac => STEP(3),
	datad => STEP(5),
	combout => \Selector20~20_combout\);

-- Location: LCCOMB_X61_Y52_N18
\Selector20~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~21_combout\ = (STEP(2) & (STEP(1))) # (!STEP(2) & ((\Selector20~20_combout\ & (!STEP(1))) # (!\Selector20~20_combout\ & ((\AOUT[0]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(1),
	datac => \AOUT[0]~reg0_q\,
	datad => \Selector20~20_combout\,
	combout => \Selector20~21_combout\);

-- Location: LCCOMB_X61_Y52_N20
\Selector20~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~22_combout\ = (STEP(2) & (\AOUT[0]~reg0_q\ & ((!\Selector20~21_combout\) # (!\Selector20~17_combout\)))) # (!STEP(2) & (((\Selector20~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~17_combout\,
	datab => STEP(2),
	datac => \AOUT[0]~reg0_q\,
	datad => \Selector20~21_combout\,
	combout => \Selector20~22_combout\);

-- Location: LCCOMB_X61_Y52_N14
\Selector20~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~23_combout\ = (STEP(4) & (STEP(0))) # (!STEP(4) & ((STEP(0) & (\Selector20~19_combout\)) # (!STEP(0) & ((\Selector20~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(0),
	datac => \Selector20~19_combout\,
	datad => \Selector20~22_combout\,
	combout => \Selector20~23_combout\);

-- Location: LCCOMB_X59_Y52_N22
\Selector20~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~30_combout\ = (STEP(4) & ((\Selector20~23_combout\ & ((\Selector20~29_combout\))) # (!\Selector20~23_combout\ & (\Selector20~36_combout\)))) # (!STEP(4) & (((\Selector20~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => \Selector20~36_combout\,
	datac => \Selector20~29_combout\,
	datad => \Selector20~23_combout\,
	combout => \Selector20~30_combout\);

-- Location: FF_X59_Y52_N21
\AOUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \AOUT[0]~0_combout\,
	asdata => \Selector20~30_combout\,
	sload => ALT_INV_STEP(6),
	ena => \COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AOUT[0]~reg0_q\);

-- Location: LCCOMB_X62_Y54_N28
\Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (STEP(1) & ((STEP(0)) # ((STEP(6)) # (STEP(4))))) # (!STEP(1) & (STEP(0) & (!STEP(6) & STEP(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => STEP(6),
	datad => STEP(4),
	combout => \Selector19~0_combout\);

-- Location: LCCOMB_X62_Y54_N26
\Selector19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = (STEP(2) & (((STEP(1))))) # (!STEP(2) & (\AOUT[1]~reg0_q\ & (STEP(1) $ (!\Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \AOUT[1]~reg0_q\,
	datac => STEP(1),
	datad => \Selector19~0_combout\,
	combout => \Selector19~1_combout\);

-- Location: LCCOMB_X62_Y54_N22
\Selector19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~3_combout\ = (\Selector19~2_combout\ & (((\Selector19~1_combout\)))) # (!\Selector19~2_combout\ & ((STEP(2) & ((\AOUT[1]~reg0_q\))) # (!STEP(2) & (\Selector19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~2_combout\,
	datab => STEP(2),
	datac => \Selector19~1_combout\,
	datad => \AOUT[1]~reg0_q\,
	combout => \Selector19~3_combout\);

-- Location: LCCOMB_X62_Y54_N0
\Selector19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~4_combout\ = (STEP(2) & ((STEP(4) & ((STEP(6)))) # (!STEP(4) & (!STEP(0))))) # (!STEP(2) & ((STEP(6)) # (STEP(0) $ (STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(0),
	datac => STEP(6),
	datad => STEP(4),
	combout => \Selector19~4_combout\);

-- Location: LCCOMB_X62_Y54_N4
\Selector19~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~6_combout\ = (\Selector19~5_combout\ & ((STEP(1) & (\AOUT[1]~reg0_q\)) # (!STEP(1) & ((!\Selector19~4_combout\))))) # (!\Selector19~5_combout\ & (\AOUT[1]~reg0_q\ & ((\Selector19~4_combout\) # (!STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~5_combout\,
	datab => \AOUT[1]~reg0_q\,
	datac => STEP(1),
	datad => \Selector19~4_combout\,
	combout => \Selector19~6_combout\);

-- Location: LCCOMB_X62_Y54_N30
\Selector19~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~7_combout\ = (\AOUT[1]~reg0_q\) # ((STEP(2) & (STEP(6) & STEP(0))) # (!STEP(2) & (!STEP(6) & !STEP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \AOUT[1]~reg0_q\,
	datac => STEP(6),
	datad => STEP(0),
	combout => \Selector19~7_combout\);

-- Location: LCCOMB_X63_Y54_N2
\Selector19~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~8_combout\ = (STEP(6) & (STEP(0) $ (STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datac => STEP(6),
	datad => STEP(2),
	combout => \Selector19~8_combout\);

-- Location: LCCOMB_X63_Y54_N4
\Selector19~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~9_combout\ = (\AOUT[1]~reg0_q\) # ((!\AOUT[3]~1_combout\ & \Selector19~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~1_combout\,
	datab => \AOUT[1]~reg0_q\,
	datad => \Selector19~8_combout\,
	combout => \Selector19~9_combout\);

-- Location: LCCOMB_X59_Y53_N0
\AOUT[3]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~2_combout\ = (!STEP(0) & !STEP(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(0),
	datad => STEP(2),
	combout => \AOUT[3]~2_combout\);

-- Location: LCCOMB_X63_Y54_N6
\Selector19~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~10_combout\ = (STEP(6) & ((\AOUT[3]~2_combout\ & ((\Equal1~0_combout\))) # (!\AOUT[3]~2_combout\ & (\AOUT[1]~reg0_q\)))) # (!STEP(6) & (\AOUT[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(6),
	datab => \AOUT[1]~reg0_q\,
	datac => \Equal1~0_combout\,
	datad => \AOUT[3]~2_combout\,
	combout => \Selector19~10_combout\);

-- Location: LCCOMB_X63_Y54_N20
\Selector19~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~11_combout\ = (STEP(4) & (STEP(1))) # (!STEP(4) & ((STEP(1) & (\Selector19~9_combout\)) # (!STEP(1) & ((\Selector19~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(1),
	datac => \Selector19~9_combout\,
	datad => \Selector19~10_combout\,
	combout => \Selector19~11_combout\);

-- Location: LCCOMB_X63_Y54_N12
\Selector19~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~13_combout\ = (STEP(4) & ((\Selector19~11_combout\ & (\Selector19~12_combout\)) # (!\Selector19~11_combout\ & ((\Selector19~7_combout\))))) # (!STEP(4) & (((\Selector19~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~12_combout\,
	datab => \Selector19~7_combout\,
	datac => STEP(4),
	datad => \Selector19~11_combout\,
	combout => \Selector19~13_combout\);

-- Location: LCCOMB_X63_Y54_N10
\Selector19~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~14_combout\ = (STEP(3) & ((\Selector19~6_combout\) # ((STEP(5))))) # (!STEP(3) & (((!STEP(5) & \Selector19~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => \Selector19~6_combout\,
	datac => STEP(5),
	datad => \Selector19~13_combout\,
	combout => \Selector19~14_combout\);

-- Location: LCCOMB_X63_Y54_N24
\Selector19~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~21_combout\ = (STEP(5) & ((\Selector19~14_combout\ & (\Selector19~20_combout\)) # (!\Selector19~14_combout\ & ((\Selector19~3_combout\))))) # (!STEP(5) & (((\Selector19~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~20_combout\,
	datab => \Selector19~3_combout\,
	datac => STEP(5),
	datad => \Selector19~14_combout\,
	combout => \Selector19~21_combout\);

-- Location: FF_X63_Y54_N25
\AOUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector19~21_combout\,
	ena => \COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AOUT[1]~reg0_q\);

-- Location: LCCOMB_X63_Y49_N22
\Selector18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~4_combout\ = (!STEP(4) & (!STEP(2) & (STEP(1) $ (!STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(4),
	datac => STEP(0),
	datad => STEP(2),
	combout => \Selector18~4_combout\);

-- Location: LCCOMB_X63_Y49_N0
\Selector18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~3_combout\ = (!STEP(5) & !STEP(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(5),
	datad => STEP(1),
	combout => \Selector18~3_combout\);

-- Location: LCCOMB_X63_Y49_N8
\Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = (STEP(1) & ((STEP(4) & (!STEP(0) & !STEP(2))) # (!STEP(4) & (STEP(0) $ (STEP(2)))))) # (!STEP(1) & ((STEP(4) & (STEP(0) & STEP(2))) # (!STEP(4) & (!STEP(0) & !STEP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(4),
	datac => STEP(0),
	datad => STEP(2),
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X63_Y49_N18
\Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (STEP(1) & (\Equal1~0_combout\ & (!STEP(4) & !STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \Equal1~0_combout\,
	datac => STEP(4),
	datad => STEP(2),
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X63_Y49_N2
\Selector18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\AOUT[2]~reg0_q\ & ((STEP(5)) # ((\Selector18~0_combout\) # (!\Selector18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[2]~reg0_q\,
	datab => STEP(5),
	datac => \Selector18~1_combout\,
	datad => \Selector18~0_combout\,
	combout => \Selector18~2_combout\);

-- Location: LCCOMB_X64_Y49_N16
\Selector18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~5_combout\ = (\Selector18~2_combout\) # ((!\Equal1~0_combout\ & (\Selector18~4_combout\ & \Selector18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Selector18~4_combout\,
	datac => \Selector18~3_combout\,
	datad => \Selector18~2_combout\,
	combout => \Selector18~5_combout\);

-- Location: LCCOMB_X65_Y51_N0
\Selector18~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~6_combout\ = (STEP(5) & (\Selector35~4_combout\ & (STEP(1) $ (STEP(4))))) # (!STEP(5) & (!STEP(1) & (STEP(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(4),
	datac => STEP(5),
	datad => \Selector35~4_combout\,
	combout => \Selector18~6_combout\);

-- Location: LCCOMB_X65_Y51_N18
\Selector18~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~7_combout\ = (\AOUT[2]~reg0_q\) # (\Selector18~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AOUT[2]~reg0_q\,
	datad => \Selector18~6_combout\,
	combout => \Selector18~7_combout\);

-- Location: LCCOMB_X64_Y53_N18
\Selector18~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~10_combout\ = (STEP(4) & (!STEP(1) & ((!\Equal4~0_combout\) # (!STEP(5))))) # (!STEP(4) & (!STEP(5) & (STEP(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(5),
	datac => STEP(1),
	datad => \Equal4~0_combout\,
	combout => \Selector18~10_combout\);

-- Location: LCCOMB_X65_Y51_N28
\Selector18~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~11_combout\ = (STEP(5) & ((\Selector18~10_combout\ & (!\Equal1~0_combout\)) # (!\Selector18~10_combout\ & ((\AOUT[2]~reg0_q\))))) # (!STEP(5) & (((\AOUT[2]~reg0_q\) # (!\Selector18~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \Equal1~0_combout\,
	datac => \AOUT[2]~reg0_q\,
	datad => \Selector18~10_combout\,
	combout => \Selector18~11_combout\);

-- Location: LCCOMB_X65_Y51_N2
\Selector18~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~12_combout\ = (\Selector18~9_combout\ & (((\Selector18~11_combout\) # (!STEP(0))))) # (!\Selector18~9_combout\ & (\Selector18~7_combout\ & (STEP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~9_combout\,
	datab => \Selector18~7_combout\,
	datac => STEP(0),
	datad => \Selector18~11_combout\,
	combout => \Selector18~12_combout\);

-- Location: LCCOMB_X65_Y51_N6
\Selector18~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~18_combout\ = (STEP(3) & (((STEP(6)) # (\Selector18~12_combout\)))) # (!STEP(3) & (\Selector18~17_combout\ & (!STEP(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~17_combout\,
	datab => STEP(3),
	datac => STEP(6),
	datad => \Selector18~12_combout\,
	combout => \Selector18~18_combout\);

-- Location: LCCOMB_X65_Y51_N14
\Selector18~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~19_combout\ = (STEP(6) & ((\Selector18~18_combout\ & (\Selector18~23_combout\)) # (!\Selector18~18_combout\ & ((\Selector18~5_combout\))))) # (!STEP(6) & (((\Selector18~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~23_combout\,
	datab => \Selector18~5_combout\,
	datac => STEP(6),
	datad => \Selector18~18_combout\,
	combout => \Selector18~19_combout\);

-- Location: FF_X65_Y51_N15
\AOUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector18~19_combout\,
	ena => \COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AOUT[2]~reg0_q\);

-- Location: LCCOMB_X63_Y52_N2
\Selector17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = (STEP(4) & (((!STEP(3))))) # (!STEP(4) & ((STEP(2) & ((STEP(3)))) # (!STEP(2) & (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(2),
	datac => STEP(4),
	datad => STEP(3),
	combout => \Selector17~2_combout\);

-- Location: LCCOMB_X63_Y52_N8
\Selector17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = (STEP(6) & (((STEP(4))))) # (!STEP(6) & ((\Selector17~2_combout\) # ((STEP(5) & STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => STEP(6),
	datac => STEP(4),
	datad => \Selector17~2_combout\,
	combout => \Selector17~3_combout\);

-- Location: LCCOMB_X63_Y52_N16
\Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (STEP(6) & ((\Selector17~3_combout\ & ((!STEP(3)))) # (!\Selector17~3_combout\ & (STEP(1) & STEP(3))))) # (!STEP(6) & (((\Selector17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(6),
	datab => STEP(1),
	datac => \Selector17~3_combout\,
	datad => STEP(3),
	combout => \Selector17~0_combout\);

-- Location: LCCOMB_X64_Y54_N20
\AOUT[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~5_combout\ = (\AOUT[3]~4_combout\ & (STEP(5) & (!STEP(1) & STEP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~4_combout\,
	datab => STEP(5),
	datac => STEP(1),
	datad => STEP(3),
	combout => \AOUT[3]~5_combout\);

-- Location: LCCOMB_X64_Y54_N24
\Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = (\Selector17~0_combout\ & (!\AOUT[3]~5_combout\ & ((!\AOUT[3]~3_combout\) # (!\Selector20~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector20~8_combout\,
	datab => \AOUT[3]~3_combout\,
	datac => \Selector17~0_combout\,
	datad => \AOUT[3]~5_combout\,
	combout => \Selector17~1_combout\);

-- Location: LCCOMB_X62_Y53_N0
\AOUT[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~22_combout\ = (STEP(1) & ((!STEP(0)) # (!STEP(2)))) # (!STEP(1) & (STEP(2) $ (!STEP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(0),
	combout => \AOUT[3]~22_combout\);

-- Location: LCCOMB_X64_Y54_N4
\AOUT[3]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~26_combout\ = (\AOUT[3]~3_combout\ & ((STEP(3) & ((\AOUT[3]~22_combout\))) # (!STEP(3) & (\AOUT[3]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~25_combout\,
	datab => STEP(3),
	datac => \AOUT[3]~22_combout\,
	datad => \AOUT[3]~3_combout\,
	combout => \AOUT[3]~26_combout\);

-- Location: LCCOMB_X64_Y54_N2
\AOUT[3]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~27_combout\ = (STEP(5) & (STEP(1) $ (STEP(0) $ (!STEP(2))))) # (!STEP(5) & ((STEP(1) & (!STEP(0) & !STEP(2))) # (!STEP(1) & (STEP(0) & STEP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => STEP(2),
	datad => STEP(5),
	combout => \AOUT[3]~27_combout\);

-- Location: LCCOMB_X64_Y54_N30
\AOUT[3]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~29_combout\ = (\AOUT[3]~28_combout\ & (STEP(3) $ (!\AOUT[3]~27_combout\))) # (!\AOUT[3]~28_combout\ & (STEP(3) & !\AOUT[3]~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~28_combout\,
	datab => STEP(3),
	datad => \AOUT[3]~27_combout\,
	combout => \AOUT[3]~29_combout\);

-- Location: LCCOMB_X64_Y54_N8
\AOUT[3]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~30_combout\ = (\AOUT[3]~4_combout\ & ((\AOUT[3]~27_combout\ & ((\AOUT[3]~24_combout\) # (!\AOUT[3]~29_combout\))) # (!\AOUT[3]~27_combout\ & (\AOUT[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~4_combout\,
	datab => \AOUT[3]~27_combout\,
	datac => \AOUT[3]~29_combout\,
	datad => \AOUT[3]~24_combout\,
	combout => \AOUT[3]~30_combout\);

-- Location: LCCOMB_X64_Y54_N6
\AOUT[3]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~13_combout\ = (!STEP(3) & (STEP(6) & STEP(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(3),
	datac => STEP(6),
	datad => STEP(4),
	combout => \AOUT[3]~13_combout\);

-- Location: LCCOMB_X64_Y54_N28
\AOUT[3]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~14_combout\ = ((STEP(2) & (STEP(0) & !STEP(1))) # (!STEP(2) & (!STEP(0) & STEP(1)))) # (!\AOUT[3]~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(0),
	datac => STEP(1),
	datad => \AOUT[3]~13_combout\,
	combout => \AOUT[3]~14_combout\);

-- Location: LCCOMB_X63_Y53_N28
\AOUT[3]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~15_combout\ = (!STEP(1) & !STEP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STEP(1),
	datad => STEP(0),
	combout => \AOUT[3]~15_combout\);

-- Location: LCCOMB_X64_Y54_N0
\Selector20~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~32_combout\ = STEP(3) $ (STEP(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(3),
	datad => STEP(5),
	combout => \Selector20~32_combout\);

-- Location: LCCOMB_X64_Y54_N26
\AOUT[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~17_combout\ = (\AOUT[3]~15_combout\ & (((!\Selector20~32_combout\) # (!\Decoder1~0_combout\)))) # (!\AOUT[3]~15_combout\ & (!\AOUT[3]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~16_combout\,
	datab => \Decoder1~0_combout\,
	datac => \AOUT[3]~15_combout\,
	datad => \Selector20~32_combout\,
	combout => \AOUT[3]~17_combout\);

-- Location: LCCOMB_X63_Y54_N28
\AOUT[3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~8_combout\ = (!STEP(4) & (!STEP(6) & STEP(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datac => STEP(6),
	datad => STEP(2),
	combout => \AOUT[3]~8_combout\);

-- Location: LCCOMB_X63_Y54_N14
\AOUT[3]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~18_combout\ = ((\Selector20~17_combout\ & ((STEP(1)))) # (!\Selector20~17_combout\ & (STEP(0)))) # (!\AOUT[3]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => \Selector20~17_combout\,
	datad => \AOUT[3]~8_combout\,
	combout => \AOUT[3]~18_combout\);

-- Location: LCCOMB_X64_Y54_N18
\AOUT[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~20_combout\ = (\AOUT[3]~18_combout\ & (((STEP(0)) # (!\Decoder1~0_combout\)) # (!\AOUT[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~19_combout\,
	datab => \Decoder1~0_combout\,
	datac => STEP(0),
	datad => \AOUT[3]~18_combout\,
	combout => \AOUT[3]~20_combout\);

-- Location: LCCOMB_X64_Y54_N16
\AOUT[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~21_combout\ = (\AOUT[3]~12_combout\ & (\AOUT[3]~14_combout\ & (\AOUT[3]~17_combout\ & \AOUT[3]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~12_combout\,
	datab => \AOUT[3]~14_combout\,
	datac => \AOUT[3]~17_combout\,
	datad => \AOUT[3]~20_combout\,
	combout => \AOUT[3]~21_combout\);

-- Location: LCCOMB_X64_Y54_N14
\AOUT[3]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~31_combout\ = (\AOUT[3]~10_combout\ & (!\AOUT[3]~26_combout\ & (!\AOUT[3]~30_combout\ & \AOUT[3]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~10_combout\,
	datab => \AOUT[3]~26_combout\,
	datac => \AOUT[3]~30_combout\,
	datad => \AOUT[3]~21_combout\,
	combout => \AOUT[3]~31_combout\);

-- Location: FF_X64_Y54_N25
\AOUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector17~1_combout\,
	ena => \AOUT[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AOUT[3]~reg0_q\);

-- Location: LCCOMB_X58_Y49_N26
\Selector16~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~19_combout\ = (STEP(2) & ((STEP(3)) # ((!STEP(1) & STEP(0))))) # (!STEP(2) & ((STEP(0) & (STEP(3))) # (!STEP(0) & ((STEP(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(0),
	combout => \Selector16~19_combout\);

-- Location: LCCOMB_X58_Y49_N4
\Selector16~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~20_combout\ = (STEP(3) & (\AOUT[4]~reg0_q\ & ((\Selector16~19_combout\) # (STEP(5))))) # (!STEP(3) & ((\AOUT[4]~reg0_q\) # ((\Selector16~19_combout\ & !STEP(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => \AOUT[4]~reg0_q\,
	datac => \Selector16~19_combout\,
	datad => STEP(5),
	combout => \Selector16~20_combout\);

-- Location: LCCOMB_X63_Y49_N26
\Selector16~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~12_combout\ = (STEP(2) & (STEP(5) & (STEP(3) & STEP(1)))) # (!STEP(2) & ((STEP(5) & (STEP(3) $ (STEP(1)))) # (!STEP(5) & (STEP(3) & STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(5),
	datac => STEP(3),
	datad => STEP(1),
	combout => \Selector16~12_combout\);

-- Location: LCCOMB_X63_Y49_N4
\Selector16~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~13_combout\ = (STEP(0) & (STEP(3))) # (!STEP(0) & (((!\Selector16~12_combout\ & \AOUT[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(0),
	datac => \Selector16~12_combout\,
	datad => \AOUT[4]~reg0_q\,
	combout => \Selector16~13_combout\);

-- Location: LCCOMB_X63_Y49_N16
\Selector20~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector20~16_combout\ = STEP(2) $ (STEP(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datad => STEP(1),
	combout => \Selector20~16_combout\);

-- Location: LCCOMB_X63_Y49_N14
\Selector16~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~14_combout\ = (STEP(2)) # (((!\always1~0_combout\) # (!STEP(1))) # (!STEP(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(5),
	datac => STEP(1),
	datad => \always1~0_combout\,
	combout => \Selector16~14_combout\);

-- Location: LCCOMB_X63_Y49_N20
\Selector16~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~15_combout\ = (\Selector18~3_combout\ & ((\Selector20~16_combout\) # ((\Selector16~14_combout\ & \AOUT[4]~reg0_q\)))) # (!\Selector18~3_combout\ & (((\Selector16~14_combout\ & \AOUT[4]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~3_combout\,
	datab => \Selector20~16_combout\,
	datac => \Selector16~14_combout\,
	datad => \AOUT[4]~reg0_q\,
	combout => \Selector16~15_combout\);

-- Location: LCCOMB_X63_Y49_N10
\Selector16~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~16_combout\ = (STEP(0) & ((\Selector16~13_combout\ & ((\Selector16~15_combout\))) # (!\Selector16~13_combout\ & (\Selector16~11_combout\)))) # (!STEP(0) & (((\Selector16~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~11_combout\,
	datab => STEP(0),
	datac => \Selector16~13_combout\,
	datad => \Selector16~15_combout\,
	combout => \Selector16~16_combout\);

-- Location: LCCOMB_X61_Y50_N22
\Selector18~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~20_combout\ = STEP(1) $ (STEP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datad => STEP(0),
	combout => \Selector18~20_combout\);

-- Location: LCCOMB_X58_Y49_N0
\Selector16~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~8_combout\ = (STEP(1) & (!\AOUT[4]~reg0_q\)) # (!STEP(1) & ((\Equal4~0_combout\ & (!\AOUT[4]~reg0_q\)) # (!\Equal4~0_combout\ & ((\Equal1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \AOUT[4]~reg0_q\,
	datac => \Equal4~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \Selector16~8_combout\);

-- Location: LCCOMB_X58_Y49_N2
\Selector16~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~9_combout\ = (STEP(5) & ((\Selector18~20_combout\ & ((!\Selector16~8_combout\))) # (!\Selector18~20_combout\ & (\AOUT[4]~reg0_q\)))) # (!STEP(5) & (\AOUT[4]~reg0_q\ & (\Selector18~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \AOUT[4]~reg0_q\,
	datac => \Selector18~20_combout\,
	datad => \Selector16~8_combout\,
	combout => \Selector16~9_combout\);

-- Location: LCCOMB_X58_Y49_N14
\Selector16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~4_combout\ = (\AOUT[4]~reg0_q\ & ((STEP(5) & (STEP(1) $ (STEP(0)))) # (!STEP(5) & ((STEP(0)) # (!STEP(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \AOUT[4]~reg0_q\,
	datac => STEP(1),
	datad => STEP(0),
	combout => \Selector16~4_combout\);

-- Location: LCCOMB_X58_Y51_N24
\Selector16~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~5_combout\ = (\AOUT[4]~reg0_q\ & ((STEP(1) & ((STEP(0)) # (!STEP(5)))) # (!STEP(1) & ((STEP(5)) # (!STEP(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(5),
	datac => \AOUT[4]~reg0_q\,
	datad => STEP(0),
	combout => \Selector16~5_combout\);

-- Location: LCCOMB_X58_Y51_N26
\Selector16~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~6_combout\ = (\AOUT[4]~reg0_q\ & ((STEP(1) $ (!STEP(5))) # (!STEP(0)))) # (!\AOUT[4]~reg0_q\ & (!STEP(1) & (!STEP(5) & !STEP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(5),
	datac => \AOUT[4]~reg0_q\,
	datad => STEP(0),
	combout => \Selector16~6_combout\);

-- Location: LCCOMB_X58_Y51_N12
\Selector16~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~7_combout\ = (STEP(3) & ((\Selector16~5_combout\) # ((STEP(2))))) # (!STEP(3) & (((\Selector16~6_combout\ & !STEP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => \Selector16~5_combout\,
	datac => \Selector16~6_combout\,
	datad => STEP(2),
	combout => \Selector16~7_combout\);

-- Location: LCCOMB_X58_Y49_N20
\Selector16~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~10_combout\ = (STEP(2) & ((\Selector16~7_combout\ & (\Selector16~9_combout\)) # (!\Selector16~7_combout\ & ((\Selector16~4_combout\))))) # (!STEP(2) & (((\Selector16~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector16~9_combout\,
	datac => \Selector16~4_combout\,
	datad => \Selector16~7_combout\,
	combout => \Selector16~10_combout\);

-- Location: LCCOMB_X58_Y49_N6
\Selector16~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~17_combout\ = (STEP(4) & ((STEP(6)) # ((\Selector16~10_combout\)))) # (!STEP(4) & (!STEP(6) & (\Selector16~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(6),
	datac => \Selector16~16_combout\,
	datad => \Selector16~10_combout\,
	combout => \Selector16~17_combout\);

-- Location: LCCOMB_X58_Y49_N24
\Selector16~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector16~18_combout\ = (STEP(6) & ((\Selector16~17_combout\ & ((\Selector16~20_combout\))) # (!\Selector16~17_combout\ & (\Selector16~3_combout\)))) # (!STEP(6) & (((\Selector16~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector16~3_combout\,
	datab => STEP(6),
	datac => \Selector16~20_combout\,
	datad => \Selector16~17_combout\,
	combout => \Selector16~18_combout\);

-- Location: FF_X58_Y49_N25
\AOUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector16~18_combout\,
	ena => \COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AOUT[4]~reg0_q\);

-- Location: LCCOMB_X61_Y52_N2
\Selector37~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\Decoder1~0_combout\ & (!STEP(0) & !STEP(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~0_combout\,
	datab => STEP(0),
	datad => STEP(5),
	combout => \Selector37~0_combout\);

-- Location: FF_X64_Y54_N31
\AOUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \Selector37~0_combout\,
	sload => VCC,
	ena => \AOUT[3]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AOUT[5]~reg0_q\);

-- Location: LCCOMB_X58_Y53_N30
\DOUT[0]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~15_combout\ = (STEP(3) & (!STEP(4) & (STEP(5) & STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(4),
	datac => STEP(5),
	datad => STEP(2),
	combout => \DOUT[0]~15_combout\);

-- Location: IOIBUF_X47_Y0_N8
\RAMPRATE[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(16),
	o => \RAMPRATE[16]~input_o\);

-- Location: LCCOMB_X59_Y51_N20
\Selector19~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector19~22_combout\ = (STEP(4)) # (STEP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STEP(4),
	datad => STEP(0),
	combout => \Selector19~22_combout\);

-- Location: LCCOMB_X59_Y51_N24
\DOUT[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~4_combout\ = (STEP(4)) # ((!STEP(0) & STEP(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(0),
	datac => STEP(4),
	datad => STEP(3),
	combout => \DOUT[0]~4_combout\);

-- Location: IOIBUF_X33_Y67_N1
\DFWL[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(24),
	o => \DFWL[24]~input_o\);

-- Location: LCCOMB_X59_Y51_N10
\DFWLREG[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DFWLREG[0]~0_combout\ = (!MODEREG(2) & (MODEREG(1) & \MODEREG[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datab => MODEREG(1),
	datad => \MODEREG[0]~3_combout\,
	combout => \DFWLREG[0]~0_combout\);

-- Location: FF_X59_Y51_N19
\DFWLREG[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[24]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(24));

-- Location: LCCOMB_X59_Y51_N18
\Selector28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~2_combout\ = (\DOUT[0]~4_combout\ & ((DFWHREG(8)) # ((\Selector19~22_combout\)))) # (!\DOUT[0]~4_combout\ & (((DFWLREG(24) & !\Selector19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DFWHREG(8),
	datab => \DOUT[0]~4_combout\,
	datac => DFWLREG(24),
	datad => \Selector19~22_combout\,
	combout => \Selector28~2_combout\);

-- Location: LCCOMB_X58_Y51_N28
\Selector28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~3_combout\ = (\Selector19~22_combout\ & ((\Selector28~2_combout\ & ((\RAMPRATE[16]~input_o\))) # (!\Selector28~2_combout\ & (\RAMPRATE[0]~input_o\)))) # (!\Selector19~22_combout\ & (((\Selector28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMPRATE[0]~input_o\,
	datab => \RAMPRATE[16]~input_o\,
	datac => \Selector19~22_combout\,
	datad => \Selector28~2_combout\,
	combout => \Selector28~3_combout\);

-- Location: IOIBUF_X81_Y25_N1
\F1H[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(0),
	o => \F1H[0]~input_o\);

-- Location: LCCOMB_X59_Y49_N16
\FTW1H[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1H[0]~feeder_combout\ = \F1H[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1H[0]~input_o\,
	combout => \FTW1H[0]~feeder_combout\);

-- Location: LCCOMB_X61_Y51_N24
\FTW1L[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1L[0]~0_combout\ = (\MODEREG[0]~3_combout\ & (((!MODEREG(0) & !MODEREG(1))) # (!MODEREG(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datab => MODEREG(0),
	datac => MODEREG(1),
	datad => \MODEREG[0]~3_combout\,
	combout => \FTW1L[0]~0_combout\);

-- Location: FF_X59_Y49_N17
\FTW1H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1H[0]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(0));

-- Location: IOIBUF_X44_Y0_N1
\F1L[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(24),
	o => \F1L[24]~input_o\);

-- Location: FF_X59_Y49_N21
\FTW1L[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[24]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(24));

-- Location: IOIBUF_X47_Y67_N1
\CLKMUILT[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKMUILT(0),
	o => \CLKMUILT[0]~input_o\);

-- Location: FF_X59_Y49_N3
\CLKMUILTREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \CLKMUILT[0]~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLKMUILTREG(0));

-- Location: IOIBUF_X81_Y25_N15
\F1L[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(8),
	o => \F1L[8]~input_o\);

-- Location: LCCOMB_X59_Y49_N24
\FTW1L[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1L[8]~feeder_combout\ = \F1L[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1L[8]~input_o\,
	combout => \FTW1L[8]~feeder_combout\);

-- Location: FF_X59_Y49_N25
\FTW1L[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1L[8]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(8));

-- Location: LCCOMB_X59_Y49_N2
\Selector28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (\DOUT[0]~3_combout\ & (STEP(1))) # (!\DOUT[0]~3_combout\ & ((STEP(1) & ((FTW1L(8)))) # (!STEP(1) & (CLKMUILTREG(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~3_combout\,
	datab => STEP(1),
	datac => CLKMUILTREG(0),
	datad => FTW1L(8),
	combout => \Selector28~0_combout\);

-- Location: LCCOMB_X59_Y49_N20
\Selector28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~1_combout\ = (\DOUT[0]~3_combout\ & ((\Selector28~0_combout\ & (FTW1H(0))) # (!\Selector28~0_combout\ & ((FTW1L(24)))))) # (!\DOUT[0]~3_combout\ & (((\Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~3_combout\,
	datab => FTW1H(0),
	datac => FTW1L(24),
	datad => \Selector28~0_combout\,
	combout => \Selector28~1_combout\);

-- Location: LCCOMB_X58_Y53_N12
\DOUT[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~6_combout\ = (STEP(1)) # ((STEP(0)) # (STEP(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(1),
	datac => STEP(0),
	datad => STEP(3),
	combout => \DOUT[0]~6_combout\);

-- Location: LCCOMB_X57_Y53_N2
\DOUT[0]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~13_combout\ = (STEP(5)) # ((!STEP(2) & ((STEP(6)) # (\DOUT[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => STEP(6),
	datac => \DOUT[0]~6_combout\,
	datad => STEP(2),
	combout => \DOUT[0]~13_combout\);

-- Location: IOIBUF_X49_Y67_N8
\PTW2[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(0),
	o => \PTW2[0]~input_o\);

-- Location: LCCOMB_X64_Y51_N22
\Decoder0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\MODEREG[0]~2_combout\ & (\Decoder1~0_combout\ & (\Equal1~0_combout\ & \AOUT[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODEREG[0]~2_combout\,
	datab => \Decoder1~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \AOUT[3]~15_combout\,
	combout => \Decoder0~0_combout\);

-- Location: FF_X56_Y53_N15
\PTW2REG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[0]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(0));

-- Location: IOIBUF_X44_Y0_N8
\DFWL[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(8),
	o => \DFWL[8]~input_o\);

-- Location: FF_X56_Y53_N17
\DFWLREG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[8]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(8));

-- Location: LCCOMB_X56_Y53_N8
\DOUT[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~8_combout\ = (STEP(0)) # ((!STEP(3) & (!STEP(1) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(3),
	datac => STEP(1),
	datad => \Equal1~0_combout\,
	combout => \DOUT[0]~8_combout\);

-- Location: LCCOMB_X58_Y53_N10
\DOUT[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~7_combout\ = (STEP(0)) # ((STEP(1) & !STEP(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(0),
	datac => STEP(1),
	datad => STEP(3),
	combout => \DOUT[0]~7_combout\);

-- Location: IOIBUF_X24_Y67_N15
\DFWL[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(16),
	o => \DFWL[16]~input_o\);

-- Location: LCCOMB_X56_Y53_N20
\DFWLREG[16]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DFWLREG[16]~feeder_combout\ = \DFWL[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFWL[16]~input_o\,
	combout => \DFWLREG[16]~feeder_combout\);

-- Location: FF_X56_Y53_N21
\DFWLREG[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DFWLREG[16]~feeder_combout\,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(16));

-- Location: IOIBUF_X22_Y67_N8
\DFWH[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(0),
	o => \DFWH[0]~input_o\);

-- Location: FF_X56_Y53_N11
\DFWHREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[0]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(0));

-- Location: IOIBUF_X52_Y67_N15
\F1L[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(0),
	o => \F1L[0]~input_o\);

-- Location: FF_X59_Y53_N29
\FTW1L[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[0]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(0));

-- Location: LCCOMB_X59_Y53_N28
\Selector28~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~4_combout\ = (STEP(6) & (((STEP(3))))) # (!STEP(6) & ((STEP(3) & (FTW1L(16))) # (!STEP(3) & ((FTW1L(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW1L(16),
	datab => STEP(6),
	datac => FTW1L(0),
	datad => STEP(3),
	combout => \Selector28~4_combout\);

-- Location: LCCOMB_X56_Y53_N10
\Selector28~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~5_combout\ = (STEP(6) & ((\Selector28~4_combout\ & ((DFWHREG(0)))) # (!\Selector28~4_combout\ & (DFWLREG(16))))) # (!STEP(6) & (((\Selector28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(6),
	datab => DFWLREG(16),
	datac => DFWHREG(0),
	datad => \Selector28~4_combout\,
	combout => \Selector28~5_combout\);

-- Location: LCCOMB_X56_Y53_N6
\Selector28~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~6_combout\ = (\DOUT[0]~8_combout\ & (((\Selector28~5_combout\) # (!\DOUT[0]~7_combout\)))) # (!\DOUT[0]~8_combout\ & (\RAMPRATE[8]~input_o\ & (\DOUT[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMPRATE[8]~input_o\,
	datab => \DOUT[0]~8_combout\,
	datac => \DOUT[0]~7_combout\,
	datad => \Selector28~5_combout\,
	combout => \Selector28~6_combout\);

-- Location: LCCOMB_X56_Y53_N16
\Selector28~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~7_combout\ = (\DOUT[0]~6_combout\ & (((\Selector28~6_combout\)))) # (!\DOUT[0]~6_combout\ & ((\Selector28~6_combout\ & (PTW2REG(0))) # (!\Selector28~6_combout\ & ((DFWLREG(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~6_combout\,
	datab => PTW2REG(0),
	datac => DFWLREG(8),
	datad => \Selector28~6_combout\,
	combout => \Selector28~7_combout\);

-- Location: IOIBUF_X54_Y67_N22
\F2L[24]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(24),
	o => \F2L[24]~input_o\);

-- Location: LCCOMB_X58_Y51_N10
\FTW2L[24]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[24]~feeder_combout\ = \F2L[24]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[24]~input_o\,
	combout => \FTW2L[24]~feeder_combout\);

-- Location: IOIBUF_X81_Y59_N8
\MODE[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MODE(2),
	o => \MODE[2]~input_o\);

-- Location: FF_X63_Y51_N13
\MODEREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \MODE[2]~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => MODEREG(2));

-- Location: LCCOMB_X63_Y51_N12
\FTW2L[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[0]~0_combout\ = (\MODEREG[0]~3_combout\ & (MODEREG(2) $ (((MODEREG(0)) # (MODEREG(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(0),
	datab => \MODEREG[0]~3_combout\,
	datac => MODEREG(2),
	datad => MODEREG(1),
	combout => \FTW2L[0]~0_combout\);

-- Location: FF_X58_Y51_N11
\FTW2L[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[24]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(24));

-- Location: IOIBUF_X81_Y34_N22
\F2H[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(8),
	o => \F2H[8]~input_o\);

-- Location: FF_X57_Y51_N13
\FTW2H[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[8]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(8));

-- Location: IOIBUF_X42_Y0_N1
\DFWL[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(0),
	o => \DFWL[0]~input_o\);

-- Location: FF_X57_Y51_N17
\DFWLREG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[0]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(0));

-- Location: IOIBUF_X81_Y34_N15
\PTW2[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(8),
	o => \PTW2[8]~input_o\);

-- Location: LCCOMB_X61_Y49_N24
\PTW2REG[8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PTW2REG[8]~feeder_combout\ = \PTW2[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PTW2[8]~input_o\,
	combout => \PTW2REG[8]~feeder_combout\);

-- Location: FF_X61_Y49_N25
\PTW2REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \PTW2REG[8]~feeder_combout\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(8));

-- Location: IOIBUF_X33_Y0_N8
\F2H[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(0),
	o => \F2H[0]~input_o\);

-- Location: FF_X57_Y51_N11
\FTW2H[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[0]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(0));

-- Location: LCCOMB_X63_Y51_N8
\DOUT[0]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~12_combout\ = (STEP(3) & (((!\Equal4~0_combout\ & !\Equal1~0_combout\)) # (!STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(2),
	datac => \Equal4~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \DOUT[0]~12_combout\);

-- Location: LCCOMB_X57_Y51_N10
\Selector28~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~11_combout\ = (\AOUT[3]~32_combout\ & ((PTW2REG(8)) # ((\DOUT[0]~12_combout\)))) # (!\AOUT[3]~32_combout\ & (((FTW2H(0) & !\DOUT[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~32_combout\,
	datab => PTW2REG(8),
	datac => FTW2H(0),
	datad => \DOUT[0]~12_combout\,
	combout => \Selector28~11_combout\);

-- Location: LCCOMB_X57_Y51_N16
\Selector28~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~12_combout\ = (\DOUT[0]~12_combout\ & ((\Selector28~11_combout\ & ((DFWLREG(0)))) # (!\Selector28~11_combout\ & (FTW2H(8))))) # (!\DOUT[0]~12_combout\ & (((\Selector28~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~12_combout\,
	datab => FTW2H(8),
	datac => DFWLREG(0),
	datad => \Selector28~11_combout\,
	combout => \Selector28~12_combout\);

-- Location: LCCOMB_X58_Y53_N20
\DOUT[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~9_combout\ = (STEP(4) & ((STEP(2)) # ((STEP(1)) # (STEP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(1),
	datac => STEP(3),
	datad => STEP(4),
	combout => \DOUT[0]~9_combout\);

-- Location: IOIBUF_X42_Y0_N8
\F2L[16]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(16),
	o => \F2L[16]~input_o\);

-- Location: FF_X58_Y53_N5
\FTW2L[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[16]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(16));

-- Location: LCCOMB_X59_Y53_N20
\DOUT[0]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~10_combout\ = (STEP(2)) # ((STEP(3) & !STEP(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(0),
	datad => STEP(2),
	combout => \DOUT[0]~10_combout\);

-- Location: IOIBUF_X52_Y0_N15
\PTW1[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(8),
	o => \PTW1[8]~input_o\);

-- Location: FF_X59_Y53_N19
\PTW1REG[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[8]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(8));

-- Location: IOIBUF_X49_Y0_N8
\F1H[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(8),
	o => \F1H[8]~input_o\);

-- Location: FF_X59_Y53_N13
\FTW1H[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[8]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(8));

-- Location: LCCOMB_X59_Y53_N12
\Selector28~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~8_combout\ = (\DOUT[0]~10_combout\ & (((!\AOUT[3]~2_combout\)))) # (!\DOUT[0]~10_combout\ & ((\AOUT[3]~2_combout\ & ((FTW1H(8)))) # (!\AOUT[3]~2_combout\ & (FTW2L(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(0),
	datab => \DOUT[0]~10_combout\,
	datac => FTW1H(8),
	datad => \AOUT[3]~2_combout\,
	combout => \Selector28~8_combout\);

-- Location: LCCOMB_X59_Y53_N18
\Selector28~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~9_combout\ = (\DOUT[0]~10_combout\ & ((\Selector28~8_combout\ & ((PTW1REG(8)))) # (!\Selector28~8_combout\ & (PTW1REG(0))))) # (!\DOUT[0]~10_combout\ & (((\Selector28~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PTW1REG(0),
	datab => \DOUT[0]~10_combout\,
	datac => PTW1REG(8),
	datad => \Selector28~8_combout\,
	combout => \Selector28~9_combout\);

-- Location: LCCOMB_X58_Y53_N4
\Selector28~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~10_combout\ = (\DOUT[0]~11_combout\ & ((\DOUT[0]~9_combout\) # ((\Selector28~9_combout\)))) # (!\DOUT[0]~11_combout\ & (!\DOUT[0]~9_combout\ & (FTW2L(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~11_combout\,
	datab => \DOUT[0]~9_combout\,
	datac => FTW2L(16),
	datad => \Selector28~9_combout\,
	combout => \Selector28~10_combout\);

-- Location: LCCOMB_X57_Y53_N28
\Selector28~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~13_combout\ = (\DOUT[0]~9_combout\ & ((\Selector28~10_combout\ & ((\Selector28~12_combout\))) # (!\Selector28~10_combout\ & (FTW2L(24))))) # (!\DOUT[0]~9_combout\ & (((\Selector28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~9_combout\,
	datab => FTW2L(24),
	datac => \Selector28~12_combout\,
	datad => \Selector28~10_combout\,
	combout => \Selector28~13_combout\);

-- Location: LCCOMB_X57_Y53_N10
\Selector28~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~14_combout\ = (\DOUT[0]~14_combout\ & (((\Selector28~13_combout\)) # (!\DOUT[0]~13_combout\))) # (!\DOUT[0]~14_combout\ & (\DOUT[0]~13_combout\ & (\Selector28~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~14_combout\,
	datab => \DOUT[0]~13_combout\,
	datac => \Selector28~7_combout\,
	datad => \Selector28~13_combout\,
	combout => \Selector28~14_combout\);

-- Location: LCCOMB_X57_Y53_N16
\Selector28~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~15_combout\ = (\DOUT[0]~5_combout\ & ((\Selector28~14_combout\ & (\Selector28~3_combout\)) # (!\Selector28~14_combout\ & ((\Selector28~1_combout\))))) # (!\DOUT[0]~5_combout\ & (((\Selector28~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~5_combout\,
	datab => \Selector28~3_combout\,
	datac => \Selector28~1_combout\,
	datad => \Selector28~14_combout\,
	combout => \Selector28~15_combout\);

-- Location: LCCOMB_X57_Y53_N0
\Selector28~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector28~16_combout\ = (\DOUT[0]~15_combout\ & (FTW2L(8))) # (!\DOUT[0]~15_combout\ & ((\Selector28~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(8),
	datac => \DOUT[0]~15_combout\,
	datad => \Selector28~15_combout\,
	combout => \Selector28~16_combout\);

-- Location: LCCOMB_X62_Y53_N30
\DOUT[0]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~20_combout\ = (STEP(4) & (STEP(6) & (STEP(3) & \AOUT[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(6),
	datac => STEP(3),
	datad => \AOUT[3]~15_combout\,
	combout => \DOUT[0]~20_combout\);

-- Location: LCCOMB_X61_Y53_N4
\DOUT[0]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~18_combout\ = (STEP(0) & (STEP(3) & (STEP(1) $ (!STEP(2))))) # (!STEP(0) & ((STEP(1) & (STEP(2) & !STEP(3))) # (!STEP(1) & (STEP(2) $ (!STEP(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(3),
	combout => \DOUT[0]~18_combout\);

-- Location: LCCOMB_X61_Y53_N20
\DOUT[0]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~16_combout\ = (STEP(6) & (!STEP(3) & STEP(4))) # (!STEP(6) & (STEP(3) & !STEP(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(6),
	datac => STEP(3),
	datad => STEP(4),
	combout => \DOUT[0]~16_combout\);

-- Location: LCCOMB_X61_Y53_N18
\DOUT[0]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~17_combout\ = (\DOUT[0]~16_combout\ & ((STEP(0) & (!STEP(1) & STEP(2))) # (!STEP(0) & (STEP(1) & !STEP(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => STEP(2),
	datad => \DOUT[0]~16_combout\,
	combout => \DOUT[0]~17_combout\);

-- Location: LCCOMB_X61_Y53_N10
\DOUT[0]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~19_combout\ = (\DOUT[0]~17_combout\) # ((\DOUT[0]~18_combout\ & ((\AOUT[3]~4_combout\) # (\AOUT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~4_combout\,
	datab => \AOUT[3]~3_combout\,
	datac => \DOUT[0]~18_combout\,
	datad => \DOUT[0]~17_combout\,
	combout => \DOUT[0]~19_combout\);

-- Location: LCCOMB_X61_Y53_N0
\DOUT[0]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~23_combout\ = (\DOUT[0]~19_combout\) # ((!STEP(2) & ((\DOUT[0]~22_combout\) # (\DOUT[0]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~22_combout\,
	datab => STEP(2),
	datac => \DOUT[0]~20_combout\,
	datad => \DOUT[0]~19_combout\,
	combout => \DOUT[0]~23_combout\);

-- Location: LCCOMB_X62_Y53_N4
\DOUT[0]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~24_combout\ = (STEP(3) & (\AOUT[3]~23_combout\)) # (!STEP(3) & ((\AOUT[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(3),
	datac => \AOUT[3]~23_combout\,
	datad => \AOUT[3]~22_combout\,
	combout => \DOUT[0]~24_combout\);

-- Location: LCCOMB_X62_Y53_N14
\DOUT[0]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~25_combout\ = (STEP(1) & (!STEP(2) & !STEP(0))) # (!STEP(1) & (STEP(2) & STEP(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(0),
	combout => \DOUT[0]~25_combout\);

-- Location: LCCOMB_X62_Y53_N24
\DOUT[0]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~26_combout\ = (STEP(2) & (STEP(0) $ ((!STEP(1))))) # (!STEP(2) & (STEP(0) & ((!\Selector35~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => STEP(2),
	datad => \Selector35~4_combout\,
	combout => \DOUT[0]~26_combout\);

-- Location: LCCOMB_X62_Y53_N6
\DOUT[0]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~27_combout\ = (STEP(3) & ((\DOUT[0]~25_combout\ & ((\DOUT[0]~26_combout\))) # (!\DOUT[0]~25_combout\ & ((STEP(4)) # (!\DOUT[0]~26_combout\))))) # (!STEP(3) & (!STEP(4) & (\DOUT[0]~25_combout\ & !\DOUT[0]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(3),
	datac => \DOUT[0]~25_combout\,
	datad => \DOUT[0]~26_combout\,
	combout => \DOUT[0]~27_combout\);

-- Location: LCCOMB_X62_Y53_N16
\DOUT[0]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~28_combout\ = (STEP(6)) # ((STEP(4) & ((\DOUT[0]~24_combout\) # (\DOUT[0]~27_combout\))) # (!STEP(4) & ((!\DOUT[0]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(6),
	datac => \DOUT[0]~24_combout\,
	datad => \DOUT[0]~27_combout\,
	combout => \DOUT[0]~28_combout\);

-- Location: LCCOMB_X57_Y53_N14
\DOUT[0]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~29_combout\ = (\COUNTEREN~q\ & ((STEP(5) & ((!\DOUT[0]~28_combout\))) # (!STEP(5) & (\DOUT[0]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \COUNTEREN~q\,
	datac => \DOUT[0]~23_combout\,
	datad => \DOUT[0]~28_combout\,
	combout => \DOUT[0]~29_combout\);

-- Location: FF_X57_Y53_N1
\DOUT[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector28~16_combout\,
	ena => \DOUT[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DOUT[0]~reg0_q\);

-- Location: IOIBUF_X81_Y62_N15
\F2L[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(9),
	o => \F2L[9]~input_o\);

-- Location: FF_X62_Y53_N23
\FTW2L[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[9]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(9));

-- Location: IOIBUF_X44_Y67_N22
\DFWH[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(9),
	o => \DFWH[9]~input_o\);

-- Location: FF_X59_Y51_N17
\DFWHREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[9]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(9));

-- Location: IOIBUF_X52_Y67_N8
\DFWL[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(25),
	o => \DFWL[25]~input_o\);

-- Location: FF_X59_Y51_N7
\DFWLREG[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[25]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(25));

-- Location: LCCOMB_X59_Y51_N6
\Selector27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~2_combout\ = (\DOUT[0]~4_combout\ & (((\Selector19~22_combout\)))) # (!\DOUT[0]~4_combout\ & ((\Selector19~22_combout\ & (\RAMPRATE[1]~input_o\)) # (!\Selector19~22_combout\ & ((DFWLREG(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMPRATE[1]~input_o\,
	datab => \DOUT[0]~4_combout\,
	datac => DFWLREG(25),
	datad => \Selector19~22_combout\,
	combout => \Selector27~2_combout\);

-- Location: LCCOMB_X59_Y51_N16
\Selector27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~3_combout\ = (\DOUT[0]~4_combout\ & ((\Selector27~2_combout\ & (\RAMPRATE[17]~input_o\)) # (!\Selector27~2_combout\ & ((DFWHREG(9)))))) # (!\DOUT[0]~4_combout\ & (((\Selector27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMPRATE[17]~input_o\,
	datab => \DOUT[0]~4_combout\,
	datac => DFWHREG(9),
	datad => \Selector27~2_combout\,
	combout => \Selector27~3_combout\);

-- Location: IOIBUF_X56_Y67_N15
\F1H[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(1),
	o => \F1H[1]~input_o\);

-- Location: LCCOMB_X59_Y49_N28
\FTW1H[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1H[1]~feeder_combout\ = \F1H[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1H[1]~input_o\,
	combout => \FTW1H[1]~feeder_combout\);

-- Location: FF_X59_Y49_N29
\FTW1H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1H[1]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(1));

-- Location: IOIBUF_X81_Y34_N8
\F1L[25]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(25),
	o => \F1L[25]~input_o\);

-- Location: FF_X59_Y49_N23
\FTW1L[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[25]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(25));

-- Location: IOIBUF_X58_Y0_N8
\CLKMUILT[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKMUILT(1),
	o => \CLKMUILT[1]~input_o\);

-- Location: FF_X59_Y49_N11
\CLKMUILTREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \CLKMUILT[1]~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLKMUILTREG(1));

-- Location: IOIBUF_X81_Y34_N1
\F1L[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(9),
	o => \F1L[9]~input_o\);

-- Location: LCCOMB_X59_Y49_N0
\FTW1L[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1L[9]~feeder_combout\ = \F1L[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1L[9]~input_o\,
	combout => \FTW1L[9]~feeder_combout\);

-- Location: FF_X59_Y49_N1
\FTW1L[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1L[9]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(9));

-- Location: LCCOMB_X59_Y49_N10
\Selector27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = (\DOUT[0]~3_combout\ & (STEP(1))) # (!\DOUT[0]~3_combout\ & ((STEP(1) & ((FTW1L(9)))) # (!STEP(1) & (CLKMUILTREG(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~3_combout\,
	datab => STEP(1),
	datac => CLKMUILTREG(1),
	datad => FTW1L(9),
	combout => \Selector27~0_combout\);

-- Location: LCCOMB_X59_Y49_N22
\Selector27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = (\DOUT[0]~3_combout\ & ((\Selector27~0_combout\ & (FTW1H(1))) # (!\Selector27~0_combout\ & ((FTW1L(25)))))) # (!\DOUT[0]~3_combout\ & (((\Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~3_combout\,
	datab => FTW1H(1),
	datac => FTW1L(25),
	datad => \Selector27~0_combout\,
	combout => \Selector27~1_combout\);

-- Location: IOIBUF_X54_Y67_N15
\DFWL[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(9),
	o => \DFWL[9]~input_o\);

-- Location: FF_X58_Y53_N9
\DFWLREG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[9]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(9));

-- Location: IOIBUF_X42_Y67_N1
\DFWH[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(1),
	o => \DFWH[1]~input_o\);

-- Location: FF_X58_Y53_N17
\DFWHREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[1]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(1));

-- Location: IOIBUF_X81_Y64_N22
\F1L[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(1),
	o => \F1L[1]~input_o\);

-- Location: FF_X63_Y53_N25
\FTW1L[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[1]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(1));

-- Location: LCCOMB_X63_Y53_N24
\Selector27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~4_combout\ = (STEP(6) & (((STEP(3))))) # (!STEP(6) & ((STEP(3) & (FTW1L(17))) # (!STEP(3) & ((FTW1L(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW1L(17),
	datab => STEP(6),
	datac => FTW1L(1),
	datad => STEP(3),
	combout => \Selector27~4_combout\);

-- Location: LCCOMB_X58_Y53_N16
\Selector27~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~5_combout\ = (STEP(6) & ((\Selector27~4_combout\ & ((DFWHREG(1)))) # (!\Selector27~4_combout\ & (DFWLREG(17))))) # (!STEP(6) & (((\Selector27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DFWLREG(17),
	datab => STEP(6),
	datac => DFWHREG(1),
	datad => \Selector27~4_combout\,
	combout => \Selector27~5_combout\);

-- Location: IOIBUF_X52_Y67_N1
\RAMPRATE[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(9),
	o => \RAMPRATE[9]~input_o\);

-- Location: LCCOMB_X58_Y53_N18
\Selector27~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~6_combout\ = (\DOUT[0]~7_combout\ & ((\DOUT[0]~8_combout\ & (\Selector27~5_combout\)) # (!\DOUT[0]~8_combout\ & ((\RAMPRATE[9]~input_o\))))) # (!\DOUT[0]~7_combout\ & (((\DOUT[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~7_combout\,
	datab => \Selector27~5_combout\,
	datac => \RAMPRATE[9]~input_o\,
	datad => \DOUT[0]~8_combout\,
	combout => \Selector27~6_combout\);

-- Location: LCCOMB_X58_Y53_N8
\Selector27~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~7_combout\ = (\DOUT[0]~6_combout\ & (((\Selector27~6_combout\)))) # (!\DOUT[0]~6_combout\ & ((\Selector27~6_combout\ & (PTW2REG(1))) # (!\Selector27~6_combout\ & ((DFWLREG(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PTW2REG(1),
	datab => \DOUT[0]~6_combout\,
	datac => DFWLREG(9),
	datad => \Selector27~6_combout\,
	combout => \Selector27~7_combout\);

-- Location: LCCOMB_X58_Y53_N26
\DOUT[0]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[0]~11_combout\ = (STEP(3)) # ((STEP(1)) # (!STEP(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datac => STEP(1),
	datad => STEP(4),
	combout => \DOUT[0]~11_combout\);

-- Location: IOIBUF_X15_Y67_N22
\F2L[17]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(17),
	o => \F2L[17]~input_o\);

-- Location: FF_X58_Y53_N1
\FTW2L[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[17]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(17));

-- Location: LCCOMB_X58_Y53_N0
\Selector27~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~10_combout\ = (\DOUT[0]~11_combout\ & (((\DOUT[0]~9_combout\)))) # (!\DOUT[0]~11_combout\ & ((\DOUT[0]~9_combout\ & (FTW2L(25))) # (!\DOUT[0]~9_combout\ & ((FTW2L(17))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(25),
	datab => \DOUT[0]~11_combout\,
	datac => FTW2L(17),
	datad => \DOUT[0]~9_combout\,
	combout => \Selector27~10_combout\);

-- Location: IOIBUF_X44_Y67_N1
\PTW1[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(9),
	o => \PTW1[9]~input_o\);

-- Location: FF_X59_Y53_N9
\PTW1REG[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[9]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(9));

-- Location: IOIBUF_X56_Y0_N22
\F1H[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(9),
	o => \F1H[9]~input_o\);

-- Location: FF_X59_Y53_N3
\FTW1H[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[9]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(9));

-- Location: LCCOMB_X59_Y53_N2
\Selector27~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~8_combout\ = (\AOUT[3]~2_combout\ & ((\DOUT[0]~10_combout\ & (PTW1REG(1))) # (!\DOUT[0]~10_combout\ & ((FTW1H(9)))))) # (!\AOUT[3]~2_combout\ & (((\DOUT[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PTW1REG(1),
	datab => \AOUT[3]~2_combout\,
	datac => FTW1H(9),
	datad => \DOUT[0]~10_combout\,
	combout => \Selector27~8_combout\);

-- Location: LCCOMB_X59_Y53_N8
\Selector27~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~9_combout\ = (\AOUT[3]~2_combout\ & (((\Selector27~8_combout\)))) # (!\AOUT[3]~2_combout\ & ((\Selector27~8_combout\ & ((PTW1REG(9)))) # (!\Selector27~8_combout\ & (FTW2L(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(1),
	datab => \AOUT[3]~2_combout\,
	datac => PTW1REG(9),
	datad => \Selector27~8_combout\,
	combout => \Selector27~9_combout\);

-- Location: LCCOMB_X57_Y51_N12
\AOUT[3]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \AOUT[3]~32_combout\ = (STEP(3) & STEP(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(3),
	datad => STEP(2),
	combout => \AOUT[3]~32_combout\);

-- Location: IOIBUF_X81_Y61_N1
\DFWL[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(1),
	o => \DFWL[1]~input_o\);

-- Location: FF_X58_Y53_N25
\DFWLREG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[1]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(1));

-- Location: IOIBUF_X10_Y67_N8
\F2H[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(1),
	o => \F2H[1]~input_o\);

-- Location: FF_X58_Y53_N3
\FTW2H[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[1]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(1));

-- Location: LCCOMB_X58_Y53_N2
\Selector27~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~11_combout\ = (\AOUT[3]~32_combout\ & (((\DOUT[0]~12_combout\)))) # (!\AOUT[3]~32_combout\ & ((\DOUT[0]~12_combout\ & (FTW2H(9))) # (!\DOUT[0]~12_combout\ & ((FTW2H(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2H(9),
	datab => \AOUT[3]~32_combout\,
	datac => FTW2H(1),
	datad => \DOUT[0]~12_combout\,
	combout => \Selector27~11_combout\);

-- Location: LCCOMB_X58_Y53_N24
\Selector27~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~12_combout\ = (\AOUT[3]~32_combout\ & ((\Selector27~11_combout\ & ((DFWLREG(1)))) # (!\Selector27~11_combout\ & (PTW2REG(9))))) # (!\AOUT[3]~32_combout\ & (((\Selector27~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PTW2REG(9),
	datab => \AOUT[3]~32_combout\,
	datac => DFWLREG(1),
	datad => \Selector27~11_combout\,
	combout => \Selector27~12_combout\);

-- Location: LCCOMB_X58_Y53_N22
\Selector27~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~13_combout\ = (\DOUT[0]~11_combout\ & ((\Selector27~10_combout\ & ((\Selector27~12_combout\))) # (!\Selector27~10_combout\ & (\Selector27~9_combout\)))) # (!\DOUT[0]~11_combout\ & (\Selector27~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~11_combout\,
	datab => \Selector27~10_combout\,
	datac => \Selector27~9_combout\,
	datad => \Selector27~12_combout\,
	combout => \Selector27~13_combout\);

-- Location: LCCOMB_X57_Y53_N12
\Selector27~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~14_combout\ = (\DOUT[0]~14_combout\ & (((\Selector27~13_combout\)) # (!\DOUT[0]~13_combout\))) # (!\DOUT[0]~14_combout\ & (\DOUT[0]~13_combout\ & (\Selector27~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~14_combout\,
	datab => \DOUT[0]~13_combout\,
	datac => \Selector27~7_combout\,
	datad => \Selector27~13_combout\,
	combout => \Selector27~14_combout\);

-- Location: LCCOMB_X57_Y53_N18
\Selector27~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~15_combout\ = (\DOUT[0]~5_combout\ & ((\Selector27~14_combout\ & (\Selector27~3_combout\)) # (!\Selector27~14_combout\ & ((\Selector27~1_combout\))))) # (!\DOUT[0]~5_combout\ & (((\Selector27~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~5_combout\,
	datab => \Selector27~3_combout\,
	datac => \Selector27~1_combout\,
	datad => \Selector27~14_combout\,
	combout => \Selector27~15_combout\);

-- Location: LCCOMB_X57_Y53_N22
\Selector27~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector27~16_combout\ = (\DOUT[0]~15_combout\ & (FTW2L(9))) # (!\DOUT[0]~15_combout\ & ((\Selector27~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~15_combout\,
	datac => FTW2L(9),
	datad => \Selector27~15_combout\,
	combout => \Selector27~16_combout\);

-- Location: FF_X57_Y53_N23
\DOUT[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector27~16_combout\,
	ena => \DOUT[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DOUT[1]~reg0_q\);

-- Location: IOIBUF_X81_Y58_N8
\DFWH[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(2),
	o => \DFWH[2]~input_o\);

-- Location: FF_X59_Y50_N5
\DFWHREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[2]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(2));

-- Location: LCCOMB_X59_Y50_N4
\Selector26~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~14_combout\ = (STEP(0) & ((STEP(1) & (\DOUT[2]~reg0_q\)) # (!STEP(1) & ((DFWHREG(2)))))) # (!STEP(0) & (\DOUT[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \DOUT[2]~reg0_q\,
	datac => DFWHREG(2),
	datad => STEP(1),
	combout => \Selector26~14_combout\);

-- Location: IOIBUF_X31_Y67_N22
\DFWL[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(26),
	o => \DFWL[26]~input_o\);

-- Location: FF_X59_Y51_N31
\DFWLREG[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[26]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(26));

-- Location: LCCOMB_X59_Y51_N30
\Selector26~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~15_combout\ = (STEP(1) & ((STEP(0) & ((\DOUT[2]~reg0_q\))) # (!STEP(0) & (DFWLREG(26))))) # (!STEP(1) & (((\DOUT[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => DFWLREG(26),
	datad => \DOUT[2]~reg0_q\,
	combout => \Selector26~15_combout\);

-- Location: IOIBUF_X81_Y10_N8
\PTW2[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(2),
	o => \PTW2[2]~input_o\);

-- Location: FF_X59_Y50_N23
\PTW2REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[2]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(2));

-- Location: IOIBUF_X56_Y67_N1
\DFWL[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(10),
	o => \DFWL[10]~input_o\);

-- Location: FF_X59_Y50_N7
\DFWLREG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[10]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(10));

-- Location: LCCOMB_X59_Y50_N6
\Selector26~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~16_combout\ = (STEP(1) & ((DFWLREG(18)) # ((\Equal1~0_combout\)))) # (!STEP(1) & (((DFWLREG(10) & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DFWLREG(18),
	datab => STEP(1),
	datac => DFWLREG(10),
	datad => \Equal1~0_combout\,
	combout => \Selector26~16_combout\);

-- Location: LCCOMB_X59_Y50_N22
\Selector26~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~17_combout\ = (\Equal1~0_combout\ & ((\Selector26~16_combout\ & (\DOUT[2]~reg0_q\)) # (!\Selector26~16_combout\ & ((PTW2REG(2)))))) # (!\Equal1~0_combout\ & (((\Selector26~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \DOUT[2]~reg0_q\,
	datac => PTW2REG(2),
	datad => \Selector26~16_combout\,
	combout => \Selector26~17_combout\);

-- Location: LCCOMB_X57_Y50_N2
\Selector26~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~46_combout\ = (STEP(0) & ((STEP(1) & ((\Selector26~17_combout\))) # (!STEP(1) & (\DOUT[2]~reg0_q\)))) # (!STEP(0) & ((STEP(1) & (\DOUT[2]~reg0_q\)) # (!STEP(1) & ((\Selector26~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \DOUT[2]~reg0_q\,
	datac => STEP(1),
	datad => \Selector26~17_combout\,
	combout => \Selector26~46_combout\);

-- Location: LCCOMB_X57_Y50_N10
\Selector26~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~18_combout\ = (STEP(3) & (STEP(2))) # (!STEP(3) & ((STEP(2) & (\Selector26~15_combout\)) # (!STEP(2) & ((\Selector26~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(2),
	datac => \Selector26~15_combout\,
	datad => \Selector26~46_combout\,
	combout => \Selector26~18_combout\);

-- Location: LCCOMB_X57_Y50_N28
\Selector26~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~20_combout\ = (STEP(3) & ((\Selector26~18_combout\ & (\Selector26~47_combout\)) # (!\Selector26~18_combout\ & ((\Selector26~14_combout\))))) # (!STEP(3) & (((\Selector26~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~47_combout\,
	datab => \Selector26~14_combout\,
	datac => STEP(3),
	datad => \Selector26~18_combout\,
	combout => \Selector26~20_combout\);

-- Location: LCCOMB_X57_Y50_N6
\Selector26~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~21_combout\ = (STEP(4) & (\Selector26~13_combout\)) # (!STEP(4) & ((\Selector26~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~13_combout\,
	datab => STEP(4),
	datad => \Selector26~20_combout\,
	combout => \Selector26~21_combout\);

-- Location: LCCOMB_X57_Y50_N16
\DOUT[2]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[2]~0_combout\ = (STEP(5) & (\DOUT[2]~reg0_q\)) # (!STEP(5) & ((\Selector26~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datac => \DOUT[2]~reg0_q\,
	datad => \Selector26~21_combout\,
	combout => \DOUT[2]~0_combout\);

-- Location: IOIBUF_X33_Y0_N22
\F2L[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(18),
	o => \F2L[18]~input_o\);

-- Location: FF_X57_Y51_N9
\FTW2L[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[18]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(18));

-- Location: LCCOMB_X57_Y51_N8
\Selector26~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~40_combout\ = (STEP(1) & (\DOUT[2]~reg0_q\)) # (!STEP(1) & ((STEP(0) & ((FTW2L(18)))) # (!STEP(0) & (\DOUT[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~reg0_q\,
	datab => STEP(1),
	datac => FTW2L(18),
	datad => STEP(0),
	combout => \Selector26~40_combout\);

-- Location: LCCOMB_X57_Y51_N2
\Selector26~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~39_combout\ = (STEP(0) & (((\DOUT[2]~reg0_q\)))) # (!STEP(0) & ((STEP(1) & (FTW2H(10))) # (!STEP(1) & ((\DOUT[2]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2H(10),
	datab => STEP(0),
	datac => STEP(1),
	datad => \DOUT[2]~reg0_q\,
	combout => \Selector26~39_combout\);

-- Location: LCCOMB_X57_Y51_N26
\Selector26~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~41_combout\ = (STEP(2) & (STEP(3))) # (!STEP(2) & ((STEP(3) & ((\Selector26~39_combout\))) # (!STEP(3) & (\Selector26~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(3),
	datac => \Selector26~40_combout\,
	datad => \Selector26~39_combout\,
	combout => \Selector26~41_combout\);

-- Location: LCCOMB_X57_Y51_N14
\Selector18~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector18~21_combout\ = (!STEP(1) & STEP(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STEP(1),
	datad => STEP(0),
	combout => \Selector18~21_combout\);

-- Location: IOIBUF_X81_Y10_N1
\PTW2[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(10),
	o => \PTW2[10]~input_o\);

-- Location: FF_X63_Y51_N7
\PTW2REG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[10]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(10));

-- Location: IOIBUF_X49_Y0_N22
\DFWL[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(2),
	o => \DFWL[2]~input_o\);

-- Location: FF_X57_Y51_N29
\DFWLREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[2]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(2));

-- Location: LCCOMB_X57_Y51_N28
\Selector26~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~42_combout\ = (\Equal1~0_combout\ & (PTW2REG(10))) # (!\Equal1~0_combout\ & (((DFWLREG(2) & !\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => PTW2REG(10),
	datac => DFWLREG(2),
	datad => \Equal4~0_combout\,
	combout => \Selector26~42_combout\);

-- Location: LCCOMB_X57_Y51_N20
\Selector26~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~43_combout\ = (\Selector18~21_combout\ & ((\Selector26~42_combout\) # ((\DOUT[2]~reg0_q\ & \Equal4~0_combout\)))) # (!\Selector18~21_combout\ & (\DOUT[2]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~reg0_q\,
	datab => \Equal4~0_combout\,
	datac => \Selector18~21_combout\,
	datad => \Selector26~42_combout\,
	combout => \Selector26~43_combout\);

-- Location: LCCOMB_X57_Y51_N22
\Selector26~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~44_combout\ = (STEP(2) & ((\Selector26~41_combout\ & ((\Selector26~43_combout\))) # (!\Selector26~41_combout\ & (\Selector26~50_combout\)))) # (!STEP(2) & (((\Selector26~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~50_combout\,
	datab => STEP(2),
	datac => \Selector26~41_combout\,
	datad => \Selector26~43_combout\,
	combout => \Selector26~44_combout\);

-- Location: IOIBUF_X81_Y56_N8
\CLKMUILT[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKMUILT(2),
	o => \CLKMUILT[2]~input_o\);

-- Location: FF_X58_Y52_N25
\CLKMUILTREG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \CLKMUILT[2]~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLKMUILTREG(2));

-- Location: LCCOMB_X63_Y52_N18
\Selector26~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~35_combout\ = (STEP(3) & ((STEP(0) & (STEP(2) & !STEP(1))) # (!STEP(0) & (!STEP(2) & STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(2),
	datac => STEP(1),
	datad => STEP(3),
	combout => \Selector26~35_combout\);

-- Location: LCCOMB_X58_Y52_N24
\Selector26~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~36_combout\ = (\Selector26~35_combout\ & (STEP(2) & ((CLKMUILTREG(2))))) # (!\Selector26~35_combout\ & (((\DOUT[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \DOUT[2]~reg0_q\,
	datac => CLKMUILTREG(2),
	datad => \Selector26~35_combout\,
	combout => \Selector26~36_combout\);

-- Location: IOIBUF_X44_Y0_N22
\F1H[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(2),
	o => \F1H[2]~input_o\);

-- Location: LCCOMB_X58_Y50_N2
\FTW1H[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1H[2]~feeder_combout\ = \F1H[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1H[2]~input_o\,
	combout => \FTW1H[2]~feeder_combout\);

-- Location: FF_X58_Y50_N3
\FTW1H[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1H[2]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(2));

-- Location: IOIBUF_X29_Y67_N1
\F1L[26]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(26),
	o => \F1L[26]~input_o\);

-- Location: FF_X58_Y50_N5
\FTW1L[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[26]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(26));

-- Location: LCCOMB_X58_Y50_N4
\Selector26~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~33_combout\ = (STEP(0) & (FTW1H(2) & ((STEP(1))))) # (!STEP(0) & (((FTW1L(26) & !STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => FTW1H(2),
	datac => FTW1L(26),
	datad => STEP(1),
	combout => \Selector26~33_combout\);

-- Location: LCCOMB_X58_Y50_N30
\Selector26~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~49_combout\ = (\Selector26~33_combout\) # ((\DOUT[2]~reg0_q\ & (STEP(1) $ (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~reg0_q\,
	datab => \Selector26~33_combout\,
	datac => STEP(1),
	datad => STEP(0),
	combout => \Selector26~49_combout\);

-- Location: IOIBUF_X54_Y0_N15
\F1L[18]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(18),
	o => \F1L[18]~input_o\);

-- Location: FF_X58_Y50_N15
\FTW1L[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[18]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(18));

-- Location: LCCOMB_X58_Y50_N14
\Selector26~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~30_combout\ = (STEP(1) & (\DOUT[2]~reg0_q\)) # (!STEP(1) & ((STEP(0) & ((FTW1L(18)))) # (!STEP(0) & (\DOUT[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \DOUT[2]~reg0_q\,
	datac => FTW1L(18),
	datad => STEP(0),
	combout => \Selector26~30_combout\);

-- Location: LCCOMB_X58_Y50_N18
\TRAIANGLEREG~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \TRAIANGLEREG~0_combout\ = (MODEREG(0) & (((\TRAIANGLEREG~q\)))) # (!MODEREG(0) & ((\DFWLREG[0]~0_combout\ & (\TRAIANGLE~input_o\)) # (!\DFWLREG[0]~0_combout\ & ((\TRAIANGLEREG~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TRAIANGLE~input_o\,
	datab => MODEREG(0),
	datac => \TRAIANGLEREG~q\,
	datad => \DFWLREG[0]~0_combout\,
	combout => \TRAIANGLEREG~0_combout\);

-- Location: FF_X58_Y50_N19
TRAIANGLEREG : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \TRAIANGLEREG~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TRAIANGLEREG~q\);

-- Location: IOIBUF_X24_Y67_N22
\F1L[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(2),
	o => \F1L[2]~input_o\);

-- Location: FF_X58_Y50_N21
\FTW1L[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[2]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(2));

-- Location: LCCOMB_X58_Y50_N20
\Selector26~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~31_combout\ = (STEP(1) & (((FTW1L(2) & STEP(0))))) # (!STEP(1) & (\TRAIANGLEREG~q\ & ((!STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \TRAIANGLEREG~q\,
	datac => FTW1L(2),
	datad => STEP(0),
	combout => \Selector26~31_combout\);

-- Location: LCCOMB_X58_Y50_N16
\Selector26~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~48_combout\ = (\Selector26~31_combout\) # ((\DOUT[2]~reg0_q\ & (STEP(1) $ (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => \DOUT[2]~reg0_q\,
	datad => \Selector26~31_combout\,
	combout => \Selector26~48_combout\);

-- Location: LCCOMB_X58_Y50_N28
\Selector26~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~32_combout\ = (STEP(3) & ((STEP(2)) # ((\Selector26~30_combout\)))) # (!STEP(3) & (!STEP(2) & ((\Selector26~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(2),
	datac => \Selector26~30_combout\,
	datad => \Selector26~48_combout\,
	combout => \Selector26~32_combout\);

-- Location: LCCOMB_X58_Y50_N22
\Selector26~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~34_combout\ = (STEP(2) & ((\Selector26~32_combout\ & ((\Selector26~49_combout\))) # (!\Selector26~32_combout\ & (\Selector26~29_combout\)))) # (!STEP(2) & (((\Selector26~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector26~29_combout\,
	datab => STEP(2),
	datac => \Selector26~49_combout\,
	datad => \Selector26~32_combout\,
	combout => \Selector26~34_combout\);

-- Location: LCCOMB_X57_Y50_N30
\Selector26~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~37_combout\ = (STEP(5) & (STEP(4))) # (!STEP(5) & ((STEP(4) & ((\Selector26~34_combout\))) # (!STEP(4) & (\Selector26~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => STEP(4),
	datac => \Selector26~36_combout\,
	datad => \Selector26~34_combout\,
	combout => \Selector26~37_combout\);

-- Location: IOIBUF_X81_Y39_N1
\F2L[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(10),
	o => \F2L[10]~input_o\);

-- Location: FF_X58_Y51_N1
\FTW2L[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[10]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(10));

-- Location: LCCOMB_X58_Y51_N0
\Selector26~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~27_combout\ = (STEP(1) & ((STEP(0) & ((\DOUT[2]~reg0_q\))) # (!STEP(0) & (FTW2L(10))))) # (!STEP(1) & (((\DOUT[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => FTW2L(10),
	datad => \DOUT[2]~reg0_q\,
	combout => \Selector26~27_combout\);

-- Location: IOIBUF_X49_Y0_N15
\PTW1[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(10),
	o => \PTW1[10]~input_o\);

-- Location: FF_X58_Y50_N9
\PTW1REG[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[10]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(10));

-- Location: LCCOMB_X58_Y50_N8
\Selector26~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~22_combout\ = (STEP(1) & (\DOUT[2]~reg0_q\)) # (!STEP(1) & ((STEP(0) & ((PTW1REG(10)))) # (!STEP(0) & (\DOUT[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \DOUT[2]~reg0_q\,
	datac => PTW1REG(10),
	datad => STEP(0),
	combout => \Selector26~22_combout\);

-- Location: IOIBUF_X47_Y67_N8
\F1H[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(10),
	o => \F1H[10]~input_o\);

-- Location: FF_X58_Y50_N11
\FTW1H[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[10]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(10));

-- Location: LCCOMB_X58_Y50_N10
\Selector26~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~25_combout\ = (STEP(0) & (\DOUT[2]~reg0_q\)) # (!STEP(0) & ((STEP(1) & ((FTW1H(10)))) # (!STEP(1) & (\DOUT[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[2]~reg0_q\,
	datab => STEP(0),
	datac => FTW1H(10),
	datad => STEP(1),
	combout => \Selector26~25_combout\);

-- Location: LCCOMB_X62_Y50_N10
\Selector22~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~12_combout\ = (STEP(0) & ((!\always1~0_combout\) # (!STEP(1)))) # (!STEP(0) & (STEP(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datac => STEP(1),
	datad => \always1~0_combout\,
	combout => \Selector22~12_combout\);

-- Location: IOIBUF_X29_Y67_N15
\F2L[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(2),
	o => \F2L[2]~input_o\);

-- Location: LCCOMB_X58_Y51_N8
\FTW2L[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[2]~feeder_combout\ = \F2L[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[2]~input_o\,
	combout => \FTW2L[2]~feeder_combout\);

-- Location: FF_X58_Y51_N9
\FTW2L[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[2]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(2));

-- Location: IOIBUF_X54_Y67_N8
\PTW1[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(2),
	o => \PTW1[2]~input_o\);

-- Location: FF_X58_Y51_N23
\PTW1REG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[2]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(2));

-- Location: LCCOMB_X58_Y51_N22
\Selector26~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~23_combout\ = (STEP(1) & (FTW2L(2) & ((\Selector35~4_combout\)))) # (!STEP(1) & ((PTW1REG(2)) # ((FTW2L(2) & \Selector35~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => FTW2L(2),
	datac => PTW1REG(2),
	datad => \Selector35~4_combout\,
	combout => \Selector26~23_combout\);

-- Location: LCCOMB_X57_Y50_N24
\Selector26~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~24_combout\ = (\Selector18~20_combout\ & (\DOUT[2]~reg0_q\ & (\Selector22~12_combout\))) # (!\Selector18~20_combout\ & ((\Selector26~23_combout\) # ((\DOUT[2]~reg0_q\ & \Selector22~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~20_combout\,
	datab => \DOUT[2]~reg0_q\,
	datac => \Selector22~12_combout\,
	datad => \Selector26~23_combout\,
	combout => \Selector26~24_combout\);

-- Location: LCCOMB_X57_Y50_N18
\Selector26~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~26_combout\ = (STEP(3) & ((STEP(2)) # ((\Selector26~24_combout\)))) # (!STEP(3) & (!STEP(2) & (\Selector26~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(2),
	datac => \Selector26~25_combout\,
	datad => \Selector26~24_combout\,
	combout => \Selector26~26_combout\);

-- Location: LCCOMB_X57_Y50_N20
\Selector26~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~28_combout\ = (STEP(2) & ((\Selector26~26_combout\ & (\Selector26~27_combout\)) # (!\Selector26~26_combout\ & ((\Selector26~22_combout\))))) # (!STEP(2) & (((\Selector26~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector26~27_combout\,
	datac => \Selector26~22_combout\,
	datad => \Selector26~26_combout\,
	combout => \Selector26~28_combout\);

-- Location: LCCOMB_X57_Y50_N4
\Selector26~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector26~45_combout\ = (STEP(5) & ((\Selector26~37_combout\ & (\Selector26~44_combout\)) # (!\Selector26~37_combout\ & ((\Selector26~28_combout\))))) # (!STEP(5) & (((\Selector26~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \Selector26~44_combout\,
	datac => \Selector26~37_combout\,
	datad => \Selector26~28_combout\,
	combout => \Selector26~45_combout\);

-- Location: FF_X57_Y50_N17
\DOUT[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DOUT[2]~0_combout\,
	asdata => \Selector26~45_combout\,
	sload => ALT_INV_STEP(6),
	ena => \COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DOUT[2]~reg0_q\);

-- Location: IOIBUF_X15_Y67_N8
\RAMPRATE[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(19),
	o => \RAMPRATE[19]~input_o\);

-- Location: IOIBUF_X81_Y12_N1
\RAMPRATE[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(3),
	o => \RAMPRATE[3]~input_o\);

-- Location: IOIBUF_X58_Y67_N22
\DFWL[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(27),
	o => \DFWL[27]~input_o\);

-- Location: FF_X59_Y51_N5
\DFWLREG[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[27]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(27));

-- Location: LCCOMB_X59_Y51_N4
\Selector25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\DOUT[0]~4_combout\ & ((DFWHREG(11)) # ((\Selector19~22_combout\)))) # (!\DOUT[0]~4_combout\ & (((DFWLREG(27) & !\Selector19~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DFWHREG(11),
	datab => \DOUT[0]~4_combout\,
	datac => DFWLREG(27),
	datad => \Selector19~22_combout\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X58_Y51_N4
\Selector25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (\Selector19~22_combout\ & ((\Selector25~2_combout\ & (\RAMPRATE[19]~input_o\)) # (!\Selector25~2_combout\ & ((\RAMPRATE[3]~input_o\))))) # (!\Selector19~22_combout\ & (((\Selector25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector19~22_combout\,
	datab => \RAMPRATE[19]~input_o\,
	datac => \RAMPRATE[3]~input_o\,
	datad => \Selector25~2_combout\,
	combout => \Selector25~3_combout\);

-- Location: IOIBUF_X58_Y67_N15
\F1H[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(3),
	o => \F1H[3]~input_o\);

-- Location: FF_X59_Y49_N5
\FTW1H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[3]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(3));

-- Location: IOIBUF_X31_Y67_N8
\F1L[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(27),
	o => \F1L[27]~input_o\);

-- Location: FF_X59_Y49_N7
\FTW1L[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[27]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(27));

-- Location: IOIBUF_X56_Y0_N1
\CLKMUILT[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKMUILT(3),
	o => \CLKMUILT[3]~input_o\);

-- Location: FF_X59_Y49_N19
\CLKMUILTREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \CLKMUILT[3]~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLKMUILTREG(3));

-- Location: IOIBUF_X19_Y67_N15
\F1L[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(11),
	o => \F1L[11]~input_o\);

-- Location: LCCOMB_X59_Y49_N12
\FTW1L[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW1L[11]~feeder_combout\ = \F1L[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F1L[11]~input_o\,
	combout => \FTW1L[11]~feeder_combout\);

-- Location: FF_X59_Y49_N13
\FTW1L[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW1L[11]~feeder_combout\,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(11));

-- Location: LCCOMB_X59_Y49_N18
\Selector25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (\DOUT[0]~3_combout\ & (STEP(1))) # (!\DOUT[0]~3_combout\ & ((STEP(1) & ((FTW1L(11)))) # (!STEP(1) & (CLKMUILTREG(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~3_combout\,
	datab => STEP(1),
	datac => CLKMUILTREG(3),
	datad => FTW1L(11),
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X59_Y49_N6
\Selector25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (\DOUT[0]~3_combout\ & ((\Selector25~0_combout\ & (FTW1H(3))) # (!\Selector25~0_combout\ & ((FTW1L(27)))))) # (!\DOUT[0]~3_combout\ & (((\Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~3_combout\,
	datab => FTW1H(3),
	datac => FTW1L(27),
	datad => \Selector25~0_combout\,
	combout => \Selector25~1_combout\);

-- Location: IOIBUF_X26_Y67_N22
\PTW2[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(3),
	o => \PTW2[3]~input_o\);

-- Location: LCCOMB_X56_Y53_N2
\PTW2REG[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PTW2REG[3]~feeder_combout\ = \PTW2[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PTW2[3]~input_o\,
	combout => \PTW2REG[3]~feeder_combout\);

-- Location: FF_X56_Y53_N3
\PTW2REG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \PTW2REG[3]~feeder_combout\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(3));

-- Location: IOIBUF_X42_Y67_N8
\DFWL[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(11),
	o => \DFWL[11]~input_o\);

-- Location: FF_X56_Y53_N1
\DFWLREG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[11]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(11));

-- Location: IOIBUF_X24_Y67_N1
\RAMPRATE[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(11),
	o => \RAMPRATE[11]~input_o\);

-- Location: IOIBUF_X26_Y67_N15
\DFWL[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(19),
	o => \DFWL[19]~input_o\);

-- Location: FF_X56_Y53_N25
\DFWLREG[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[19]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(19));

-- Location: IOIBUF_X24_Y67_N8
\DFWH[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(3),
	o => \DFWH[3]~input_o\);

-- Location: FF_X56_Y53_N19
\DFWHREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[3]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(3));

-- Location: IOIBUF_X42_Y67_N15
\F1L[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(19),
	o => \F1L[19]~input_o\);

-- Location: FF_X61_Y53_N15
\FTW1L[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[19]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(19));

-- Location: LCCOMB_X61_Y53_N2
\Selector25~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~4_combout\ = (STEP(3) & (((FTW1L(19)) # (STEP(6))))) # (!STEP(3) & (FTW1L(3) & ((!STEP(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW1L(3),
	datab => FTW1L(19),
	datac => STEP(3),
	datad => STEP(6),
	combout => \Selector25~4_combout\);

-- Location: LCCOMB_X56_Y53_N18
\Selector25~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~5_combout\ = (STEP(6) & ((\Selector25~4_combout\ & ((DFWHREG(3)))) # (!\Selector25~4_combout\ & (DFWLREG(19))))) # (!STEP(6) & (((\Selector25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(6),
	datab => DFWLREG(19),
	datac => DFWHREG(3),
	datad => \Selector25~4_combout\,
	combout => \Selector25~5_combout\);

-- Location: LCCOMB_X56_Y53_N28
\Selector25~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~6_combout\ = (\DOUT[0]~7_combout\ & ((\DOUT[0]~8_combout\ & ((\Selector25~5_combout\))) # (!\DOUT[0]~8_combout\ & (\RAMPRATE[11]~input_o\)))) # (!\DOUT[0]~7_combout\ & (((\DOUT[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~7_combout\,
	datab => \RAMPRATE[11]~input_o\,
	datac => \DOUT[0]~8_combout\,
	datad => \Selector25~5_combout\,
	combout => \Selector25~6_combout\);

-- Location: LCCOMB_X56_Y53_N0
\Selector25~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~7_combout\ = (\DOUT[0]~6_combout\ & (((\Selector25~6_combout\)))) # (!\DOUT[0]~6_combout\ & ((\Selector25~6_combout\ & (PTW2REG(3))) # (!\Selector25~6_combout\ & ((DFWLREG(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~6_combout\,
	datab => PTW2REG(3),
	datac => DFWLREG(11),
	datad => \Selector25~6_combout\,
	combout => \Selector25~7_combout\);

-- Location: IOIBUF_X81_Y61_N15
\F2L[27]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(27),
	o => \F2L[27]~input_o\);

-- Location: LCCOMB_X62_Y53_N26
\FTW2L[27]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[27]~feeder_combout\ = \F2L[27]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[27]~input_o\,
	combout => \FTW2L[27]~feeder_combout\);

-- Location: FF_X62_Y53_N27
\FTW2L[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[27]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(27));

-- Location: IOIBUF_X40_Y0_N15
\F2H[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(11),
	o => \F2H[11]~input_o\);

-- Location: FF_X58_Y51_N31
\FTW2H[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[11]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(11));

-- Location: IOIBUF_X81_Y59_N1
\DFWL[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(3),
	o => \DFWL[3]~input_o\);

-- Location: FF_X57_Y51_N19
\DFWLREG[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[3]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(3));

-- Location: IOIBUF_X81_Y55_N1
\PTW2[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(11),
	o => \PTW2[11]~input_o\);

-- Location: FF_X63_Y51_N27
\PTW2REG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[11]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(11));

-- Location: IOIBUF_X49_Y67_N1
\F2H[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(3),
	o => \F2H[3]~input_o\);

-- Location: FF_X57_Y51_N1
\FTW2H[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[3]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(3));

-- Location: LCCOMB_X57_Y51_N0
\Selector25~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~11_combout\ = (\AOUT[3]~32_combout\ & ((PTW2REG(11)) # ((\DOUT[0]~12_combout\)))) # (!\AOUT[3]~32_combout\ & (((FTW2H(3) & !\DOUT[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~32_combout\,
	datab => PTW2REG(11),
	datac => FTW2H(3),
	datad => \DOUT[0]~12_combout\,
	combout => \Selector25~11_combout\);

-- Location: LCCOMB_X57_Y51_N18
\Selector25~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~12_combout\ = (\DOUT[0]~12_combout\ & ((\Selector25~11_combout\ & ((DFWLREG(3)))) # (!\Selector25~11_combout\ & (FTW2H(11))))) # (!\DOUT[0]~12_combout\ & (((\Selector25~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~12_combout\,
	datab => FTW2H(11),
	datac => DFWLREG(3),
	datad => \Selector25~11_combout\,
	combout => \Selector25~12_combout\);

-- Location: IOIBUF_X54_Y67_N1
\F2L[19]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(19),
	o => \F2L[19]~input_o\);

-- Location: FF_X58_Y53_N29
\FTW2L[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[19]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(19));

-- Location: IOIBUF_X52_Y0_N8
\PTW1[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(11),
	o => \PTW1[11]~input_o\);

-- Location: FF_X59_Y53_N25
\PTW1REG[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[11]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(11));

-- Location: IOIBUF_X44_Y67_N15
\F1H[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(11),
	o => \F1H[11]~input_o\);

-- Location: FF_X59_Y53_N7
\FTW1H[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[11]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(11));

-- Location: LCCOMB_X59_Y53_N6
\Selector25~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~8_combout\ = (\DOUT[0]~10_combout\ & (((!\AOUT[3]~2_combout\)))) # (!\DOUT[0]~10_combout\ & ((\AOUT[3]~2_combout\ & ((FTW1H(11)))) # (!\AOUT[3]~2_combout\ & (FTW2L(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(3),
	datab => \DOUT[0]~10_combout\,
	datac => FTW1H(11),
	datad => \AOUT[3]~2_combout\,
	combout => \Selector25~8_combout\);

-- Location: LCCOMB_X59_Y53_N24
\Selector25~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~9_combout\ = (\DOUT[0]~10_combout\ & ((\Selector25~8_combout\ & ((PTW1REG(11)))) # (!\Selector25~8_combout\ & (PTW1REG(3))))) # (!\DOUT[0]~10_combout\ & (((\Selector25~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PTW1REG(3),
	datab => \DOUT[0]~10_combout\,
	datac => PTW1REG(11),
	datad => \Selector25~8_combout\,
	combout => \Selector25~9_combout\);

-- Location: LCCOMB_X58_Y53_N28
\Selector25~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~10_combout\ = (\DOUT[0]~11_combout\ & ((\DOUT[0]~9_combout\) # ((\Selector25~9_combout\)))) # (!\DOUT[0]~11_combout\ & (!\DOUT[0]~9_combout\ & (FTW2L(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~11_combout\,
	datab => \DOUT[0]~9_combout\,
	datac => FTW2L(19),
	datad => \Selector25~9_combout\,
	combout => \Selector25~10_combout\);

-- Location: LCCOMB_X57_Y53_N24
\Selector25~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~13_combout\ = (\DOUT[0]~9_combout\ & ((\Selector25~10_combout\ & ((\Selector25~12_combout\))) # (!\Selector25~10_combout\ & (FTW2L(27))))) # (!\DOUT[0]~9_combout\ & (((\Selector25~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~9_combout\,
	datab => FTW2L(27),
	datac => \Selector25~12_combout\,
	datad => \Selector25~10_combout\,
	combout => \Selector25~13_combout\);

-- Location: LCCOMB_X57_Y53_N6
\Selector25~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~14_combout\ = (\DOUT[0]~14_combout\ & (((\Selector25~13_combout\)) # (!\DOUT[0]~13_combout\))) # (!\DOUT[0]~14_combout\ & (\DOUT[0]~13_combout\ & (\Selector25~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~14_combout\,
	datab => \DOUT[0]~13_combout\,
	datac => \Selector25~7_combout\,
	datad => \Selector25~13_combout\,
	combout => \Selector25~14_combout\);

-- Location: LCCOMB_X57_Y53_N20
\Selector25~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~15_combout\ = (\DOUT[0]~5_combout\ & ((\Selector25~14_combout\ & (\Selector25~3_combout\)) # (!\Selector25~14_combout\ & ((\Selector25~1_combout\))))) # (!\DOUT[0]~5_combout\ & (((\Selector25~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[0]~5_combout\,
	datab => \Selector25~3_combout\,
	datac => \Selector25~1_combout\,
	datad => \Selector25~14_combout\,
	combout => \Selector25~15_combout\);

-- Location: LCCOMB_X57_Y53_N4
\Selector25~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector25~16_combout\ = (\DOUT[0]~15_combout\ & (FTW2L(11))) # (!\DOUT[0]~15_combout\ & ((\Selector25~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(11),
	datac => \DOUT[0]~15_combout\,
	datad => \Selector25~15_combout\,
	combout => \Selector25~16_combout\);

-- Location: FF_X57_Y53_N5
\DOUT[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector25~16_combout\,
	ena => \DOUT[0]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DOUT[3]~reg0_q\);

-- Location: IOIBUF_X68_Y0_N15
\RAMPRATE[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(12),
	o => \RAMPRATE[12]~input_o\);

-- Location: IOIBUF_X81_Y12_N8
\F1L[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(4),
	o => \F1L[4]~input_o\);

-- Location: FF_X65_Y49_N21
\FTW1L[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[4]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(4));

-- Location: LCCOMB_X65_Y49_N6
\DOUT[4]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~31_combout\ = (STEP(5) & (STEP(4))) # (!STEP(5) & ((STEP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(3),
	datad => STEP(5),
	combout => \DOUT[4]~31_combout\);

-- Location: LCCOMB_X65_Y49_N20
\Selector24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (STEP(5) & ((FTW2L(4)) # ((\DOUT[4]~31_combout\)))) # (!STEP(5) & (((FTW1L(4) & !\DOUT[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(4),
	datab => STEP(5),
	datac => FTW1L(4),
	datad => \DOUT[4]~31_combout\,
	combout => \Selector24~2_combout\);

-- Location: IOIBUF_X81_Y7_N1
\F1L[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(20),
	o => \F1L[20]~input_o\);

-- Location: FF_X65_Y49_N13
\FTW1L[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[20]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(20));

-- Location: LCCOMB_X65_Y49_N12
\Selector24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (\Selector24~2_combout\ & ((FTW2L(20)) # ((!\DOUT[4]~31_combout\)))) # (!\Selector24~2_combout\ & (((FTW1L(20) & \DOUT[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(20),
	datab => \Selector24~2_combout\,
	datac => FTW1L(20),
	datad => \DOUT[4]~31_combout\,
	combout => \Selector24~3_combout\);

-- Location: IOIBUF_X61_Y67_N1
\F2H[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(12),
	o => \F2H[12]~input_o\);

-- Location: LCCOMB_X61_Y49_N26
\FTW2H[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2H[12]~feeder_combout\ = \F2H[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2H[12]~input_o\,
	combout => \FTW2H[12]~feeder_combout\);

-- Location: FF_X61_Y49_N27
\FTW2H[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2H[12]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(12));

-- Location: IOIBUF_X81_Y49_N15
\PTW1[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(4),
	o => \PTW1[4]~input_o\);

-- Location: FF_X64_Y49_N31
\PTW1REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[4]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(4));

-- Location: IOIBUF_X81_Y17_N8
\F1H[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(12),
	o => \F1H[12]~input_o\);

-- Location: FF_X64_Y49_N1
\FTW1H[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[12]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(12));

-- Location: LCCOMB_X62_Y49_N12
\DOUT[4]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~30_combout\ = (STEP(4) & (STEP(5))) # (!STEP(4) & ((STEP(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datac => STEP(5),
	datad => STEP(3),
	combout => \DOUT[4]~30_combout\);

-- Location: LCCOMB_X64_Y49_N0
\Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (STEP(4) & ((MODEREG(0)) # ((\DOUT[4]~30_combout\)))) # (!STEP(4) & (((FTW1H(12) & !\DOUT[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(0),
	datab => STEP(4),
	datac => FTW1H(12),
	datad => \DOUT[4]~30_combout\,
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X64_Y49_N30
\Selector24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\DOUT[4]~30_combout\ & ((\Selector24~0_combout\ & (FTW2H(12))) # (!\Selector24~0_combout\ & ((PTW1REG(4)))))) # (!\DOUT[4]~30_combout\ & (((\Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~30_combout\,
	datab => FTW2H(12),
	datac => PTW1REG(4),
	datad => \Selector24~0_combout\,
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X64_Y49_N8
\DOUT[4]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~33_combout\ = (STEP(6)) # (STEP(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STEP(6),
	datad => STEP(2),
	combout => \DOUT[4]~33_combout\);

-- Location: LCCOMB_X63_Y49_N24
\DOUT[4]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~36_combout\ = (STEP(1)) # ((!STEP(5) & STEP(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(5),
	datad => STEP(4),
	combout => \DOUT[4]~36_combout\);

-- Location: IOIBUF_X81_Y41_N1
\CLKMUILT[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLKMUILT(4),
	o => \CLKMUILT[4]~input_o\);

-- Location: FF_X63_Y49_N7
\CLKMUILTREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \CLKMUILT[4]~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => CLKMUILTREG(4));

-- Location: LCCOMB_X63_Y49_N6
\Selector24~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~6_combout\ = (\DOUT[4]~36_combout\ & ((FTW1L(28)) # ((!\Selector18~3_combout\)))) # (!\DOUT[4]~36_combout\ & (((CLKMUILTREG(4) & \Selector18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW1L(28),
	datab => \DOUT[4]~36_combout\,
	datac => CLKMUILTREG(4),
	datad => \Selector18~3_combout\,
	combout => \Selector24~6_combout\);

-- Location: IOIBUF_X81_Y2_N8
\F2L[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(28),
	o => \F2L[28]~input_o\);

-- Location: LCCOMB_X63_Y50_N20
\FTW2L[28]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[28]~feeder_combout\ = \F2L[28]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[28]~input_o\,
	combout => \FTW2L[28]~feeder_combout\);

-- Location: FF_X63_Y50_N21
\FTW2L[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[28]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(28));

-- Location: IOIBUF_X81_Y21_N1
\DFWL[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(4),
	o => \DFWL[4]~input_o\);

-- Location: FF_X63_Y53_N5
\DFWLREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[4]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(4));

-- Location: IOIBUF_X81_Y19_N8
\PTW2[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(12),
	o => \PTW2[12]~input_o\);

-- Location: FF_X64_Y51_N15
\PTW2REG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[12]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(12));

-- Location: IOIBUF_X42_Y67_N22
\PTW1[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(12),
	o => \PTW1[12]~input_o\);

-- Location: FF_X63_Y53_N7
\PTW1REG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[12]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(12));

-- Location: LCCOMB_X63_Y51_N10
\DOUT[4]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~35_combout\ = (STEP(3) & (((!\Equal4~0_combout\ & !\Equal1~0_combout\)))) # (!STEP(3) & (STEP(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(4),
	datac => \Equal4~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \DOUT[4]~35_combout\);

-- Location: LCCOMB_X63_Y53_N6
\Selector24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~4_combout\ = (STEP(3) & ((PTW2REG(12)) # ((\DOUT[4]~35_combout\)))) # (!STEP(3) & (((PTW1REG(12) & !\DOUT[4]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => PTW2REG(12),
	datac => PTW1REG(12),
	datad => \DOUT[4]~35_combout\,
	combout => \Selector24~4_combout\);

-- Location: LCCOMB_X63_Y53_N4
\Selector24~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~5_combout\ = (\DOUT[4]~35_combout\ & ((\Selector24~4_combout\ & ((DFWLREG(4)))) # (!\Selector24~4_combout\ & (FTW2L(28))))) # (!\DOUT[4]~35_combout\ & (((\Selector24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~35_combout\,
	datab => FTW2L(28),
	datac => DFWLREG(4),
	datad => \Selector24~4_combout\,
	combout => \Selector24~5_combout\);

-- Location: IOIBUF_X81_Y7_N15
\F1H[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(4),
	o => \F1H[4]~input_o\);

-- Location: FF_X65_Y49_N9
\FTW1H[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[4]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(4));

-- Location: IOIBUF_X81_Y14_N15
\F2H[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(4),
	o => \F2H[4]~input_o\);

-- Location: FF_X65_Y49_N19
\FTW2H[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[4]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(4));

-- Location: IOIBUF_X81_Y42_N1
\F1L[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(12),
	o => \F1L[12]~input_o\);

-- Location: FF_X65_Y49_N17
\FTW1L[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[12]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(12));

-- Location: LCCOMB_X65_Y49_N16
\Selector24~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~7_combout\ = (STEP(5) & ((FTW2L(12)) # ((\DOUT[4]~31_combout\)))) # (!STEP(5) & (((FTW1L(12) & !\DOUT[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(12),
	datab => STEP(5),
	datac => FTW1L(12),
	datad => \DOUT[4]~31_combout\,
	combout => \Selector24~7_combout\);

-- Location: LCCOMB_X65_Y49_N18
\Selector24~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~8_combout\ = (\DOUT[4]~31_combout\ & ((\Selector24~7_combout\ & ((FTW2H(4)))) # (!\Selector24~7_combout\ & (FTW1H(4))))) # (!\DOUT[4]~31_combout\ & (((\Selector24~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~31_combout\,
	datab => FTW1H(4),
	datac => FTW2H(4),
	datad => \Selector24~7_combout\,
	combout => \Selector24~8_combout\);

-- Location: LCCOMB_X64_Y49_N26
\Selector24~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~9_combout\ = (\Selector18~3_combout\ & (\Selector24~6_combout\)) # (!\Selector18~3_combout\ & ((\Selector24~6_combout\ & ((\Selector24~8_combout\))) # (!\Selector24~6_combout\ & (\Selector24~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~3_combout\,
	datab => \Selector24~6_combout\,
	datac => \Selector24~5_combout\,
	datad => \Selector24~8_combout\,
	combout => \Selector24~9_combout\);

-- Location: LCCOMB_X64_Y51_N0
\DOUT[4]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~37_combout\ = (STEP(3) & ((STEP(1)) # (STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(2),
	datad => STEP(3),
	combout => \DOUT[4]~37_combout\);

-- Location: IOIBUF_X68_Y0_N8
\DFWH[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(12),
	o => \DFWH[12]~input_o\);

-- Location: FF_X64_Y51_N5
\DFWHREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[12]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(12));

-- Location: IOIBUF_X38_Y67_N8
\DFWH[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(4),
	o => \DFWH[4]~input_o\);

-- Location: FF_X64_Y51_N3
\DFWHREG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[4]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(4));

-- Location: IOIBUF_X65_Y67_N1
\DFWL[20]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(20),
	o => \DFWL[20]~input_o\);

-- Location: FF_X64_Y51_N7
\DFWLREG[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[20]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(20));

-- Location: IOIBUF_X38_Y67_N1
\DFWL[28]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(28),
	o => \DFWL[28]~input_o\);

-- Location: FF_X64_Y51_N11
\DFWLREG[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[28]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(28));

-- Location: IOIBUF_X81_Y44_N1
\PTW2[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(4),
	o => \PTW2[4]~input_o\);

-- Location: LCCOMB_X64_Y51_N24
\PTW2REG[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \PTW2REG[4]~feeder_combout\ = \PTW2[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PTW2[4]~input_o\,
	combout => \PTW2REG[4]~feeder_combout\);

-- Location: FF_X64_Y51_N25
\PTW2REG[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \PTW2REG[4]~feeder_combout\,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(4));

-- Location: IOIBUF_X65_Y0_N8
\DFWL[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(12),
	o => \DFWL[12]~input_o\);

-- Location: FF_X64_Y51_N21
\DFWLREG[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[12]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(12));

-- Location: LCCOMB_X64_Y51_N18
\DOUT[4]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~39_combout\ = (STEP(2)) # ((!STEP(1) & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \Equal1~0_combout\,
	datad => STEP(2),
	combout => \DOUT[4]~39_combout\);

-- Location: LCCOMB_X64_Y51_N20
\Selector24~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~10_combout\ = (\DOUT[4]~38_combout\ & (((\DOUT[4]~39_combout\)))) # (!\DOUT[4]~38_combout\ & ((\DOUT[4]~39_combout\ & (PTW2REG(4))) # (!\DOUT[4]~39_combout\ & ((DFWLREG(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~38_combout\,
	datab => PTW2REG(4),
	datac => DFWLREG(12),
	datad => \DOUT[4]~39_combout\,
	combout => \Selector24~10_combout\);

-- Location: LCCOMB_X64_Y51_N10
\Selector24~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~11_combout\ = (\DOUT[4]~38_combout\ & ((\Selector24~10_combout\ & ((DFWLREG(28)))) # (!\Selector24~10_combout\ & (DFWLREG(20))))) # (!\DOUT[4]~38_combout\ & (((\Selector24~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~38_combout\,
	datab => DFWLREG(20),
	datac => DFWLREG(28),
	datad => \Selector24~10_combout\,
	combout => \Selector24~11_combout\);

-- Location: LCCOMB_X64_Y51_N2
\Selector24~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~12_combout\ = (\AOUT[3]~33_combout\ & (!\DOUT[4]~37_combout\ & (DFWHREG(4)))) # (!\AOUT[3]~33_combout\ & ((\DOUT[4]~37_combout\) # ((\Selector24~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AOUT[3]~33_combout\,
	datab => \DOUT[4]~37_combout\,
	datac => DFWHREG(4),
	datad => \Selector24~11_combout\,
	combout => \Selector24~12_combout\);

-- Location: LCCOMB_X64_Y51_N4
\Selector24~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~13_combout\ = (\DOUT[4]~37_combout\ & ((\Selector24~12_combout\ & (\RAMPRATE[4]~input_o\)) # (!\Selector24~12_combout\ & ((DFWHREG(12)))))) # (!\DOUT[4]~37_combout\ & (((\Selector24~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMPRATE[4]~input_o\,
	datab => \DOUT[4]~37_combout\,
	datac => DFWHREG(12),
	datad => \Selector24~12_combout\,
	combout => \Selector24~13_combout\);

-- Location: LCCOMB_X64_Y49_N24
\Selector24~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~14_combout\ = (\DOUT[4]~32_combout\ & (((\Selector24~13_combout\)) # (!\DOUT[4]~33_combout\))) # (!\DOUT[4]~32_combout\ & (\DOUT[4]~33_combout\ & (\Selector24~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~32_combout\,
	datab => \DOUT[4]~33_combout\,
	datac => \Selector24~9_combout\,
	datad => \Selector24~13_combout\,
	combout => \Selector24~14_combout\);

-- Location: LCCOMB_X64_Y49_N18
\Selector24~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~15_combout\ = (\DOUT[4]~34_combout\ & ((\Selector24~14_combout\ & (\Selector24~3_combout\)) # (!\Selector24~14_combout\ & ((\Selector24~1_combout\))))) # (!\DOUT[4]~34_combout\ & (((\Selector24~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~34_combout\,
	datab => \Selector24~3_combout\,
	datac => \Selector24~1_combout\,
	datad => \Selector24~14_combout\,
	combout => \Selector24~15_combout\);

-- Location: LCCOMB_X64_Y49_N4
\Selector24~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector24~16_combout\ = (\DOUT[4]~40_combout\ & (STEP(1) & (\RAMPRATE[12]~input_o\))) # (!\DOUT[4]~40_combout\ & (((\Selector24~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~40_combout\,
	datab => STEP(1),
	datac => \RAMPRATE[12]~input_o\,
	datad => \Selector24~15_combout\,
	combout => \Selector24~16_combout\);

-- Location: LCCOMB_X64_Y53_N8
\Selector13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (STEP(6) & !STEP(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => STEP(6),
	datad => STEP(5),
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X64_Y53_N24
\DOUT[4]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~42_combout\ = (STEP(5) & ((STEP(4) & (STEP(0) & !STEP(3))) # (!STEP(4) & ((STEP(3)))))) # (!STEP(5) & (STEP(4) & (STEP(0) $ (!STEP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(5),
	datac => STEP(4),
	datad => STEP(3),
	combout => \DOUT[4]~42_combout\);

-- Location: LCCOMB_X64_Y53_N26
\DOUT[4]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~43_combout\ = (\DOUT[4]~41_combout\ & ((\DOUT[4]~42_combout\ & (\Selector35~4_combout\)) # (!\DOUT[4]~42_combout\ & ((STEP(1)))))) # (!\DOUT[4]~41_combout\ & (((!STEP(1) & \DOUT[4]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~41_combout\,
	datab => \Selector35~4_combout\,
	datac => STEP(1),
	datad => \DOUT[4]~42_combout\,
	combout => \DOUT[4]~43_combout\);

-- Location: LCCOMB_X64_Y53_N16
\DOUT[4]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~44_combout\ = (STEP(3) & (((\Equal4~0_combout\) # (!STEP(4))) # (!STEP(0)))) # (!STEP(3) & (STEP(0) $ ((!STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(0),
	datac => STEP(4),
	datad => \Equal4~0_combout\,
	combout => \DOUT[4]~44_combout\);

-- Location: LCCOMB_X64_Y53_N6
\DOUT[4]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~45_combout\ = (STEP(0) & (STEP(3) & (STEP(1) $ (!STEP(4))))) # (!STEP(0) & (STEP(4) & (STEP(3) $ (STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => STEP(0),
	datac => STEP(1),
	datad => STEP(4),
	combout => \DOUT[4]~45_combout\);

-- Location: LCCOMB_X64_Y53_N28
\DOUT[4]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~46_combout\ = (STEP(5) & (STEP(1))) # (!STEP(5) & ((!\DOUT[4]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(5),
	datac => STEP(1),
	datad => \DOUT[4]~45_combout\,
	combout => \DOUT[4]~46_combout\);

-- Location: LCCOMB_X64_Y53_N20
\DOUT[4]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~48_combout\ = (STEP(5) & ((\DOUT[4]~46_combout\ & (\DOUT[4]~47_combout\)) # (!\DOUT[4]~46_combout\ & ((\DOUT[4]~44_combout\))))) # (!STEP(5) & (((\DOUT[4]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~47_combout\,
	datab => STEP(5),
	datac => \DOUT[4]~44_combout\,
	datad => \DOUT[4]~46_combout\,
	combout => \DOUT[4]~48_combout\);

-- Location: LCCOMB_X64_Y53_N10
\DOUT[4]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~49_combout\ = (!STEP(6) & ((STEP(2) & ((!\DOUT[4]~48_combout\))) # (!STEP(2) & (\DOUT[4]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(6),
	datac => \DOUT[4]~43_combout\,
	datad => \DOUT[4]~48_combout\,
	combout => \DOUT[4]~49_combout\);

-- Location: LCCOMB_X64_Y53_N14
\DOUT[4]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~53_combout\ = (\COUNTEREN~q\ & ((\DOUT[4]~49_combout\) # ((\DOUT[4]~52_combout\ & \Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~52_combout\,
	datab => \COUNTEREN~q\,
	datac => \Selector13~0_combout\,
	datad => \DOUT[4]~49_combout\,
	combout => \DOUT[4]~53_combout\);

-- Location: FF_X64_Y49_N5
\DOUT[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector24~16_combout\,
	ena => \DOUT[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DOUT[4]~reg0_q\);

-- Location: IOIBUF_X81_Y4_N22
\RAMPRATE[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(13),
	o => \RAMPRATE[13]~input_o\);

-- Location: IOIBUF_X81_Y4_N15
\PTW1[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(5),
	o => \PTW1[5]~input_o\);

-- Location: FF_X63_Y49_N25
\PTW1REG[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[5]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(5));

-- Location: IOIBUF_X33_Y67_N15
\F1H[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(13),
	o => \F1H[13]~input_o\);

-- Location: FF_X61_Y51_N1
\FTW1H[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[13]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(13));

-- Location: LCCOMB_X62_Y49_N14
\Selector23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (STEP(4) & ((MODEREG(1)) # ((\DOUT[4]~30_combout\)))) # (!STEP(4) & (((FTW1H(13) & !\DOUT[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => MODEREG(1),
	datac => FTW1H(13),
	datad => \DOUT[4]~30_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X62_Y49_N4
\Selector23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Selector23~0_combout\ & ((FTW2H(13)) # ((!\DOUT[4]~30_combout\)))) # (!\Selector23~0_combout\ & (((PTW1REG(5) & \DOUT[4]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2H(13),
	datab => PTW1REG(5),
	datac => \Selector23~0_combout\,
	datad => \DOUT[4]~30_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X64_Y49_N14
\DOUT[4]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~32_combout\ = (STEP(6)) # ((STEP(0) & !STEP(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datac => STEP(6),
	datad => STEP(2),
	combout => \DOUT[4]~32_combout\);

-- Location: LCCOMB_X64_Y49_N22
\DOUT[4]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[4]~34_combout\ = (!\DOUT[4]~33_combout\ & ((STEP(5)) # ((\DOUT[4]~32_combout\) # (STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \DOUT[4]~32_combout\,
	datac => \DOUT[4]~33_combout\,
	datad => STEP(4),
	combout => \DOUT[4]~34_combout\);

-- Location: IOIBUF_X81_Y4_N1
\F1L[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(29),
	o => \F1L[29]~input_o\);

-- Location: FF_X64_Y49_N7
\FTW1L[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[29]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(29));

-- Location: IOIBUF_X81_Y49_N1
\PLLEN~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PLLEN,
	o => \PLLEN~input_o\);

-- Location: FF_X63_Y49_N31
PLLENREG : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PLLEN~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLLENREG~q\);

-- Location: IOIBUF_X81_Y14_N8
\F2L[29]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(29),
	o => \F2L[29]~input_o\);

-- Location: FF_X64_Y50_N1
\FTW2L[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[29]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(29));

-- Location: IOIBUF_X81_Y26_N1
\PTW1[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(13),
	o => \PTW1[13]~input_o\);

-- Location: FF_X63_Y49_N29
\PTW1REG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[13]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(13));

-- Location: IOIBUF_X63_Y67_N8
\PTW2[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(13),
	o => \PTW2[13]~input_o\);

-- Location: FF_X63_Y51_N29
\PTW2REG[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[13]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(13));

-- Location: LCCOMB_X63_Y51_N28
\Selector23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~4_combout\ = (STEP(3) & ((\DOUT[4]~35_combout\ & (DFWLREG(5))) # (!\DOUT[4]~35_combout\ & ((PTW2REG(13)))))) # (!STEP(3) & (((\DOUT[4]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DFWLREG(5),
	datab => STEP(3),
	datac => PTW2REG(13),
	datad => \DOUT[4]~35_combout\,
	combout => \Selector23~4_combout\);

-- Location: LCCOMB_X63_Y49_N28
\Selector23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~5_combout\ = (STEP(3) & (((\Selector23~4_combout\)))) # (!STEP(3) & ((\Selector23~4_combout\ & (FTW2L(29))) # (!\Selector23~4_combout\ & ((PTW1REG(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => FTW2L(29),
	datac => PTW1REG(13),
	datad => \Selector23~4_combout\,
	combout => \Selector23~5_combout\);

-- Location: LCCOMB_X63_Y49_N30
\Selector23~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~6_combout\ = (\Selector18~3_combout\ & (!\DOUT[4]~36_combout\ & (\PLLENREG~q\))) # (!\Selector18~3_combout\ & ((\DOUT[4]~36_combout\) # ((\Selector23~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~3_combout\,
	datab => \DOUT[4]~36_combout\,
	datac => \PLLENREG~q\,
	datad => \Selector23~5_combout\,
	combout => \Selector23~6_combout\);

-- Location: LCCOMB_X64_Y49_N6
\Selector23~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~9_combout\ = (\DOUT[4]~36_combout\ & ((\Selector23~6_combout\ & (\Selector23~8_combout\)) # (!\Selector23~6_combout\ & ((FTW1L(29)))))) # (!\DOUT[4]~36_combout\ & (((\Selector23~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~8_combout\,
	datab => \DOUT[4]~36_combout\,
	datac => FTW1L(29),
	datad => \Selector23~6_combout\,
	combout => \Selector23~9_combout\);

-- Location: LCCOMB_X64_Y49_N28
\Selector23~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~14_combout\ = (\DOUT[4]~32_combout\ & (\Selector23~13_combout\ & (\DOUT[4]~33_combout\))) # (!\DOUT[4]~32_combout\ & (((\Selector23~9_combout\) # (!\DOUT[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~13_combout\,
	datab => \DOUT[4]~32_combout\,
	datac => \DOUT[4]~33_combout\,
	datad => \Selector23~9_combout\,
	combout => \Selector23~14_combout\);

-- Location: LCCOMB_X64_Y49_N2
\Selector23~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~15_combout\ = (\DOUT[4]~34_combout\ & ((\Selector23~14_combout\ & ((\Selector23~1_combout\))) # (!\Selector23~14_combout\ & (\Selector23~3_combout\)))) # (!\DOUT[4]~34_combout\ & (((\Selector23~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~3_combout\,
	datab => \Selector23~1_combout\,
	datac => \DOUT[4]~34_combout\,
	datad => \Selector23~14_combout\,
	combout => \Selector23~15_combout\);

-- Location: LCCOMB_X64_Y49_N10
\Selector23~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector23~16_combout\ = (\DOUT[4]~40_combout\ & (STEP(1) & (\RAMPRATE[13]~input_o\))) # (!\DOUT[4]~40_combout\ & (((\Selector23~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[4]~40_combout\,
	datab => STEP(1),
	datac => \RAMPRATE[13]~input_o\,
	datad => \Selector23~15_combout\,
	combout => \Selector23~16_combout\);

-- Location: FF_X64_Y49_N11
\DOUT[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector23~16_combout\,
	ena => \DOUT[4]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DOUT[5]~reg0_q\);

-- Location: LCCOMB_X62_Y49_N26
\Selector22~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~50_combout\ = (STEP(0) & ((STEP(1)) # ((STEP(2) & !STEP(3))))) # (!STEP(0) & ((STEP(2) & (STEP(1))) # (!STEP(2) & ((STEP(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(3),
	combout => \Selector22~50_combout\);

-- Location: IOIBUF_X81_Y65_N1
\RAMPRATE[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(14),
	o => \RAMPRATE[14]~input_o\);

-- Location: LCCOMB_X62_Y49_N30
\Selector22~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~13_combout\ = (STEP(1) & ((\Selector22~50_combout\ & (\DOUT[6]~reg0_q\)) # (!\Selector22~50_combout\ & ((\RAMPRATE[14]~input_o\))))) # (!STEP(1) & (\DOUT[6]~reg0_q\ & (!\Selector22~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(1),
	datac => \Selector22~50_combout\,
	datad => \RAMPRATE[14]~input_o\,
	combout => \Selector22~13_combout\);

-- Location: IOIBUF_X65_Y0_N1
\DFWH[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(6),
	o => \DFWH[6]~input_o\);

-- Location: FF_X62_Y49_N17
\DFWHREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[6]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(6));

-- Location: LCCOMB_X62_Y49_N16
\Selector22~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~14_combout\ = (STEP(1) & (\DOUT[6]~reg0_q\)) # (!STEP(1) & ((STEP(0) & ((DFWHREG(6)))) # (!STEP(0) & (\DOUT[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(1),
	datac => DFWHREG(6),
	datad => STEP(0),
	combout => \Selector22~14_combout\);

-- Location: IOIBUF_X58_Y0_N22
\DFWH[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(14),
	o => \DFWH[14]~input_o\);

-- Location: FF_X62_Y49_N29
\DFWHREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[14]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(14));

-- Location: IOIBUF_X81_Y8_N1
\RAMPRATE[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RAMPRATE(6),
	o => \RAMPRATE[6]~input_o\);

-- Location: LCCOMB_X62_Y49_N28
\Selector22~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~19_combout\ = (STEP(0) & (STEP(1) & ((\RAMPRATE[6]~input_o\)))) # (!STEP(0) & (!STEP(1) & (DFWHREG(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => DFWHREG(14),
	datad => \RAMPRATE[6]~input_o\,
	combout => \Selector22~19_combout\);

-- Location: LCCOMB_X62_Y49_N8
\Selector22~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~46_combout\ = (\Selector22~19_combout\) # ((\DOUT[6]~reg0_q\ & (STEP(0) $ (STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => \DOUT[6]~reg0_q\,
	datad => \Selector22~19_combout\,
	combout => \Selector22~46_combout\);

-- Location: IOIBUF_X61_Y0_N1
\PTW2[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(6),
	o => \PTW2[6]~input_o\);

-- Location: FF_X62_Y49_N25
\PTW2REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[6]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(6));

-- Location: IOIBUF_X70_Y67_N8
\DFWL[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(14),
	o => \DFWL[14]~input_o\);

-- Location: FF_X62_Y49_N21
\DFWLREG[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[14]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(14));

-- Location: LCCOMB_X62_Y49_N20
\Selector22~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~16_combout\ = (STEP(1) & ((DFWLREG(22)) # ((\Equal1~0_combout\)))) # (!STEP(1) & (((DFWLREG(14) & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => DFWLREG(22),
	datab => STEP(1),
	datac => DFWLREG(14),
	datad => \Equal1~0_combout\,
	combout => \Selector22~16_combout\);

-- Location: LCCOMB_X62_Y49_N24
\Selector22~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~17_combout\ = (\Equal1~0_combout\ & ((\Selector22~16_combout\ & (\DOUT[6]~reg0_q\)) # (!\Selector22~16_combout\ & ((PTW2REG(6)))))) # (!\Equal1~0_combout\ & (((\Selector22~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => \Equal1~0_combout\,
	datac => PTW2REG(6),
	datad => \Selector22~16_combout\,
	combout => \Selector22~17_combout\);

-- Location: LCCOMB_X62_Y49_N6
\Selector22~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~45_combout\ = (STEP(0) & ((STEP(1) & ((\Selector22~17_combout\))) # (!STEP(1) & (\DOUT[6]~reg0_q\)))) # (!STEP(0) & ((STEP(1) & (\DOUT[6]~reg0_q\)) # (!STEP(1) & ((\Selector22~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => \DOUT[6]~reg0_q\,
	datad => \Selector22~17_combout\,
	combout => \Selector22~45_combout\);

-- Location: LCCOMB_X62_Y49_N2
\Selector22~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~18_combout\ = (STEP(3) & (((STEP(2))))) # (!STEP(3) & ((STEP(2) & (\Selector22~15_combout\)) # (!STEP(2) & ((\Selector22~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~15_combout\,
	datab => STEP(3),
	datac => STEP(2),
	datad => \Selector22~45_combout\,
	combout => \Selector22~18_combout\);

-- Location: LCCOMB_X62_Y49_N18
\Selector22~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~20_combout\ = (STEP(3) & ((\Selector22~18_combout\ & ((\Selector22~46_combout\))) # (!\Selector22~18_combout\ & (\Selector22~14_combout\)))) # (!STEP(3) & (((\Selector22~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => \Selector22~14_combout\,
	datac => \Selector22~46_combout\,
	datad => \Selector22~18_combout\,
	combout => \Selector22~20_combout\);

-- Location: LCCOMB_X62_Y49_N0
\Selector22~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~21_combout\ = (STEP(4) & (\Selector22~13_combout\)) # (!STEP(4) & ((\Selector22~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datac => \Selector22~13_combout\,
	datad => \Selector22~20_combout\,
	combout => \Selector22~21_combout\);

-- Location: LCCOMB_X62_Y50_N12
\DOUT[6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[6]~1_combout\ = (STEP(5) & (\DOUT[6]~reg0_q\)) # (!STEP(5) & ((\Selector22~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(5),
	datac => \DOUT[6]~reg0_q\,
	datad => \Selector22~21_combout\,
	combout => \DOUT[6]~1_combout\);

-- Location: IOIBUF_X81_Y46_N1
\F1L[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(30),
	o => \F1L[30]~input_o\);

-- Location: FF_X63_Y50_N11
\FTW1L[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[30]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(30));

-- Location: LCCOMB_X63_Y50_N10
\Selector22~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~33_combout\ = (STEP(0) & (FTW1H(6) & ((STEP(1))))) # (!STEP(0) & (((FTW1L(30) & !STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW1H(6),
	datab => STEP(0),
	datac => FTW1L(30),
	datad => STEP(1),
	combout => \Selector22~33_combout\);

-- Location: LCCOMB_X62_Y50_N24
\Selector22~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~48_combout\ = (\Selector22~33_combout\) # ((\DOUT[6]~reg0_q\ & (STEP(1) $ (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(1),
	datac => \Selector22~33_combout\,
	datad => STEP(0),
	combout => \Selector22~48_combout\);

-- Location: IOIBUF_X63_Y0_N1
\F1L[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(14),
	o => \F1L[14]~input_o\);

-- Location: FF_X63_Y50_N15
\FTW1L[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[14]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(14));

-- Location: LCCOMB_X63_Y50_N14
\Selector22~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~29_combout\ = (STEP(0) & (\DOUT[6]~reg0_q\)) # (!STEP(0) & ((STEP(1) & ((FTW1L(14)))) # (!STEP(1) & (\DOUT[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(0),
	datac => FTW1L(14),
	datad => STEP(1),
	combout => \Selector22~29_combout\);

-- Location: IOIBUF_X81_Y42_N8
\F1L[22]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(22),
	o => \F1L[22]~input_o\);

-- Location: FF_X63_Y50_N25
\FTW1L[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[22]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(22));

-- Location: LCCOMB_X63_Y50_N24
\Selector22~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~30_combout\ = (STEP(0) & ((STEP(1) & (\DOUT[6]~reg0_q\)) # (!STEP(1) & ((FTW1L(22)))))) # (!STEP(0) & (\DOUT[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(0),
	datac => FTW1L(22),
	datad => STEP(1),
	combout => \Selector22~30_combout\);

-- Location: IOIBUF_X17_Y67_N8
\F1L[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(6),
	o => \F1L[6]~input_o\);

-- Location: FF_X63_Y50_N31
\FTW1L[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[6]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(6));

-- Location: LCCOMB_X63_Y50_N30
\Selector22~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~31_combout\ = (STEP(0) & (((FTW1L(6) & STEP(1))))) # (!STEP(0) & (MODEREG(2) & ((!STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => MODEREG(2),
	datab => STEP(0),
	datac => FTW1L(6),
	datad => STEP(1),
	combout => \Selector22~31_combout\);

-- Location: LCCOMB_X62_Y50_N6
\Selector22~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~47_combout\ = (\Selector22~31_combout\) # ((\DOUT[6]~reg0_q\ & (STEP(1) $ (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(1),
	datac => \Selector22~31_combout\,
	datad => STEP(0),
	combout => \Selector22~47_combout\);

-- Location: LCCOMB_X62_Y50_N16
\Selector22~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~32_combout\ = (STEP(2) & (((STEP(3))))) # (!STEP(2) & ((STEP(3) & (\Selector22~30_combout\)) # (!STEP(3) & ((\Selector22~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector22~30_combout\,
	datac => STEP(3),
	datad => \Selector22~47_combout\,
	combout => \Selector22~32_combout\);

-- Location: LCCOMB_X62_Y50_N26
\Selector22~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~34_combout\ = (STEP(2) & ((\Selector22~32_combout\ & (\Selector22~48_combout\)) # (!\Selector22~32_combout\ & ((\Selector22~29_combout\))))) # (!STEP(2) & (((\Selector22~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector22~48_combout\,
	datac => \Selector22~29_combout\,
	datad => \Selector22~32_combout\,
	combout => \Selector22~34_combout\);

-- Location: IOIBUF_X81_Y20_N8
\PLLRANGE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PLLRANGE,
	o => \PLLRANGE~input_o\);

-- Location: FF_X62_Y52_N15
PLLRANGEREG : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PLLRANGE~input_o\,
	sload => VCC,
	ena => \MODEREG[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PLLRANGEREG~q\);

-- Location: LCCOMB_X62_Y52_N14
\Selector22~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~35_combout\ = (\Selector26~35_combout\ & (((\PLLRANGEREG~q\) # (!STEP(2))))) # (!\Selector26~35_combout\ & (\DOUT[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(2),
	datac => \PLLRANGEREG~q\,
	datad => \Selector26~35_combout\,
	combout => \Selector22~35_combout\);

-- Location: LCCOMB_X62_Y50_N4
\Selector22~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~36_combout\ = (STEP(4) & ((STEP(5)) # ((\Selector22~34_combout\)))) # (!STEP(4) & (!STEP(5) & ((\Selector22~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(5),
	datac => \Selector22~34_combout\,
	datad => \Selector22~35_combout\,
	combout => \Selector22~36_combout\);

-- Location: LCCOMB_X62_Y50_N0
\Selector22~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~22_combout\ = (\DOUT[6]~reg0_q\ & ((STEP(1)) # (!STEP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datac => STEP(1),
	datad => \DOUT[6]~reg0_q\,
	combout => \Selector22~22_combout\);

-- Location: IOIBUF_X81_Y50_N8
\F2L[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(14),
	o => \F2L[14]~input_o\);

-- Location: FF_X63_Y50_N13
\FTW2L[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[14]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(14));

-- Location: LCCOMB_X63_Y50_N12
\Selector22~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~27_combout\ = (STEP(0) & (\DOUT[6]~reg0_q\)) # (!STEP(0) & ((STEP(1) & ((FTW2L(14)))) # (!STEP(1) & (\DOUT[6]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(0),
	datac => FTW2L(14),
	datad => STEP(1),
	combout => \Selector22~27_combout\);

-- Location: IOIBUF_X81_Y20_N1
\F2L[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(6),
	o => \F2L[6]~input_o\);

-- Location: LCCOMB_X58_Y51_N16
\FTW2L[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2L[6]~feeder_combout\ = \F2L[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2L[6]~input_o\,
	combout => \FTW2L[6]~feeder_combout\);

-- Location: FF_X58_Y51_N17
\FTW2L[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2L[6]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(6));

-- Location: IOIBUF_X81_Y43_N1
\PTW1[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(6),
	o => \PTW1[6]~input_o\);

-- Location: FF_X58_Y51_N15
\PTW1REG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[6]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(6));

-- Location: LCCOMB_X58_Y51_N14
\Selector22~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~23_combout\ = (STEP(1) & (FTW2L(6) & ((\Selector35~4_combout\)))) # (!STEP(1) & ((PTW1REG(6)) # ((FTW2L(6) & \Selector35~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => FTW2L(6),
	datac => PTW1REG(6),
	datad => \Selector35~4_combout\,
	combout => \Selector22~23_combout\);

-- Location: LCCOMB_X62_Y50_N2
\Selector22~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~24_combout\ = (\DOUT[6]~reg0_q\ & ((\Selector22~12_combout\) # ((!\Selector18~20_combout\ & \Selector22~23_combout\)))) # (!\DOUT[6]~reg0_q\ & (((!\Selector18~20_combout\ & \Selector22~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => \Selector22~12_combout\,
	datac => \Selector18~20_combout\,
	datad => \Selector22~23_combout\,
	combout => \Selector22~24_combout\);

-- Location: LCCOMB_X62_Y50_N20
\Selector22~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~26_combout\ = (STEP(3) & (((STEP(2)) # (\Selector22~24_combout\)))) # (!STEP(3) & (\Selector22~25_combout\ & (!STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~25_combout\,
	datab => STEP(3),
	datac => STEP(2),
	datad => \Selector22~24_combout\,
	combout => \Selector22~26_combout\);

-- Location: LCCOMB_X62_Y50_N30
\Selector22~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~28_combout\ = (STEP(2) & ((\Selector22~26_combout\ & ((\Selector22~27_combout\))) # (!\Selector22~26_combout\ & (\Selector22~22_combout\)))) # (!STEP(2) & (((\Selector22~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector22~22_combout\,
	datac => \Selector22~27_combout\,
	datad => \Selector22~26_combout\,
	combout => \Selector22~28_combout\);

-- Location: IOIBUF_X70_Y67_N1
\F2H[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(14),
	o => \F2H[14]~input_o\);

-- Location: FF_X62_Y52_N25
\FTW2H[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[14]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(14));

-- Location: LCCOMB_X62_Y52_N24
\Selector22~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~38_combout\ = (STEP(1) & ((STEP(0) & (\DOUT[6]~reg0_q\)) # (!STEP(0) & ((FTW2H(14)))))) # (!STEP(1) & (\DOUT[6]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(1),
	datac => FTW2H(14),
	datad => STEP(0),
	combout => \Selector22~38_combout\);

-- Location: LCCOMB_X62_Y52_N8
\Selector22~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~40_combout\ = (STEP(2) & (((STEP(3))))) # (!STEP(2) & ((STEP(3) & ((\Selector22~38_combout\))) # (!STEP(3) & (\Selector22~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~39_combout\,
	datab => STEP(2),
	datac => STEP(3),
	datad => \Selector22~38_combout\,
	combout => \Selector22~40_combout\);

-- Location: IOIBUF_X81_Y44_N8
\F2H[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(6),
	o => \F2H[6]~input_o\);

-- Location: LCCOMB_X62_Y52_N16
\FTW2H[6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \FTW2H[6]~feeder_combout\ = \F2H[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \F2H[6]~input_o\,
	combout => \FTW2H[6]~feeder_combout\);

-- Location: FF_X62_Y52_N17
\FTW2H[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \FTW2H[6]~feeder_combout\,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(6));

-- Location: IOIBUF_X63_Y67_N1
\F2L[30]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(30),
	o => \F2L[30]~input_o\);

-- Location: FF_X62_Y52_N31
\FTW2L[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[30]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(30));

-- Location: LCCOMB_X62_Y52_N30
\Selector22~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~37_combout\ = (STEP(1) & (FTW2H(6) & ((STEP(0))))) # (!STEP(1) & (((FTW2L(30) & !STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => FTW2H(6),
	datac => FTW2L(30),
	datad => STEP(0),
	combout => \Selector22~37_combout\);

-- Location: LCCOMB_X62_Y50_N22
\Selector22~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~49_combout\ = (\Selector22~37_combout\) # ((\DOUT[6]~reg0_q\ & (STEP(1) $ (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => STEP(1),
	datac => \Selector22~37_combout\,
	datad => STEP(0),
	combout => \Selector22~49_combout\);

-- Location: IOIBUF_X17_Y67_N1
\DFWL[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(6),
	o => \DFWL[6]~input_o\);

-- Location: FF_X59_Y50_N17
\DFWLREG[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[6]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(6));

-- Location: LCCOMB_X59_Y50_N16
\Selector22~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~41_combout\ = (!\Equal1~0_combout\ & (!\Equal4~0_combout\ & (DFWLREG(6) & \Selector18~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal4~0_combout\,
	datac => DFWLREG(6),
	datad => \Selector18~21_combout\,
	combout => \Selector22~41_combout\);

-- Location: LCCOMB_X62_Y50_N18
\Selector22~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~42_combout\ = (\Selector22~41_combout\) # ((\DOUT[6]~reg0_q\ & ((\Equal4~0_combout\) # (!\Selector18~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[6]~reg0_q\,
	datab => \Selector18~21_combout\,
	datac => \Equal4~0_combout\,
	datad => \Selector22~41_combout\,
	combout => \Selector22~42_combout\);

-- Location: LCCOMB_X62_Y50_N28
\Selector22~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~43_combout\ = (STEP(2) & ((\Selector22~40_combout\ & ((\Selector22~42_combout\))) # (!\Selector22~40_combout\ & (\Selector22~49_combout\)))) # (!STEP(2) & (\Selector22~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector22~40_combout\,
	datac => \Selector22~49_combout\,
	datad => \Selector22~42_combout\,
	combout => \Selector22~43_combout\);

-- Location: LCCOMB_X62_Y50_N14
\Selector22~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector22~44_combout\ = (STEP(5) & ((\Selector22~36_combout\ & ((\Selector22~43_combout\))) # (!\Selector22~36_combout\ & (\Selector22~28_combout\)))) # (!STEP(5) & (\Selector22~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \Selector22~36_combout\,
	datac => \Selector22~28_combout\,
	datad => \Selector22~43_combout\,
	combout => \Selector22~44_combout\);

-- Location: FF_X62_Y50_N13
\DOUT[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DOUT[6]~1_combout\,
	asdata => \Selector22~44_combout\,
	sload => ALT_INV_STEP(6),
	ena => \COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DOUT[6]~reg0_q\);

-- Location: LCCOMB_X63_Y50_N8
\Selector21~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~10_combout\ = (\Selector22~50_combout\ & (((\DOUT[7]~reg0_q\ & STEP(1))))) # (!\Selector22~50_combout\ & ((STEP(1) & (\RAMPRATE[15]~input_o\)) # (!STEP(1) & ((\DOUT[7]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAMPRATE[15]~input_o\,
	datab => \DOUT[7]~reg0_q\,
	datac => \Selector22~50_combout\,
	datad => STEP(1),
	combout => \Selector21~10_combout\);

-- Location: IOIBUF_X81_Y16_N8
\DFWH[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWH(7),
	o => \DFWH[7]~input_o\);

-- Location: FF_X59_Y50_N3
\DFWHREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWH[7]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWHREG(7));

-- Location: LCCOMB_X59_Y50_N2
\Selector21~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~11_combout\ = (STEP(0) & ((STEP(1) & (\DOUT[7]~reg0_q\)) # (!STEP(1) & ((DFWHREG(7)))))) # (!STEP(0) & (\DOUT[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[7]~reg0_q\,
	datab => STEP(0),
	datac => DFWHREG(7),
	datad => STEP(1),
	combout => \Selector21~11_combout\);

-- Location: IOIBUF_X81_Y64_N15
\DFWL[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(31),
	o => \DFWL[31]~input_o\);

-- Location: FF_X59_Y50_N9
\DFWLREG[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[31]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(31));

-- Location: LCCOMB_X59_Y50_N8
\Selector21~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~12_combout\ = (STEP(0) & (\DOUT[7]~reg0_q\)) # (!STEP(0) & ((STEP(1) & ((DFWLREG(31)))) # (!STEP(1) & (\DOUT[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[7]~reg0_q\,
	datab => STEP(0),
	datac => DFWLREG(31),
	datad => STEP(1),
	combout => \Selector21~12_combout\);

-- Location: IOIBUF_X58_Y0_N15
\PTW2[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW2(7),
	o => \PTW2[7]~input_o\);

-- Location: FF_X59_Y50_N19
\PTW2REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW2[7]~input_o\,
	sload => VCC,
	ena => \Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW2REG(7));

-- Location: IOIBUF_X52_Y0_N1
\DFWL[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(23),
	o => \DFWL[23]~input_o\);

-- Location: LCCOMB_X59_Y50_N0
\DFWLREG[23]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DFWLREG[23]~feeder_combout\ = \DFWL[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \DFWL[23]~input_o\,
	combout => \DFWLREG[23]~feeder_combout\);

-- Location: FF_X59_Y50_N1
\DFWLREG[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DFWLREG[23]~feeder_combout\,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(23));

-- Location: IOIBUF_X38_Y0_N8
\DFWL[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(15),
	o => \DFWL[15]~input_o\);

-- Location: FF_X59_Y50_N11
\DFWLREG[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[15]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(15));

-- Location: LCCOMB_X59_Y50_N10
\Selector21~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~13_combout\ = (STEP(1) & ((DFWLREG(23)) # ((\Equal1~0_combout\)))) # (!STEP(1) & (((DFWLREG(15) & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => DFWLREG(23),
	datac => DFWLREG(15),
	datad => \Equal1~0_combout\,
	combout => \Selector21~13_combout\);

-- Location: LCCOMB_X59_Y50_N18
\Selector21~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~14_combout\ = (\Equal1~0_combout\ & ((\Selector21~13_combout\ & (\DOUT[7]~reg0_q\)) # (!\Selector21~13_combout\ & ((PTW2REG(7)))))) # (!\Equal1~0_combout\ & (((\Selector21~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DOUT[7]~reg0_q\,
	datab => \Equal1~0_combout\,
	datac => PTW2REG(7),
	datad => \Selector21~13_combout\,
	combout => \Selector21~14_combout\);

-- Location: LCCOMB_X59_Y50_N20
\Selector21~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~43_combout\ = (STEP(1) & ((STEP(0) & ((\Selector21~14_combout\))) # (!STEP(0) & (\DOUT[7]~reg0_q\)))) # (!STEP(1) & ((STEP(0) & (\DOUT[7]~reg0_q\)) # (!STEP(0) & ((\Selector21~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => \DOUT[7]~reg0_q\,
	datad => \Selector21~14_combout\,
	combout => \Selector21~43_combout\);

-- Location: LCCOMB_X59_Y50_N24
\Selector21~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~15_combout\ = (STEP(2) & ((STEP(3)) # ((\Selector21~12_combout\)))) # (!STEP(2) & (!STEP(3) & ((\Selector21~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(3),
	datac => \Selector21~12_combout\,
	datad => \Selector21~43_combout\,
	combout => \Selector21~15_combout\);

-- Location: LCCOMB_X59_Y50_N28
\Selector21~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~17_combout\ = (STEP(3) & ((\Selector21~15_combout\ & (\Selector21~44_combout\)) # (!\Selector21~15_combout\ & ((\Selector21~11_combout\))))) # (!STEP(3) & (((\Selector21~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~44_combout\,
	datab => \Selector21~11_combout\,
	datac => STEP(3),
	datad => \Selector21~15_combout\,
	combout => \Selector21~17_combout\);

-- Location: LCCOMB_X59_Y50_N14
\Selector21~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~18_combout\ = (STEP(4) & (\Selector21~10_combout\)) # (!STEP(4) & ((\Selector21~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datac => \Selector21~10_combout\,
	datad => \Selector21~17_combout\,
	combout => \Selector21~18_combout\);

-- Location: LCCOMB_X61_Y50_N20
\DOUT[7]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \DOUT[7]~2_combout\ = (STEP(5) & (\DOUT[7]~reg0_q\)) # (!STEP(5) & ((\Selector21~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(5),
	datac => \DOUT[7]~reg0_q\,
	datad => \Selector21~18_combout\,
	combout => \DOUT[7]~2_combout\);

-- Location: IOIBUF_X81_Y10_N15
\F1L[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(15),
	o => \F1L[15]~input_o\);

-- Location: FF_X63_Y50_N27
\FTW1L[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[15]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(15));

-- Location: LCCOMB_X63_Y50_N26
\Selector21~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~19_combout\ = (STEP(1) & ((STEP(0) & ((\DOUT[7]~reg0_q\))) # (!STEP(0) & (FTW1L(15))))) # (!STEP(1) & (((\DOUT[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => FTW1L(15),
	datad => \DOUT[7]~reg0_q\,
	combout => \Selector21~19_combout\);

-- Location: IOIBUF_X81_Y46_N8
\F1L[23]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(23),
	o => \F1L[23]~input_o\);

-- Location: FF_X63_Y50_N17
\FTW1L[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[23]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(23));

-- Location: LCCOMB_X63_Y50_N16
\Selector21~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~20_combout\ = (STEP(1) & (((\DOUT[7]~reg0_q\)))) # (!STEP(1) & ((STEP(0) & (FTW1L(23))) # (!STEP(0) & ((\DOUT[7]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => FTW1L(23),
	datad => \DOUT[7]~reg0_q\,
	combout => \Selector21~20_combout\);

-- Location: LCCOMB_X62_Y50_N8
\Selector21~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~22_combout\ = (STEP(3) & (((STEP(2)) # (\Selector21~20_combout\)))) # (!STEP(3) & (\Selector21~21_combout\ & (!STEP(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~21_combout\,
	datab => STEP(3),
	datac => STEP(2),
	datad => \Selector21~20_combout\,
	combout => \Selector21~22_combout\);

-- Location: IOIBUF_X70_Y0_N15
\F1L[31]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1L(31),
	o => \F1L[31]~input_o\);

-- Location: FF_X63_Y50_N23
\FTW1L[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1L[31]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1L(31));

-- Location: LCCOMB_X63_Y50_N22
\Selector21~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~23_combout\ = (STEP(0) & (FTW1H(7) & ((STEP(1))))) # (!STEP(0) & (((FTW1L(31) & !STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW1H(7),
	datab => STEP(0),
	datac => FTW1L(31),
	datad => STEP(1),
	combout => \Selector21~23_combout\);

-- Location: LCCOMB_X61_Y50_N12
\Selector21~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~45_combout\ = (\Selector21~23_combout\) # ((\DOUT[7]~reg0_q\ & (STEP(1) $ (STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \DOUT[7]~reg0_q\,
	datac => \Selector21~23_combout\,
	datad => STEP(0),
	combout => \Selector21~45_combout\);

-- Location: LCCOMB_X61_Y50_N8
\Selector21~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~24_combout\ = (STEP(2) & ((\Selector21~22_combout\ & ((\Selector21~45_combout\))) # (!\Selector21~22_combout\ & (\Selector21~19_combout\)))) # (!STEP(2) & (((\Selector21~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector21~19_combout\,
	datac => \Selector21~22_combout\,
	datad => \Selector21~45_combout\,
	combout => \Selector21~24_combout\);

-- Location: IOIBUF_X42_Y0_N15
\F2H[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2H(15),
	o => \F2H[15]~input_o\);

-- Location: FF_X63_Y50_N19
\FTW2H[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2H[15]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2H(15));

-- Location: LCCOMB_X63_Y50_N18
\Selector21~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~35_combout\ = (STEP(1) & ((STEP(0) & ((\DOUT[7]~reg0_q\))) # (!STEP(0) & (FTW2H(15))))) # (!STEP(1) & (((\DOUT[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => FTW2H(15),
	datad => \DOUT[7]~reg0_q\,
	combout => \Selector21~35_combout\);

-- Location: IOIBUF_X56_Y0_N8
\DFWL[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DFWL(7),
	o => \DFWL[7]~input_o\);

-- Location: FF_X57_Y51_N25
\DFWLREG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \DFWL[7]~input_o\,
	sload => VCC,
	ena => \DFWLREG[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => DFWLREG(7));

-- Location: LCCOMB_X57_Y51_N24
\Selector21~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~39_combout\ = (!\Equal1~0_combout\ & (\Selector18~21_combout\ & (DFWLREG(7) & !\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Selector18~21_combout\,
	datac => DFWLREG(7),
	datad => \Equal4~0_combout\,
	combout => \Selector21~39_combout\);

-- Location: LCCOMB_X61_Y50_N18
\Selector21~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~40_combout\ = (\Selector21~39_combout\) # ((\DOUT[7]~reg0_q\ & ((\Equal4~0_combout\) # (!\Selector18~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \DOUT[7]~reg0_q\,
	datac => \Selector18~21_combout\,
	datad => \Selector21~39_combout\,
	combout => \Selector21~40_combout\);

-- Location: LCCOMB_X61_Y50_N4
\Selector21~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~41_combout\ = (\Selector21~38_combout\ & (((\Selector21~40_combout\)) # (!STEP(3)))) # (!\Selector21~38_combout\ & (STEP(3) & (\Selector21~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector21~38_combout\,
	datab => STEP(3),
	datac => \Selector21~35_combout\,
	datad => \Selector21~40_combout\,
	combout => \Selector21~41_combout\);

-- Location: LCCOMB_X61_Y50_N28
\Selector21~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~32_combout\ = (STEP(3) & ((STEP(1) & (!STEP(2) & !STEP(0))) # (!STEP(1) & (STEP(2) & STEP(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(3),
	datac => STEP(2),
	datad => STEP(0),
	combout => \Selector21~32_combout\);

-- Location: LCCOMB_X61_Y50_N26
\Selector21~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~33_combout\ = (\DOUT[7]~reg0_q\ & !\Selector21~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DOUT[7]~reg0_q\,
	datad => \Selector21~32_combout\,
	combout => \Selector21~33_combout\);

-- Location: LCCOMB_X61_Y50_N10
\Selector21~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~25_combout\ = (\DOUT[7]~reg0_q\ & ((STEP(1)) # (!STEP(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datac => \DOUT[7]~reg0_q\,
	datad => STEP(0),
	combout => \Selector21~25_combout\);

-- Location: IOIBUF_X81_Y58_N1
\F2L[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F2L(15),
	o => \F2L[15]~input_o\);

-- Location: FF_X63_Y50_N5
\FTW2L[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F2L[15]~input_o\,
	sload => VCC,
	ena => \FTW2L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW2L(15));

-- Location: LCCOMB_X63_Y50_N4
\Selector21~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~30_combout\ = (STEP(1) & ((STEP(0) & ((\DOUT[7]~reg0_q\))) # (!STEP(0) & (FTW2L(15))))) # (!STEP(1) & (((\DOUT[7]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(0),
	datac => FTW2L(15),
	datad => \DOUT[7]~reg0_q\,
	combout => \Selector21~30_combout\);

-- Location: IOIBUF_X33_Y67_N22
\F1H[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F1H(15),
	o => \F1H[15]~input_o\);

-- Location: FF_X61_Y51_N19
\FTW1H[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \F1H[15]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => FTW1H(15));

-- Location: LCCOMB_X61_Y50_N14
\Selector21~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~28_combout\ = (STEP(1) & ((STEP(0) & (\DOUT[7]~reg0_q\)) # (!STEP(0) & ((FTW1H(15)))))) # (!STEP(1) & (\DOUT[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => \DOUT[7]~reg0_q\,
	datac => FTW1H(15),
	datad => STEP(0),
	combout => \Selector21~28_combout\);

-- Location: IOIBUF_X81_Y53_N8
\PTW1[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PTW1(7),
	o => \PTW1[7]~input_o\);

-- Location: FF_X62_Y53_N19
\PTW1REG[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	asdata => \PTW1[7]~input_o\,
	sload => VCC,
	ena => \FTW1L[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PTW1REG(7));

-- Location: LCCOMB_X62_Y53_N18
\Selector21~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~26_combout\ = (STEP(1) & (FTW2L(7) & ((\always1~0_combout\)))) # (!STEP(1) & (((PTW1REG(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => FTW2L(7),
	datab => STEP(1),
	datac => PTW1REG(7),
	datad => \always1~0_combout\,
	combout => \Selector21~26_combout\);

-- Location: LCCOMB_X61_Y50_N16
\Selector21~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~27_combout\ = (\Selector18~20_combout\ & (\DOUT[7]~reg0_q\ & (\Selector22~12_combout\))) # (!\Selector18~20_combout\ & ((\Selector21~26_combout\) # ((\DOUT[7]~reg0_q\ & \Selector22~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~20_combout\,
	datab => \DOUT[7]~reg0_q\,
	datac => \Selector22~12_combout\,
	datad => \Selector21~26_combout\,
	combout => \Selector21~27_combout\);

-- Location: LCCOMB_X61_Y50_N24
\Selector21~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~29_combout\ = (STEP(2) & (STEP(3))) # (!STEP(2) & ((STEP(3) & ((\Selector21~27_combout\))) # (!STEP(3) & (\Selector21~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => STEP(3),
	datac => \Selector21~28_combout\,
	datad => \Selector21~27_combout\,
	combout => \Selector21~29_combout\);

-- Location: LCCOMB_X61_Y50_N6
\Selector21~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~31_combout\ = (STEP(2) & ((\Selector21~29_combout\ & ((\Selector21~30_combout\))) # (!\Selector21~29_combout\ & (\Selector21~25_combout\)))) # (!STEP(2) & (((\Selector21~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \Selector21~25_combout\,
	datac => \Selector21~30_combout\,
	datad => \Selector21~29_combout\,
	combout => \Selector21~31_combout\);

-- Location: LCCOMB_X61_Y50_N0
\Selector21~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~34_combout\ = (STEP(4) & (STEP(5))) # (!STEP(4) & ((STEP(5) & ((\Selector21~31_combout\))) # (!STEP(5) & (\Selector21~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(5),
	datac => \Selector21~33_combout\,
	datad => \Selector21~31_combout\,
	combout => \Selector21~34_combout\);

-- Location: LCCOMB_X61_Y50_N30
\Selector21~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector21~42_combout\ = (STEP(4) & ((\Selector21~34_combout\ & ((\Selector21~41_combout\))) # (!\Selector21~34_combout\ & (\Selector21~24_combout\)))) # (!STEP(4) & (((\Selector21~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => \Selector21~24_combout\,
	datac => \Selector21~41_combout\,
	datad => \Selector21~34_combout\,
	combout => \Selector21~42_combout\);

-- Location: FF_X61_Y50_N21
\DOUT[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \DOUT[7]~2_combout\,
	asdata => \Selector21~42_combout\,
	sload => ALT_INV_STEP(6),
	ena => \COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DOUT[7]~reg0_q\);

-- Location: LCCOMB_X61_Y52_N24
\Selector13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (STEP(0)) # ((STEP(2)) # (STEP(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => STEP(0),
	datac => STEP(2),
	datad => STEP(1),
	combout => \Selector13~1_combout\);

-- Location: LCCOMB_X61_Y52_N12
\Selector13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector13~3_combout\ = (\Selector13~2_combout\ & ((\READY~reg0_q\) # ((STEP(3) & !\Selector13~1_combout\)))) # (!\Selector13~2_combout\ & (\READY~reg0_q\ & ((STEP(3)) # (\Selector13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector13~2_combout\,
	datab => STEP(3),
	datac => \READY~reg0_q\,
	datad => \Selector13~1_combout\,
	combout => \Selector13~3_combout\);

-- Location: FF_X61_Y52_N13
\READY~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector13~3_combout\,
	sclr => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \READY~reg0_q\);

-- Location: LCCOMB_X61_Y52_N6
\Selector37~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (STEP(1) & (\RESET~reg0_q\ & ((!\Selector37~0_combout\) # (!STEP(3))))) # (!STEP(1) & ((\RESET~reg0_q\) # ((!STEP(3) & \Selector37~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(1),
	datab => STEP(3),
	datac => \RESET~reg0_q\,
	datad => \Selector37~0_combout\,
	combout => \Selector37~1_combout\);

-- Location: FF_X61_Y52_N7
\RESET~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector37~1_combout\,
	sclr => \ALT_INV_COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RESET~reg0_q\);

-- Location: LCCOMB_X58_Y49_N28
\WREN~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WREN~1_combout\ = (!STEP(2) & (\COUNTEREN~q\ & (!STEP(5) & \AOUT[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(2),
	datab => \COUNTEREN~q\,
	datac => STEP(5),
	datad => \AOUT[3]~15_combout\,
	combout => \WREN~1_combout\);

-- Location: LCCOMB_X58_Y49_N8
\WREN~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WREN~2_combout\ = (\WREN~0_combout\ & ((\WREN~1_combout\ & (!STEP(6))) # (!\WREN~1_combout\ & ((\WREN~q\))))) # (!\WREN~0_combout\ & (((\WREN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WREN~0_combout\,
	datab => STEP(6),
	datac => \WREN~q\,
	datad => \WREN~1_combout\,
	combout => \WREN~2_combout\);

-- Location: FF_X58_Y49_N9
WREN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \WREN~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WREN~q\);

-- Location: LCCOMB_X63_Y52_N0
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (STEP(5)) # ((STEP(4)) # (STEP(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datac => STEP(4),
	datad => STEP(6),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y52_N24
\Selector12~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~12_combout\ = (STEP(3) & ((STEP(2)) # ((STEP(0) & STEP(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(3),
	combout => \Selector12~12_combout\);

-- Location: LCCOMB_X64_Y52_N24
\WRITE~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \WRITE~0_combout\ = (\WRITE~reg0_q\) # (((!\LessThan0~0_combout\ & !\Selector12~12_combout\)) # (!\WREN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WRITE~reg0_q\,
	datab => \WREN~q\,
	datac => \LessThan0~0_combout\,
	datad => \Selector12~12_combout\,
	combout => \WRITE~0_combout\);

-- Location: LCCOMB_X64_Y52_N18
\Selector12~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~15_combout\ = (STEP(5)) # ((!\WRITE~reg0_q\ & \WREN~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WRITE~reg0_q\,
	datac => STEP(5),
	datad => \WREN~q\,
	combout => \Selector12~15_combout\);

-- Location: LCCOMB_X64_Y52_N4
\Selector12~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~16_combout\ = (!STEP(5) & ((\WRITE~reg0_q\) # (\WREN~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WRITE~reg0_q\,
	datac => STEP(5),
	datad => \WREN~q\,
	combout => \Selector12~16_combout\);

-- Location: LCCOMB_X63_Y52_N28
\Selector12~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~17_combout\ = (STEP(0) & (STEP(1) $ (STEP(2) $ (!STEP(3))))) # (!STEP(0) & ((STEP(1) & ((STEP(3)))) # (!STEP(1) & (STEP(2) & !STEP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(3),
	combout => \Selector12~17_combout\);

-- Location: LCCOMB_X64_Y52_N14
\Selector12~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~19_combout\ = (\Selector12~16_combout\ & ((\Selector12~17_combout\) # (\Selector12~18_combout\ $ (STEP(4))))) # (!\Selector12~16_combout\ & (((STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~18_combout\,
	datab => STEP(4),
	datac => \Selector12~16_combout\,
	datad => \Selector12~17_combout\,
	combout => \Selector12~19_combout\);

-- Location: LCCOMB_X64_Y52_N20
\Selector12~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~20_combout\ = (\Selector12~16_combout\ & ((\Selector12~18_combout\ & ((!\Selector12~17_combout\))) # (!\Selector12~18_combout\ & (!STEP(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector12~18_combout\,
	datab => STEP(4),
	datac => \Selector12~16_combout\,
	datad => \Selector12~17_combout\,
	combout => \Selector12~20_combout\);

-- Location: LCCOMB_X64_Y52_N22
\Selector12~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~21_combout\ = (\Selector12~15_combout\ & (\Selector12~19_combout\ & ((STEP(6)) # (!\Selector12~20_combout\)))) # (!\Selector12~15_combout\ & (((!\Selector12~19_combout\ & \Selector12~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(6),
	datab => \Selector12~15_combout\,
	datac => \Selector12~19_combout\,
	datad => \Selector12~20_combout\,
	combout => \Selector12~21_combout\);

-- Location: LCCOMB_X63_Y52_N22
\Selector12~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~13_combout\ = (STEP(5)) # ((STEP(6)) # ((STEP(4)) # (\Selector12~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => STEP(6),
	datac => STEP(4),
	datad => \Selector12~12_combout\,
	combout => \Selector12~13_combout\);

-- Location: LCCOMB_X64_Y52_N0
\Selector12~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~14_combout\ = (\WRITE~reg0_q\ & (((\Selector12~11_combout\)))) # (!\WRITE~reg0_q\ & (\WREN~q\ & (!\Selector12~11_combout\ & \Selector12~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WRITE~reg0_q\,
	datab => \WREN~q\,
	datac => \Selector12~11_combout\,
	datad => \Selector12~13_combout\,
	combout => \Selector12~14_combout\);

-- Location: LCCOMB_X64_Y52_N26
\Selector12~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~22_combout\ = (STEP(5) & ((\Selector12~21_combout\ & (!\WRITE~0_combout\)) # (!\Selector12~21_combout\ & ((\Selector12~14_combout\))))) # (!STEP(5) & (((\Selector12~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \WRITE~0_combout\,
	datac => \Selector12~21_combout\,
	datad => \Selector12~14_combout\,
	combout => \Selector12~22_combout\);

-- Location: LCCOMB_X63_Y52_N4
\Selector12~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~27_combout\ = (STEP(0) & ((STEP(2) & (STEP(1) $ (STEP(3)))) # (!STEP(2) & (!STEP(1) & !STEP(3))))) # (!STEP(0) & ((STEP(2) & (!STEP(1) & !STEP(3))) # (!STEP(2) & (STEP(1) & STEP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(2),
	datac => STEP(1),
	datad => STEP(3),
	combout => \Selector12~27_combout\);

-- Location: LCCOMB_X64_Y53_N4
\Selector12~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~23_combout\ = (STEP(0) & ((STEP(1) & (!STEP(2) & STEP(3))) # (!STEP(1) & (STEP(2) & !STEP(3))))) # (!STEP(0) & ((STEP(1) & (STEP(2) $ (!STEP(3)))) # (!STEP(1) & (!STEP(2) & STEP(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(1),
	datac => STEP(2),
	datad => STEP(3),
	combout => \Selector12~23_combout\);

-- Location: LCCOMB_X63_Y52_N26
\Selector12~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~24_combout\ = (STEP(0) & ((STEP(2) & ((!STEP(3)) # (!STEP(1)))) # (!STEP(2) & (STEP(1) $ (!STEP(3)))))) # (!STEP(0) & ((STEP(2) & (STEP(1) $ (!STEP(3)))) # (!STEP(2) & ((STEP(1)) # (STEP(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => STEP(2),
	datac => STEP(1),
	datad => STEP(3),
	combout => \Selector12~24_combout\);

-- Location: LCCOMB_X64_Y52_N8
\Selector12~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~25_combout\ = (\Selector12~24_combout\ & ((!\WRITE~0_combout\))) # (!\Selector12~24_combout\ & (\WRITE~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WRITE~reg0_q\,
	datac => \Selector12~24_combout\,
	datad => \WRITE~0_combout\,
	combout => \Selector12~25_combout\);

-- Location: LCCOMB_X64_Y52_N16
\Selector12~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~31_combout\ = (STEP(2) & (\WRITE~reg0_q\ $ (((STEP(1)) # (!STEP(0)))))) # (!STEP(2) & (STEP(1) & (STEP(0) $ (\WRITE~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(0),
	datab => \WRITE~reg0_q\,
	datac => STEP(2),
	datad => STEP(1),
	combout => \Selector12~31_combout\);

-- Location: LCCOMB_X64_Y52_N6
\Selector12~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~32_combout\ = (STEP(3) & (\Selector12~31_combout\ & ((\WRITE~reg0_q\) # (\WREN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(3),
	datab => \WRITE~reg0_q\,
	datac => \WREN~q\,
	datad => \Selector12~31_combout\,
	combout => \Selector12~32_combout\);

-- Location: LCCOMB_X64_Y52_N2
\Selector12~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~26_combout\ = (STEP(4) & ((STEP(5)) # ((\Selector12~25_combout\)))) # (!STEP(4) & (!STEP(5) & ((\Selector12~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(4),
	datab => STEP(5),
	datac => \Selector12~25_combout\,
	datad => \Selector12~32_combout\,
	combout => \Selector12~26_combout\);

-- Location: LCCOMB_X64_Y52_N12
\Selector12~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~29_combout\ = (STEP(5) & ((\Selector12~26_combout\ & (!\Selector12~27_combout\)) # (!\Selector12~26_combout\ & ((!\Selector12~23_combout\))))) # (!STEP(5) & (((\Selector12~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(5),
	datab => \Selector12~27_combout\,
	datac => \Selector12~23_combout\,
	datad => \Selector12~26_combout\,
	combout => \Selector12~29_combout\);

-- Location: LCCOMB_X64_Y52_N10
\Selector12~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~30_combout\ = (STEP(5) & ((\Selector12~29_combout\ & ((!\WRITE~0_combout\))) # (!\Selector12~29_combout\ & (\WRITE~reg0_q\)))) # (!STEP(5) & (((\Selector12~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WRITE~reg0_q\,
	datab => \WRITE~0_combout\,
	datac => STEP(5),
	datad => \Selector12~29_combout\,
	combout => \Selector12~30_combout\);

-- Location: LCCOMB_X64_Y52_N28
\Selector12~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Selector12~28_combout\ = (STEP(6) & (\Selector12~22_combout\)) # (!STEP(6) & ((\Selector12~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => STEP(6),
	datac => \Selector12~22_combout\,
	datad => \Selector12~30_combout\,
	combout => \Selector12~28_combout\);

-- Location: FF_X64_Y52_N29
\WRITE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \count_clk[10]~clkctrl_outclk\,
	d => \Selector12~28_combout\,
	ena => \COUNTEREN~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WRITE~reg0_q\);

-- Location: IOIBUF_X31_Y0_N22
\RST~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

ww_AOUT(0) <= \AOUT[0]~output_o\;

ww_AOUT(1) <= \AOUT[1]~output_o\;

ww_AOUT(2) <= \AOUT[2]~output_o\;

ww_AOUT(3) <= \AOUT[3]~output_o\;

ww_AOUT(4) <= \AOUT[4]~output_o\;

ww_AOUT(5) <= \AOUT[5]~output_o\;

ww_DOUT(0) <= \DOUT[0]~output_o\;

ww_DOUT(1) <= \DOUT[1]~output_o\;

ww_DOUT(2) <= \DOUT[2]~output_o\;

ww_DOUT(3) <= \DOUT[3]~output_o\;

ww_DOUT(4) <= \DOUT[4]~output_o\;

ww_DOUT(5) <= \DOUT[5]~output_o\;

ww_DOUT(6) <= \DOUT[6]~output_o\;

ww_DOUT(7) <= \DOUT[7]~output_o\;

ww_READY <= \READY~output_o\;

ww_RESET <= \RESET~output_o\;

ww_WRITE <= \WRITE~output_o\;

ww_CONFIGERR <= \CONFIGERR~output_o\;
END structure;


