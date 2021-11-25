-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "11/25/2021 15:21:40"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UlaTotal IS
    PORT (
	entradaA : IN std_logic_vector(31 DOWNTO 0);
	entradaB : IN std_logic_vector(31 DOWNTO 0);
	saida : OUT std_logic_vector(31 DOWNTO 0);
	FlagZ : OUT std_logic;
	Seletor : IN std_logic_vector(2 DOWNTO 0);
	SeletorSaida : OUT std_logic_vector(2 DOWNTO 0);
	entradaAsaida : OUT std_logic_vector(31 DOWNTO 0);
	entradaBsaida : OUT std_logic_vector(31 DOWNTO 0)
	);
END UlaTotal;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[16]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[17]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[18]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[19]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[20]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[21]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[22]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[23]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[24]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[25]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[26]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[27]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[28]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[29]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[30]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[31]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FlagZ	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SeletorSaida[0]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SeletorSaida[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SeletorSaida[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[4]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[7]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[8]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[9]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[10]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[11]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[12]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[13]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[14]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[15]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[16]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[17]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[18]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[19]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[20]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[21]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[22]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[23]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[24]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[25]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[26]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[27]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[28]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[29]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[30]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaAsaida[31]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[3]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[4]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[5]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[9]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[10]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[11]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[12]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[13]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[14]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[15]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[16]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[17]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[18]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[19]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[20]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[21]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[22]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[23]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[24]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[25]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[26]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[27]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[28]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[29]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[30]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaBsaida[31]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seletor[2]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[12]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[12]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[13]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[13]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[14]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[14]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[11]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[11]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[8]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[8]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[9]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[9]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[10]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[10]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[7]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[7]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[5]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[4]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[4]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[0]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[0]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[1]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[3]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[3]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[2]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[15]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[15]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[16]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[16]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[17]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[17]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[18]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[18]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[19]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[19]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[20]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[20]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[21]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[21]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[22]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[22]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[23]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[23]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[24]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[24]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[25]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[25]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[26]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[26]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[27]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[27]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[28]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[28]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[29]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[29]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[30]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[30]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seletor[0]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Seletor[1]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaA[31]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entradaB[31]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF UlaTotal IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entradaA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_FlagZ : std_logic;
SIGNAL ww_Seletor : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_SeletorSaida : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_entradaAsaida : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entradaBsaida : std_logic_vector(31 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \entradaA[22]~input_o\ : std_logic;
SIGNAL \entradaB[22]~input_o\ : std_logic;
SIGNAL \Seletor[2]~input_o\ : std_logic;
SIGNAL \ULA28|somador|carryOut~4_combout\ : std_logic;
SIGNAL \entradaB[28]~input_o\ : std_logic;
SIGNAL \entradaA[28]~input_o\ : std_logic;
SIGNAL \entradaA[27]~input_o\ : std_logic;
SIGNAL \entradaB[27]~input_o\ : std_logic;
SIGNAL \ULA28|somador|carryOut~0_combout\ : std_logic;
SIGNAL \entradaA[25]~input_o\ : std_logic;
SIGNAL \entradaB[25]~input_o\ : std_logic;
SIGNAL \ULA25|somador|carryOut~0_combout\ : std_logic;
SIGNAL \entradaA[24]~input_o\ : std_logic;
SIGNAL \entradaB[26]~input_o\ : std_logic;
SIGNAL \entradaA[26]~input_o\ : std_logic;
SIGNAL \ULA26|somador|carryOut~0_combout\ : std_logic;
SIGNAL \entradaB[24]~input_o\ : std_logic;
SIGNAL \ULA28|somador|carryOut~3_combout\ : std_logic;
SIGNAL \ULA24|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA28|somador|carryOut~2_combout\ : std_logic;
SIGNAL \ULA28|somador|carryOut~6_combout\ : std_logic;
SIGNAL \ULA28|somador|carryOut~5_combout\ : std_logic;
SIGNAL \ULA28|somador|carryOut~7_combout\ : std_logic;
SIGNAL \entradaA[23]~input_o\ : std_logic;
SIGNAL \entradaB[23]~input_o\ : std_logic;
SIGNAL \ULA23|MuxValorB|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|somador|carryOut~8_combout\ : std_logic;
SIGNAL \entradaA[19]~input_o\ : std_logic;
SIGNAL \entradaB[21]~input_o\ : std_logic;
SIGNAL \entradaA[20]~input_o\ : std_logic;
SIGNAL \entradaB[20]~input_o\ : std_logic;
SIGNAL \entradaA[21]~input_o\ : std_logic;
SIGNAL \ULA21|somador|carryOut~6_combout\ : std_logic;
SIGNAL \entradaB[19]~input_o\ : std_logic;
SIGNAL \entradaB[18]~input_o\ : std_logic;
SIGNAL \entradaA[18]~input_o\ : std_logic;
SIGNAL \ULA21|somador|carryOut~5_combout\ : std_logic;
SIGNAL \ULA21|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA21|somador|carryOut~7_combout\ : std_logic;
SIGNAL \entradaA[17]~input_o\ : std_logic;
SIGNAL \entradaB[17]~input_o\ : std_logic;
SIGNAL \ULA17|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA18|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA19|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA21|somador|carryOut~2_combout\ : std_logic;
SIGNAL \ULA21|somador|carryOut~3_combout\ : std_logic;
SIGNAL \entradaB[16]~input_o\ : std_logic;
SIGNAL \ULA16|MuxValorB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[16]~input_o\ : std_logic;
SIGNAL \entradaB[15]~input_o\ : std_logic;
SIGNAL \entradaA[15]~input_o\ : std_logic;
SIGNAL \ULA21|somador|carryOut~4_combout\ : std_logic;
SIGNAL \ULA21|somador|carryOut~8_combout\ : std_logic;
SIGNAL \ULA15|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA16|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA21|somador|carryOut~1_combout\ : std_logic;
SIGNAL \ULA23|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA22|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA28|somador|carryOut~1_combout\ : std_logic;
SIGNAL \entradaA[12]~input_o\ : std_logic;
SIGNAL \entradaB[13]~input_o\ : std_logic;
SIGNAL \entradaB[14]~input_o\ : std_logic;
SIGNAL \entradaA[13]~input_o\ : std_logic;
SIGNAL \entradaA[14]~input_o\ : std_logic;
SIGNAL \ULA14|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA14|somador|carryOut~2_combout\ : std_logic;
SIGNAL \entradaB[11]~input_o\ : std_logic;
SIGNAL \entradaA[11]~input_o\ : std_logic;
SIGNAL \ULA14|somador|carryOut~1_combout\ : std_logic;
SIGNAL \entradaB[12]~input_o\ : std_logic;
SIGNAL \ULA14|somador|carryOut~3_combout\ : std_logic;
SIGNAL \entradaA[8]~input_o\ : std_logic;
SIGNAL \entradaB[5]~input_o\ : std_logic;
SIGNAL \entradaB[7]~input_o\ : std_logic;
SIGNAL \entradaB[6]~input_o\ : std_logic;
SIGNAL \entradaA[6]~input_o\ : std_logic;
SIGNAL \entradaA[7]~input_o\ : std_logic;
SIGNAL \ULA7|somador|carryOut~6_combout\ : std_logic;
SIGNAL \entradaB[4]~input_o\ : std_logic;
SIGNAL \entradaA[4]~input_o\ : std_logic;
SIGNAL \ULA7|somador|carryOut~5_combout\ : std_logic;
SIGNAL \entradaA[5]~input_o\ : std_logic;
SIGNAL \ULA7|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA7|somador|carryOut~7_combout\ : std_logic;
SIGNAL \entradaB[8]~input_o\ : std_logic;
SIGNAL \ULA8|MuxValorB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[9]~input_o\ : std_logic;
SIGNAL \entradaB[9]~input_o\ : std_logic;
SIGNAL \ULA9|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA12|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA11|somador|carryOut~0_combout\ : std_logic;
SIGNAL \entradaB[10]~input_o\ : std_logic;
SIGNAL \ULA10|MuxValorB|saida_MUX~0_combout\ : std_logic;
SIGNAL \entradaA[10]~input_o\ : std_logic;
SIGNAL \ULA14|somador|carryOut~4_combout\ : std_logic;
SIGNAL \ULA14|somador|carryOut~5_combout\ : std_logic;
SIGNAL \ULA14|somador|carryOut~6_combout\ : std_logic;
SIGNAL \ULA5|somador|carryOut~0_combout\ : std_logic;
SIGNAL \entradaA[0]~input_o\ : std_logic;
SIGNAL \entradaA[1]~input_o\ : std_logic;
SIGNAL \entradaB[0]~input_o\ : std_logic;
SIGNAL \entradaB[1]~input_o\ : std_logic;
SIGNAL \ULA7|somador|carryOut~1_combout\ : std_logic;
SIGNAL \ULA4|somador|carryOut~0_combout\ : std_logic;
SIGNAL \entradaB[3]~input_o\ : std_logic;
SIGNAL \entradaA[3]~input_o\ : std_logic;
SIGNAL \entradaB[2]~input_o\ : std_logic;
SIGNAL \entradaA[2]~input_o\ : std_logic;
SIGNAL \ULA7|somador|carryOut~2_combout\ : std_logic;
SIGNAL \ULA7|somador|carryOut~3_combout\ : std_logic;
SIGNAL \ULA7|somador|carryOut~4_combout\ : std_logic;
SIGNAL \ULA14|somador|carryOut~7_combout\ : std_logic;
SIGNAL \ULA28|somador|carryOut~combout\ : std_logic;
SIGNAL \entradaB[30]~input_o\ : std_logic;
SIGNAL \entradaA[30]~input_o\ : std_logic;
SIGNAL \entradaA[29]~input_o\ : std_logic;
SIGNAL \entradaB[29]~input_o\ : std_logic;
SIGNAL \ULA30|somador|carryOut~1_combout\ : std_logic;
SIGNAL \entradaB[31]~input_o\ : std_logic;
SIGNAL \entradaA[31]~input_o\ : std_logic;
SIGNAL \Seletor[0]~input_o\ : std_logic;
SIGNAL \Seletor[1]~input_o\ : std_logic;
SIGNAL \ULA0|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA30|somador|carryOut~0_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA1|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA4|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA7|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA9|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA12|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA17|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA22|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA27|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA31|somador|saida~0_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|saida_MUX~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_entradaB[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_Seletor[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Seletor[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaB[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_entradaA[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Seletor[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|ALT_INV_saida_MUX~2_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA31|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA31|somador|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ULA30|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA29|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA27|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA26|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA25|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA24|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA23|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA22|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA20|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA19|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA18|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA17|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA16|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA15|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA13|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA12|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA11|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA10|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA9|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA8|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA7|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA6|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA5|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA4|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA3|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA2|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA1|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|ALT_INV_saida_MUX~1_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA30|somador|ALT_INV_carryOut~1_combout\ : std_logic;
SIGNAL \ULA30|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~8_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~7_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~6_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~5_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~4_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~3_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~2_combout\ : std_logic;
SIGNAL \ULA23|MuxValorB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~1_combout\ : std_logic;
SIGNAL \ULA28|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA26|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA25|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA24|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA23|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA22|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carryOut~8_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carryOut~7_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carryOut~6_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carryOut~5_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carryOut~4_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carryOut~3_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carryOut~2_combout\ : std_logic;
SIGNAL \ULA16|MuxValorB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carryOut~1_combout\ : std_logic;
SIGNAL \ULA21|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA19|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA18|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA17|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA16|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA15|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carryOut~7_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carryOut~6_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carryOut~5_combout\ : std_logic;
SIGNAL \ULA7|somador|ALT_INV_carryOut~7_combout\ : std_logic;
SIGNAL \ULA7|somador|ALT_INV_carryOut~6_combout\ : std_logic;
SIGNAL \ULA7|somador|ALT_INV_carryOut~5_combout\ : std_logic;
SIGNAL \ULA7|somador|ALT_INV_carryOut~4_combout\ : std_logic;
SIGNAL \ULA7|somador|ALT_INV_carryOut~3_combout\ : std_logic;
SIGNAL \ULA7|somador|ALT_INV_carryOut~2_combout\ : std_logic;
SIGNAL \ULA7|somador|ALT_INV_carryOut~1_combout\ : std_logic;
SIGNAL \ULA4|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA5|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA7|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carryOut~4_combout\ : std_logic;
SIGNAL \ULA12|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA11|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA10|MuxValorB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA9|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA8|MuxValorB|ALT_INV_saida_MUX~0_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carryOut~3_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carryOut~2_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carryOut~1_combout\ : std_logic;
SIGNAL \ULA14|somador|ALT_INV_carryOut~0_combout\ : std_logic;
SIGNAL \ULA0|MuxSaida|ALT_INV_saida_MUX~2_combout\ : std_logic;

BEGIN

ww_entradaA <= entradaA;
ww_entradaB <= entradaB;
saida <= ww_saida;
FlagZ <= ww_FlagZ;
ww_Seletor <= Seletor;
SeletorSaida <= ww_SeletorSaida;
entradaAsaida <= ww_entradaAsaida;
entradaBsaida <= ww_entradaBsaida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entradaB[31]~input_o\ <= NOT \entradaB[31]~input_o\;
\ALT_INV_entradaA[31]~input_o\ <= NOT \entradaA[31]~input_o\;
\ALT_INV_Seletor[1]~input_o\ <= NOT \Seletor[1]~input_o\;
\ALT_INV_Seletor[0]~input_o\ <= NOT \Seletor[0]~input_o\;
\ALT_INV_entradaB[30]~input_o\ <= NOT \entradaB[30]~input_o\;
\ALT_INV_entradaA[30]~input_o\ <= NOT \entradaA[30]~input_o\;
\ALT_INV_entradaB[29]~input_o\ <= NOT \entradaB[29]~input_o\;
\ALT_INV_entradaA[29]~input_o\ <= NOT \entradaA[29]~input_o\;
\ALT_INV_entradaB[28]~input_o\ <= NOT \entradaB[28]~input_o\;
\ALT_INV_entradaA[28]~input_o\ <= NOT \entradaA[28]~input_o\;
\ALT_INV_entradaB[27]~input_o\ <= NOT \entradaB[27]~input_o\;
\ALT_INV_entradaA[27]~input_o\ <= NOT \entradaA[27]~input_o\;
\ALT_INV_entradaB[26]~input_o\ <= NOT \entradaB[26]~input_o\;
\ALT_INV_entradaA[26]~input_o\ <= NOT \entradaA[26]~input_o\;
\ALT_INV_entradaB[25]~input_o\ <= NOT \entradaB[25]~input_o\;
\ALT_INV_entradaA[25]~input_o\ <= NOT \entradaA[25]~input_o\;
\ALT_INV_entradaB[24]~input_o\ <= NOT \entradaB[24]~input_o\;
\ALT_INV_entradaA[24]~input_o\ <= NOT \entradaA[24]~input_o\;
\ALT_INV_entradaB[23]~input_o\ <= NOT \entradaB[23]~input_o\;
\ALT_INV_entradaA[23]~input_o\ <= NOT \entradaA[23]~input_o\;
\ALT_INV_entradaB[22]~input_o\ <= NOT \entradaB[22]~input_o\;
\ALT_INV_entradaA[22]~input_o\ <= NOT \entradaA[22]~input_o\;
\ALT_INV_entradaB[21]~input_o\ <= NOT \entradaB[21]~input_o\;
\ALT_INV_entradaA[21]~input_o\ <= NOT \entradaA[21]~input_o\;
\ALT_INV_entradaB[20]~input_o\ <= NOT \entradaB[20]~input_o\;
\ALT_INV_entradaA[20]~input_o\ <= NOT \entradaA[20]~input_o\;
\ALT_INV_entradaB[19]~input_o\ <= NOT \entradaB[19]~input_o\;
\ALT_INV_entradaA[19]~input_o\ <= NOT \entradaA[19]~input_o\;
\ALT_INV_entradaB[18]~input_o\ <= NOT \entradaB[18]~input_o\;
\ALT_INV_entradaA[18]~input_o\ <= NOT \entradaA[18]~input_o\;
\ALT_INV_entradaB[17]~input_o\ <= NOT \entradaB[17]~input_o\;
\ALT_INV_entradaA[17]~input_o\ <= NOT \entradaA[17]~input_o\;
\ALT_INV_entradaB[16]~input_o\ <= NOT \entradaB[16]~input_o\;
\ALT_INV_entradaA[16]~input_o\ <= NOT \entradaA[16]~input_o\;
\ALT_INV_entradaB[15]~input_o\ <= NOT \entradaB[15]~input_o\;
\ALT_INV_entradaA[15]~input_o\ <= NOT \entradaA[15]~input_o\;
\ALT_INV_entradaB[2]~input_o\ <= NOT \entradaB[2]~input_o\;
\ALT_INV_entradaA[2]~input_o\ <= NOT \entradaA[2]~input_o\;
\ALT_INV_entradaB[3]~input_o\ <= NOT \entradaB[3]~input_o\;
\ALT_INV_entradaA[3]~input_o\ <= NOT \entradaA[3]~input_o\;
\ALT_INV_entradaB[1]~input_o\ <= NOT \entradaB[1]~input_o\;
\ALT_INV_entradaA[1]~input_o\ <= NOT \entradaA[1]~input_o\;
\ALT_INV_entradaB[0]~input_o\ <= NOT \entradaB[0]~input_o\;
\ALT_INV_entradaA[0]~input_o\ <= NOT \entradaA[0]~input_o\;
\ALT_INV_entradaB[4]~input_o\ <= NOT \entradaB[4]~input_o\;
\ALT_INV_entradaA[4]~input_o\ <= NOT \entradaA[4]~input_o\;
\ALT_INV_entradaB[5]~input_o\ <= NOT \entradaB[5]~input_o\;
\ALT_INV_entradaA[5]~input_o\ <= NOT \entradaA[5]~input_o\;
\ALT_INV_entradaB[6]~input_o\ <= NOT \entradaB[6]~input_o\;
\ALT_INV_entradaA[6]~input_o\ <= NOT \entradaA[6]~input_o\;
\ALT_INV_entradaB[7]~input_o\ <= NOT \entradaB[7]~input_o\;
\ALT_INV_entradaA[7]~input_o\ <= NOT \entradaA[7]~input_o\;
\ALT_INV_entradaB[10]~input_o\ <= NOT \entradaB[10]~input_o\;
\ALT_INV_entradaA[10]~input_o\ <= NOT \entradaA[10]~input_o\;
\ALT_INV_entradaB[9]~input_o\ <= NOT \entradaB[9]~input_o\;
\ALT_INV_entradaA[9]~input_o\ <= NOT \entradaA[9]~input_o\;
\ALT_INV_entradaB[8]~input_o\ <= NOT \entradaB[8]~input_o\;
\ALT_INV_entradaA[8]~input_o\ <= NOT \entradaA[8]~input_o\;
\ALT_INV_entradaB[11]~input_o\ <= NOT \entradaB[11]~input_o\;
\ALT_INV_entradaA[11]~input_o\ <= NOT \entradaA[11]~input_o\;
\ALT_INV_entradaB[14]~input_o\ <= NOT \entradaB[14]~input_o\;
\ALT_INV_entradaA[14]~input_o\ <= NOT \entradaA[14]~input_o\;
\ALT_INV_entradaB[13]~input_o\ <= NOT \entradaB[13]~input_o\;
\ALT_INV_entradaA[13]~input_o\ <= NOT \entradaA[13]~input_o\;
\ALT_INV_entradaB[12]~input_o\ <= NOT \entradaB[12]~input_o\;
\ALT_INV_entradaA[12]~input_o\ <= NOT \entradaA[12]~input_o\;
\ALT_INV_Seletor[2]~input_o\ <= NOT \Seletor[2]~input_o\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ULA31|MuxSaida|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA31|MuxSaida|saida_MUX~2_combout\;
\ULA31|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA31|MuxSaida|saida_MUX~1_combout\;
\ULA31|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA31|MuxSaida|saida_MUX~0_combout\;
\ULA31|somador|ALT_INV_saida~0_combout\ <= NOT \ULA31|somador|saida~0_combout\;
\ULA30|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA30|MuxSaida|saida_MUX~0_combout\;
\ULA29|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA29|MuxSaida|saida_MUX~0_combout\;
\ULA28|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA28|MuxSaida|saida_MUX~0_combout\;
\ULA27|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA27|MuxSaida|saida_MUX~0_combout\;
\ULA26|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA26|MuxSaida|saida_MUX~0_combout\;
\ULA25|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA25|MuxSaida|saida_MUX~0_combout\;
\ULA24|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA24|MuxSaida|saida_MUX~0_combout\;
\ULA23|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA23|MuxSaida|saida_MUX~0_combout\;
\ULA22|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA22|MuxSaida|saida_MUX~0_combout\;
\ULA21|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA21|MuxSaida|saida_MUX~0_combout\;
\ULA20|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA20|MuxSaida|saida_MUX~0_combout\;
\ULA19|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA19|MuxSaida|saida_MUX~0_combout\;
\ULA18|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA18|MuxSaida|saida_MUX~0_combout\;
\ULA17|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA17|MuxSaida|saida_MUX~0_combout\;
\ULA16|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA16|MuxSaida|saida_MUX~0_combout\;
\ULA15|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA15|MuxSaida|saida_MUX~0_combout\;
\ULA14|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA14|MuxSaida|saida_MUX~0_combout\;
\ULA13|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA13|MuxSaida|saida_MUX~0_combout\;
\ULA12|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA12|MuxSaida|saida_MUX~0_combout\;
\ULA11|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA11|MuxSaida|saida_MUX~0_combout\;
\ULA10|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA10|MuxSaida|saida_MUX~0_combout\;
\ULA9|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA9|MuxSaida|saida_MUX~0_combout\;
\ULA8|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA8|MuxSaida|saida_MUX~0_combout\;
\ULA7|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA7|MuxSaida|saida_MUX~0_combout\;
\ULA6|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA6|MuxSaida|saida_MUX~0_combout\;
\ULA5|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA5|MuxSaida|saida_MUX~0_combout\;
\ULA4|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA4|MuxSaida|saida_MUX~0_combout\;
\ULA3|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA3|MuxSaida|saida_MUX~0_combout\;
\ULA2|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA2|MuxSaida|saida_MUX~0_combout\;
\ULA1|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA1|MuxSaida|saida_MUX~0_combout\;
\ULA0|MuxSaida|ALT_INV_saida_MUX~1_combout\ <= NOT \ULA0|MuxSaida|saida_MUX~1_combout\;
\ULA0|MuxSaida|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA0|MuxSaida|saida_MUX~0_combout\;
\ULA30|somador|ALT_INV_carryOut~1_combout\ <= NOT \ULA30|somador|carryOut~1_combout\;
\ULA30|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA30|somador|carryOut~0_combout\;
\ULA28|somador|ALT_INV_carryOut~combout\ <= NOT \ULA28|somador|carryOut~combout\;
\ULA28|somador|ALT_INV_carryOut~8_combout\ <= NOT \ULA28|somador|carryOut~8_combout\;
\ULA28|somador|ALT_INV_carryOut~7_combout\ <= NOT \ULA28|somador|carryOut~7_combout\;
\ULA28|somador|ALT_INV_carryOut~6_combout\ <= NOT \ULA28|somador|carryOut~6_combout\;
\ULA28|somador|ALT_INV_carryOut~5_combout\ <= NOT \ULA28|somador|carryOut~5_combout\;
\ULA28|somador|ALT_INV_carryOut~4_combout\ <= NOT \ULA28|somador|carryOut~4_combout\;
\ULA28|somador|ALT_INV_carryOut~3_combout\ <= NOT \ULA28|somador|carryOut~3_combout\;
\ULA28|somador|ALT_INV_carryOut~2_combout\ <= NOT \ULA28|somador|carryOut~2_combout\;
\ULA23|MuxValorB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA23|MuxValorB|saida_MUX~0_combout\;
\ULA28|somador|ALT_INV_carryOut~1_combout\ <= NOT \ULA28|somador|carryOut~1_combout\;
\ULA28|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA28|somador|carryOut~0_combout\;
\ULA26|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA26|somador|carryOut~0_combout\;
\ULA25|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA25|somador|carryOut~0_combout\;
\ULA24|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA24|somador|carryOut~0_combout\;
\ULA23|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA23|somador|carryOut~0_combout\;
\ULA22|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA22|somador|carryOut~0_combout\;
\ULA21|somador|ALT_INV_carryOut~8_combout\ <= NOT \ULA21|somador|carryOut~8_combout\;
\ULA21|somador|ALT_INV_carryOut~7_combout\ <= NOT \ULA21|somador|carryOut~7_combout\;
\ULA21|somador|ALT_INV_carryOut~6_combout\ <= NOT \ULA21|somador|carryOut~6_combout\;
\ULA21|somador|ALT_INV_carryOut~5_combout\ <= NOT \ULA21|somador|carryOut~5_combout\;
\ULA21|somador|ALT_INV_carryOut~4_combout\ <= NOT \ULA21|somador|carryOut~4_combout\;
\ULA21|somador|ALT_INV_carryOut~3_combout\ <= NOT \ULA21|somador|carryOut~3_combout\;
\ULA21|somador|ALT_INV_carryOut~2_combout\ <= NOT \ULA21|somador|carryOut~2_combout\;
\ULA16|MuxValorB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA16|MuxValorB|saida_MUX~0_combout\;
\ULA21|somador|ALT_INV_carryOut~1_combout\ <= NOT \ULA21|somador|carryOut~1_combout\;
\ULA21|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA21|somador|carryOut~0_combout\;
\ULA19|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA19|somador|carryOut~0_combout\;
\ULA18|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA18|somador|carryOut~0_combout\;
\ULA17|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA17|somador|carryOut~0_combout\;
\ULA16|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA16|somador|carryOut~0_combout\;
\ULA15|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA15|somador|carryOut~0_combout\;
\ULA14|somador|ALT_INV_carryOut~7_combout\ <= NOT \ULA14|somador|carryOut~7_combout\;
\ULA14|somador|ALT_INV_carryOut~6_combout\ <= NOT \ULA14|somador|carryOut~6_combout\;
\ULA14|somador|ALT_INV_carryOut~5_combout\ <= NOT \ULA14|somador|carryOut~5_combout\;
\ULA7|somador|ALT_INV_carryOut~7_combout\ <= NOT \ULA7|somador|carryOut~7_combout\;
\ULA7|somador|ALT_INV_carryOut~6_combout\ <= NOT \ULA7|somador|carryOut~6_combout\;
\ULA7|somador|ALT_INV_carryOut~5_combout\ <= NOT \ULA7|somador|carryOut~5_combout\;
\ULA7|somador|ALT_INV_carryOut~4_combout\ <= NOT \ULA7|somador|carryOut~4_combout\;
\ULA7|somador|ALT_INV_carryOut~3_combout\ <= NOT \ULA7|somador|carryOut~3_combout\;
\ULA7|somador|ALT_INV_carryOut~2_combout\ <= NOT \ULA7|somador|carryOut~2_combout\;
\ULA7|somador|ALT_INV_carryOut~1_combout\ <= NOT \ULA7|somador|carryOut~1_combout\;
\ULA4|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA4|somador|carryOut~0_combout\;
\ULA5|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA5|somador|carryOut~0_combout\;
\ULA7|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA7|somador|carryOut~0_combout\;
\ULA14|somador|ALT_INV_carryOut~4_combout\ <= NOT \ULA14|somador|carryOut~4_combout\;
\ULA12|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA12|somador|carryOut~0_combout\;
\ULA11|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA11|somador|carryOut~0_combout\;
\ULA10|MuxValorB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA10|MuxValorB|saida_MUX~0_combout\;
\ULA9|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA9|somador|carryOut~0_combout\;
\ULA8|MuxValorB|ALT_INV_saida_MUX~0_combout\ <= NOT \ULA8|MuxValorB|saida_MUX~0_combout\;
\ULA14|somador|ALT_INV_carryOut~3_combout\ <= NOT \ULA14|somador|carryOut~3_combout\;
\ULA14|somador|ALT_INV_carryOut~2_combout\ <= NOT \ULA14|somador|carryOut~2_combout\;
\ULA14|somador|ALT_INV_carryOut~1_combout\ <= NOT \ULA14|somador|carryOut~1_combout\;
\ULA14|somador|ALT_INV_carryOut~0_combout\ <= NOT \ULA14|somador|carryOut~0_combout\;
\ULA0|MuxSaida|ALT_INV_saida_MUX~2_combout\ <= NOT \ULA0|MuxSaida|saida_MUX~2_combout\;

-- Location: IOOBUF_X38_Y0_N19
\saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA0|MuxSaida|saida_MUX~1_combout\,
	devoe => ww_devoe,
	o => ww_saida(0));

-- Location: IOOBUF_X54_Y16_N39
\saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(1));

-- Location: IOOBUF_X51_Y0_N19
\saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA2|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(2));

-- Location: IOOBUF_X54_Y14_N45
\saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA3|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(3));

-- Location: IOOBUF_X54_Y15_N22
\saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA4|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(4));

-- Location: IOOBUF_X54_Y14_N79
\saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA5|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(5));

-- Location: IOOBUF_X36_Y45_N53
\saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA6|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(6));

-- Location: IOOBUF_X54_Y14_N96
\saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA7|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(7));

-- Location: IOOBUF_X54_Y16_N56
\saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA8|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(8));

