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

-- DATE "09/29/2021 17:06:53"

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
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	ROM_Saida : BUFFER std_logic_vector(12 DOWNTO 0);
	RAM_Saida : BUFFER std_logic_vector(7 DOWNTO 0);
	Address : BUFFER std_logic_vector(8 DOWNTO 0)
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_ROM_Saida : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_RAM_Saida : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Address : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \Address[0]~output_o\ : std_logic;
SIGNAL \Address[1]~output_o\ : std_logic;
SIGNAL \Address[2]~output_o\ : std_logic;
SIGNAL \Address[3]~output_o\ : std_logic;
SIGNAL \Address[4]~output_o\ : std_logic;
SIGNAL \Address[5]~output_o\ : std_logic;
SIGNAL \Address[6]~output_o\ : std_logic;
SIGNAL \Address[7]~output_o\ : std_logic;
SIGNAL \Address[8]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CPU|somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \ROM|memROM~0_combout\ : std_logic;
SIGNAL \ROM|memROM~1_combout\ : std_logic;
SIGNAL \ROM|memROM~2_combout\ : std_logic;
SIGNAL \ROM|memROM~13_combout\ : std_logic;
SIGNAL \ROM|memROM~14_combout\ : std_logic;
SIGNAL \ROM|memROM~11_combout\ : std_logic;
SIGNAL \CPU|Decoder|output[5]~3_combout\ : std_logic;
SIGNAL \ROM|memROM~5_combout\ : std_logic;
SIGNAL \ROM|memROM~6_combout\ : std_logic;
SIGNAL \ROM|memROM~12_combout\ : std_logic;
SIGNAL \ROM|memROM~15_combout\ : std_logic;
SIGNAL \CPU|Decoder|output[1]~0_combout\ : std_logic;
SIGNAL \RAM|dado_out~8_combout\ : std_logic;
SIGNAL \CPU|Decoder|output[5]~2_combout\ : std_logic;
SIGNAL \CPU|MUX2x1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|Decoder|Equal7~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|output[4]~1_combout\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \CPU|Decoder|Equal7~1_combout\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \RAM|dado_out[4]~9_combout\ : std_logic;
SIGNAL \ROM|memROM~7_combout\ : std_logic;
SIGNAL \CPU|MUX2x1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \CPU|MUX2x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM|memROM~18_combout\ : std_logic;
SIGNAL \ROM|memROM~3_combout\ : std_logic;
SIGNAL \ROM|memROM~4_combout\ : std_logic;
SIGNAL \CPU|MUX2x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM|memROM~20_combout\ : std_logic;
SIGNAL \CPU|MUX2x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM|memROM~19_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|dado_out[0]~13_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~18\ : std_logic;
SIGNAL \CPU|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|dado_out[1]~14_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~22\ : std_logic;
SIGNAL \CPU|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|dado_out[2]~15_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~26\ : std_logic;
SIGNAL \CPU|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|dado_out[3]~16_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~30\ : std_logic;
SIGNAL \CPU|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~8_combout\ : std_logic;
SIGNAL \ROM|memROM~9_combout\ : std_logic;
SIGNAL \CPU|MUX2x1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \RAM|dado_out[5]~10_combout\ : std_logic;
SIGNAL \ROM|memROM~17_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~2\ : std_logic;
SIGNAL \CPU|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \CPU|MUX2x1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \RAM|dado_out[6]~11_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~6\ : std_logic;
SIGNAL \CPU|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \CPU|MUX2x1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \RAM|dado_out[7]~12_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add1~10\ : std_logic;
SIGNAL \CPU|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|DOUT~q\ : std_logic;
SIGNAL \CPU|LogicaDesvio|output~0_combout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~6\ : std_logic;
SIGNAL \CPU|somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~10\ : std_logic;
SIGNAL \CPU|somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~14\ : std_logic;
SIGNAL \CPU|somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~18\ : std_logic;
SIGNAL \CPU|somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~34\ : std_logic;
SIGNAL \CPU|somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~30\ : std_logic;
SIGNAL \CPU|somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~26\ : std_logic;
SIGNAL \CPU|somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|somaUm|Add0~22\ : std_logic;
SIGNAL \CPU|somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \ROM|memROM~10_combout\ : std_logic;
SIGNAL \ROM|memROM~16_combout\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \CPU|REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[3]~16_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[2]~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[1]~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[0]~13_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[7]~12_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[6]~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[5]~10_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out[4]~9_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_output[5]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_dado_out~8_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_output[5]~2_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_output[4]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_output[1]~0_combout\ : std_logic;
SIGNAL \CPU|Decoder|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \CPU|FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \CPU|REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CPU|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ROM_Saida <= ww_ROM_Saida;
RAM_Saida <= ww_RAM_Saida;
Address <= ww_Address;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\CPU|FLAG|ALT_INV_DOUT~2_combout\ <= NOT \CPU|FLAG|DOUT~2_combout\;
\CPU|FLAG|ALT_INV_DOUT~1_combout\ <= NOT \CPU|FLAG|DOUT~1_combout\;
\RAM|ALT_INV_dado_out[3]~16_combout\ <= NOT \RAM|dado_out[3]~16_combout\;
\RAM|ALT_INV_dado_out[2]~15_combout\ <= NOT \RAM|dado_out[2]~15_combout\;
\ROM|ALT_INV_memROM~20_combout\ <= NOT \ROM|memROM~20_combout\;
\RAM|ALT_INV_dado_out[1]~14_combout\ <= NOT \RAM|dado_out[1]~14_combout\;
\ROM|ALT_INV_memROM~19_combout\ <= NOT \ROM|memROM~19_combout\;
\RAM|ALT_INV_dado_out[0]~13_combout\ <= NOT \RAM|dado_out[0]~13_combout\;
\RAM|ALT_INV_dado_out[7]~12_combout\ <= NOT \RAM|dado_out[7]~12_combout\;
\RAM|ALT_INV_dado_out[6]~11_combout\ <= NOT \RAM|dado_out[6]~11_combout\;
\ROM|ALT_INV_memROM~18_combout\ <= NOT \ROM|memROM~18_combout\;
\ROM|ALT_INV_memROM~17_combout\ <= NOT \ROM|memROM~17_combout\;
\RAM|ALT_INV_dado_out[5]~10_combout\ <= NOT \RAM|dado_out[5]~10_combout\;
\RAM|ALT_INV_dado_out[4]~9_combout\ <= NOT \RAM|dado_out[4]~9_combout\;
\CPU|Decoder|ALT_INV_output[5]~3_combout\ <= NOT \CPU|Decoder|output[5]~3_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_dado_out~8_combout\ <= NOT \RAM|dado_out~8_combout\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;
\CPU|Decoder|ALT_INV_output[5]~2_combout\ <= NOT \CPU|Decoder|output[5]~2_combout\;
\CPU|Decoder|ALT_INV_output[4]~1_combout\ <= NOT \CPU|Decoder|output[4]~1_combout\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\CPU|Decoder|ALT_INV_Equal7~1_combout\ <= NOT \CPU|Decoder|Equal7~1_combout\;
\CPU|Decoder|ALT_INV_output[1]~0_combout\ <= NOT \CPU|Decoder|output[1]~0_combout\;
\CPU|Decoder|ALT_INV_Equal7~0_combout\ <= NOT \CPU|Decoder|Equal7~0_combout\;
\CPU|FLAG|ALT_INV_DOUT~q\ <= NOT \CPU|FLAG|DOUT~q\;
\ROM|ALT_INV_memROM~16_combout\ <= NOT \ROM|memROM~16_combout\;
\ROM|ALT_INV_memROM~15_combout\ <= NOT \ROM|memROM~15_combout\;
\ROM|ALT_INV_memROM~14_combout\ <= NOT \ROM|memROM~14_combout\;
\ROM|ALT_INV_memROM~13_combout\ <= NOT \ROM|memROM~13_combout\;
\ROM|ALT_INV_memROM~12_combout\ <= NOT \ROM|memROM~12_combout\;
\ROM|ALT_INV_memROM~11_combout\ <= NOT \ROM|memROM~11_combout\;
\ROM|ALT_INV_memROM~9_combout\ <= NOT \ROM|memROM~9_combout\;
\ROM|ALT_INV_memROM~8_combout\ <= NOT \ROM|memROM~8_combout\;
\ROM|ALT_INV_memROM~7_combout\ <= NOT \ROM|memROM~7_combout\;
\ROM|ALT_INV_memROM~6_combout\ <= NOT \ROM|memROM~6_combout\;
\ROM|ALT_INV_memROM~5_combout\ <= NOT \ROM|memROM~5_combout\;
\ROM|ALT_INV_memROM~4_combout\ <= NOT \ROM|memROM~4_combout\;
\ROM|ALT_INV_memROM~3_combout\ <= NOT \ROM|memROM~3_combout\;
\ROM|ALT_INV_memROM~2_combout\ <= NOT \ROM|memROM~2_combout\;
\ROM|ALT_INV_memROM~1_combout\ <= NOT \ROM|memROM~1_combout\;
\ROM|ALT_INV_memROM~0_combout\ <= NOT \ROM|memROM~0_combout\;
\CPU|REG1|ALT_INV_DOUT\(7) <= NOT \CPU|REG1|DOUT\(7);
\CPU|REG1|ALT_INV_DOUT\(6) <= NOT \CPU|REG1|DOUT\(6);
\CPU|REG1|ALT_INV_DOUT\(5) <= NOT \CPU|REG1|DOUT\(5);
\CPU|REG1|ALT_INV_DOUT\(4) <= NOT \CPU|REG1|DOUT\(4);
\CPU|REG1|ALT_INV_DOUT\(3) <= NOT \CPU|REG1|DOUT\(3);
\CPU|REG1|ALT_INV_DOUT\(2) <= NOT \CPU|REG1|DOUT\(2);
\CPU|REG1|ALT_INV_DOUT\(1) <= NOT \CPU|REG1|DOUT\(1);
\CPU|REG1|ALT_INV_DOUT\(0) <= NOT \CPU|REG1|DOUT\(0);
\CPU|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \CPU|ULA1|Add1~29_sumout\;
\CPU|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \CPU|ULA1|Add1~25_sumout\;
\CPU|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \CPU|ULA1|Add1~21_sumout\;
\CPU|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \CPU|ULA1|Add1~17_sumout\;
\CPU|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \CPU|ULA1|Add1~13_sumout\;
\CPU|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \CPU|ULA1|Add1~9_sumout\;
\CPU|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \CPU|ULA1|Add1~5_sumout\;
\CPU|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \CPU|ULA1|Add1~1_sumout\;
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);

