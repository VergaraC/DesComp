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

-- DATE "10/07/2021 19:12:30"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Aula8 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	KEY_RST : IN std_logic;
	ROM_Saida : OUT std_logic_vector(12 DOWNTO 0);
	RAM_Saida : OUT std_logic_vector(7 DOWNTO 0);
	A0_A8 : OUT std_logic_vector(8 DOWNTO 0);
	Address : OUT std_logic_vector(8 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	WRTE : OUT std_logic;
	HABILITAREGHEX : OUT std_logic;
	DECODEREND : OUT std_logic_vector(7 DOWNTO 0);
	DECODERBLOC : OUT std_logic_vector(7 DOWNTO 0)
	);
END Aula8;

ARCHITECTURE structure OF Aula8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY_RST : std_logic;
SIGNAL ww_ROM_Saida : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_RAM_Saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A0_A8 : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_Address : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_WRTE : std_logic;
SIGNAL ww_HABILITAREGHEX : std_logic;
SIGNAL ww_DECODEREND : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DECODERBLOC : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY_RST~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \RAM_Saida[0]~output_o\ : std_logic;
SIGNAL \RAM_Saida[1]~output_o\ : std_logic;
SIGNAL \RAM_Saida[2]~output_o\ : std_logic;
SIGNAL \RAM_Saida[3]~output_o\ : std_logic;
SIGNAL \RAM_Saida[4]~output_o\ : std_logic;
SIGNAL \RAM_Saida[5]~output_o\ : std_logic;
SIGNAL \RAM_Saida[6]~output_o\ : std_logic;
SIGNAL \RAM_Saida[7]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \ROM_Saida[0]~output_o\ : std_logic;
SIGNAL \ROM_Saida[1]~output_o\ : std_logic;
SIGNAL \ROM_Saida[2]~output_o\ : std_logic;
SIGNAL \ROM_Saida[3]~output_o\ : std_logic;
SIGNAL \ROM_Saida[4]~output_o\ : std_logic;
SIGNAL \ROM_Saida[5]~output_o\ : std_logic;
SIGNAL \ROM_Saida[6]~output_o\ : std_logic;
SIGNAL \ROM_Saida[7]~output_o\ : std_logic;
SIGNAL \ROM_Saida[8]~output_o\ : std_logic;
SIGNAL \ROM_Saida[9]~output_o\ : std_logic;
SIGNAL \ROM_Saida[10]~output_o\ : std_logic;
SIGNAL \ROM_Saida[11]~output_o\ : std_logic;
SIGNAL \ROM_Saida[12]~output_o\ : std_logic;
SIGNAL \A0_A8[0]~output_o\ : std_logic;
SIGNAL \A0_A8[1]~output_o\ : std_logic;
SIGNAL \A0_A8[2]~output_o\ : std_logic;
SIGNAL \A0_A8[3]~output_o\ : std_logic;
SIGNAL \A0_A8[4]~output_o\ : std_logic;
SIGNAL \A0_A8[5]~output_o\ : std_logic;
SIGNAL \A0_A8[6]~output_o\ : std_logic;
SIGNAL \A0_A8[7]~output_o\ : std_logic;
SIGNAL \A0_A8[8]~output_o\ : std_logic;
SIGNAL \Address[0]~output_o\ : std_logic;
SIGNAL \Address[1]~output_o\ : std_logic;
SIGNAL \Address[2]~output_o\ : std_logic;
SIGNAL \Address[3]~output_o\ : std_logic;
SIGNAL \Address[4]~output_o\ : std_logic;
SIGNAL \Address[5]~output_o\ : std_logic;
SIGNAL \Address[6]~output_o\ : std_logic;
SIGNAL \Address[7]~output_o\ : std_logic;
SIGNAL \Address[8]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \WRTE~output_o\ : std_logic;
SIGNAL \HABILITAREGHEX~output_o\ : std_logic;
SIGNAL \DECODEREND[0]~output_o\ : std_logic;
SIGNAL \DECODEREND[1]~output_o\ : std_logic;
SIGNAL \DECODEREND[2]~output_o\ : std_logic;
SIGNAL \DECODEREND[3]~output_o\ : std_logic;
SIGNAL \DECODEREND[4]~output_o\ : std_logic;
SIGNAL \DECODEREND[5]~output_o\ : std_logic;
SIGNAL \DECODEREND[6]~output_o\ : std_logic;
SIGNAL \DECODEREND[7]~output_o\ : std_logic;
SIGNAL \DECODERBLOC[0]~output_o\ : std_logic;
SIGNAL \DECODERBLOC[1]~output_o\ : std_logic;
SIGNAL \DECODERBLOC[2]~output_o\ : std_logic;
SIGNAL \DECODERBLOC[3]~output_o\ : std_logic;
SIGNAL \DECODERBLOC[4]~output_o\ : std_logic;
SIGNAL \DECODERBLOC[5]~output_o\ : std_logic;
SIGNAL \DECODERBLOC[6]~output_o\ : std_logic;
SIGNAL \DECODERBLOC[7]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|MUX4x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|MUX4x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~18\ : std_logic;
SIGNAL \CPU|somaUm|Add0~22\ : std_logic;
SIGNAL \CPU|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|MUX4x1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~34\ : std_logic;
SIGNAL \CPU|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|MUX4x1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|MUX4x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|output[1]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~8_combout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \CPU|Decoder|output[4]~1_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal3~0_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~9_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~10_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|dado_out[4]~12_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~14\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|dado_out[5]~13_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \RAM|dado_out[6]~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|dado_out[7]~15_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|ALT_INV_dado_out[7]~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_output[1]~0_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|somaUm|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|somaUm|ALT_INV_Add0~5_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_KEY_RST <= KEY_RST;
ROM_Saida <= ww_ROM_Saida;
RAM_Saida <= ww_RAM_Saida;
A0_A8 <= ww_A0_A8;
Address <= ww_Address;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
WRTE <= ww_WRTE;
HABILITAREGHEX <= ww_HABILITAREGHEX;
DECODEREND <= ww_DECODEREND;
DECODERBLOC <= ww_DECODERBLOC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM|ALT_INV_dado_out[7]~15_combout\ <= NOT \RAM|dado_out[7]~15_combout\;
\RAM|ALT_INV_dado_out[6]~14_combout\ <= NOT \RAM|dado_out[6]~14_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\RAM|ALT_INV_dado_out[5]~13_combout\ <= NOT \RAM|dado_out[5]~13_combout\;
\RAM|ALT_INV_dado_out[4]~12_combout\ <= NOT \RAM|dado_out[4]~12_combout\;
\RAM|ALT_INV_dado_out[3]~11_combout\ <= NOT \RAM|dado_out[3]~11_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\RAM|ALT_INV_dado_out[2]~10_combout\ <= NOT \RAM|dado_out[2]~10_combout\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\RAM|ALT_INV_dado_out[1]~9_combout\ <= NOT \RAM|dado_out[1]~9_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\RAM|ALT_INV_dado_out[0]~8_combout\ <= NOT \RAM|dado_out[0]~8_combout\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\CPU|Decoder|ALT_INV_output[1]~0_combout\ <= NOT \CPU|Decoder|output[1]~0_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~10_combout\ <= NOT \ROM|memROM~10_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|REG1|DOUT\(7);
\CPU|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|REG1|DOUT\(6);
\CPU|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|REG1|DOUT\(5);
\CPU|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|REG1|DOUT\(4);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
\CPU|somaUm|ALT_INV_Add0~33_sumout\ <= NOT \CPU|somaUm|Add0~33_sumout\;
\CPU|somaUm|ALT_INV_Add0~21_sumout\ <= NOT \CPU|somaUm|Add0~21_sumout\;
\CPU|somaUm|ALT_INV_Add0~13_sumout\ <= NOT \CPU|somaUm|Add0~13_sumout\;
\CPU|somaUm|ALT_INV_Add0~9_sumout\ <= NOT \CPU|somaUm|Add0~9_sumout\;
\CPU|somaUm|ALT_INV_Add0~5_sumout\ <= NOT \CPU|somaUm|Add0~5_sumout\;