-- Location: IOOBUF_X33_Y0_N59
\saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA9|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(9));

-- Location: IOOBUF_X0_Y20_N5
\saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA10|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(10));

-- Location: IOOBUF_X54_Y16_N5
\saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA11|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(11));

-- Location: IOOBUF_X36_Y45_N2
\saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA12|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(12));

-- Location: IOOBUF_X33_Y0_N76
\saida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA13|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(13));

-- Location: IOOBUF_X19_Y0_N53
\saida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA14|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(14));

-- Location: IOOBUF_X29_Y0_N2
\saida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA15|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(15));

-- Location: IOOBUF_X23_Y0_N76
\saida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA16|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(16));

-- Location: IOOBUF_X29_Y0_N19
\saida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA17|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(17));

-- Location: IOOBUF_X40_Y0_N93
\saida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA18|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(18));

-- Location: IOOBUF_X25_Y0_N36
\saida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA19|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(19));

-- Location: IOOBUF_X22_Y0_N2
\saida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA20|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(20));

-- Location: IOOBUF_X23_Y0_N93
\saida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA21|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(21));

-- Location: IOOBUF_X19_Y0_N19
\saida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA22|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(22));

-- Location: IOOBUF_X29_Y0_N36
\saida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA23|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(23));

-- Location: IOOBUF_X34_Y0_N19
\saida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA24|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(24));

-- Location: IOOBUF_X34_Y0_N53
\saida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA25|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(25));

-- Location: IOOBUF_X38_Y0_N36
\saida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA26|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(26));

-- Location: IOOBUF_X36_Y0_N53
\saida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA27|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(27));

-- Location: IOOBUF_X34_Y0_N2
\saida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA28|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(28));

-- Location: IOOBUF_X34_Y0_N36
\saida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA29|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(29));

-- Location: IOOBUF_X46_Y0_N36
\saida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA30|MuxSaida|saida_MUX~0_combout\,
	devoe => ww_devoe,
	o => ww_saida(30));

-- Location: IOOBUF_X33_Y0_N93
\saida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA31|MuxSaida|saida_MUX~2_combout\,
	devoe => ww_devoe,
	o => ww_saida(31));

-- Location: IOOBUF_X40_Y0_N42
\FlagZ~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~6_combout\,
	devoe => ww_devoe,
	o => ww_FlagZ);