\RAM_Saida[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RAM|ram~530_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~531_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~532_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~534_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~536_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~538_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~540_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \RAM|ram~542_combout\,
	oe => \RAM|dado_out~8_combout\,
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
	i => \ROM|memROM~7_combout\,
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
	i => \ROM|memROM~6_combout\,
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
	i => \ROM|memROM~9_combout\,
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
	i => \ROM|memROM~6_combout\,
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
	i => \ROM|memROM~9_combout\,
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
	i => \ROM|memROM~12_combout\,
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
	i => \ROM|memROM~14_combout\,
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
	i => \ROM|ALT_INV_memROM~16_combout\,
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

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

\ROM|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~0_combout\ = (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(0))) # (\CPU|PC|DOUT\(1) & ((\CPU|PC|DOUT\(3)))))) # (\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010110110000100001011011000010000101101100001000010110110000",
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
-- \ROM|memROM~1_combout\ = (!\CPU|PC|DOUT\(7) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(5) & !\CPU|PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(7),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	combout => \ROM|memROM~1_combout\);

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

\ROM|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~13_combout\ = (\CPU|PC|DOUT\(1) & (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) $ (\CPU|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000010000001000000001000000100000000100000010000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~13_combout\);

\ROM|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~14_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~13_combout\,
	combout => \ROM|memROM~14_combout\);