\RAM_Saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~527_combout\,
	oe => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \RAM_Saida[0]~output_o\);

\RAM_Saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~528_combout\,
	oe => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \RAM_Saida[1]~output_o\);

\RAM_Saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~529_combout\,
	oe => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \RAM_Saida[2]~output_o\);

\RAM_Saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~530_combout\,
	oe => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \RAM_Saida[3]~output_o\);

\RAM_Saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~531_combout\,
	oe => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \RAM_Saida[4]~output_o\);

\RAM_Saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~532_combout\,
	oe => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \RAM_Saida[5]~output_o\);

\RAM_Saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~533_combout\,
	oe => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \RAM_Saida[6]~output_o\);

\RAM_Saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~534_combout\,
	oe => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \RAM_Saida[7]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\ROM_Saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~2_combout\,
	devoe => ww_devoe,
	o => \ROM_Saida[0]~output_o\);

\ROM_Saida[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~4_combout\,
	devoe => ww_devoe,
	o => \ROM_Saida[1]~output_o\);

\ROM_Saida[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~6_combout\,
	devoe => ww_devoe,
	o => \ROM_Saida[2]~output_o\);

\ROM_Saida[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_Saida[3]~output_o\);

\ROM_Saida[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_Saida[4]~output_o\);