-- Location: IOOBUF_X44_Y0_N53
\SeletorSaida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Seletor[0]~input_o\,
	devoe => ww_devoe,
	o => ww_SeletorSaida(0));

-- Location: IOOBUF_X43_Y0_N53
\SeletorSaida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Seletor[1]~input_o\,
	devoe => ww_devoe,
	o => ww_SeletorSaida(1));

-- Location: IOOBUF_X48_Y0_N59
\SeletorSaida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Seletor[2]~input_o\,
	devoe => ww_devoe,
	o => ww_SeletorSaida(2));

-- Location: IOOBUF_X54_Y20_N39
\entradaAsaida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[0]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(0));

-- Location: IOOBUF_X0_Y19_N39
\entradaAsaida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[1]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(1));

-- Location: IOOBUF_X50_Y0_N19
\entradaAsaida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[2]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(2));

-- Location: IOOBUF_X54_Y18_N79
\entradaAsaida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[3]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(3));

-- Location: IOOBUF_X54_Y15_N56
\entradaAsaida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[4]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(4));

-- Location: IOOBUF_X54_Y21_N22
\entradaAsaida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[5]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(5));

-- Location: IOOBUF_X54_Y18_N96
\entradaAsaida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[6]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(6));

-- Location: IOOBUF_X54_Y20_N5
\entradaAsaida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[7]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(7));

-- Location: IOOBUF_X16_Y45_N59
\entradaAsaida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[8]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(8));

-- Location: IOOBUF_X54_Y14_N62
\entradaAsaida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[9]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(9));

-- Location: IOOBUF_X32_Y45_N42
\entradaAsaida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[10]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(10));

-- Location: IOOBUF_X12_Y0_N53
\entradaAsaida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[11]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(11));

-- Location: IOOBUF_X0_Y18_N62
\entradaAsaida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[12]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(12));

-- Location: IOOBUF_X32_Y45_N59
\entradaAsaida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[13]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(13));

-- Location: IOOBUF_X36_Y0_N19
\entradaAsaida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[14]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(14));

-- Location: IOOBUF_X16_Y0_N93
\entradaAsaida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[15]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(15));

-- Location: IOOBUF_X11_Y0_N53
\entradaAsaida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[16]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(16));

-- Location: IOOBUF_X18_Y0_N19
\entradaAsaida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[17]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(17));

-- Location: IOOBUF_X29_Y0_N53
\entradaAsaida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[18]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(18));

-- Location: IOOBUF_X25_Y0_N19
\entradaAsaida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[19]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(19));

-- Location: IOOBUF_X25_Y0_N2
\entradaAsaida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[20]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(20));

-- Location: IOOBUF_X24_Y0_N19
\entradaAsaida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[21]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(21));

-- Location: IOOBUF_X22_Y45_N19
\entradaAsaida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[22]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(22));

-- Location: IOOBUF_X14_Y0_N53
\entradaAsaida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[23]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(23));

-- Location: IOOBUF_X19_Y0_N2
\entradaAsaida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[24]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(24));

-- Location: IOOBUF_X12_Y0_N2
\entradaAsaida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[25]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(25));

-- Location: IOOBUF_X18_Y45_N19
\entradaAsaida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[26]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(26));

-- Location: IOOBUF_X0_Y18_N96
\entradaAsaida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[27]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(27));

-- Location: IOOBUF_X14_Y0_N19
\entradaAsaida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[28]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(28));

-- Location: IOOBUF_X44_Y0_N19
\entradaAsaida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[29]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(29));

-- Location: IOOBUF_X36_Y45_N36
\entradaAsaida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[30]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(30));

-- Location: IOOBUF_X40_Y45_N76
\entradaAsaida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaA[31]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaAsaida(31));

-- Location: IOOBUF_X40_Y0_N59
\entradaBsaida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[0]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(0));

-- Location: IOOBUF_X51_Y0_N2
\entradaBsaida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[1]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(1));

-- Location: IOOBUF_X43_Y45_N36
\entradaBsaida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[2]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(2));

-- Location: IOOBUF_X44_Y45_N2
\entradaBsaida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[3]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(3));

-- Location: IOOBUF_X54_Y16_N22
\entradaBsaida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[4]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(4));

-- Location: IOOBUF_X54_Y17_N22
\entradaBsaida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[5]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(5));

-- Location: IOOBUF_X42_Y45_N53
\entradaBsaida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[6]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(6));

-- Location: IOOBUF_X42_Y45_N2
\entradaBsaida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[7]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(7));

-- Location: IOOBUF_X38_Y45_N19
\entradaBsaida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[8]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(8));

-- Location: IOOBUF_X46_Y0_N2
\entradaBsaida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[9]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(9));

-- Location: IOOBUF_X23_Y0_N42
\entradaBsaida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[10]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(10));

-- Location: IOOBUF_X18_Y45_N53
\entradaBsaida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[11]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(11));

-- Location: IOOBUF_X0_Y20_N39
\entradaBsaida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[12]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(12));

-- Location: IOOBUF_X34_Y45_N2
\entradaBsaida[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[13]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(13));

-- Location: IOOBUF_X22_Y0_N19
\entradaBsaida[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[14]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(14));

-- Location: IOOBUF_X20_Y45_N53
\entradaBsaida[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[15]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(15));

-- Location: IOOBUF_X11_Y0_N2
\entradaBsaida[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[16]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(16));

-- Location: IOOBUF_X34_Y45_N53
\entradaBsaida[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[17]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(17));

-- Location: IOOBUF_X33_Y0_N42
\entradaBsaida[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[18]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(18));

-- Location: IOOBUF_X16_Y0_N76
\entradaBsaida[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[19]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(19));

-- Location: IOOBUF_X23_Y0_N59
\entradaBsaida[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[20]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(20));

-- Location: IOOBUF_X22_Y45_N36
\entradaBsaida[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[21]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(21));

-- Location: IOOBUF_X0_Y19_N5
\entradaBsaida[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[22]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(22));

-- Location: IOOBUF_X40_Y45_N93
\entradaBsaida[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[23]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(23));

-- Location: IOOBUF_X48_Y0_N42
\entradaBsaida[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[24]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(24));

-- Location: IOOBUF_X40_Y0_N76
\entradaBsaida[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[25]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(25));

-- Location: IOOBUF_X0_Y21_N56
\entradaBsaida[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[26]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(26));

-- Location: IOOBUF_X54_Y21_N56
\entradaBsaida[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[27]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(27));

-- Location: IOOBUF_X51_Y0_N53
\entradaBsaida[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[28]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(28));

-- Location: IOOBUF_X44_Y0_N36
\entradaBsaida[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[29]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(29));

-- Location: IOOBUF_X0_Y20_N56
\entradaBsaida[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[30]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(30));

-- Location: IOOBUF_X43_Y45_N53
\entradaBsaida[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \entradaB[31]~input_o\,
	devoe => ww_devoe,
	o => ww_entradaBsaida(31));

-- Location: IOIBUF_X22_Y45_N52
\entradaA[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(22),
	o => \entradaA[22]~input_o\);

-- Location: IOIBUF_X0_Y19_N21
\entradaB[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(22),
	o => \entradaB[22]~input_o\);

-- Location: IOIBUF_X46_Y0_N52
\Seletor[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Seletor(2),
	o => \Seletor[2]~input_o\);

-- Location: MLABCELL_X28_Y4_N15
\ULA28|somador|carryOut~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~4_combout\ = ( !\entradaB[22]~input_o\ & ( \Seletor[2]~input_o\ & ( \entradaA[22]~input_o\ ) ) ) # ( \entradaB[22]~input_o\ & ( !\Seletor[2]~input_o\ & ( \entradaA[22]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entradaA[22]~input_o\,
	datae => \ALT_INV_entradaB[22]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA28|somador|carryOut~4_combout\);

-- Location: IOIBUF_X50_Y0_N1
\entradaB[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(28),
	o => \entradaB[28]~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\entradaA[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(28),
	o => \entradaA[28]~input_o\);

-- Location: IOIBUF_X0_Y18_N44
\entradaA[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(27),
	o => \entradaA[27]~input_o\);

-- Location: IOIBUF_X54_Y20_N21
\entradaB[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(27),
	o => \entradaB[27]~input_o\);

-- Location: MLABCELL_X34_Y4_N48
\ULA28|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~0_combout\ = ( \entradaB[27]~input_o\ & ( (!\entradaA[27]~input_o\ & (!\Seletor[2]~input_o\ & (!\entradaB[28]~input_o\ $ (!\entradaA[28]~input_o\)))) # (\entradaA[27]~input_o\ & (\Seletor[2]~input_o\ & (!\entradaB[28]~input_o\ $ 
-- (\entradaA[28]~input_o\)))) ) ) # ( !\entradaB[27]~input_o\ & ( (!\entradaA[27]~input_o\ & (\Seletor[2]~input_o\ & (!\entradaB[28]~input_o\ $ (\entradaA[28]~input_o\)))) # (\entradaA[27]~input_o\ & (!\Seletor[2]~input_o\ & (!\entradaB[28]~input_o\ $ 
-- (!\entradaA[28]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010010000000001101001000001100000000010010110000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[28]~input_o\,
	datab => \ALT_INV_entradaA[28]~input_o\,
	datac => \ALT_INV_entradaA[27]~input_o\,
	datad => \ALT_INV_Seletor[2]~input_o\,
	dataf => \ALT_INV_entradaB[27]~input_o\,
	combout => \ULA28|somador|carryOut~0_combout\);

-- Location: IOIBUF_X12_Y0_N18
\entradaA[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(25),
	o => \entradaA[25]~input_o\);

-- Location: IOIBUF_X48_Y0_N75
\entradaB[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(25),
	o => \entradaB[25]~input_o\);