\ROM|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~11_combout\ = (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(1)) # (!\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111010100000010111101010000001011110101000000101111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~11_combout\);

\CPU|Decoder|output[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|output[5]~3_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & ((\ROM|memROM~13_combout\) # (\ROM|memROM~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001000000010001000100000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	combout => \CPU|Decoder|output[5]~3_combout\);

\ROM|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~5_combout\ = (!\CPU|PC|DOUT\(0) & (((!\CPU|PC|DOUT\(2) & \CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & (\CPU|PC|DOUT\(2) & !\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100000000000011010000000000001101000000000000110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~5_combout\);

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

\ROM|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~12_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~11_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	combout => \ROM|memROM~12_combout\);

\ROM|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~15_combout\ = (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) $ (!\CPU|PC|DOUT\(2))))) # (\CPU|PC|DOUT\(3) & (((\CPU|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000001111001010000000111100101000000011110010100000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~15_combout\);

\CPU|Decoder|output[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|output[1]~0_combout\ = ( \ROM|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & ((\ROM|memROM~13_combout\) # (\ROM|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100010001000000000000000000000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|Decoder|output[1]~0_combout\);

\RAM|dado_out~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out~8_combout\ = (\CPU|Decoder|output[1]~0_combout\ & ((!\ROM|memROM~14_combout\ $ (!\ROM|memROM~12_combout\)) # (\ROM|memROM~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111011000000000111101100000000011110110000000001111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	combout => \RAM|dado_out~8_combout\);

\CPU|Decoder|output[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|output[5]~2_combout\ = ( \ROM|memROM~15_combout\ & ( ((!\ROM|memROM~1_combout\) # ((!\ROM|memROM~11_combout\ & !\ROM|memROM~13_combout\))) # (\CPU|PC|DOUT\(8)) ) ) # ( !\ROM|memROM~15_combout\ & ( ((!\ROM|memROM~1_combout\) # 
-- ((\ROM|memROM~13_combout\) # (\ROM|memROM~11_combout\))) # (\CPU|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111111111111111011101110111011111111111111111110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|Decoder|output[5]~2_combout\);

\CPU|MUX2x1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2x1|saida_MUX[4]~4_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (\ROM|memROM~6_combout\)) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out~8_combout\) # (\RAM|ram~536_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110111011101000111011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \RAM|ALT_INV_dado_out~8_combout\,
	datad => \RAM|ALT_INV_ram~536_combout\,
	combout => \CPU|MUX2x1|saida_MUX[4]~4_combout\);

\CPU|Decoder|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal7~0_combout\ = ( \ROM|memROM~15_combout\ & ( ((!\ROM|memROM~1_combout\) # ((!\ROM|memROM~13_combout\) # (\ROM|memROM~11_combout\))) # (\CPU|PC|DOUT\(8)) ) ) # ( !\ROM|memROM~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111101111111111111111111111111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|Decoder|Equal7~0_combout\);

\CPU|Decoder|output[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|output[4]~1_combout\ = ( \ROM|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~13_combout\))) ) ) # ( !\ROM|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & 
-- (!\ROM|memROM~11_combout\ & !\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000100000000000100000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|Decoder|output[4]~1_combout\);

\CPU|REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2x1|saida_MUX[4]~4_combout\,
	asdata => \CPU|ULA1|Add1~1_sumout\,
	sload => \CPU|Decoder|Equal7~0_combout\,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(4));

\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \ROM|memROM~1_combout\ & ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) $ (((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1)))))) # (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(2) & ((!\CPU|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001101010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(0),
	datae => \ROM|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \RAM|ram~548_combout\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(4),
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\CPU|Decoder|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|Decoder|Equal7~1_combout\ = ( !\ROM|memROM~15_combout\ & ( (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & (\ROM|memROM~11_combout\ & !\ROM|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~11_combout\,
	datad => \ROM|ALT_INV_memROM~13_combout\,
	datae => \ROM|ALT_INV_memROM~15_combout\,
	combout => \CPU|Decoder|Equal7~1_combout\);

\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \CPU|Decoder|Equal7~0_combout\ & ( (\RAM|ram~27_q\ & (\CPU|Decoder|Equal7~1_combout\ & !\CPU|Decoder|output[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~27_q\,
	datac => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	datad => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datae => \CPU|Decoder|ALT_INV_Equal7~0_combout\,
	combout => \RAM|ram~535_combout\);

\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\CPU|Decoder|output[4]~1_combout\ & ( \CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~535_combout\ ) ) ) # ( \CPU|Decoder|output[4]~1_combout\ & ( !\CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_ram~535_combout\,
	datae => \CPU|Decoder|ALT_INV_output[4]~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	combout => \RAM|ram~536_combout\);

\RAM|dado_out[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[4]~9_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~536_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~536_combout\,
	combout => \RAM|dado_out[4]~9_combout\);

\ROM|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~7_combout\ = (!\CPU|PC|DOUT\(8) & (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & \ROM|memROM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~7_combout\);

\CPU|MUX2x1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2x1|saida_MUX[3]~3_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (((\ROM|memROM~7_combout\)))) # (\CPU|Decoder|output[5]~2_combout\ & ((!\RAM|dado_out~8_combout\) # ((\RAM|ram~534_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010111101111010001011110111101000101111011110100010111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datab => \RAM|ALT_INV_dado_out~8_combout\,
	datac => \RAM|ALT_INV_ram~534_combout\,
	datad => \ROM|ALT_INV_memROM~7_combout\,
	combout => \CPU|MUX2x1|saida_MUX[3]~3_combout\);

\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = (\CPU|Decoder|Equal7~1_combout\ & !\CPU|Decoder|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	datac => \CPU|Decoder|ALT_INV_Equal7~0_combout\,
	combout => \RAM|ram~543_combout\);

\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = (\CPU|Decoder|output[5]~2_combout\ & (!\CPU|Decoder|output[1]~0_combout\ & \CPU|Decoder|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datad => \CPU|Decoder|ALT_INV_Equal7~0_combout\,
	combout => \RAM|ram~544_combout\);

\CPU|MUX2x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2x1|saida_MUX[2]~2_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (\ROM|memROM~6_combout\)) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out~8_combout\) # (\RAM|ram~532_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110111011101000111011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \RAM|ALT_INV_dado_out~8_combout\,
	datad => \RAM|ALT_INV_ram~532_combout\,
	combout => \CPU|MUX2x1|saida_MUX[2]~2_combout\);

\ROM|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~18_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~5_combout\,
	combout => \ROM|memROM~18_combout\);

\ROM|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~3_combout\ = (!\CPU|PC|DOUT\(2) & (((\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110000000000101111000000000010111100000000001011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~3_combout\);

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

\CPU|MUX2x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2x1|saida_MUX[1]~1_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (\ROM|memROM~4_combout\)) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out~8_combout\) # (\RAM|ram~531_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110111011101000111011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~4_combout\,
	datab => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \RAM|ALT_INV_dado_out~8_combout\,
	datad => \RAM|ALT_INV_ram~531_combout\,
	combout => \CPU|MUX2x1|saida_MUX[1]~1_combout\);

\ROM|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~20_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~3_combout\,
	combout => \ROM|memROM~20_combout\);

\CPU|MUX2x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2x1|saida_MUX[0]~0_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (\ROM|memROM~2_combout\)) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out~8_combout\) # (\RAM|ram~530_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101000111011101110100011101110111010001110111011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~2_combout\,
	datab => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \RAM|ALT_INV_ram~530_combout\,
	datad => \RAM|ALT_INV_dado_out~8_combout\,
	combout => \CPU|MUX2x1|saida_MUX[0]~0_combout\);