\ROM_Saida[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~8_combout\,
	devoe => ww_devoe,
	o => \ROM_Saida[5]~output_o\);

\ROM_Saida[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~9_combout\,
	devoe => ww_devoe,
	o => \ROM_Saida[6]~output_o\);

\ROM_Saida[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_Saida[7]~output_o\);

\ROM_Saida[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => \ROM_Saida[8]~output_o\);

\ROM_Saida[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~10_combout\,
	devoe => ww_devoe,
	o => \ROM_Saida[9]~output_o\);

\ROM_Saida[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~13_combout\,
	devoe => ww_devoe,
	o => \ROM_Saida[10]~output_o\);

\ROM_Saida[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|memROM~14_combout\,
	devoe => ww_devoe,
	o => \ROM_Saida[11]~output_o\);

\ROM_Saida[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ROM_Saida[12]~output_o\);

\A0_A8[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Decoder|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \A0_A8[0]~output_o\);

\A0_A8[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \A0_A8[1]~output_o\);

\A0_A8[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A0_A8[2]~output_o\);

\A0_A8[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A0_A8[3]~output_o\);

\A0_A8[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Decoder|output[4]~1_combout\,
	devoe => ww_devoe,
	o => \A0_A8[4]~output_o\);

\A0_A8[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \A0_A8[5]~output_o\);

\A0_A8[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A0_A8[6]~output_o\);

\A0_A8[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A0_A8[7]~output_o\);

\A0_A8[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A0_A8[8]~output_o\);

\Address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(0),
	devoe => ww_devoe,
	o => \Address[0]~output_o\);

\Address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(1),
	devoe => ww_devoe,
	o => \Address[1]~output_o\);

\Address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(2),
	devoe => ww_devoe,
	o => \Address[2]~output_o\);

\Address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(3),
	devoe => ww_devoe,
	o => \Address[3]~output_o\);

\Address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(4),
	devoe => ww_devoe,
	o => \Address[4]~output_o\);

\Address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(5),
	devoe => ww_devoe,
	o => \Address[5]~output_o\);

\Address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(6),
	devoe => ww_devoe,
	o => \Address[6]~output_o\);

\Address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(7),
	devoe => ww_devoe,
	o => \Address[7]~output_o\);

\Address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|PC|DOUT\(8),
	devoe => ww_devoe,
	o => \Address[8]~output_o\);

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

\WRTE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \WRTE~output_o\);

\HABILITAREGHEX~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HABILITAREGHEX~output_o\);

\DECODEREND[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM|ALT_INV_memROM~10_combout\,
	devoe => ww_devoe,
	o => \DECODEREND[0]~output_o\);