-- Location: MLABCELL_X34_Y4_N15
\ULA25|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|somador|carryOut~0_combout\ = !\Seletor[2]~input_o\ $ (!\entradaA[25]~input_o\ $ (\entradaB[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ALT_INV_entradaB[25]~input_o\,
	combout => \ULA25|somador|carryOut~0_combout\);

-- Location: IOIBUF_X18_Y0_N1
\entradaA[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(24),
	o => \entradaA[24]~input_o\);

-- Location: IOIBUF_X0_Y21_N21
\entradaB[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(26),
	o => \entradaB[26]~input_o\);

-- Location: IOIBUF_X16_Y45_N75
\entradaA[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(26),
	o => \entradaA[26]~input_o\);

-- Location: MLABCELL_X34_Y4_N36
\ULA26|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|somador|carryOut~0_combout\ = !\Seletor[2]~input_o\ $ (!\entradaB[26]~input_o\ $ (\entradaA[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[26]~input_o\,
	datad => \ALT_INV_entradaA[26]~input_o\,
	combout => \ULA26|somador|carryOut~0_combout\);

-- Location: IOIBUF_X48_Y0_N92
\entradaB[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(24),
	o => \entradaB[24]~input_o\);

-- Location: MLABCELL_X34_Y4_N6
\ULA28|somador|carryOut~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~3_combout\ = ( \ULA26|somador|carryOut~0_combout\ & ( \entradaB[24]~input_o\ & ( (\ULA28|somador|carryOut~0_combout\ & (\ULA25|somador|carryOut~0_combout\ & (\entradaA[24]~input_o\ & !\Seletor[2]~input_o\))) ) ) ) # ( 
-- \ULA26|somador|carryOut~0_combout\ & ( !\entradaB[24]~input_o\ & ( (\ULA28|somador|carryOut~0_combout\ & (\ULA25|somador|carryOut~0_combout\ & (\entradaA[24]~input_o\ & \Seletor[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA28|somador|ALT_INV_carryOut~0_combout\,
	datab => \ULA25|somador|ALT_INV_carryOut~0_combout\,
	datac => \ALT_INV_entradaA[24]~input_o\,
	datad => \ALT_INV_Seletor[2]~input_o\,
	datae => \ULA26|somador|ALT_INV_carryOut~0_combout\,
	dataf => \ALT_INV_entradaB[24]~input_o\,
	combout => \ULA28|somador|carryOut~3_combout\);

-- Location: MLABCELL_X34_Y4_N39
\ULA24|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|somador|carryOut~0_combout\ = ( \entradaB[24]~input_o\ & ( !\entradaA[24]~input_o\ $ (\Seletor[2]~input_o\) ) ) # ( !\entradaB[24]~input_o\ & ( !\entradaA[24]~input_o\ $ (!\Seletor[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	dataf => \ALT_INV_entradaB[24]~input_o\,
	combout => \ULA24|somador|carryOut~0_combout\);

-- Location: MLABCELL_X34_Y4_N3
\ULA28|somador|carryOut~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~2_combout\ = ( \ULA24|somador|carryOut~0_combout\ & ( (\ULA28|somador|carryOut~0_combout\ & (\ULA25|somador|carryOut~0_combout\ & \ULA26|somador|carryOut~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA28|somador|ALT_INV_carryOut~0_combout\,
	datac => \ULA25|somador|ALT_INV_carryOut~0_combout\,
	datad => \ULA26|somador|ALT_INV_carryOut~0_combout\,
	dataf => \ULA24|somador|ALT_INV_carryOut~0_combout\,
	combout => \ULA28|somador|carryOut~2_combout\);

-- Location: MLABCELL_X34_Y4_N51
\ULA28|somador|carryOut~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~6_combout\ = ( \entradaB[27]~input_o\ & ( (!\entradaB[28]~input_o\ & (\entradaA[28]~input_o\ & ((\entradaA[27]~input_o\) # (\Seletor[2]~input_o\)))) # (\entradaB[28]~input_o\ & (!\Seletor[2]~input_o\ & ((\entradaA[27]~input_o\) # 
-- (\entradaA[28]~input_o\)))) ) ) # ( !\entradaB[27]~input_o\ & ( (!\entradaB[28]~input_o\ & (\Seletor[2]~input_o\ & ((\entradaA[27]~input_o\) # (\entradaA[28]~input_o\)))) # (\entradaB[28]~input_o\ & (\entradaA[28]~input_o\ & ((!\Seletor[2]~input_o\) # 
-- (\entradaA[27]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000011011000100100001101100010010011100100001001001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[28]~input_o\,
	datab => \ALT_INV_entradaA[28]~input_o\,
	datac => \ALT_INV_Seletor[2]~input_o\,
	datad => \ALT_INV_entradaA[27]~input_o\,
	dataf => \ALT_INV_entradaB[27]~input_o\,
	combout => \ULA28|somador|carryOut~6_combout\);

-- Location: MLABCELL_X37_Y4_N9
\ULA28|somador|carryOut~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~5_combout\ = ( \Seletor[2]~input_o\ & ( (\entradaA[25]~input_o\ & !\entradaB[25]~input_o\) ) ) # ( !\Seletor[2]~input_o\ & ( (\entradaA[25]~input_o\ & \entradaB[25]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entradaA[25]~input_o\,
	datad => \ALT_INV_entradaB[25]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA28|somador|carryOut~5_combout\);

-- Location: MLABCELL_X34_Y4_N42
\ULA28|somador|carryOut~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~7_combout\ = ( \entradaA[26]~input_o\ & ( \entradaB[26]~input_o\ & ( (!\ULA28|somador|carryOut~6_combout\ & ((!\ULA28|somador|carryOut~0_combout\) # ((!\ULA28|somador|carryOut~5_combout\ & \Seletor[2]~input_o\)))) ) ) ) # ( 
-- !\entradaA[26]~input_o\ & ( \entradaB[26]~input_o\ & ( (!\ULA28|somador|carryOut~6_combout\ & ((!\ULA28|somador|carryOut~5_combout\) # ((!\ULA28|somador|carryOut~0_combout\) # (\Seletor[2]~input_o\)))) ) ) ) # ( \entradaA[26]~input_o\ & ( 
-- !\entradaB[26]~input_o\ & ( (!\ULA28|somador|carryOut~6_combout\ & ((!\ULA28|somador|carryOut~0_combout\) # ((!\ULA28|somador|carryOut~5_combout\ & !\Seletor[2]~input_o\)))) ) ) ) # ( !\entradaA[26]~input_o\ & ( !\entradaB[26]~input_o\ & ( 
-- (!\ULA28|somador|carryOut~6_combout\ & ((!\ULA28|somador|carryOut~5_combout\) # ((!\ULA28|somador|carryOut~0_combout\) # (!\Seletor[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010001010000010101000101010101010000010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA28|somador|ALT_INV_carryOut~6_combout\,
	datab => \ULA28|somador|ALT_INV_carryOut~5_combout\,
	datac => \ULA28|somador|ALT_INV_carryOut~0_combout\,
	datad => \ALT_INV_Seletor[2]~input_o\,
	datae => \ALT_INV_entradaA[26]~input_o\,
	dataf => \ALT_INV_entradaB[26]~input_o\,
	combout => \ULA28|somador|carryOut~7_combout\);

-- Location: IOIBUF_X14_Y0_N1
\entradaA[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(23),
	o => \entradaA[23]~input_o\);

-- Location: IOIBUF_X36_Y45_N18
\entradaB[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(23),
	o => \entradaB[23]~input_o\);

-- Location: MLABCELL_X34_Y4_N33
\ULA23|MuxValorB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MuxValorB|saida_MUX~0_combout\ = !\entradaB[23]~input_o\ $ (!\Seletor[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[23]~input_o\,
	datac => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA23|MuxValorB|saida_MUX~0_combout\);

-- Location: MLABCELL_X34_Y4_N18
\ULA28|somador|carryOut~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~8_combout\ = ( \entradaA[23]~input_o\ & ( \ULA23|MuxValorB|saida_MUX~0_combout\ & ( (!\ULA28|somador|carryOut~3_combout\ & (!\ULA28|somador|carryOut~2_combout\ & \ULA28|somador|carryOut~7_combout\)) ) ) ) # ( 
-- !\entradaA[23]~input_o\ & ( \ULA23|MuxValorB|saida_MUX~0_combout\ & ( (!\ULA28|somador|carryOut~3_combout\ & (\ULA28|somador|carryOut~7_combout\ & ((!\ULA28|somador|carryOut~4_combout\) # (!\ULA28|somador|carryOut~2_combout\)))) ) ) ) # ( 
-- \entradaA[23]~input_o\ & ( !\ULA23|MuxValorB|saida_MUX~0_combout\ & ( (!\ULA28|somador|carryOut~3_combout\ & (\ULA28|somador|carryOut~7_combout\ & ((!\ULA28|somador|carryOut~4_combout\) # (!\ULA28|somador|carryOut~2_combout\)))) ) ) ) # ( 
-- !\entradaA[23]~input_o\ & ( !\ULA23|MuxValorB|saida_MUX~0_combout\ & ( (!\ULA28|somador|carryOut~3_combout\ & \ULA28|somador|carryOut~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100100000000000110010000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA28|somador|ALT_INV_carryOut~4_combout\,
	datab => \ULA28|somador|ALT_INV_carryOut~3_combout\,
	datac => \ULA28|somador|ALT_INV_carryOut~2_combout\,
	datad => \ULA28|somador|ALT_INV_carryOut~7_combout\,
	datae => \ALT_INV_entradaA[23]~input_o\,
	dataf => \ULA23|MuxValorB|ALT_INV_saida_MUX~0_combout\,
	combout => \ULA28|somador|carryOut~8_combout\);

-- Location: IOIBUF_X24_Y0_N52
\entradaA[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(19),
	o => \entradaA[19]~input_o\);

-- Location: IOIBUF_X22_Y45_N1
\entradaB[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(21),
	o => \entradaB[21]~input_o\);

-- Location: IOIBUF_X22_Y0_N52
\entradaA[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(20),
	o => \entradaA[20]~input_o\);

-- Location: IOIBUF_X25_Y0_N52
\entradaB[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(20),
	o => \entradaB[20]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\entradaA[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(21),
	o => \entradaA[21]~input_o\);

-- Location: MLABCELL_X28_Y4_N0
\ULA21|somador|carryOut~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carryOut~6_combout\ = ( \entradaA[21]~input_o\ & ( \Seletor[2]~input_o\ & ( (!\entradaB[21]~input_o\) # ((\entradaA[20]~input_o\ & !\entradaB[20]~input_o\)) ) ) ) # ( !\entradaA[21]~input_o\ & ( \Seletor[2]~input_o\ & ( 
-- (!\entradaB[21]~input_o\ & (\entradaA[20]~input_o\ & !\entradaB[20]~input_o\)) ) ) ) # ( \entradaA[21]~input_o\ & ( !\Seletor[2]~input_o\ & ( ((\entradaA[20]~input_o\ & \entradaB[20]~input_o\)) # (\entradaB[21]~input_o\) ) ) ) # ( !\entradaA[21]~input_o\ 
-- & ( !\Seletor[2]~input_o\ & ( (\entradaB[21]~input_o\ & (\entradaA[20]~input_o\ & \entradaB[20]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001010101110101011100100000001000001011101010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[21]~input_o\,
	datab => \ALT_INV_entradaA[20]~input_o\,
	datac => \ALT_INV_entradaB[20]~input_o\,
	datae => \ALT_INV_entradaA[21]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA21|somador|carryOut~6_combout\);

-- Location: IOIBUF_X18_Y0_N52
\entradaB[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(19),
	o => \entradaB[19]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\entradaB[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(18),
	o => \entradaB[18]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\entradaA[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(18),
	o => \entradaA[18]~input_o\);

-- Location: LABCELL_X32_Y4_N3
\ULA21|somador|carryOut~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carryOut~5_combout\ = ( \entradaA[18]~input_o\ & ( \Seletor[2]~input_o\ & ( !\entradaB[18]~input_o\ ) ) ) # ( \entradaA[18]~input_o\ & ( !\Seletor[2]~input_o\ & ( \entradaB[18]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[18]~input_o\,
	datae => \ALT_INV_entradaA[18]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA21|somador|carryOut~5_combout\);

-- Location: LABCELL_X29_Y4_N21
\ULA21|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carryOut~0_combout\ = ( \entradaB[20]~input_o\ & ( (!\Seletor[2]~input_o\ & (!\entradaA[20]~input_o\ & (!\entradaB[21]~input_o\ $ (!\entradaA[21]~input_o\)))) # (\Seletor[2]~input_o\ & (\entradaA[20]~input_o\ & (!\entradaB[21]~input_o\ $ 
-- (\entradaA[21]~input_o\)))) ) ) # ( !\entradaB[20]~input_o\ & ( (!\Seletor[2]~input_o\ & (\entradaA[20]~input_o\ & (!\entradaB[21]~input_o\ $ (!\entradaA[21]~input_o\)))) # (\Seletor[2]~input_o\ & (!\entradaA[20]~input_o\ & (!\entradaB[21]~input_o\ $ 
-- (\entradaA[21]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000100101000010000010010100000101000010000010010100001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_entradaB[21]~input_o\,
	datac => \ALT_INV_entradaA[21]~input_o\,
	datad => \ALT_INV_entradaA[20]~input_o\,
	dataf => \ALT_INV_entradaB[20]~input_o\,
	combout => \ULA21|somador|carryOut~0_combout\);

-- Location: LABCELL_X29_Y4_N42
\ULA21|somador|carryOut~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carryOut~7_combout\ = ( \ULA21|somador|carryOut~0_combout\ & ( \Seletor[2]~input_o\ & ( (!\ULA21|somador|carryOut~6_combout\ & ((!\entradaA[19]~input_o\ & ((!\ULA21|somador|carryOut~5_combout\) # (\entradaB[19]~input_o\))) # 
-- (\entradaA[19]~input_o\ & (\entradaB[19]~input_o\ & !\ULA21|somador|carryOut~5_combout\)))) ) ) ) # ( !\ULA21|somador|carryOut~0_combout\ & ( \Seletor[2]~input_o\ & ( !\ULA21|somador|carryOut~6_combout\ ) ) ) # ( \ULA21|somador|carryOut~0_combout\ & ( 
-- !\Seletor[2]~input_o\ & ( (!\ULA21|somador|carryOut~6_combout\ & ((!\entradaA[19]~input_o\ & ((!\entradaB[19]~input_o\) # (!\ULA21|somador|carryOut~5_combout\))) # (\entradaA[19]~input_o\ & (!\entradaB[19]~input_o\ & 
-- !\ULA21|somador|carryOut~5_combout\)))) ) ) ) # ( !\ULA21|somador|carryOut~0_combout\ & ( !\Seletor[2]~input_o\ & ( !\ULA21|somador|carryOut~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110010001000000011001100110011001000110000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[19]~input_o\,
	datab => \ULA21|somador|ALT_INV_carryOut~6_combout\,
	datac => \ALT_INV_entradaB[19]~input_o\,
	datad => \ULA21|somador|ALT_INV_carryOut~5_combout\,
	datae => \ULA21|somador|ALT_INV_carryOut~0_combout\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA21|somador|carryOut~7_combout\);

-- Location: IOIBUF_X18_Y0_N35
\entradaA[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(17),
	o => \entradaA[17]~input_o\);

-- Location: IOIBUF_X32_Y45_N92
\entradaB[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(17),
	o => \entradaB[17]~input_o\);

-- Location: LABCELL_X29_Y4_N12
\ULA17|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|somador|carryOut~0_combout\ = ( \entradaB[17]~input_o\ & ( !\Seletor[2]~input_o\ $ (\entradaA[17]~input_o\) ) ) # ( !\entradaB[17]~input_o\ & ( !\Seletor[2]~input_o\ $ (!\entradaA[17]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_entradaA[17]~input_o\,
	dataf => \ALT_INV_entradaB[17]~input_o\,
	combout => \ULA17|somador|carryOut~0_combout\);

-- Location: LABCELL_X29_Y4_N18
\ULA18|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|somador|carryOut~0_combout\ = ( \entradaA[18]~input_o\ & ( !\Seletor[2]~input_o\ $ (\entradaB[18]~input_o\) ) ) # ( !\entradaA[18]~input_o\ & ( !\Seletor[2]~input_o\ $ (!\entradaB[18]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[18]~input_o\,
	dataf => \ALT_INV_entradaA[18]~input_o\,
	combout => \ULA18|somador|carryOut~0_combout\);

-- Location: LABCELL_X29_Y4_N15
\ULA19|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|somador|carryOut~0_combout\ = ( \entradaB[19]~input_o\ & ( !\Seletor[2]~input_o\ $ (\entradaA[19]~input_o\) ) ) # ( !\entradaB[19]~input_o\ & ( !\Seletor[2]~input_o\ $ (!\entradaA[19]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaA[19]~input_o\,
	dataf => \ALT_INV_entradaB[19]~input_o\,
	combout => \ULA19|somador|carryOut~0_combout\);

-- Location: LABCELL_X29_Y4_N30
\ULA21|somador|carryOut~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carryOut~2_combout\ = ( \ULA19|somador|carryOut~0_combout\ & ( (\ULA17|somador|carryOut~0_combout\ & (\ULA18|somador|carryOut~0_combout\ & \ULA21|somador|carryOut~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA17|somador|ALT_INV_carryOut~0_combout\,
	datac => \ULA18|somador|ALT_INV_carryOut~0_combout\,
	datad => \ULA21|somador|ALT_INV_carryOut~0_combout\,
	dataf => \ULA19|somador|ALT_INV_carryOut~0_combout\,
	combout => \ULA21|somador|carryOut~2_combout\);

-- Location: LABCELL_X29_Y4_N0
\ULA21|somador|carryOut~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carryOut~3_combout\ = ( \entradaA[17]~input_o\ & ( \Seletor[2]~input_o\ & ( (\ULA18|somador|carryOut~0_combout\ & (!\entradaB[17]~input_o\ & (\ULA21|somador|carryOut~0_combout\ & \ULA19|somador|carryOut~0_combout\))) ) ) ) # ( 
-- \entradaA[17]~input_o\ & ( !\Seletor[2]~input_o\ & ( (\ULA18|somador|carryOut~0_combout\ & (\entradaB[17]~input_o\ & (\ULA21|somador|carryOut~0_combout\ & \ULA19|somador|carryOut~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA18|somador|ALT_INV_carryOut~0_combout\,
	datab => \ALT_INV_entradaB[17]~input_o\,
	datac => \ULA21|somador|ALT_INV_carryOut~0_combout\,
	datad => \ULA19|somador|ALT_INV_carryOut~0_combout\,
	datae => \ALT_INV_entradaA[17]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA21|somador|carryOut~3_combout\);

-- Location: IOIBUF_X11_Y0_N18
\entradaB[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(16),
	o => \entradaB[16]~input_o\);

-- Location: LABCELL_X29_Y4_N6
\ULA16|MuxValorB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MuxValorB|saida_MUX~0_combout\ = !\Seletor[2]~input_o\ $ (!\entradaB[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_entradaB[16]~input_o\,
	combout => \ULA16|MuxValorB|saida_MUX~0_combout\);

-- Location: IOIBUF_X12_Y0_N35
\entradaA[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(16),
	o => \entradaA[16]~input_o\);

-- Location: IOIBUF_X20_Y45_N35
\entradaB[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(15),
	o => \entradaB[15]~input_o\);

-- Location: IOIBUF_X16_Y0_N41
\entradaA[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(15),
	o => \entradaA[15]~input_o\);

-- Location: LABCELL_X29_Y4_N39
\ULA21|somador|carryOut~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carryOut~4_combout\ = ( \entradaA[15]~input_o\ & ( !\Seletor[2]~input_o\ $ (!\entradaB[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[15]~input_o\,
	dataf => \ALT_INV_entradaA[15]~input_o\,
	combout => \ULA21|somador|carryOut~4_combout\);

-- Location: LABCELL_X29_Y4_N48
\ULA21|somador|carryOut~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carryOut~8_combout\ = ( \entradaA[16]~input_o\ & ( \ULA21|somador|carryOut~4_combout\ & ( (\ULA21|somador|carryOut~7_combout\ & (!\ULA21|somador|carryOut~2_combout\ & !\ULA21|somador|carryOut~3_combout\)) ) ) ) # ( !\entradaA[16]~input_o\ & 
-- ( \ULA21|somador|carryOut~4_combout\ & ( (\ULA21|somador|carryOut~7_combout\ & (!\ULA21|somador|carryOut~3_combout\ & ((!\ULA21|somador|carryOut~2_combout\) # (!\ULA16|MuxValorB|saida_MUX~0_combout\)))) ) ) ) # ( \entradaA[16]~input_o\ & ( 
-- !\ULA21|somador|carryOut~4_combout\ & ( (\ULA21|somador|carryOut~7_combout\ & (!\ULA21|somador|carryOut~3_combout\ & ((!\ULA21|somador|carryOut~2_combout\) # (!\ULA16|MuxValorB|saida_MUX~0_combout\)))) ) ) ) # ( !\entradaA[16]~input_o\ & ( 
-- !\ULA21|somador|carryOut~4_combout\ & ( (\ULA21|somador|carryOut~7_combout\ & !\ULA21|somador|carryOut~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000100000001010000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA21|somador|ALT_INV_carryOut~7_combout\,
	datab => \ULA21|somador|ALT_INV_carryOut~2_combout\,
	datac => \ULA21|somador|ALT_INV_carryOut~3_combout\,
	datad => \ULA16|MuxValorB|ALT_INV_saida_MUX~0_combout\,
	datae => \ALT_INV_entradaA[16]~input_o\,
	dataf => \ULA21|somador|ALT_INV_carryOut~4_combout\,
	combout => \ULA21|somador|carryOut~8_combout\);

-- Location: LABCELL_X29_Y4_N33
\ULA15|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|somador|carryOut~0_combout\ = ( \Seletor[2]~input_o\ & ( !\entradaA[15]~input_o\ $ (\entradaB[15]~input_o\) ) ) # ( !\Seletor[2]~input_o\ & ( !\entradaA[15]~input_o\ $ (!\entradaB[15]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[15]~input_o\,
	datac => \ALT_INV_entradaB[15]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA15|somador|carryOut~0_combout\);

-- Location: LABCELL_X29_Y4_N9
\ULA16|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|somador|carryOut~0_combout\ = !\Seletor[2]~input_o\ $ (!\entradaB[16]~input_o\ $ (\entradaA[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_entradaB[16]~input_o\,
	datac => \ALT_INV_entradaA[16]~input_o\,
	combout => \ULA16|somador|carryOut~0_combout\);

-- Location: LABCELL_X29_Y4_N54
\ULA21|somador|carryOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|somador|carryOut~1_combout\ = ( \ULA21|somador|carryOut~0_combout\ & ( \ULA19|somador|carryOut~0_combout\ & ( (\ULA15|somador|carryOut~0_combout\ & (\ULA16|somador|carryOut~0_combout\ & (\ULA18|somador|carryOut~0_combout\ & 
-- \ULA17|somador|carryOut~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA15|somador|ALT_INV_carryOut~0_combout\,
	datab => \ULA16|somador|ALT_INV_carryOut~0_combout\,
	datac => \ULA18|somador|ALT_INV_carryOut~0_combout\,
	datad => \ULA17|somador|ALT_INV_carryOut~0_combout\,
	datae => \ULA21|somador|ALT_INV_carryOut~0_combout\,
	dataf => \ULA19|somador|ALT_INV_carryOut~0_combout\,
	combout => \ULA21|somador|carryOut~1_combout\);

-- Location: MLABCELL_X34_Y4_N30
\ULA23|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|somador|carryOut~0_combout\ = !\entradaB[23]~input_o\ $ (!\Seletor[2]~input_o\ $ (\entradaA[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100101101001011010010110100101101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[23]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaA[23]~input_o\,
	combout => \ULA23|somador|carryOut~0_combout\);

-- Location: MLABCELL_X28_Y4_N39
\ULA22|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|somador|carryOut~0_combout\ = ( \entradaB[22]~input_o\ & ( \Seletor[2]~input_o\ & ( \entradaA[22]~input_o\ ) ) ) # ( !\entradaB[22]~input_o\ & ( \Seletor[2]~input_o\ & ( !\entradaA[22]~input_o\ ) ) ) # ( \entradaB[22]~input_o\ & ( 
-- !\Seletor[2]~input_o\ & ( !\entradaA[22]~input_o\ ) ) ) # ( !\entradaB[22]~input_o\ & ( !\Seletor[2]~input_o\ & ( \entradaA[22]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000011110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_entradaA[22]~input_o\,
	datae => \ALT_INV_entradaB[22]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA22|somador|carryOut~0_combout\);

-- Location: MLABCELL_X34_Y4_N54
\ULA28|somador|carryOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~1_combout\ = ( \ULA22|somador|carryOut~0_combout\ & ( \ULA24|somador|carryOut~0_combout\ & ( (\ULA26|somador|carryOut~0_combout\ & (\ULA25|somador|carryOut~0_combout\ & (\ULA28|somador|carryOut~0_combout\ & 
-- \ULA23|somador|carryOut~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA26|somador|ALT_INV_carryOut~0_combout\,
	datab => \ULA25|somador|ALT_INV_carryOut~0_combout\,
	datac => \ULA28|somador|ALT_INV_carryOut~0_combout\,
	datad => \ULA23|somador|ALT_INV_carryOut~0_combout\,
	datae => \ULA22|somador|ALT_INV_carryOut~0_combout\,
	dataf => \ULA24|somador|ALT_INV_carryOut~0_combout\,
	combout => \ULA28|somador|carryOut~1_combout\);

-- Location: IOIBUF_X0_Y18_N78
\entradaA[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(12),
	o => \entradaA[12]~input_o\);

-- Location: IOIBUF_X34_Y45_N18
\entradaB[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(13),
	o => \entradaB[13]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\entradaB[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(14),
	o => \entradaB[14]~input_o\);

-- Location: IOIBUF_X32_Y45_N75
\entradaA[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(13),
	o => \entradaA[13]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\entradaA[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(14),
	o => \entradaA[14]~input_o\);

-- Location: LABCELL_X32_Y12_N30
\ULA14|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carryOut~0_combout\ = ( \Seletor[2]~input_o\ & ( (!\entradaB[13]~input_o\ & (!\entradaA[13]~input_o\ & (!\entradaB[14]~input_o\ $ (\entradaA[14]~input_o\)))) # (\entradaB[13]~input_o\ & (\entradaA[13]~input_o\ & (!\entradaB[14]~input_o\ $ 
-- (\entradaA[14]~input_o\)))) ) ) # ( !\Seletor[2]~input_o\ & ( (!\entradaB[13]~input_o\ & (\entradaA[13]~input_o\ & (!\entradaB[14]~input_o\ $ (!\entradaA[14]~input_o\)))) # (\entradaB[13]~input_o\ & (!\entradaA[13]~input_o\ & (!\entradaB[14]~input_o\ $ 
-- (!\entradaA[14]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100010000100001000011000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[13]~input_o\,
	datab => \ALT_INV_entradaB[14]~input_o\,
	datac => \ALT_INV_entradaA[13]~input_o\,
	datad => \ALT_INV_entradaA[14]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA14|somador|carryOut~0_combout\);

-- Location: LABCELL_X32_Y12_N33
\ULA14|somador|carryOut~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carryOut~2_combout\ = ( \Seletor[2]~input_o\ & ( (!\entradaB[14]~input_o\ & (((!\entradaB[13]~input_o\ & \entradaA[13]~input_o\)) # (\entradaA[14]~input_o\))) # (\entradaB[14]~input_o\ & (!\entradaB[13]~input_o\ & (\entradaA[13]~input_o\ & 
-- \entradaA[14]~input_o\))) ) ) # ( !\Seletor[2]~input_o\ & ( (!\entradaB[14]~input_o\ & (\entradaB[13]~input_o\ & (\entradaA[13]~input_o\ & \entradaA[14]~input_o\))) # (\entradaB[14]~input_o\ & (((\entradaB[13]~input_o\ & \entradaA[13]~input_o\)) # 
-- (\entradaA[14]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100001000110011100000100011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[13]~input_o\,
	datab => \ALT_INV_entradaB[14]~input_o\,
	datac => \ALT_INV_entradaA[13]~input_o\,
	datad => \ALT_INV_entradaA[14]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA14|somador|carryOut~2_combout\);

-- Location: IOIBUF_X20_Y45_N18
\entradaB[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(11),
	o => \entradaB[11]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\entradaA[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(11),
	o => \entradaA[11]~input_o\);

-- Location: LABCELL_X32_Y12_N6
\ULA14|somador|carryOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carryOut~1_combout\ = ( \Seletor[2]~input_o\ & ( (!\entradaB[11]~input_o\ & \entradaA[11]~input_o\) ) ) # ( !\Seletor[2]~input_o\ & ( (\entradaB[11]~input_o\ & \entradaA[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[11]~input_o\,
	datab => \ALT_INV_entradaA[11]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA14|somador|carryOut~1_combout\);

-- Location: IOIBUF_X0_Y20_N21
\entradaB[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(12),
	o => \entradaB[12]~input_o\);

-- Location: LABCELL_X32_Y12_N12
\ULA14|somador|carryOut~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carryOut~3_combout\ = ( \entradaB[12]~input_o\ & ( \Seletor[2]~input_o\ & ( (!\ULA14|somador|carryOut~2_combout\ & ((!\entradaA[12]~input_o\) # ((!\ULA14|somador|carryOut~0_combout\) # (!\ULA14|somador|carryOut~1_combout\)))) ) ) ) # ( 
-- !\entradaB[12]~input_o\ & ( \Seletor[2]~input_o\ & ( (!\ULA14|somador|carryOut~2_combout\ & ((!\ULA14|somador|carryOut~0_combout\) # ((!\entradaA[12]~input_o\ & !\ULA14|somador|carryOut~1_combout\)))) ) ) ) # ( \entradaB[12]~input_o\ & ( 
-- !\Seletor[2]~input_o\ & ( (!\ULA14|somador|carryOut~2_combout\ & ((!\ULA14|somador|carryOut~0_combout\) # ((!\entradaA[12]~input_o\ & !\ULA14|somador|carryOut~1_combout\)))) ) ) ) # ( !\entradaB[12]~input_o\ & ( !\Seletor[2]~input_o\ & ( 
-- (!\ULA14|somador|carryOut~2_combout\ & ((!\entradaA[12]~input_o\) # ((!\ULA14|somador|carryOut~0_combout\) # (!\ULA14|somador|carryOut~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111000001100000011100000110000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[12]~input_o\,
	datab => \ULA14|somador|ALT_INV_carryOut~0_combout\,
	datac => \ULA14|somador|ALT_INV_carryOut~2_combout\,
	datad => \ULA14|somador|ALT_INV_carryOut~1_combout\,
	datae => \ALT_INV_entradaB[12]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA14|somador|carryOut~3_combout\);

-- Location: IOIBUF_X16_Y45_N92
\entradaA[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(8),
	o => \entradaA[8]~input_o\);

-- Location: IOIBUF_X54_Y17_N4
\entradaB[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(5),
	o => \entradaB[5]~input_o\);

-- Location: IOIBUF_X42_Y45_N18
\entradaB[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(7),
	o => \entradaB[7]~input_o\);

-- Location: IOIBUF_X40_Y45_N58
\entradaB[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(6),
	o => \entradaB[6]~input_o\);

-- Location: IOIBUF_X54_Y18_N44
\entradaA[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(6),
	o => \entradaA[6]~input_o\);

-- Location: IOIBUF_X54_Y19_N4
\entradaA[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(7),
	o => \entradaA[7]~input_o\);

-- Location: LABCELL_X39_Y12_N39
\ULA7|somador|carryOut~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|somador|carryOut~6_combout\ = ( \entradaA[6]~input_o\ & ( \entradaA[7]~input_o\ & ( (!\Seletor[2]~input_o\ & ((\entradaB[6]~input_o\) # (\entradaB[7]~input_o\))) # (\Seletor[2]~input_o\ & ((!\entradaB[7]~input_o\) # (!\entradaB[6]~input_o\))) ) ) ) 
-- # ( !\entradaA[6]~input_o\ & ( \entradaA[7]~input_o\ & ( !\Seletor[2]~input_o\ $ (!\entradaB[7]~input_o\) ) ) ) # ( \entradaA[6]~input_o\ & ( !\entradaA[7]~input_o\ & ( (!\Seletor[2]~input_o\ & (\entradaB[7]~input_o\ & \entradaB[6]~input_o\)) # 
-- (\Seletor[2]~input_o\ & (!\entradaB[7]~input_o\ & !\entradaB[6]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000100100001001100110011001100111111001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_entradaB[7]~input_o\,
	datac => \ALT_INV_entradaB[6]~input_o\,
	datae => \ALT_INV_entradaA[6]~input_o\,
	dataf => \ALT_INV_entradaA[7]~input_o\,
	combout => \ULA7|somador|carryOut~6_combout\);

-- Location: IOIBUF_X54_Y15_N38
\entradaB[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(4),
	o => \entradaB[4]~input_o\);

-- Location: IOIBUF_X54_Y15_N4
\entradaA[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(4),
	o => \entradaA[4]~input_o\);

-- Location: MLABCELL_X45_Y12_N57
\ULA7|somador|carryOut~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|somador|carryOut~5_combout\ = ( \entradaA[4]~input_o\ & ( !\entradaB[4]~input_o\ $ (!\Seletor[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_entradaB[4]~input_o\,
	datac => \ALT_INV_Seletor[2]~input_o\,
	datae => \ALT_INV_entradaA[4]~input_o\,
	combout => \ULA7|somador|carryOut~5_combout\);

-- Location: IOIBUF_X54_Y19_N21
\entradaA[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(5),
	o => \entradaA[5]~input_o\);

-- Location: LABCELL_X39_Y12_N33
\ULA7|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|somador|carryOut~0_combout\ = ( \entradaA[7]~input_o\ & ( (!\Seletor[2]~input_o\ & (!\entradaB[7]~input_o\ & (!\entradaB[6]~input_o\ $ (!\entradaA[6]~input_o\)))) # (\Seletor[2]~input_o\ & (\entradaB[7]~input_o\ & (!\entradaB[6]~input_o\ $ 
-- (\entradaA[6]~input_o\)))) ) ) # ( !\entradaA[7]~input_o\ & ( (!\Seletor[2]~input_o\ & (\entradaB[7]~input_o\ & (!\entradaB[6]~input_o\ $ (!\entradaA[6]~input_o\)))) # (\Seletor[2]~input_o\ & (!\entradaB[7]~input_o\ & (!\entradaB[6]~input_o\ $ 
-- (\entradaA[6]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001000011000010000100001100000100100100000010010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_entradaB[6]~input_o\,
	datac => \ALT_INV_entradaB[7]~input_o\,
	datad => \ALT_INV_entradaA[6]~input_o\,
	dataf => \ALT_INV_entradaA[7]~input_o\,
	combout => \ULA7|somador|carryOut~0_combout\);

-- Location: LABCELL_X39_Y12_N42
\ULA7|somador|carryOut~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|somador|carryOut~7_combout\ = ( \entradaA[5]~input_o\ & ( \ULA7|somador|carryOut~0_combout\ & ( (!\ULA7|somador|carryOut~6_combout\ & (!\ULA7|somador|carryOut~5_combout\ & (!\entradaB[5]~input_o\ $ (\Seletor[2]~input_o\)))) ) ) ) # ( 
-- !\entradaA[5]~input_o\ & ( \ULA7|somador|carryOut~0_combout\ & ( (!\ULA7|somador|carryOut~6_combout\ & ((!\ULA7|somador|carryOut~5_combout\) # (!\entradaB[5]~input_o\ $ (\Seletor[2]~input_o\)))) ) ) ) # ( \entradaA[5]~input_o\ & ( 
-- !\ULA7|somador|carryOut~0_combout\ & ( !\ULA7|somador|carryOut~6_combout\ ) ) ) # ( !\entradaA[5]~input_o\ & ( !\ULA7|somador|carryOut~0_combout\ & ( !\ULA7|somador|carryOut~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100100001001000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[5]~input_o\,
	datab => \ULA7|somador|ALT_INV_carryOut~6_combout\,
	datac => \ALT_INV_Seletor[2]~input_o\,
	datad => \ULA7|somador|ALT_INV_carryOut~5_combout\,
	datae => \ALT_INV_entradaA[5]~input_o\,
	dataf => \ULA7|somador|ALT_INV_carryOut~0_combout\,
	combout => \ULA7|somador|carryOut~7_combout\);

-- Location: IOIBUF_X38_Y45_N52
\entradaB[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(8),
	o => \entradaB[8]~input_o\);

-- Location: LABCELL_X39_Y12_N30
\ULA8|MuxValorB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MuxValorB|saida_MUX~0_combout\ = !\Seletor[2]~input_o\ $ (!\entradaB[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[8]~input_o\,
	combout => \ULA8|MuxValorB|saida_MUX~0_combout\);

-- Location: IOIBUF_X54_Y17_N38
\entradaA[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(9),
	o => \entradaA[9]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\entradaB[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(9),
	o => \entradaB[9]~input_o\);

-- Location: LABCELL_X32_Y12_N18
\ULA9|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|somador|carryOut~0_combout\ = ( \entradaB[9]~input_o\ & ( !\entradaA[9]~input_o\ $ (\Seletor[2]~input_o\) ) ) # ( !\entradaB[9]~input_o\ & ( !\entradaA[9]~input_o\ $ (!\Seletor[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[9]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	dataf => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA9|somador|carryOut~0_combout\);

-- Location: LABCELL_X32_Y12_N0
\ULA12|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|somador|carryOut~0_combout\ = ( \Seletor[2]~input_o\ & ( !\entradaA[12]~input_o\ $ (\entradaB[12]~input_o\) ) ) # ( !\Seletor[2]~input_o\ & ( !\entradaA[12]~input_o\ $ (!\entradaB[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[12]~input_o\,
	datab => \ALT_INV_entradaB[12]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA12|somador|carryOut~0_combout\);

-- Location: LABCELL_X32_Y12_N9
\ULA11|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|somador|carryOut~0_combout\ = ( \Seletor[2]~input_o\ & ( !\entradaB[11]~input_o\ $ (\entradaA[11]~input_o\) ) ) # ( !\Seletor[2]~input_o\ & ( !\entradaB[11]~input_o\ $ (!\entradaA[11]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[11]~input_o\,
	datab => \ALT_INV_entradaA[11]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA11|somador|carryOut~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\entradaB[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(10),
	o => \entradaB[10]~input_o\);

-- Location: LABCELL_X32_Y12_N27
\ULA10|MuxValorB|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|MuxValorB|saida_MUX~0_combout\ = ( \entradaB[10]~input_o\ & ( !\Seletor[2]~input_o\ ) ) # ( !\entradaB[10]~input_o\ & ( \Seletor[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Seletor[2]~input_o\,
	dataf => \ALT_INV_entradaB[10]~input_o\,
	combout => \ULA10|MuxValorB|saida_MUX~0_combout\);

-- Location: IOIBUF_X34_Y45_N35
\entradaA[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(10),
	o => \entradaA[10]~input_o\);

-- Location: LABCELL_X32_Y12_N36
\ULA14|somador|carryOut~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carryOut~4_combout\ = ( !\ULA10|MuxValorB|saida_MUX~0_combout\ & ( \entradaA[10]~input_o\ & ( (\ULA9|somador|carryOut~0_combout\ & (\ULA14|somador|carryOut~0_combout\ & (\ULA12|somador|carryOut~0_combout\ & 
-- \ULA11|somador|carryOut~0_combout\))) ) ) ) # ( \ULA10|MuxValorB|saida_MUX~0_combout\ & ( !\entradaA[10]~input_o\ & ( (\ULA9|somador|carryOut~0_combout\ & (\ULA14|somador|carryOut~0_combout\ & (\ULA12|somador|carryOut~0_combout\ & 
-- \ULA11|somador|carryOut~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA9|somador|ALT_INV_carryOut~0_combout\,
	datab => \ULA14|somador|ALT_INV_carryOut~0_combout\,
	datac => \ULA12|somador|ALT_INV_carryOut~0_combout\,
	datad => \ULA11|somador|ALT_INV_carryOut~0_combout\,
	datae => \ULA10|MuxValorB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[10]~input_o\,
	combout => \ULA14|somador|carryOut~4_combout\);

-- Location: LABCELL_X32_Y12_N21
\ULA14|somador|carryOut~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carryOut~5_combout\ = ( \entradaB[9]~input_o\ & ( (\entradaA[9]~input_o\ & !\Seletor[2]~input_o\) ) ) # ( !\entradaB[9]~input_o\ & ( (\entradaA[9]~input_o\ & \Seletor[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[9]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	dataf => \ALT_INV_entradaB[9]~input_o\,
	combout => \ULA14|somador|carryOut~5_combout\);

-- Location: LABCELL_X32_Y12_N42
\ULA14|somador|carryOut~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carryOut~6_combout\ = ( \ULA10|MuxValorB|saida_MUX~0_combout\ & ( \entradaA[10]~input_o\ & ( (\ULA12|somador|carryOut~0_combout\ & (\ULA14|somador|carryOut~0_combout\ & \ULA11|somador|carryOut~0_combout\)) ) ) ) # ( 
-- !\ULA10|MuxValorB|saida_MUX~0_combout\ & ( \entradaA[10]~input_o\ & ( (\ULA12|somador|carryOut~0_combout\ & (\ULA14|somador|carryOut~0_combout\ & (\ULA14|somador|carryOut~5_combout\ & \ULA11|somador|carryOut~0_combout\))) ) ) ) # ( 
-- \ULA10|MuxValorB|saida_MUX~0_combout\ & ( !\entradaA[10]~input_o\ & ( (\ULA12|somador|carryOut~0_combout\ & (\ULA14|somador|carryOut~0_combout\ & (\ULA14|somador|carryOut~5_combout\ & \ULA11|somador|carryOut~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA12|somador|ALT_INV_carryOut~0_combout\,
	datab => \ULA14|somador|ALT_INV_carryOut~0_combout\,
	datac => \ULA14|somador|ALT_INV_carryOut~5_combout\,
	datad => \ULA11|somador|ALT_INV_carryOut~0_combout\,
	datae => \ULA10|MuxValorB|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_entradaA[10]~input_o\,
	combout => \ULA14|somador|carryOut~6_combout\);

-- Location: MLABCELL_X45_Y12_N3
\ULA5|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|somador|carryOut~0_combout\ = ( \entradaA[5]~input_o\ & ( !\Seletor[2]~input_o\ $ (\entradaB[5]~input_o\) ) ) # ( !\entradaA[5]~input_o\ & ( !\Seletor[2]~input_o\ $ (!\entradaB[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[5]~input_o\,
	dataf => \ALT_INV_entradaA[5]~input_o\,
	combout => \ULA5|somador|carryOut~0_combout\);

-- Location: IOIBUF_X54_Y19_N38
\entradaA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(0),
	o => \entradaA[0]~input_o\);

-- Location: IOIBUF_X0_Y19_N55
\entradaA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(1),
	o => \entradaA[1]~input_o\);

-- Location: IOIBUF_X43_Y0_N35
\entradaB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(0),
	o => \entradaB[0]~input_o\);

-- Location: IOIBUF_X51_Y0_N35
\entradaB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(1),
	o => \entradaB[1]~input_o\);

-- Location: MLABCELL_X45_Y12_N9
\ULA7|somador|carryOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|somador|carryOut~1_combout\ = ( \entradaB[0]~input_o\ & ( \entradaB[1]~input_o\ & ( (!\entradaA[0]~input_o\ & (!\Seletor[2]~input_o\ & \entradaA[1]~input_o\)) # (\entradaA[0]~input_o\ & ((!\Seletor[2]~input_o\) # (\entradaA[1]~input_o\))) ) ) ) # ( 
-- !\entradaB[0]~input_o\ & ( \entradaB[1]~input_o\ & ( \entradaA[1]~input_o\ ) ) ) # ( \entradaB[0]~input_o\ & ( !\entradaB[1]~input_o\ & ( (!\entradaA[0]~input_o\ & (\Seletor[2]~input_o\ & \entradaA[1]~input_o\)) # (\entradaA[0]~input_o\ & 
-- ((\entradaA[1]~input_o\) # (\Seletor[2]~input_o\))) ) ) ) # ( !\entradaB[0]~input_o\ & ( !\entradaB[1]~input_o\ & ( \Seletor[2]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000101110001011100001111000011110100110101001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[0]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaA[1]~input_o\,
	datae => \ALT_INV_entradaB[0]~input_o\,
	dataf => \ALT_INV_entradaB[1]~input_o\,
	combout => \ULA7|somador|carryOut~1_combout\);

-- Location: MLABCELL_X45_Y12_N0
\ULA4|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|somador|carryOut~0_combout\ = !\Seletor[2]~input_o\ $ (!\entradaA[4]~input_o\ $ (\entradaB[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaA[4]~input_o\,
	datad => \ALT_INV_entradaB[4]~input_o\,
	combout => \ULA4|somador|carryOut~0_combout\);

-- Location: IOIBUF_X44_Y45_N18
\entradaB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(3),
	o => \entradaB[3]~input_o\);

-- Location: IOIBUF_X54_Y17_N55
\entradaA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(3),
	o => \entradaA[3]~input_o\);

-- Location: IOIBUF_X43_Y45_N18
\entradaB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(2),
	o => \entradaB[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N52
\entradaA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(2),
	o => \entradaA[2]~input_o\);

-- Location: MLABCELL_X45_Y12_N12
\ULA7|somador|carryOut~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|somador|carryOut~2_combout\ = ( \entradaA[2]~input_o\ & ( (!\Seletor[2]~input_o\ & (!\entradaB[2]~input_o\ & (!\entradaB[3]~input_o\ $ (!\entradaA[3]~input_o\)))) # (\Seletor[2]~input_o\ & (\entradaB[2]~input_o\ & (!\entradaB[3]~input_o\ $ 
-- (\entradaA[3]~input_o\)))) ) ) # ( !\entradaA[2]~input_o\ & ( (!\Seletor[2]~input_o\ & (\entradaB[2]~input_o\ & (!\entradaB[3]~input_o\ $ (!\entradaA[3]~input_o\)))) # (\Seletor[2]~input_o\ & (!\entradaB[2]~input_o\ & (!\entradaB[3]~input_o\ $ 
-- (\entradaA[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000101001000001000010100100001001000001000010100100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[3]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaA[3]~input_o\,
	datad => \ALT_INV_entradaB[2]~input_o\,
	dataf => \ALT_INV_entradaA[2]~input_o\,
	combout => \ULA7|somador|carryOut~2_combout\);

-- Location: MLABCELL_X45_Y12_N15
\ULA7|somador|carryOut~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|somador|carryOut~3_combout\ = ( \entradaA[2]~input_o\ & ( (!\entradaB[3]~input_o\ & ((!\entradaB[2]~input_o\ & (\Seletor[2]~input_o\)) # (\entradaB[2]~input_o\ & ((\entradaA[3]~input_o\))))) # (\entradaB[3]~input_o\ & ((!\entradaB[2]~input_o\ & 
-- ((\entradaA[3]~input_o\))) # (\entradaB[2]~input_o\ & (!\Seletor[2]~input_o\)))) ) ) # ( !\entradaA[2]~input_o\ & ( (\entradaA[3]~input_o\ & (!\entradaB[3]~input_o\ $ (!\Seletor[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001100110000000000110011000100100011111100010010001111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[3]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[2]~input_o\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	dataf => \ALT_INV_entradaA[2]~input_o\,
	combout => \ULA7|somador|carryOut~3_combout\);

-- Location: MLABCELL_X45_Y12_N48
\ULA7|somador|carryOut~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|somador|carryOut~4_combout\ = ( \ULA7|somador|carryOut~0_combout\ & ( \ULA7|somador|carryOut~3_combout\ & ( (\ULA5|somador|carryOut~0_combout\ & \ULA4|somador|carryOut~0_combout\) ) ) ) # ( \ULA7|somador|carryOut~0_combout\ & ( 
-- !\ULA7|somador|carryOut~3_combout\ & ( (\ULA5|somador|carryOut~0_combout\ & (\ULA7|somador|carryOut~1_combout\ & (\ULA4|somador|carryOut~0_combout\ & \ULA7|somador|carryOut~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA5|somador|ALT_INV_carryOut~0_combout\,
	datab => \ULA7|somador|ALT_INV_carryOut~1_combout\,
	datac => \ULA4|somador|ALT_INV_carryOut~0_combout\,
	datad => \ULA7|somador|ALT_INV_carryOut~2_combout\,
	datae => \ULA7|somador|ALT_INV_carryOut~0_combout\,
	dataf => \ULA7|somador|ALT_INV_carryOut~3_combout\,
	combout => \ULA7|somador|carryOut~4_combout\);

-- Location: LABCELL_X39_Y12_N18
\ULA14|somador|carryOut~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|somador|carryOut~7_combout\ = ( !\ULA14|somador|carryOut~6_combout\ & ( \ULA7|somador|carryOut~4_combout\ & ( (!\ULA14|somador|carryOut~4_combout\) # ((!\entradaA[8]~input_o\ & !\ULA8|MuxValorB|saida_MUX~0_combout\)) ) ) ) # ( 
-- !\ULA14|somador|carryOut~6_combout\ & ( !\ULA7|somador|carryOut~4_combout\ & ( (!\ULA14|somador|carryOut~4_combout\) # ((!\entradaA[8]~input_o\ & ((!\ULA8|MuxValorB|saida_MUX~0_combout\) # (\ULA7|somador|carryOut~7_combout\))) # (\entradaA[8]~input_o\ & 
-- (\ULA7|somador|carryOut~7_combout\ & !\ULA8|MuxValorB|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110110010000000000000000011111111101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[8]~input_o\,
	datab => \ULA7|somador|ALT_INV_carryOut~7_combout\,
	datac => \ULA8|MuxValorB|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA14|somador|ALT_INV_carryOut~4_combout\,
	datae => \ULA14|somador|ALT_INV_carryOut~6_combout\,
	dataf => \ULA7|somador|ALT_INV_carryOut~4_combout\,
	combout => \ULA14|somador|carryOut~7_combout\);

-- Location: LABCELL_X32_Y4_N36
\ULA28|somador|carryOut\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|somador|carryOut~combout\ = ( \ULA14|somador|carryOut~3_combout\ & ( \ULA14|somador|carryOut~7_combout\ & ( (\ULA28|somador|carryOut~8_combout\ & ((!\ULA28|somador|carryOut~1_combout\) # (\ULA21|somador|carryOut~8_combout\))) ) ) ) # ( 
-- !\ULA14|somador|carryOut~3_combout\ & ( \ULA14|somador|carryOut~7_combout\ & ( (\ULA28|somador|carryOut~8_combout\ & ((!\ULA28|somador|carryOut~1_combout\) # ((\ULA21|somador|carryOut~8_combout\ & !\ULA21|somador|carryOut~1_combout\)))) ) ) ) # ( 
-- \ULA14|somador|carryOut~3_combout\ & ( !\ULA14|somador|carryOut~7_combout\ & ( (\ULA28|somador|carryOut~8_combout\ & ((!\ULA28|somador|carryOut~1_combout\) # ((\ULA21|somador|carryOut~8_combout\ & !\ULA21|somador|carryOut~1_combout\)))) ) ) ) # ( 
-- !\ULA14|somador|carryOut~3_combout\ & ( !\ULA14|somador|carryOut~7_combout\ & ( (\ULA28|somador|carryOut~8_combout\ & ((!\ULA28|somador|carryOut~1_combout\) # ((\ULA21|somador|carryOut~8_combout\ & !\ULA21|somador|carryOut~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100010000010101010001000001010101000100000101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA28|somador|ALT_INV_carryOut~8_combout\,
	datab => \ULA21|somador|ALT_INV_carryOut~8_combout\,
	datac => \ULA21|somador|ALT_INV_carryOut~1_combout\,
	datad => \ULA28|somador|ALT_INV_carryOut~1_combout\,
	datae => \ULA14|somador|ALT_INV_carryOut~3_combout\,
	dataf => \ULA14|somador|ALT_INV_carryOut~7_combout\,
	combout => \ULA28|somador|carryOut~combout\);

-- Location: IOIBUF_X0_Y21_N4
\entradaB[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(30),
	o => \entradaB[30]~input_o\);

-- Location: IOIBUF_X38_Y45_N35
\entradaA[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(30),
	o => \entradaA[30]~input_o\);

-- Location: IOIBUF_X43_Y0_N18
\entradaA[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(29),
	o => \entradaA[29]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\entradaB[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(29),
	o => \entradaB[29]~input_o\);

-- Location: MLABCELL_X37_Y4_N12
\ULA30|somador|carryOut~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|somador|carryOut~1_combout\ = ( \Seletor[2]~input_o\ & ( (!\entradaB[30]~input_o\ & (((\entradaA[29]~input_o\ & !\entradaB[29]~input_o\)) # (\entradaA[30]~input_o\))) # (\entradaB[30]~input_o\ & (\entradaA[30]~input_o\ & (\entradaA[29]~input_o\ & 
-- !\entradaB[29]~input_o\))) ) ) # ( !\Seletor[2]~input_o\ & ( (!\entradaB[30]~input_o\ & (\entradaA[30]~input_o\ & (\entradaA[29]~input_o\ & \entradaB[29]~input_o\))) # (\entradaB[30]~input_o\ & (((\entradaA[29]~input_o\ & \entradaB[29]~input_o\)) # 
-- (\entradaA[30]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010111000100010001011100101011001000100010101100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[30]~input_o\,
	datab => \ALT_INV_entradaA[30]~input_o\,
	datac => \ALT_INV_entradaA[29]~input_o\,
	datad => \ALT_INV_entradaB[29]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA30|somador|carryOut~1_combout\);

-- Location: IOIBUF_X43_Y45_N1
\entradaB[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaB(31),
	o => \entradaB[31]~input_o\);

-- Location: IOIBUF_X40_Y45_N41
\entradaA[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entradaA(31),
	o => \entradaA[31]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\Seletor[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Seletor(0),
	o => \Seletor[0]~input_o\);

-- Location: IOIBUF_X44_Y0_N1
\Seletor[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Seletor(1),
	o => \Seletor[1]~input_o\);

-- Location: MLABCELL_X37_Y4_N18
\ULA0|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA0|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[2]~input_o\ & ( (\Seletor[0]~input_o\ & (\Seletor[1]~input_o\ & ((!\entradaB[31]~input_o\) # (\entradaA[31]~input_o\)))) ) ) # ( !\Seletor[2]~input_o\ & ( (\Seletor[0]~input_o\ & (\Seletor[1]~input_o\ & 
-- ((\entradaA[31]~input_o\) # (\entradaB[31]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000000000000011100000000000010110000000000001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[31]~input_o\,
	datab => \ALT_INV_entradaA[31]~input_o\,
	datac => \ALT_INV_Seletor[0]~input_o\,
	datad => \ALT_INV_Seletor[1]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA0|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X37_Y4_N0
\ULA0|MuxSaida|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA0|MuxSaida|saida_MUX~2_combout\ = ( !\Seletor[1]~input_o\ & ( ((!\Seletor[0]~input_o\ & (\entradaA[0]~input_o\ & (!\entradaB[0]~input_o\ $ (!\Seletor[2]~input_o\)))) # (\Seletor[0]~input_o\ & ((!\entradaB[0]~input_o\ $ (!\Seletor[2]~input_o\)) # 
-- (\entradaA[0]~input_o\)))) ) ) # ( \Seletor[1]~input_o\ & ( (\Seletor[0]~input_o\ & (\entradaA[31]~input_o\ & (!\entradaB[31]~input_o\ $ (((!\Seletor[2]~input_o\)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001100111111000000010000000100110000111100110000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[31]~input_o\,
	datab => \ALT_INV_Seletor[0]~input_o\,
	datac => \ALT_INV_entradaA[31]~input_o\,
	datad => \ALT_INV_entradaA[0]~input_o\,
	datae => \ALT_INV_Seletor[1]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	datag => \ALT_INV_entradaB[0]~input_o\,
	combout => \ULA0|MuxSaida|saida_MUX~2_combout\);

-- Location: MLABCELL_X37_Y4_N15
\ULA30|somador|carryOut~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|somador|carryOut~0_combout\ = ( \Seletor[2]~input_o\ & ( (!\entradaB[30]~input_o\ & (!\entradaA[30]~input_o\ & (!\entradaB[29]~input_o\ $ (\entradaA[29]~input_o\)))) # (\entradaB[30]~input_o\ & (\entradaA[30]~input_o\ & (!\entradaB[29]~input_o\ $ 
-- (\entradaA[29]~input_o\)))) ) ) # ( !\Seletor[2]~input_o\ & ( (!\entradaB[30]~input_o\ & (\entradaA[30]~input_o\ & (!\entradaB[29]~input_o\ $ (!\entradaA[29]~input_o\)))) # (\entradaB[30]~input_o\ & (!\entradaA[30]~input_o\ & (!\entradaB[29]~input_o\ $ 
-- (!\entradaA[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001100000000001100110000010010000000010011001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[30]~input_o\,
	datab => \ALT_INV_entradaA[30]~input_o\,
	datac => \ALT_INV_entradaB[29]~input_o\,
	datad => \ALT_INV_entradaA[29]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA30|somador|carryOut~0_combout\);

-- Location: MLABCELL_X37_Y4_N6
\ULA0|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA0|MuxSaida|saida_MUX~1_combout\ = ( \ULA30|somador|carryOut~0_combout\ & ( ((\ULA28|somador|carryOut~combout\ & (!\ULA30|somador|carryOut~1_combout\ & \ULA0|MuxSaida|saida_MUX~0_combout\))) # (\ULA0|MuxSaida|saida_MUX~2_combout\) ) ) # ( 
-- !\ULA30|somador|carryOut~0_combout\ & ( ((!\ULA30|somador|carryOut~1_combout\ & \ULA0|MuxSaida|saida_MUX~0_combout\)) # (\ULA0|MuxSaida|saida_MUX~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA28|somador|ALT_INV_carryOut~combout\,
	datab => \ULA30|somador|ALT_INV_carryOut~1_combout\,
	datac => \ULA0|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA0|MuxSaida|ALT_INV_saida_MUX~2_combout\,
	dataf => \ULA30|somador|ALT_INV_carryOut~0_combout\,
	combout => \ULA0|MuxSaida|saida_MUX~1_combout\);

-- Location: MLABCELL_X45_Y12_N33
\ULA1|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[1]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaA[1]~input_o\ & !\Seletor[2]~input_o\)) # (\Seletor[0]~input_o\ & ((!\Seletor[2]~input_o\) # (\entradaA[1]~input_o\))))) ) ) # ( 
-- !\entradaB[1]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaA[1]~input_o\ & \Seletor[2]~input_o\)) # (\Seletor[0]~input_o\ & ((\Seletor[2]~input_o\) # (\entradaA[1]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000101010000000100010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[0]~input_o\,
	datac => \ALT_INV_entradaA[1]~input_o\,
	datad => \ALT_INV_Seletor[2]~input_o\,
	dataf => \ALT_INV_entradaB[1]~input_o\,
	combout => \ULA1|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X45_Y12_N39
\ULA2|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA2|MuxSaida|saida_MUX~0_combout\ = ( \entradaA[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[2]~input_o\)) # (\Seletor[0]~input_o\))) ) ) # ( !\entradaA[2]~input_o\ & ( (!\Seletor[1]~input_o\ & (\Seletor[0]~input_o\ & 
-- (!\Seletor[2]~input_o\ $ (!\entradaB[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000101010101000100010101010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[0]~input_o\,
	datac => \ALT_INV_Seletor[2]~input_o\,
	datad => \ALT_INV_entradaB[2]~input_o\,
	dataf => \ALT_INV_entradaA[2]~input_o\,
	combout => \ULA2|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X45_Y12_N36
\ULA3|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA3|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (!\entradaB[3]~input_o\ & \entradaA[3]~input_o\)) # (\Seletor[0]~input_o\ & ((!\entradaB[3]~input_o\) # (\entradaA[3]~input_o\))))) ) ) # ( 
-- !\Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaB[3]~input_o\ & \entradaA[3]~input_o\)) # (\Seletor[0]~input_o\ & ((\entradaA[3]~input_o\) # (\entradaB[3]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000100000101000100010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[0]~input_o\,
	datac => \ALT_INV_entradaB[3]~input_o\,
	datad => \ALT_INV_entradaA[3]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA3|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X45_Y12_N30
\ULA4|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA4|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaA[4]~input_o\ & !\entradaB[4]~input_o\)) # (\Seletor[0]~input_o\ & ((!\entradaB[4]~input_o\) # (\entradaA[4]~input_o\))))) ) ) # ( 
-- !\Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaA[4]~input_o\ & \entradaB[4]~input_o\)) # (\Seletor[0]~input_o\ & ((\entradaB[4]~input_o\) # (\entradaA[4]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000101010000000100010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[0]~input_o\,
	datac => \ALT_INV_entradaA[4]~input_o\,
	datad => \ALT_INV_entradaB[4]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA4|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X45_Y12_N42
\ULA5|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA5|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( \entradaA[5]~input_o\ & ( !\Seletor[1]~input_o\ ) ) ) # ( !\Seletor[0]~input_o\ & ( \entradaA[5]~input_o\ & ( (!\Seletor[1]~input_o\ & (!\Seletor[2]~input_o\ $ (!\entradaB[5]~input_o\))) ) ) 
-- ) # ( \Seletor[0]~input_o\ & ( !\entradaA[5]~input_o\ & ( (!\Seletor[1]~input_o\ & (!\Seletor[2]~input_o\ $ (!\entradaB[5]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100001100000000110000110000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_Seletor[1]~input_o\,
	datad => \ALT_INV_entradaB[5]~input_o\,
	datae => \ALT_INV_Seletor[0]~input_o\,
	dataf => \ALT_INV_entradaA[5]~input_o\,
	combout => \ULA5|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y12_N24
\ULA6|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA6|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[6]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ & ((\entradaA[6]~input_o\) # (\Seletor[0]~input_o\))) # (\Seletor[2]~input_o\ & (\Seletor[0]~input_o\ & \entradaA[6]~input_o\)))) ) ) # ( 
-- !\entradaB[6]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ & (\Seletor[0]~input_o\ & \entradaA[6]~input_o\)) # (\Seletor[2]~input_o\ & ((\entradaA[6]~input_o\) # (\Seletor[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000001000100010100000100010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_Seletor[0]~input_o\,
	datad => \ALT_INV_entradaA[6]~input_o\,
	dataf => \ALT_INV_entradaB[6]~input_o\,
	combout => \ULA6|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y12_N27
\ULA7|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA7|MuxSaida|saida_MUX~0_combout\ = ( \entradaA[7]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[7]~input_o\)) # (\Seletor[0]~input_o\))) ) ) # ( !\entradaA[7]~input_o\ & ( (!\Seletor[1]~input_o\ & (\Seletor[0]~input_o\ & 
-- (!\Seletor[2]~input_o\ $ (!\entradaB[7]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100000101000101010100010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[7]~input_o\,
	datad => \ALT_INV_Seletor[0]~input_o\,
	dataf => \ALT_INV_entradaA[7]~input_o\,
	combout => \ULA7|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y12_N0
\ULA8|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA8|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[8]~input_o\)) # (\entradaA[8]~input_o\))) ) ) # ( !\Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & (\entradaA[8]~input_o\ & 
-- (!\Seletor[2]~input_o\ $ (!\entradaB[8]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000000000100000100000101010100010100010101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaA[8]~input_o\,
	datad => \ALT_INV_entradaB[8]~input_o\,
	dataf => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA8|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y12_N51
\ULA9|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA9|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[9]~input_o\)) # (\entradaA[9]~input_o\))) ) ) # ( !\Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & (\entradaA[9]~input_o\ & 
-- (!\Seletor[2]~input_o\ $ (!\entradaB[9]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100000101000101010100010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[9]~input_o\,
	datad => \ALT_INV_entradaA[9]~input_o\,
	dataf => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA9|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y12_N48
\ULA10|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA10|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[10]~input_o\)) # (\entradaA[10]~input_o\))) ) ) # ( !\Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & (\entradaA[10]~input_o\ 
-- & (!\Seletor[2]~input_o\ $ (!\entradaB[10]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100000101000101010100010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[10]~input_o\,
	datad => \ALT_INV_entradaA[10]~input_o\,
	dataf => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA10|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y12_N24
\ULA11|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA11|MuxSaida|saida_MUX~0_combout\ = ( !\Seletor[1]~input_o\ & ( (!\Seletor[0]~input_o\ & (\entradaA[11]~input_o\ & (!\entradaB[11]~input_o\ $ (!\Seletor[2]~input_o\)))) # (\Seletor[0]~input_o\ & ((!\entradaB[11]~input_o\ $ (!\Seletor[2]~input_o\)) # 
-- (\entradaA[11]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011001101111000001100110111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[11]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_Seletor[0]~input_o\,
	datad => \ALT_INV_entradaA[11]~input_o\,
	dataf => \ALT_INV_Seletor[1]~input_o\,
	combout => \ULA11|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y12_N3
\ULA12|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA12|MuxSaida|saida_MUX~0_combout\ = ( !\Seletor[1]~input_o\ & ( (!\entradaA[12]~input_o\ & (\Seletor[0]~input_o\ & (!\entradaB[12]~input_o\ $ (!\Seletor[2]~input_o\)))) # (\entradaA[12]~input_o\ & ((!\entradaB[12]~input_o\ $ (!\Seletor[2]~input_o\)) # 
-- (\Seletor[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001111101000101000111110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[12]~input_o\,
	datab => \ALT_INV_entradaB[12]~input_o\,
	datac => \ALT_INV_Seletor[2]~input_o\,
	datad => \ALT_INV_Seletor[0]~input_o\,
	dataf => \ALT_INV_Seletor[1]~input_o\,
	combout => \ULA12|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y12_N57
\ULA13|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA13|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[13]~input_o\)) # (\entradaA[13]~input_o\))) ) ) # ( !\Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & (\entradaA[13]~input_o\ 
-- & (!\Seletor[2]~input_o\ $ (!\entradaB[13]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000000000100000100000101010100010100010101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaA[13]~input_o\,
	datad => \ALT_INV_entradaB[13]~input_o\,
	dataf => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA13|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X32_Y12_N54
\ULA14|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA14|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[14]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ & ((\entradaA[14]~input_o\) # (\Seletor[0]~input_o\))) # (\Seletor[2]~input_o\ & (\Seletor[0]~input_o\ & \entradaA[14]~input_o\)))) ) ) # 
-- ( !\entradaB[14]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ & (\Seletor[0]~input_o\ & \entradaA[14]~input_o\)) # (\Seletor[2]~input_o\ & ((\entradaA[14]~input_o\) # (\Seletor[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000001000100010100000100010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_Seletor[0]~input_o\,
	datad => \ALT_INV_entradaA[14]~input_o\,
	dataf => \ALT_INV_entradaB[14]~input_o\,
	combout => \ULA14|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X29_Y4_N24
\ULA15|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA15|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaA[15]~input_o\ & !\entradaB[15]~input_o\)) # (\Seletor[0]~input_o\ & ((!\entradaB[15]~input_o\) # (\entradaA[15]~input_o\))))) ) 
-- ) # ( !\Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaA[15]~input_o\ & \entradaB[15]~input_o\)) # (\Seletor[0]~input_o\ & ((\entradaB[15]~input_o\) # (\entradaA[15]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000101010000000100010101000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[0]~input_o\,
	datac => \ALT_INV_entradaA[15]~input_o\,
	datad => \ALT_INV_entradaB[15]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA15|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X29_Y4_N36
\ULA16|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA16|MuxSaida|saida_MUX~0_combout\ = ( !\Seletor[1]~input_o\ & ( (!\entradaA[16]~input_o\ & (\Seletor[0]~input_o\ & (!\Seletor[2]~input_o\ $ (!\entradaB[16]~input_o\)))) # (\entradaA[16]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[16]~input_o\)) # 
-- (\Seletor[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111011000100100111101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_entradaA[16]~input_o\,
	datac => \ALT_INV_entradaB[16]~input_o\,
	datad => \ALT_INV_Seletor[0]~input_o\,
	dataf => \ALT_INV_Seletor[1]~input_o\,
	combout => \ULA16|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X29_Y4_N27
\ULA17|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA17|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (!\entradaB[17]~input_o\ & \entradaA[17]~input_o\)) # (\Seletor[0]~input_o\ & ((!\entradaB[17]~input_o\) # (\entradaA[17]~input_o\))))) ) 
-- ) # ( !\Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaB[17]~input_o\ & \entradaA[17]~input_o\)) # (\Seletor[0]~input_o\ & ((\entradaA[17]~input_o\) # (\entradaB[17]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000101010000000100010101000100000101000100010000010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[0]~input_o\,
	datac => \ALT_INV_entradaB[17]~input_o\,
	datad => \ALT_INV_entradaA[17]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA17|MuxSaida|saida_MUX~0_combout\);

-- Location: LABCELL_X39_Y12_N3
\ULA18|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA18|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[18]~input_o\)) # (\entradaA[18]~input_o\))) ) ) # ( !\Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & (\entradaA[18]~input_o\ 
-- & (!\Seletor[2]~input_o\ $ (!\entradaB[18]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101000000000000010100000101000101010100010100010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[1]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[18]~input_o\,
	datad => \ALT_INV_entradaA[18]~input_o\,
	dataf => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA18|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X28_Y4_N51
\ULA19|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA19|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (!\entradaB[19]~input_o\ & \entradaA[19]~input_o\)) # (\Seletor[0]~input_o\ & ((!\entradaB[19]~input_o\) # (\entradaA[19]~input_o\))))) ) 
-- ) # ( !\Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaB[19]~input_o\ & \entradaA[19]~input_o\)) # (\Seletor[0]~input_o\ & ((\entradaA[19]~input_o\) # (\entradaB[19]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110001000000110001000100000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[0]~input_o\,
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ALT_INV_entradaB[19]~input_o\,
	datad => \ALT_INV_entradaA[19]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA19|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X28_Y4_N48
\ULA20|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA20|MuxSaida|saida_MUX~0_combout\ = ( \entradaA[20]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\entradaB[20]~input_o\ $ (!\Seletor[2]~input_o\)) # (\Seletor[0]~input_o\))) ) ) # ( !\entradaA[20]~input_o\ & ( (\Seletor[0]~input_o\ & (!\Seletor[1]~input_o\ 
-- & (!\entradaB[20]~input_o\ $ (!\Seletor[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000000001000100000001001100110001000100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[0]~input_o\,
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ALT_INV_entradaB[20]~input_o\,
	datad => \ALT_INV_Seletor[2]~input_o\,
	dataf => \ALT_INV_entradaA[20]~input_o\,
	combout => \ULA20|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X28_Y4_N27
\ULA21|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA21|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[21]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaA[21]~input_o\ & !\Seletor[2]~input_o\)) # (\Seletor[0]~input_o\ & ((!\Seletor[2]~input_o\) # (\entradaA[21]~input_o\))))) ) ) 
-- # ( !\entradaB[21]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\entradaA[21]~input_o\ & \Seletor[2]~input_o\)) # (\Seletor[0]~input_o\ & ((\Seletor[2]~input_o\) # (\entradaA[21]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110001001100000001000100110000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[0]~input_o\,
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[21]~input_o\,
	datad => \ALT_INV_Seletor[2]~input_o\,
	dataf => \ALT_INV_entradaB[21]~input_o\,
	combout => \ULA21|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X28_Y4_N24
\ULA22|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA22|MuxSaida|saida_MUX~0_combout\ = ( \entradaA[22]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[22]~input_o\)) # (\Seletor[0]~input_o\))) ) ) # ( !\entradaA[22]~input_o\ & ( (\Seletor[0]~input_o\ & (!\Seletor[1]~input_o\ 
-- & (!\Seletor[2]~input_o\ $ (!\entradaB[22]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001000000000001000100000001001100110001000100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[0]~input_o\,
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ALT_INV_Seletor[2]~input_o\,
	datad => \ALT_INV_entradaB[22]~input_o\,
	dataf => \ALT_INV_entradaA[22]~input_o\,
	combout => \ULA22|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X34_Y4_N0
\ULA23|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA23|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & ((\entradaA[23]~input_o\) # (\ULA23|MuxValorB|saida_MUX~0_combout\))) ) ) # ( !\Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & 
-- (\ULA23|MuxValorB|saida_MUX~0_combout\ & \entradaA[23]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ULA23|MuxValorB|ALT_INV_saida_MUX~0_combout\,
	datad => \ALT_INV_entradaA[23]~input_o\,
	dataf => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA23|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X34_Y4_N12
\ULA24|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA24|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[24]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\entradaA[24]~input_o\ & (!\Seletor[2]~input_o\ & \Seletor[0]~input_o\)) # (\entradaA[24]~input_o\ & ((!\Seletor[2]~input_o\) # (\Seletor[0]~input_o\))))) ) ) 
-- # ( !\entradaB[24]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\entradaA[24]~input_o\ & (\Seletor[2]~input_o\ & \Seletor[0]~input_o\)) # (\entradaA[24]~input_o\ & ((\Seletor[0]~input_o\) # (\Seletor[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000101110000000001001101000000000100110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaA[24]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_Seletor[0]~input_o\,
	datad => \ALT_INV_Seletor[1]~input_o\,
	dataf => \ALT_INV_entradaB[24]~input_o\,
	combout => \ULA24|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X34_Y4_N24
\ULA25|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA25|MuxSaida|saida_MUX~0_combout\ = ( !\Seletor[1]~input_o\ & ( (!\Seletor[0]~input_o\ & (\entradaA[25]~input_o\ & (!\Seletor[2]~input_o\ $ (!\entradaB[25]~input_o\)))) # (\Seletor[0]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[25]~input_o\)) # 
-- (\entradaA[25]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001111101000101000111110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[0]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaB[25]~input_o\,
	datad => \ALT_INV_entradaA[25]~input_o\,
	dataf => \ALT_INV_Seletor[1]~input_o\,
	combout => \ULA25|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X37_Y4_N27
\ULA26|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA26|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[26]~input_o\)) # (\entradaA[26]~input_o\))) ) ) # ( !\Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & (\entradaA[26]~input_o\ 
-- & (!\Seletor[2]~input_o\ $ (!\entradaB[26]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100001001000110011000100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ALT_INV_entradaB[26]~input_o\,
	datad => \ALT_INV_entradaA[26]~input_o\,
	dataf => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA26|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X37_Y4_N24
\ULA27|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA27|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[27]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ & ((\Seletor[0]~input_o\) # (\entradaA[27]~input_o\))) # (\Seletor[2]~input_o\ & (\entradaA[27]~input_o\ & \Seletor[0]~input_o\)))) ) ) # 
-- ( !\entradaB[27]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ & (\entradaA[27]~input_o\ & \Seletor[0]~input_o\)) # (\Seletor[2]~input_o\ & ((\Seletor[0]~input_o\) # (\entradaA[27]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001001100000001000100110000001000100011000000100010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[27]~input_o\,
	datad => \ALT_INV_Seletor[0]~input_o\,
	dataf => \ALT_INV_entradaB[27]~input_o\,
	combout => \ULA27|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X34_Y4_N27
\ULA28|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA28|MuxSaida|saida_MUX~0_combout\ = ( \entradaB[28]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (!\Seletor[2]~input_o\ & \entradaA[28]~input_o\)) # (\Seletor[0]~input_o\ & ((!\Seletor[2]~input_o\) # (\entradaA[28]~input_o\))))) ) ) 
-- # ( !\entradaB[28]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[0]~input_o\ & (\Seletor[2]~input_o\ & \entradaA[28]~input_o\)) # (\Seletor[0]~input_o\ & ((\entradaA[28]~input_o\) # (\Seletor[2]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100000000000101110000000001001101000000000100110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[0]~input_o\,
	datab => \ALT_INV_Seletor[2]~input_o\,
	datac => \ALT_INV_entradaA[28]~input_o\,
	datad => \ALT_INV_Seletor[1]~input_o\,
	dataf => \ALT_INV_entradaB[28]~input_o\,
	combout => \ULA28|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X37_Y4_N30
\ULA29|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA29|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[29]~input_o\)) # (\entradaA[29]~input_o\))) ) ) # ( !\Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & (\entradaA[29]~input_o\ 
-- & (!\Seletor[2]~input_o\ $ (!\entradaB[29]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100001001000110011000100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ALT_INV_entradaB[29]~input_o\,
	datad => \ALT_INV_entradaA[29]~input_o\,
	dataf => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA29|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X37_Y4_N33
\ULA30|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA30|MuxSaida|saida_MUX~0_combout\ = ( \Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\Seletor[2]~input_o\ $ (!\entradaB[30]~input_o\)) # (\entradaA[30]~input_o\))) ) ) # ( !\Seletor[0]~input_o\ & ( (!\Seletor[1]~input_o\ & (\entradaA[30]~input_o\ 
-- & (!\Seletor[2]~input_o\ $ (!\entradaB[30]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100001001100100011000100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Seletor[2]~input_o\,
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ALT_INV_entradaA[30]~input_o\,
	datad => \ALT_INV_entradaB[30]~input_o\,
	dataf => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA30|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X37_Y4_N21
\ULA31|MuxSaida|saida_MUX~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxSaida|saida_MUX~1_combout\ = ( \Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\entradaB[31]~input_o\ & ((\Seletor[0]~input_o\) # (\entradaA[31]~input_o\))) # (\entradaB[31]~input_o\ & (\entradaA[31]~input_o\ & \Seletor[0]~input_o\)))) ) ) 
-- # ( !\Seletor[2]~input_o\ & ( (!\Seletor[1]~input_o\ & ((!\entradaB[31]~input_o\ & (\entradaA[31]~input_o\ & \Seletor[0]~input_o\)) # (\entradaB[31]~input_o\ & ((\Seletor[0]~input_o\) # (\entradaA[31]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110000000100000111000000100000101100000010000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[31]~input_o\,
	datab => \ALT_INV_entradaA[31]~input_o\,
	datac => \ALT_INV_Seletor[1]~input_o\,
	datad => \ALT_INV_Seletor[0]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA31|MuxSaida|saida_MUX~1_combout\);

-- Location: MLABCELL_X37_Y4_N39
\ULA31|MuxSaida|saida_MUX~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxSaida|saida_MUX~0_combout\ = (\Seletor[1]~input_o\ & !\Seletor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Seletor[1]~input_o\,
	datac => \ALT_INV_Seletor[0]~input_o\,
	combout => \ULA31|MuxSaida|saida_MUX~0_combout\);

-- Location: MLABCELL_X37_Y4_N36
\ULA31|somador|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|somador|saida~0_combout\ = ( \Seletor[2]~input_o\ & ( !\entradaB[31]~input_o\ $ (\entradaA[31]~input_o\) ) ) # ( !\Seletor[2]~input_o\ & ( !\entradaB[31]~input_o\ $ (!\entradaA[31]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entradaB[31]~input_o\,
	datac => \ALT_INV_entradaA[31]~input_o\,
	dataf => \ALT_INV_Seletor[2]~input_o\,
	combout => \ULA31|somador|saida~0_combout\);

-- Location: MLABCELL_X37_Y4_N42
\ULA31|MuxSaida|saida_MUX~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA31|MuxSaida|saida_MUX~2_combout\ = ( \ULA31|somador|saida~0_combout\ & ( \ULA30|somador|carryOut~0_combout\ & ( ((!\ULA30|somador|carryOut~1_combout\ & (\ULA28|somador|carryOut~combout\ & \ULA31|MuxSaida|saida_MUX~0_combout\))) # 
-- (\ULA31|MuxSaida|saida_MUX~1_combout\) ) ) ) # ( !\ULA31|somador|saida~0_combout\ & ( \ULA30|somador|carryOut~0_combout\ & ( ((\ULA31|MuxSaida|saida_MUX~0_combout\ & ((!\ULA28|somador|carryOut~combout\) # (\ULA30|somador|carryOut~1_combout\)))) # 
-- (\ULA31|MuxSaida|saida_MUX~1_combout\) ) ) ) # ( \ULA31|somador|saida~0_combout\ & ( !\ULA30|somador|carryOut~0_combout\ & ( ((!\ULA30|somador|carryOut~1_combout\ & \ULA31|MuxSaida|saida_MUX~0_combout\)) # (\ULA31|MuxSaida|saida_MUX~1_combout\) ) ) ) # ( 
-- !\ULA31|somador|saida~0_combout\ & ( !\ULA30|somador|carryOut~0_combout\ & ( ((\ULA30|somador|carryOut~1_combout\ & \ULA31|MuxSaida|saida_MUX~0_combout\)) # (\ULA31|MuxSaida|saida_MUX~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101110111010101011101110101010101111101110101010101011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA31|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datab => \ULA30|somador|ALT_INV_carryOut~1_combout\,
	datac => \ULA28|somador|ALT_INV_carryOut~combout\,
	datad => \ULA31|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA31|somador|ALT_INV_saida~0_combout\,
	dataf => \ULA30|somador|ALT_INV_carryOut~0_combout\,
	combout => \ULA31|MuxSaida|saida_MUX~2_combout\);

-- Location: MLABCELL_X37_Y4_N48
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !\ULA26|MuxSaida|saida_MUX~0_combout\ & ( !\ULA27|MuxSaida|saida_MUX~0_combout\ & ( (!\ULA30|MuxSaida|saida_MUX~0_combout\ & (!\ULA28|MuxSaida|saida_MUX~0_combout\ & (!\ULA25|MuxSaida|saida_MUX~0_combout\ & 
-- !\ULA29|MuxSaida|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA30|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA28|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA25|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA29|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA26|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA27|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X28_Y4_N30
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\ULA21|MuxSaida|saida_MUX~0_combout\ & ( !\ULA23|MuxSaida|saida_MUX~0_combout\ & ( (!\ULA20|MuxSaida|saida_MUX~0_combout\ & (!\ULA19|MuxSaida|saida_MUX~0_combout\ & !\ULA22|MuxSaida|saida_MUX~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA20|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA19|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA22|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA21|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA23|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X32_Y4_N12
\Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !\ULA17|MuxSaida|saida_MUX~0_combout\ & ( (!\ULA16|MuxSaida|saida_MUX~0_combout\ & (!\ULA14|MuxSaida|saida_MUX~0_combout\ & (!\ULA15|MuxSaida|saida_MUX~0_combout\ & !\ULA13|MuxSaida|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA16|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA14|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA15|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA13|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA17|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~4_combout\);

-- Location: LABCELL_X39_Y12_N6
\Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !\ULA10|MuxSaida|saida_MUX~0_combout\ & ( (!\ULA8|MuxSaida|saida_MUX~0_combout\ & (!\ULA11|MuxSaida|saida_MUX~0_combout\ & (!\ULA7|MuxSaida|saida_MUX~0_combout\ & !\ULA9|MuxSaida|saida_MUX~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA8|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datab => \ULA11|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA7|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA9|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA10|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X45_Y12_N18
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !\ULA3|MuxSaida|saida_MUX~0_combout\ & ( !\ULA4|MuxSaida|saida_MUX~0_combout\ & ( (!\ULA5|MuxSaida|saida_MUX~0_combout\ & (!\ULA1|MuxSaida|saida_MUX~0_combout\ & !\ULA2|MuxSaida|saida_MUX~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ULA5|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datac => \ULA1|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA2|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA3|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	dataf => \ULA4|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X39_Y12_N12
\Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !\ULA18|MuxSaida|saida_MUX~0_combout\ & ( \Equal0~2_combout\ & ( (\Equal0~4_combout\ & (\Equal0~3_combout\ & (!\ULA12|MuxSaida|saida_MUX~0_combout\ & !\ULA6|MuxSaida|saida_MUX~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_Equal0~3_combout\,
	datac => \ULA12|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datad => \ULA6|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	datae => \ULA18|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X37_Y4_N54
\Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( !\ULA24|MuxSaida|saida_MUX~0_combout\ & ( \Equal0~5_combout\ & ( (\Equal0~1_combout\ & (!\ULA31|MuxSaida|saida_MUX~2_combout\ & (\Equal0~0_combout\ & !\ULA0|MuxSaida|saida_MUX~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~1_combout\,
	datab => \ULA31|MuxSaida|ALT_INV_saida_MUX~2_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ULA0|MuxSaida|ALT_INV_saida_MUX~1_combout\,
	datae => \ULA24|MuxSaida|ALT_INV_saida_MUX~0_combout\,
	dataf => \ALT_INV_Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X13_Y25_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