\ROM|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~19_combout\ = (!\ROM|memROM~0_combout\) # (!\ROM|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~0_combout\,
	datab => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~19_combout\);

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

\CPU|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~17_sumout\ = SUM(( (!\CPU|Decoder|output[5]~2_combout\ & (((\ROM|memROM~19_combout\) # (\CPU|PC|DOUT\(8))))) # (\CPU|Decoder|output[5]~2_combout\ & (!\RAM|dado_out[0]~13_combout\)) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))
-- \CPU|ULA1|Add1~18\ = CARRY(( (!\CPU|Decoder|output[5]~2_combout\ & (((\ROM|memROM~19_combout\) # (\CPU|PC|DOUT\(8))))) # (\CPU|Decoder|output[5]~2_combout\ & (!\RAM|dado_out[0]~13_combout\)) ) + ( \CPU|REG1|DOUT\(0) ) + ( \CPU|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000100111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datab => \RAM|ALT_INV_dado_out[0]~13_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(8),
	datad => \ROM|ALT_INV_memROM~19_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add1~34_cout\,
	sumout => \CPU|ULA1|Add1~17_sumout\,
	cout => \CPU|ULA1|Add1~18\);

\CPU|REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2x1|saida_MUX[0]~0_combout\,
	asdata => \CPU|ULA1|Add1~17_sumout\,
	sload => \CPU|Decoder|Equal7~0_combout\,
	ena => \CPU|Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REG1|DOUT\(0));

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|REG1|DOUT\(0),
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( !\CPU|Decoder|output[1]~0_combout\ & ( (\CPU|Decoder|Equal7~0_combout\ & (\RAM|ram~23_q\ & \CPU|Decoder|Equal7~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000000000000000000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_Equal7~0_combout\,
	datab => \RAM|ALT_INV_ram~23_q\,
	datad => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	datae => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	combout => \RAM|ram~529_combout\);

\RAM|dado_out[0]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[0]~13_combout\ = ( \CPU|Decoder|output[4]~1_combout\ & ( \CPU|Decoder|output[5]~2_combout\ & ( !\RAM|dado_out~8_combout\ ) ) ) # ( !\CPU|Decoder|output[4]~1_combout\ & ( \CPU|Decoder|output[5]~2_combout\ & ( (!\RAM|dado_out~8_combout\) # 
-- (\RAM|ram~529_combout\) ) ) ) # ( \CPU|Decoder|output[4]~1_combout\ & ( !\CPU|Decoder|output[5]~2_combout\ & ( (!\RAM|dado_out~8_combout\) # (\RAM|ram~528_combout\) ) ) ) # ( !\CPU|Decoder|output[4]~1_combout\ & ( !\CPU|Decoder|output[5]~2_combout\ & ( 
-- !\RAM|dado_out~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101011111010111110101010111111111010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datac => \RAM|ALT_INV_ram~528_combout\,
	datad => \RAM|ALT_INV_ram~529_combout\,
	datae => \CPU|Decoder|ALT_INV_output[4]~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	combout => \RAM|dado_out[0]~13_combout\);

\CPU|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~21_sumout\ = SUM(( (!\CPU|Decoder|output[5]~2_combout\ & (((!\ROM|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out[1]~14_combout\)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~18\ ))
-- \CPU|ULA1|Add1~22\ = CARRY(( (!\CPU|Decoder|output[5]~2_combout\ & (((!\ROM|memROM~20_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out[1]~14_combout\)))) ) + ( \CPU|REG1|DOUT\(1) ) + ( \CPU|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \RAM|ALT_INV_dado_out[1]~14_combout\,
	datad => \ROM|ALT_INV_memROM~20_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add1~18\,
	sumout => \CPU|ULA1|Add1~21_sumout\,
	cout => \CPU|ULA1|Add1~22\);

\CPU|REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2x1|saida_MUX[1]~1_combout\,
	asdata => \CPU|ULA1|Add1~21_sumout\,
	sload => \CPU|Decoder|Equal7~0_combout\,
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (!\CPU|Decoder|Equal7~1_combout\)) # (\CPU|Decoder|output[5]~2_combout\ & (\CPU|Decoder|Equal7~1_combout\ & \RAM|ram~24_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100110001001100010011000100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	datac => \RAM|ALT_INV_ram~24_q\,
	combout => \RAM|ram~545_combout\);

\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = (\ROM|memROM~16_combout\ & (\ROM|memROM~14_combout\ & !\ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~546_combout\);

\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( \RAM|ram~545_combout\ & ( \RAM|ram~546_combout\ & ( (!\CPU|Decoder|output[4]~1_combout\ & \RAM|ram~544_combout\) ) ) ) # ( \RAM|ram~545_combout\ & ( !\RAM|ram~546_combout\ & ( (!\CPU|Decoder|output[4]~1_combout\ & 
-- (((\RAM|ram~544_combout\)))) # (\CPU|Decoder|output[4]~1_combout\ & (!\CPU|Decoder|output[5]~2_combout\ & (\RAM|ram~543_combout\))) ) ) ) # ( !\RAM|ram~545_combout\ & ( !\RAM|ram~546_combout\ & ( (\CPU|Decoder|output[4]~1_combout\ & 
-- (!\CPU|Decoder|output[5]~2_combout\ & \RAM|ram~543_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001001010111000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[4]~1_combout\,
	datab => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \RAM|ALT_INV_ram~543_combout\,
	datad => \RAM|ALT_INV_ram~544_combout\,
	datae => \RAM|ALT_INV_ram~545_combout\,
	dataf => \RAM|ALT_INV_ram~546_combout\,
	combout => \RAM|ram~531_combout\);

\RAM|dado_out[1]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[1]~14_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~531_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|dado_out[1]~14_combout\);

\CPU|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~25_sumout\ = SUM(( (!\CPU|Decoder|output[5]~2_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out[2]~15_combout\)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~22\ ))
-- \CPU|ULA1|Add1~26\ = CARRY(( (!\CPU|Decoder|output[5]~2_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out[2]~15_combout\)))) ) + ( \CPU|REG1|DOUT\(2) ) + ( \CPU|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \RAM|ALT_INV_dado_out[2]~15_combout\,
	datad => \ROM|ALT_INV_memROM~18_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add1~22\,
	sumout => \CPU|ULA1|Add1~25_sumout\,
	cout => \CPU|ULA1|Add1~26\);

\CPU|REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2x1|saida_MUX[2]~2_combout\,
	asdata => \CPU|ULA1|Add1~25_sumout\,
	sload => \CPU|Decoder|Equal7~0_combout\,
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (!\CPU|Decoder|Equal7~1_combout\)) # (\CPU|Decoder|output[5]~2_combout\ & (\CPU|Decoder|Equal7~1_combout\ & \RAM|ram~25_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100110001001100010011000100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datab => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	datac => \RAM|ALT_INV_ram~25_q\,
	combout => \RAM|ram~547_combout\);

\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \RAM|ram~547_combout\ & ( \RAM|ram~546_combout\ & ( (!\CPU|Decoder|output[4]~1_combout\ & \RAM|ram~544_combout\) ) ) ) # ( \RAM|ram~547_combout\ & ( !\RAM|ram~546_combout\ & ( (!\CPU|Decoder|output[4]~1_combout\ & 
-- (((\RAM|ram~544_combout\)))) # (\CPU|Decoder|output[4]~1_combout\ & (!\CPU|Decoder|output[5]~2_combout\ & (\RAM|ram~543_combout\))) ) ) ) # ( !\RAM|ram~547_combout\ & ( !\RAM|ram~546_combout\ & ( (\CPU|Decoder|output[4]~1_combout\ & 
-- (!\CPU|Decoder|output[5]~2_combout\ & \RAM|ram~543_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001001010111000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[4]~1_combout\,
	datab => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \RAM|ALT_INV_ram~543_combout\,
	datad => \RAM|ALT_INV_ram~544_combout\,
	datae => \RAM|ALT_INV_ram~547_combout\,
	dataf => \RAM|ALT_INV_ram~546_combout\,
	combout => \RAM|ram~532_combout\);

\RAM|dado_out[2]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[2]~15_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~532_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|dado_out[2]~15_combout\);

\CPU|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~29_sumout\ = SUM(( (!\CPU|Decoder|output[5]~3_combout\ & ((!\ROM|memROM~16_combout\ & (!\ROM|memROM~7_combout\)) # (\ROM|memROM~16_combout\ & ((!\RAM|dado_out[3]~16_combout\))))) # (\CPU|Decoder|output[5]~3_combout\ & 
-- ((!\ROM|memROM~16_combout\ & ((!\RAM|dado_out[3]~16_combout\))) # (\ROM|memROM~16_combout\ & (!\ROM|memROM~7_combout\)))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~26\ ))
-- \CPU|ULA1|Add1~30\ = CARRY(( (!\CPU|Decoder|output[5]~3_combout\ & ((!\ROM|memROM~16_combout\ & (!\ROM|memROM~7_combout\)) # (\ROM|memROM~16_combout\ & ((!\RAM|dado_out[3]~16_combout\))))) # (\CPU|Decoder|output[5]~3_combout\ & ((!\ROM|memROM~16_combout\ 
-- & ((!\RAM|dado_out[3]~16_combout\))) # (\ROM|memROM~16_combout\ & (!\ROM|memROM~7_combout\)))) ) + ( \CPU|REG1|DOUT\(3) ) + ( \CPU|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~3_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~7_combout\,
	datad => \RAM|ALT_INV_dado_out[3]~16_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add1~26\,
	sumout => \CPU|ULA1|Add1~29_sumout\,
	cout => \CPU|ULA1|Add1~30\);

\CPU|REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2x1|saida_MUX[3]~3_combout\,
	asdata => \CPU|ULA1|Add1~29_sumout\,
	sload => \CPU|Decoder|Equal7~0_combout\,
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \CPU|Decoder|Equal7~0_combout\ & ( (\RAM|ram~26_q\ & (\CPU|Decoder|Equal7~1_combout\ & !\CPU|Decoder|output[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~26_q\,
	datac => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	datad => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datae => \CPU|Decoder|ALT_INV_Equal7~0_combout\,
	combout => \RAM|ram~533_combout\);

\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( !\CPU|Decoder|output[4]~1_combout\ & ( \CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~533_combout\ ) ) ) # ( \CPU|Decoder|output[4]~1_combout\ & ( !\CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_ram~533_combout\,
	datae => \CPU|Decoder|ALT_INV_output[4]~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	combout => \RAM|ram~534_combout\);

\RAM|dado_out[3]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[3]~16_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~534_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|dado_out[3]~16_combout\);

\CPU|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~1_sumout\ = SUM(( (!\CPU|Decoder|output[5]~3_combout\ & ((!\ROM|memROM~16_combout\ & (!\ROM|memROM~6_combout\)) # (\ROM|memROM~16_combout\ & ((!\RAM|dado_out[4]~9_combout\))))) # (\CPU|Decoder|output[5]~3_combout\ & 
-- ((!\ROM|memROM~16_combout\ & ((!\RAM|dado_out[4]~9_combout\))) # (\ROM|memROM~16_combout\ & (!\ROM|memROM~6_combout\)))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~30\ ))
-- \CPU|ULA1|Add1~2\ = CARRY(( (!\CPU|Decoder|output[5]~3_combout\ & ((!\ROM|memROM~16_combout\ & (!\ROM|memROM~6_combout\)) # (\ROM|memROM~16_combout\ & ((!\RAM|dado_out[4]~9_combout\))))) # (\CPU|Decoder|output[5]~3_combout\ & ((!\ROM|memROM~16_combout\ & 
-- ((!\RAM|dado_out[4]~9_combout\))) # (\ROM|memROM~16_combout\ & (!\ROM|memROM~6_combout\)))) ) + ( \CPU|REG1|DOUT\(4) ) + ( \CPU|ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~3_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~6_combout\,
	datad => \RAM|ALT_INV_dado_out[4]~9_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(4),
	cin => \CPU|ULA1|Add1~30\,
	sumout => \CPU|ULA1|Add1~1_sumout\,
	cout => \CPU|ULA1|Add1~2\);

\ROM|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~8_combout\ = (!\CPU|PC|DOUT\(2) & (\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000001110000000000000111000000000000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM|memROM~8_combout\);

\ROM|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~9_combout\ = (!\CPU|PC|DOUT\(8) & (\ROM|memROM~1_combout\ & \ROM|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~9_combout\);

\CPU|MUX2x1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2x1|saida_MUX[5]~5_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out~8_combout\) # (\RAM|ram~538_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110111011101000111011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \RAM|ALT_INV_dado_out~8_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	combout => \CPU|MUX2x1|saida_MUX[5]~5_combout\);

\CPU|REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2x1|saida_MUX[5]~5_combout\,
	asdata => \CPU|ULA1|Add1~5_sumout\,
	sload => \CPU|Decoder|Equal7~0_combout\,
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \CPU|Decoder|Equal7~0_combout\ & ( (\RAM|ram~28_q\ & (\CPU|Decoder|Equal7~1_combout\ & !\CPU|Decoder|output[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~28_q\,
	datac => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	datad => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datae => \CPU|Decoder|ALT_INV_Equal7~0_combout\,
	combout => \RAM|ram~537_combout\);

\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( !\CPU|Decoder|output[4]~1_combout\ & ( \CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~537_combout\ ) ) ) # ( \CPU|Decoder|output[4]~1_combout\ & ( !\CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_ram~537_combout\,
	datae => \CPU|Decoder|ALT_INV_output[4]~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	combout => \RAM|ram~538_combout\);

\RAM|dado_out[5]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[5]~10_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~538_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~538_combout\,
	combout => \RAM|dado_out[5]~10_combout\);

\ROM|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~17_combout\ = (\ROM|memROM~1_combout\ & \ROM|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~1_combout\,
	datab => \ROM|ALT_INV_memROM~8_combout\,
	combout => \ROM|memROM~17_combout\);

\CPU|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~5_sumout\ = SUM(( (!\CPU|Decoder|output[5]~2_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out[5]~10_combout\)))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~2\ ))
-- \CPU|ULA1|Add1~6\ = CARRY(( (!\CPU|Decoder|output[5]~2_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out[5]~10_combout\)))) ) + ( \CPU|REG1|DOUT\(5) ) + ( \CPU|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \RAM|ALT_INV_dado_out[5]~10_combout\,
	datad => \ROM|ALT_INV_memROM~17_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add1~2\,
	sumout => \CPU|ULA1|Add1~5_sumout\,
	cout => \CPU|ULA1|Add1~6\);

\CPU|MUX2x1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2x1|saida_MUX[6]~6_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (\ROM|memROM~6_combout\)) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out~8_combout\) # (\RAM|ram~540_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110111011101000111011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~6_combout\,
	datab => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \RAM|ALT_INV_dado_out~8_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	combout => \CPU|MUX2x1|saida_MUX[6]~6_combout\);

\CPU|REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2x1|saida_MUX[6]~6_combout\,
	asdata => \CPU|ULA1|Add1~9_sumout\,
	sload => \CPU|Decoder|Equal7~0_combout\,
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \CPU|Decoder|Equal7~0_combout\ & ( (\RAM|ram~29_q\ & (\CPU|Decoder|Equal7~1_combout\ & !\CPU|Decoder|output[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~29_q\,
	datac => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	datad => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datae => \CPU|Decoder|ALT_INV_Equal7~0_combout\,
	combout => \RAM|ram~539_combout\);

\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( !\CPU|Decoder|output[4]~1_combout\ & ( \CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~539_combout\ ) ) ) # ( \CPU|Decoder|output[4]~1_combout\ & ( !\CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_ram~539_combout\,
	datae => \CPU|Decoder|ALT_INV_output[4]~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	combout => \RAM|ram~540_combout\);

\RAM|dado_out[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[6]~11_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~540_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~540_combout\,
	combout => \RAM|dado_out[6]~11_combout\);

\CPU|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~9_sumout\ = SUM(( (!\CPU|Decoder|output[5]~2_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out[6]~11_combout\)))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~6\ ))
-- \CPU|ULA1|Add1~10\ = CARRY(( (!\CPU|Decoder|output[5]~2_combout\ & (((!\ROM|memROM~18_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out[6]~11_combout\)))) ) + ( \CPU|REG1|DOUT\(6) ) + ( \CPU|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~18_combout\,
	datad => \RAM|ALT_INV_dado_out[6]~11_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add1~6\,
	sumout => \CPU|ULA1|Add1~9_sumout\,
	cout => \CPU|ULA1|Add1~10\);

\CPU|MUX2x1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX2x1|saida_MUX[7]~7_combout\ = (!\CPU|Decoder|output[5]~2_combout\ & (\ROM|memROM~9_combout\)) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out~8_combout\) # (\RAM|ram~542_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110111011101000111011101110100011101110111010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~9_combout\,
	datab => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datac => \RAM|ALT_INV_dado_out~8_combout\,
	datad => \RAM|ALT_INV_ram~542_combout\,
	combout => \CPU|MUX2x1|saida_MUX[7]~7_combout\);

\CPU|REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|MUX2x1|saida_MUX[7]~7_combout\,
	asdata => \CPU|ULA1|Add1~13_sumout\,
	sload => \CPU|Decoder|Equal7~0_combout\,
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
	ena => \RAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( \CPU|Decoder|Equal7~0_combout\ & ( (\RAM|ram~30_q\ & (\CPU|Decoder|Equal7~1_combout\ & !\CPU|Decoder|output[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000000000000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datac => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	datad => \CPU|Decoder|ALT_INV_output[1]~0_combout\,
	datae => \CPU|Decoder|ALT_INV_Equal7~0_combout\,
	combout => \RAM|ram~541_combout\);

\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( !\CPU|Decoder|output[4]~1_combout\ & ( \CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~541_combout\ ) ) ) # ( \CPU|Decoder|output[4]~1_combout\ & ( !\CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_ram~541_combout\,
	datae => \CPU|Decoder|ALT_INV_output[4]~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	combout => \RAM|ram~542_combout\);

\RAM|dado_out[7]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|dado_out[7]~12_combout\ = (!\RAM|dado_out~8_combout\) # (\RAM|ram~542_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_dado_out~8_combout\,
	datab => \RAM|ALT_INV_ram~542_combout\,
	combout => \RAM|dado_out[7]~12_combout\);

\CPU|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add1~13_sumout\ = SUM(( (!\CPU|Decoder|output[5]~2_combout\ & (((!\ROM|memROM~17_combout\)) # (\CPU|PC|DOUT\(8)))) # (\CPU|Decoder|output[5]~2_combout\ & (((!\RAM|dado_out[7]~12_combout\)))) ) + ( \CPU|REG1|DOUT\(7) ) + ( \CPU|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111011110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(8),
	datac => \ROM|ALT_INV_memROM~17_combout\,
	datad => \RAM|ALT_INV_dado_out[7]~12_combout\,
	dataf => \CPU|REG1|ALT_INV_DOUT\(7),
	cin => \CPU|ULA1|Add1~10\,
	sumout => \CPU|ULA1|Add1~13_sumout\);

\CPU|FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~1_combout\ = (!\ROM|memROM~14_combout\ & (!\ROM|memROM~16_combout\ & !\ROM|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|FLAG|DOUT~1_combout\);

\CPU|FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~2_combout\ = ( \CPU|FLAG|DOUT~q\ & ( \CPU|FLAG|DOUT~1_combout\ & ( (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~29_sumout\))) ) ) ) # ( !\CPU|FLAG|DOUT~q\ & ( 
-- \CPU|FLAG|DOUT~1_combout\ & ( (!\CPU|ULA1|Add1~17_sumout\ & (!\CPU|ULA1|Add1~21_sumout\ & (!\CPU|ULA1|Add1~25_sumout\ & !\CPU|ULA1|Add1~29_sumout\))) ) ) ) # ( \CPU|FLAG|DOUT~q\ & ( !\CPU|FLAG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~17_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~21_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~q\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	combout => \CPU|FLAG|DOUT~2_combout\);

\CPU|FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|FLAG|DOUT~0_combout\ = ( \CPU|FLAG|DOUT~1_combout\ & ( \CPU|FLAG|DOUT~2_combout\ & ( (!\CPU|ULA1|Add1~1_sumout\ & (!\CPU|ULA1|Add1~5_sumout\ & (!\CPU|ULA1|Add1~9_sumout\ & !\CPU|ULA1|Add1~13_sumout\))) ) ) ) # ( !\CPU|FLAG|DOUT~1_combout\ & ( 
-- \CPU|FLAG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \CPU|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \CPU|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \CPU|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \CPU|FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \CPU|FLAG|ALT_INV_DOUT~2_combout\,
	combout => \CPU|FLAG|DOUT~0_combout\);

\CPU|FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|FLAG|DOUT~q\);

\CPU|LogicaDesvio|output~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|LogicaDesvio|output~0_combout\ = (\ROM|memROM~14_combout\ & (!\ROM|memROM~16_combout\ & ((!\ROM|memROM~12_combout\) # (\CPU|FLAG|DOUT~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000100010001000000010001000100000001000100010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~14_combout\,
	datab => \ROM|ALT_INV_memROM~16_combout\,
	datac => \CPU|FLAG|ALT_INV_DOUT~q\,
	datad => \ROM|ALT_INV_memROM~12_combout\,
	combout => \CPU|LogicaDesvio|output~0_combout\);

\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~5_sumout\,
	asdata => \ROM|memROM~2_combout\,
	sload => \CPU|LogicaDesvio|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

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

\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~9_sumout\,
	asdata => \ROM|memROM~4_combout\,
	sload => \CPU|LogicaDesvio|output~0_combout\,
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

\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~13_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|LogicaDesvio|output~0_combout\,
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
	asdata => \ROM|memROM~7_combout\,
	sload => \CPU|LogicaDesvio|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

\CPU|somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))
-- \CPU|somaUm|Add0~34\ = CARRY(( \CPU|PC|DOUT\(4) ) + ( GND ) + ( \CPU|somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(4),
	cin => \CPU|somaUm|Add0~18\,
	sumout => \CPU|somaUm|Add0~33_sumout\,
	cout => \CPU|somaUm|Add0~34\);

\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~33_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|LogicaDesvio|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

\CPU|somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~34\ ))
-- \CPU|somaUm|Add0~30\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|somaUm|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|somaUm|Add0~34\,
	sumout => \CPU|somaUm|Add0~29_sumout\,
	cout => \CPU|somaUm|Add0~30\);

\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~29_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|LogicaDesvio|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

\CPU|somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))
-- \CPU|somaUm|Add0~26\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|somaUm|Add0~30\,
	sumout => \CPU|somaUm|Add0~25_sumout\,
	cout => \CPU|somaUm|Add0~26\);

\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~25_sumout\,
	asdata => \ROM|memROM~6_combout\,
	sload => \CPU|LogicaDesvio|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

\CPU|somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))
-- \CPU|somaUm|Add0~22\ = CARRY(( \CPU|PC|DOUT\(7) ) + ( GND ) + ( \CPU|somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	cin => \CPU|somaUm|Add0~26\,
	sumout => \CPU|somaUm|Add0~21_sumout\,
	cout => \CPU|somaUm|Add0~22\);

\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~21_sumout\,
	asdata => \ROM|memROM~9_combout\,
	sload => \CPU|LogicaDesvio|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

\CPU|somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|somaUm|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT\(8) ) + ( GND ) + ( \CPU|somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(8),
	cin => \CPU|somaUm|Add0~22\,
	sumout => \CPU|somaUm|Add0~1_sumout\);