\DECODEREND[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Decoder|Equal3~0_combout\,
	devoe => ww_devoe,
	o => \DECODEREND[1]~output_o\);

\DECODEREND[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \CPU|Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \DECODEREND[2]~output_o\);

\DECODEREND[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODEREND[3]~output_o\);

\DECODEREND[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODEREND[4]~output_o\);

\DECODEREND[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODEREND[5]~output_o\);

\DECODEREND[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODEREND[6]~output_o\);

\DECODEREND[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODEREND[7]~output_o\);

\DECODERBLOC[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DECODERBLOC[0]~output_o\);

\DECODERBLOC[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODERBLOC[1]~output_o\);

\DECODERBLOC[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODERBLOC[2]~output_o\);

\DECODERBLOC[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODERBLOC[3]~output_o\);

\DECODERBLOC[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODERBLOC[4]~output_o\);

\DECODERBLOC[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODERBLOC[5]~output_o\);

\DECODERBLOC[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODERBLOC[6]~output_o\);

\DECODERBLOC[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DECODERBLOC[7]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~11_combout\);

\CPU|somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \CPU|somaUm|Add0~6\ = CARRY(( \CPU|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \CPU|somaUm|Add0~5_sumout\,
	cout => \CPU|somaUm|Add0~6\);

\CPU|somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))
-- \CPU|somaUm|Add0~10\ = CARRY(( \CPU|PC|DOUT\(1) ) + ( GND ) + ( \CPU|somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	cin => \CPU|somaUm|Add0~6\,
	sumout => \CPU|somaUm|Add0~9_sumout\,
	cout => \CPU|somaUm|Add0~10\);

\CPU|MUX4x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x1|saida_MUX[1]~1_combout\ = ( \ROM|memROM~12_combout\ & ( \CPU|somaUm|Add0~9_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~11_combout\) # (\ROM|memROM~10_combout\))) # (\CPU|PC|DOUT\(0)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \CPU|somaUm|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~9_sumout\,
	combout => \CPU|MUX4x1|saida_MUX[1]~1_combout\);

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX4x1|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

\CPU|somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))
-- \CPU|somaUm|Add0~14\ = CARRY(( \CPU|PC|DOUT\(2) ) + ( GND ) + ( \CPU|somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	cin => \CPU|somaUm|Add0~10\,
	sumout => \CPU|somaUm|Add0~13_sumout\,
	cout => \CPU|somaUm|Add0~14\);

\CPU|MUX4x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x1|saida_MUX[2]~2_combout\ = ( \ROM|memROM~12_combout\ & ( \CPU|somaUm|Add0~13_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~11_combout\) # (\ROM|memROM~10_combout\))) # (\CPU|PC|DOUT\(0)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \CPU|somaUm|Add0~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~13_sumout\,
	combout => \CPU|MUX4x1|saida_MUX[2]~2_combout\);

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX4x1|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

\CPU|somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))
-- \CPU|somaUm|Add0~18\ = CARRY(( \CPU|PC|DOUT\(3) ) + ( GND ) + ( \CPU|somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	cin => \CPU|somaUm|Add0~14\,
	sumout => \CPU|somaUm|Add0~17_sumout\,
	cout => \CPU|somaUm|Add0~18\);

\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(1),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~12_combout\);

\CPU|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))
-- \CPU|somaUm|Add0~22\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|somaUm|Add0~18\,
	sumout => \CPU|somaUm|Add0~21_sumout\,
	cout => \CPU|somaUm|Add0~22\);

\CPU|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))
-- \CPU|somaUm|Add0~34\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|somaUm|Add0~22\,
	sumout => \CPU|somaUm|Add0~33_sumout\,
	cout => \CPU|somaUm|Add0~34\);

\CPU|MUX4x1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x1|saida_MUX[5]~4_combout\ = ( \ROM|memROM~12_combout\ & ( \CPU|somaUm|Add0~33_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~11_combout\) # (\ROM|memROM~10_combout\))) # (\CPU|PC|DOUT\(0)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \CPU|somaUm|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~33_sumout\,
	combout => \CPU|MUX4x1|saida_MUX[5]~4_combout\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX4x1|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~34\ ))
-- \CPU|somaUm|Add0~30\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|somaUm|Add0~34\,
	sumout => \CPU|somaUm|Add0~29_sumout\,
	cout => \CPU|somaUm|Add0~30\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))
-- \CPU|somaUm|Add0~26\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|somaUm|Add0~30\,
	sumout => \CPU|somaUm|Add0~25_sumout\,
	cout => \CPU|somaUm|Add0~26\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|somaUm|Add0~26\,
	sumout => \CPU|somaUm|Add0~1_sumout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & !\CPU|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \CPU|PC|ALT_INV_DOUT\(7),
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	datae => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~10_combout\);

\CPU|MUX4x1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x1|saida_MUX[4]~3_combout\ = ( \ROM|memROM~12_combout\ & ( \CPU|somaUm|Add0~21_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~11_combout\) # (\ROM|memROM~10_combout\))) # (\CPU|PC|DOUT\(0)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \CPU|somaUm|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~21_sumout\,
	combout => \CPU|MUX4x1|saida_MUX[4]~3_combout\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX4x1|saida_MUX[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|MUX4x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX4x1|saida_MUX[0]~0_combout\ = ( \ROM|memROM~12_combout\ & ( \CPU|somaUm|Add0~5_sumout\ & ( ((!\CPU|PC|DOUT\(4)) # ((!\ROM|memROM~11_combout\) # (\ROM|memROM~10_combout\))) # (\CPU|PC|DOUT\(0)) ) ) ) # ( !\ROM|memROM~12_combout\ & ( 
-- \CPU|somaUm|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	dataf => \CPU|somaUm|ALT_INV_Add0~5_sumout\,
	combout => \CPU|MUX4x1|saida_MUX[0]~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX4x1|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

\CPU|Decoder|output[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|output[1]~0_combout\ = ( \ROM|memROM~12_combout\ & ( (\ROM|memROM~10_combout\ & ((!\ROM|memROM~11_combout\) # (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(4))))) ) ) # ( !\ROM|memROM~12_combout\ & ( (\ROM|memROM~10_combout\ & ((!\CPU|PC|DOUT\(0)) # 
-- ((!\ROM|memROM~11_combout\) # (\CPU|PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000100100001111000010110000111100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|Decoder|output[1]~0_combout\);

\RAM|dado_out[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~8_combout\ = (!\CPU|Decoder|output[1]~0_combout\) # (\RAM|ram~527_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|dado_out[0]~8_combout\);

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(2)) # (\CPU|PC|DOUT\(0))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(1) $ (((\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000110011100001100011001110000110001100111000011000110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~0_combout\);

\ROM|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(4) & (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & !\CPU|PC|DOUT\(5))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(4),
	datab => \CPU|PC|ALT_INV_DOUT\(7),
	datac => \CPU|PC|ALT_INV_DOUT\(6),
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~1_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~15_combout\);

\CPU|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \CPU|ULA1|Add1~34_cout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|Decoder|output[1]~0_combout\ & (!\RAM|dado_out[0]~8_combout\)) # (\CPU|Decoder|output[1]~0_combout\ & (((!\ROM|memROM~15_combout\) # (\CPU|PC|DOUT\(8))))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|Decoder|output[1]~0_combout\ & (!\RAM|dado_out[0]~8_combout\)) # (\CPU|Decoder|output[1]~0_combout\ & (((!\ROM|memROM~15_combout\) # (\CPU|PC|DOUT\(8))))) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~8_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~15_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\CPU|Decoder|output[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|output[4]~1_combout\ = ( \ROM|memROM~12_combout\ & ( (!\CPU|PC|DOUT\(0) & (\ROM|memROM~10_combout\ & ((!\CPU|PC|DOUT\(4)) # (!\ROM|memROM~11_combout\)))) # (\CPU|PC|DOUT\(0) & (!\ROM|memROM~10_combout\ $ (((!\ROM|memROM~11_combout\) # 
-- (\CPU|PC|DOUT\(4)))))) ) ) # ( !\ROM|memROM~12_combout\ & ( !\ROM|memROM~10_combout\ $ (((!\CPU|PC|DOUT\(0)) # ((!\ROM|memROM~11_combout\) # (\CPU|PC|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001011000011110100100100001111010010110000111101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	datae => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|Decoder|output[4]~1_combout\);

\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|Add1~1_sumout\,
	sload => VCC,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

\CPU|Decoder|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal3~0_combout\ = (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & (\ROM|memROM~10_combout\ & \ROM|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~11_combout\,
	combout => \CPU|Decoder|Equal3~0_combout\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \CPU|Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \ROM|memROM~11_combout\ & ( (\RAM|ram~23_q\ & (\ROM|memROM~10_combout\ & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|dado_out[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~9_combout\ = (!\CPU|Decoder|output[1]~0_combout\) # (\RAM|ram~528_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_ram~528_combout\,
	combout => \RAM|dado_out[1]~9_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100101001000011010010100100001101001010010000110100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~16_combout\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|Decoder|output[1]~0_combout\ & (((!\RAM|dado_out[1]~9_combout\)))) # (\CPU|Decoder|output[1]~0_combout\ & (((!\ROM|memROM~16_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|Decoder|output[1]~0_combout\ & (((!\RAM|dado_out[1]~9_combout\)))) # (\CPU|Decoder|output[1]~0_combout\ & (((!\ROM|memROM~16_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \RAM|ALT_INV_dado_out[1]~9_combout\,
	datad => \ROM|ALT_INV_memROM~16_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|Add1~5_sumout\,
	sload => VCC,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(1));

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(1),
	ena => \CPU|Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM|memROM~11_combout\ & ( (\RAM|ram~24_q\ & (\ROM|memROM~10_combout\ & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|dado_out[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~10_combout\ = (!\CPU|Decoder|output[1]~0_combout\) # (\RAM|ram~529_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|dado_out[2]~10_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & \CPU|PC|DOUT\(2))) # (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010010000000000101001000000000010100100000000001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~17_combout\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|Decoder|output[1]~0_combout\ & (((!\RAM|dado_out[2]~10_combout\)))) # (\CPU|Decoder|output[1]~0_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|Decoder|output[1]~0_combout\ & (((!\RAM|dado_out[2]~10_combout\)))) # (\CPU|Decoder|output[1]~0_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(8)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111010110110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \RAM|ALT_INV_dado_out[2]~10_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|Add1~9_sumout\,
	sload => VCC,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(2));

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(2),
	ena => \CPU|Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (\ROM|memROM~11_combout\ & ((!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4) & \ROM|memROM~12_combout\)) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000110000001000000011000000100000001100000010000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~14_combout\);

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(4) & (\ROM|memROM~11_combout\ & \ROM|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(4),
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \ROM|memROM~13_combout\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = (\RAM|ram~25_q\ & (\ROM|memROM~14_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~25_q\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|dado_out[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~11_combout\ = (!\CPU|Decoder|output[1]~0_combout\) # (\RAM|ram~530_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_ram~530_combout\,
	combout => \RAM|dado_out[3]~11_combout\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\RAM|dado_out[3]~11_combout\) # ((!\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ $ (!\ROM|memROM~13_combout\))) # (\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~13_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))
-- \CPU|ULA1|Add1~14\ = CARRY(( (!\RAM|dado_out[3]~11_combout\) # ((!\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ $ (!\ROM|memROM~13_combout\))) # (\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~13_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~11_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\,
	cout => \CPU|ULA1|Add1~14\);

\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|Add1~13_sumout\,
	sload => VCC,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(3));

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(3),
	ena => \CPU|Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = (\RAM|ram~26_q\ & (\ROM|memROM~14_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~530_combout\);

\RAM|dado_out[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~12_combout\ = (!\CPU|Decoder|output[1]~0_combout\) # (\RAM|ram~531_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|dado_out[4]~12_combout\);

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\RAM|dado_out[4]~12_combout\) # ((!\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ $ (!\ROM|memROM~13_combout\))) # (\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~13_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\RAM|dado_out[4]~12_combout\) # ((!\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ $ (!\ROM|memROM~13_combout\))) # (\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~13_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~12_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~14\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|Add1~17_sumout\,
	sload => VCC,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \CPU|Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = (\RAM|ram~27_q\ & (\ROM|memROM~14_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|dado_out[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~13_combout\ = (!\CPU|Decoder|output[1]~0_combout\) # (\RAM|ram~532_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|dado_out[5]~13_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(0) & (((\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000101101010000000010110101000000001011010100000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~7_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (\ROM|memROM~1_combout\ & !\ROM|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~18_combout\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|Decoder|output[1]~0_combout\ & (!\RAM|dado_out[5]~13_combout\)) # (\CPU|Decoder|output[1]~0_combout\ & (((!\ROM|memROM~18_combout\) # (\CPU|PC|DOUT\(8))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|Decoder|output[1]~0_combout\ & (!\RAM|dado_out[5]~13_combout\)) # (\CPU|Decoder|output[1]~0_combout\ & (((!\ROM|memROM~18_combout\) # (\CPU|PC|DOUT\(8))))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001101110110001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_dado_out[5]~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|Add1~21_sumout\,
	sload => VCC,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(5));

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(5),
	ena => \CPU|Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \ROM|memROM~11_combout\ & ( (\RAM|ram~28_q\ & (\ROM|memROM~10_combout\ & (\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datab => \ROM|ALT_INV_memROM~10_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	datae => \ROM|ALT_INV_memROM~11_combout\,
	combout => \RAM|ram~532_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = ( !\CPU|PC|DOUT\(6) & ( !\CPU|PC|DOUT\(5) & ( (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	datae => \CPU|PC|ALT_INV_DOUT\(6),
	dataf => \CPU|PC|ALT_INV_DOUT\(5),
	combout => \ROM|memROM~9_combout\);

\RAM|dado_out[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~14_combout\ = (!\CPU|Decoder|output[1]~0_combout\) # (\RAM|ram~533_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|dado_out[6]~14_combout\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|Decoder|output[1]~0_combout\ & ((!\RAM|dado_out[6]~14_combout\))) # (\CPU|Decoder|output[1]~0_combout\ & (!\ROM|memROM~9_combout\)) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|Decoder|output[1]~0_combout\ & ((!\RAM|dado_out[6]~14_combout\))) # (\CPU|Decoder|output[1]~0_combout\ & (!\ROM|memROM~9_combout\)) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datac => \ROM|ALT_INV_memROM~9_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~14_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|Add1~25_sumout\,
	sload => VCC,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(6));

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(6),
	ena => \CPU|Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = (\RAM|ram~29_q\ & (\ROM|memROM~14_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|dado_out[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~15_combout\ = (!\CPU|Decoder|output[1]~0_combout\) # (\RAM|ram~534_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datab => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|dado_out[7]~15_combout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\RAM|dado_out[7]~15_combout\) # ((!\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ $ (!\ROM|memROM~13_combout\))) # (\ROM|memROM~10_combout\ & (!\ROM|memROM~14_combout\ & !\ROM|memROM~13_combout\))) ) + ( 
-- \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~10_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~15_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\);

\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \CPU|ULA1|Add1~29_sumout\,
	sload => VCC,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(7));

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(7),
	ena => \CPU|Decoder|Equal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = (\RAM|ram~30_q\ & (\ROM|memROM~14_combout\ & (\ROM|memROM~10_combout\ & !\ROM|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~10_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \RAM|ram~534_combout\);

\ROM|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~2_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~0_combout\ & \ROM|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~0_combout\,
	datac => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~2_combout\);

\ROM|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~4_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~4_combout\);

\ROM|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~6_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~6_combout\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & !\ROM|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	combout => \ROM|memROM~8_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\KEY_RST~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_RST,
	o => \KEY_RST~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_ROM_Saida(0) <= \ROM_Saida[0]~output_o\;

ww_ROM_Saida(1) <= \ROM_Saida[1]~output_o\;

ww_ROM_Saida(2) <= \ROM_Saida[2]~output_o\;

ww_ROM_Saida(3) <= \ROM_Saida[3]~output_o\;

ww_ROM_Saida(4) <= \ROM_Saida[4]~output_o\;

ww_ROM_Saida(5) <= \ROM_Saida[5]~output_o\;

ww_ROM_Saida(6) <= \ROM_Saida[6]~output_o\;

ww_ROM_Saida(7) <= \ROM_Saida[7]~output_o\;

ww_ROM_Saida(8) <= \ROM_Saida[8]~output_o\;

ww_ROM_Saida(9) <= \ROM_Saida[9]~output_o\;

ww_ROM_Saida(10) <= \ROM_Saida[10]~output_o\;

ww_ROM_Saida(11) <= \ROM_Saida[11]~output_o\;

ww_ROM_Saida(12) <= \ROM_Saida[12]~output_o\;

ww_RAM_Saida(0) <= \RAM_Saida[0]~output_o\;

ww_RAM_Saida(1) <= \RAM_Saida[1]~output_o\;

ww_RAM_Saida(2) <= \RAM_Saida[2]~output_o\;

ww_RAM_Saida(3) <= \RAM_Saida[3]~output_o\;

ww_RAM_Saida(4) <= \RAM_Saida[4]~output_o\;

ww_RAM_Saida(5) <= \RAM_Saida[5]~output_o\;

ww_RAM_Saida(6) <= \RAM_Saida[6]~output_o\;

ww_RAM_Saida(7) <= \RAM_Saida[7]~output_o\;

ww_A0_A8(0) <= \A0_A8[0]~output_o\;

ww_A0_A8(1) <= \A0_A8[1]~output_o\;

ww_A0_A8(2) <= \A0_A8[2]~output_o\;

ww_A0_A8(3) <= \A0_A8[3]~output_o\;

ww_A0_A8(4) <= \A0_A8[4]~output_o\;

ww_A0_A8(5) <= \A0_A8[5]~output_o\;

ww_A0_A8(6) <= \A0_A8[6]~output_o\;

ww_A0_A8(7) <= \A0_A8[7]~output_o\;

ww_A0_A8(8) <= \A0_A8[8]~output_o\;

ww_Address(0) <= \Address[0]~output_o\;

ww_Address(1) <= \Address[1]~output_o\;

ww_Address(2) <= \Address[2]~output_o\;

ww_Address(3) <= \Address[3]~output_o\;

ww_Address(4) <= \Address[4]~output_o\;

ww_Address(5) <= \Address[5]~output_o\;

ww_Address(6) <= \Address[6]~output_o\;

ww_Address(7) <= \Address[7]~output_o\;

ww_Address(8) <= \Address[8]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_WRTE <= \WRTE~output_o\;

ww_HABILITAREGHEX <= \HABILITAREGHEX~output_o\;

ww_DECODEREND(0) <= \DECODEREND[0]~output_o\;

ww_DECODEREND(1) <= \DECODEREND[1]~output_o\;

ww_DECODEREND(2) <= \DECODEREND[2]~output_o\;

ww_DECODEREND(3) <= \DECODEREND[3]~output_o\;

ww_DECODEREND(4) <= \DECODEREND[4]~output_o\;

ww_DECODEREND(5) <= \DECODEREND[5]~output_o\;

ww_DECODEREND(6) <= \DECODEREND[6]~output_o\;

ww_DECODEREND(7) <= \DECODEREND[7]~output_o\;

ww_DECODERBLOC(0) <= \DECODERBLOC[0]~output_o\;

ww_DECODERBLOC(1) <= \DECODERBLOC[1]~output_o\;

ww_DECODERBLOC(2) <= \DECODERBLOC[2]~output_o\;

ww_DECODERBLOC(3) <= \DECODERBLOC[3]~output_o\;

ww_DECODERBLOC(4) <= \DECODERBLOC[4]~output_o\;

ww_DECODERBLOC(5) <= \DECODERBLOC[5]~output_o\;

ww_DECODERBLOC(6) <= \DECODERBLOC[6]~output_o\;

ww_DECODERBLOC(7) <= \DECODERBLOC[7]~output_o\;
END structure;