\ROM|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~10_combout\ = ( !\CPU|PC|DOUT\(8) & ( \ROM|memROM~1_combout\ & ( (!\CPU|PC|DOUT\(0) & ((!\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3))))) # (\CPU|PC|DOUT\(0) & (!\CPU|PC|DOUT\(1) & ((!\CPU|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001110101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(0),
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(2),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(8),
	dataf => \ROM|ALT_INV_memROM~1_combout\,
	combout => \ROM|memROM~10_combout\);

\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \CPU|somaUm|Add0~1_sumout\,
	asdata => \ROM|memROM~10_combout\,
	sload => \CPU|LogicaDesvio|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

\ROM|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM|memROM~16_combout\ = ((!\ROM|memROM~1_combout\) # (\ROM|memROM~15_combout\)) # (\CPU|PC|DOUT\(8))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111011111110111111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(8),
	datab => \ROM|ALT_INV_memROM~1_combout\,
	datac => \ROM|ALT_INV_memROM~15_combout\,
	combout => \ROM|memROM~16_combout\);

\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( !\CPU|Decoder|Equal7~0_combout\ & ( \CPU|Decoder|Equal7~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|Decoder|ALT_INV_Equal7~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_Equal7~0_combout\,
	combout => \RAM|ram~527_combout\);

\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = (\RAM|ram~527_combout\ & ((!\ROM|memROM~16_combout\) # ((!\ROM|memROM~14_combout\) # (\ROM|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000111011110000000011101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM|ALT_INV_memROM~16_combout\,
	datab => \ROM|ALT_INV_memROM~14_combout\,
	datac => \ROM|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~527_combout\,
	combout => \RAM|ram~528_combout\);

\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\CPU|Decoder|output[4]~1_combout\ & ( \CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~529_combout\ ) ) ) # ( \CPU|Decoder|output[4]~1_combout\ & ( !\CPU|Decoder|output[5]~2_combout\ & ( \RAM|ram~528_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~528_combout\,
	datac => \RAM|ALT_INV_ram~529_combout\,
	datae => \CPU|Decoder|ALT_INV_output[4]~1_combout\,
	dataf => \CPU|Decoder|ALT_INV_output[5]~2_combout\,
	combout => \RAM|ram~530_combout\);

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

ww_Address(0) <= \Address[0]~output_o\;

ww_Address(1) <= \Address[1]~output_o\;

ww_Address(2) <= \Address[2]~output_o\;

ww_Address(3) <= \Address[3]~output_o\;

ww_Address(4) <= \Address[4]~output_o\;

ww_Address(5) <= \Address[5]~output_o\;

ww_Address(6) <= \Address[6]~output_o\;

ww_Address(7) <= \Address[7]~output_o\;

ww_Address(8) <= \Address[8]~output_o\;
END structure;


