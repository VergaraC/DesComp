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

-- DATE "09/13/2021 18:16:44"

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

ENTITY 	Aula5 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	ENDERECO : OUT std_logic_vector(8 DOWNTO 0)
	);
END Aula5;

ARCHITECTURE structure OF Aula5 IS
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
SIGNAL ww_ENDERECO : std_logic_vector(8 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \ENDERECO[0]~output_o\ : std_logic;
SIGNAL \ENDERECO[1]~output_o\ : std_logic;
SIGNAL \ENDERECO[2]~output_o\ : std_logic;
SIGNAL \ENDERECO[3]~output_o\ : std_logic;
SIGNAL \ENDERECO[4]~output_o\ : std_logic;
SIGNAL \ENDERECO[5]~output_o\ : std_logic;
SIGNAL \ENDERECO[6]~output_o\ : std_logic;
SIGNAL \ENDERECO[7]~output_o\ : std_logic;
SIGNAL \ENDERECO[8]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \Decoder|Equal8~0_combout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \Decoder|output[4]~1_combout\ : std_logic;
SIGNAL \Decoder|Equal3~0_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \RAM1|ram~161_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~153_combout\ : std_logic;
SIGNAL \RAM1|ram~154_combout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \Decoder|output[5]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~17_combout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~16_combout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~15_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~145_combout\ : std_logic;
SIGNAL \RAM1|ram~146_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~147_combout\ : std_logic;
SIGNAL \RAM1|ram~148_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~149_combout\ : std_logic;
SIGNAL \RAM1|ram~150_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~151_combout\ : std_logic;
SIGNAL \RAM1|ram~152_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~155_combout\ : std_logic;
SIGNAL \RAM1|ram~156_combout\ : std_logic;
SIGNAL \ROM1|memROM~18_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~157_combout\ : std_logic;
SIGNAL \RAM1|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~159_combout\ : std_logic;
SIGNAL \RAM1|ram~160_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \FLAG|DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \somaUm|Add0~2\ : std_logic;
SIGNAL \somaUm|Add0~6\ : std_logic;
SIGNAL \somaUm|Add0~10\ : std_logic;
SIGNAL \somaUm|Add0~14\ : std_logic;
SIGNAL \somaUm|Add0~18\ : std_logic;
SIGNAL \somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[5]~6_combout\ : std_logic;
SIGNAL \somaUm|Add0~22\ : std_logic;
SIGNAL \somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \somaUm|Add0~26\ : std_logic;
SIGNAL \somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[7]~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~1_combout\ : std_logic;
SIGNAL \somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \Decoder|Equal9~0_combout\ : std_logic;
SIGNAL \somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~13_combout\ : std_logic;
SIGNAL \PC|DOUT[3]~0_combout\ : std_logic;
SIGNAL \somaUm|Add0~30\ : std_logic;
SIGNAL \somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \ROM1|memROM~14_combout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[8]~9_combout\ : std_logic;
SIGNAL \Decoder|output[5]~0_combout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_output[5]~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \REG_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Decoder|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[3]~0_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MUX4x1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal9~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MUX2x1|ALT_INV_saida_MUX[7]~4_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_output[5]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \somaUm|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~18_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ENDERECO <= ww_ENDERECO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM1|ALT_INV_memROM~17_combout\ <= NOT \ROM1|memROM~17_combout\;
\RAM1|ALT_INV_ram~160_combout\ <= NOT \RAM1|ram~160_combout\;
\Decoder|ALT_INV_output[5]~2_combout\ <= NOT \Decoder|output[5]~2_combout\;
\ROM1|ALT_INV_memROM~16_combout\ <= NOT \ROM1|memROM~16_combout\;
\ROM1|ALT_INV_memROM~15_combout\ <= NOT \ROM1|memROM~15_combout\;
\REG_RET|ALT_INV_DOUT\(2) <= NOT \REG_RET|DOUT\(2);
\REG_RET|ALT_INV_DOUT\(1) <= NOT \REG_RET|DOUT\(1);
\Decoder|ALT_INV_Equal3~0_combout\ <= NOT \Decoder|Equal3~0_combout\;
\REG_RET|ALT_INV_DOUT\(0) <= NOT \REG_RET|DOUT\(0);
\PC|ALT_INV_DOUT[3]~1_combout\ <= NOT \PC|DOUT[3]~1_combout\;
\RAM1|ALT_INV_ram~159_combout\ <= NOT \RAM1|ram~159_combout\;
\PC|ALT_INV_DOUT[3]~0_combout\ <= NOT \PC|DOUT[3]~0_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\REG_RET|ALT_INV_DOUT\(3) <= NOT \REG_RET|DOUT\(3);
\REG_RET|ALT_INV_DOUT\(7) <= NOT \REG_RET|DOUT\(7);
\REG_RET|ALT_INV_DOUT\(6) <= NOT \REG_RET|DOUT\(6);
\REG_RET|ALT_INV_DOUT\(8) <= NOT \REG_RET|DOUT\(8);
\MUX4x1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX4x1|saida_MUX[4]~4_combout\;
\ROM1|ALT_INV_memROM~14_combout\ <= NOT \ROM1|memROM~14_combout\;
\REG_RET|ALT_INV_DOUT\(4) <= NOT \REG_RET|DOUT\(4);
\Decoder|ALT_INV_Equal8~0_combout\ <= NOT \Decoder|Equal8~0_combout\;
\Decoder|ALT_INV_Equal9~0_combout\ <= NOT \Decoder|Equal9~0_combout\;
\REG_RET|ALT_INV_DOUT\(5) <= NOT \REG_RET|DOUT\(5);
\RAM1|ALT_INV_ram~158_combout\ <= NOT \RAM1|ram~158_combout\;
\RAM1|ALT_INV_ram~157_combout\ <= NOT \RAM1|ram~157_combout\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~156_combout\ <= NOT \RAM1|ram~156_combout\;
\RAM1|ALT_INV_ram~155_combout\ <= NOT \RAM1|ram~155_combout\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~154_combout\ <= NOT \RAM1|ram~154_combout\;
\RAM1|ALT_INV_ram~153_combout\ <= NOT \RAM1|ram~153_combout\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\MUX2x1|ALT_INV_saida_MUX[7]~4_combout\ <= NOT \MUX2x1|saida_MUX[7]~4_combout\;
\RAM1|ALT_INV_ram~152_combout\ <= NOT \RAM1|ram~152_combout\;
\RAM1|ALT_INV_ram~151_combout\ <= NOT \RAM1|ram~151_combout\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~150_combout\ <= NOT \RAM1|ram~150_combout\;
\RAM1|ALT_INV_ram~149_combout\ <= NOT \RAM1|ram~149_combout\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~148_combout\ <= NOT \RAM1|ram~148_combout\;
\RAM1|ALT_INV_ram~147_combout\ <= NOT \RAM1|ram~147_combout\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\ROM1|ALT_INV_memROM~13_combout\ <= NOT \ROM1|memROM~13_combout\;
\RAM1|ALT_INV_ram~146_combout\ <= NOT \RAM1|ram~146_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\RAM1|ALT_INV_ram~145_combout\ <= NOT \RAM1|ram~145_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\Decoder|ALT_INV_output[5]~0_combout\ <= NOT \Decoder|output[5]~0_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\somaUm|ALT_INV_Add0~33_sumout\ <= NOT \somaUm|Add0~33_sumout\;
\somaUm|ALT_INV_Add0~29_sumout\ <= NOT \somaUm|Add0~29_sumout\;
\somaUm|ALT_INV_Add0~25_sumout\ <= NOT \somaUm|Add0~25_sumout\;
\somaUm|ALT_INV_Add0~21_sumout\ <= NOT \somaUm|Add0~21_sumout\;
\somaUm|ALT_INV_Add0~17_sumout\ <= NOT \somaUm|Add0~17_sumout\;
\somaUm|ALT_INV_Add0~13_sumout\ <= NOT \somaUm|Add0~13_sumout\;
\somaUm|ALT_INV_Add0~9_sumout\ <= NOT \somaUm|Add0~9_sumout\;
\somaUm|ALT_INV_Add0~5_sumout\ <= NOT \somaUm|Add0~5_sumout\;
\somaUm|ALT_INV_Add0~1_sumout\ <= NOT \somaUm|Add0~1_sumout\;
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\FLAG|ALT_INV_DOUT~2_combout\ <= NOT \FLAG|DOUT~2_combout\;
\FLAG|ALT_INV_DOUT~1_combout\ <= NOT \FLAG|DOUT~1_combout\;
\ROM1|ALT_INV_memROM~18_combout\ <= NOT \ROM1|memROM~18_combout\;

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
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
	i => \REG1|DOUT\(1),
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
	i => \REG1|DOUT\(2),
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
	i => \REG1|DOUT\(3),
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
	i => \REG1|DOUT\(4),
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
	i => \REG1|DOUT\(5),
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
	i => \REG1|DOUT\(6),
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
	i => \REG1|DOUT\(7),
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

\ENDERECO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => \ENDERECO[0]~output_o\);

\ENDERECO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => \ENDERECO[1]~output_o\);

\ENDERECO[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \ENDERECO[2]~output_o\);

\ENDERECO[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \ENDERECO[3]~output_o\);

\ENDERECO[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \ENDERECO[4]~output_o\);

\ENDERECO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \ENDERECO[5]~output_o\);

\ENDERECO[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \ENDERECO[6]~output_o\);

\ENDERECO[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \ENDERECO[7]~output_o\);

\ENDERECO[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \ENDERECO[8]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ ((!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\Decoder|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal8~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decoder|Equal8~0_combout\);

\MUX2x1|saida_MUX[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[7]~4_combout\ = (!\ROM1|memROM~11_combout\) # (!\ROM1|memROM~3_combout\ $ (((\ROM1|memROM~4_combout\) # (\ROM1|memROM~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110111001111111011011100111111101101110011111110110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \MUX2x1|saida_MUX[7]~4_combout\);

\MUX2x1|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[4]~5_combout\ = (\RAM1|ram~154_combout\ & ((\MUX2x1|saida_MUX[7]~4_combout\) # (\ROM1|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[7]~4_combout\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	combout => \MUX2x1|saida_MUX[4]~5_combout\);

\Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (((!\ROM1|memROM~11_combout\) # (\ROM1|memROM~3_combout\)) # (\ROM1|memROM~2_combout\)) # (\ROM1|memROM~13_combout\) ) ) # ( !\ROM1|memROM~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111101111111111111111111111111111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decoder|Equal1~0_combout\);

\Decoder|output[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|output[4]~1_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~13_combout\ & !\ROM1|memROM~11_combout\) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~2_combout\ $ 
-- (!\ROM1|memROM~3_combout\)))) # (\ROM1|memROM~13_combout\ & ((!\ROM1|memROM~11_combout\) # ((!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001011000010100000101000001010110010110000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decoder|output[4]~1_combout\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2x1|saida_MUX[4]~5_combout\,
	asdata => \ULA1|Add1~17_sumout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\Decoder|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal3~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decoder|Equal3~0_combout\);

\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( !\PC|DOUT\(0) & ( (\ROM1|memROM~11_combout\ & (!\PC|DOUT\(3) & (\PC|DOUT\(2) & \PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \PC|ALT_INV_DOUT\(3),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(0),
	combout => \RAM1|process_0~0_combout\);

\RAM1|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~161_combout\ = ( \Decoder|Equal3~0_combout\ & ( \RAM1|process_0~0_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~8_combout\ & (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	datae => \Decoder|ALT_INV_Equal3~0_combout\,
	dataf => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~161_combout\);

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~153_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~153_combout\);

\RAM1|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~154_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~153_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~153_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~154_combout\);

\MUX2x1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[3]~3_combout\ = (!\Decoder|output[5]~0_combout\ & ((\RAM1|ram~152_combout\))) # (\Decoder|output[5]~0_combout\ & (\ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output[5]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \RAM1|ALT_INV_ram~152_combout\,
	combout => \MUX2x1|saida_MUX[3]~3_combout\);

\Decoder|output[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|output[5]~2_combout\ = (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~3_combout\ $ (((!\ROM1|memROM~2_combout\ & !\ROM1|memROM~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110000000100100011000000010010001100000001001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decoder|output[5]~2_combout\);

\ROM1|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~17_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~17_combout\);

\MUX2x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[2]~2_combout\ = (!\Decoder|output[5]~0_combout\ & ((\RAM1|ram~150_combout\))) # (\Decoder|output[5]~0_combout\ & (\ROM1|memROM~10_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output[5]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \RAM1|ALT_INV_ram~150_combout\,
	combout => \MUX2x1|saida_MUX[2]~2_combout\);

\ROM1|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~16_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~16_combout\);

\MUX2x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[1]~1_combout\ = (!\Decoder|output[5]~0_combout\ & ((\RAM1|ram~148_combout\))) # (\Decoder|output[5]~0_combout\ & (\ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output[5]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM1|ALT_INV_ram~148_combout\,
	combout => \MUX2x1|saida_MUX[1]~1_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~5_combout\);

\ROM1|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~15_combout\ = (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~15_combout\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~145_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~145_combout\);

\RAM1|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~146_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~145_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~145_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~146_combout\);

\ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add1~34_cout\);

\ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~1_sumout\ = SUM(( (!\Decoder|output[5]~0_combout\ & (((!\RAM1|ram~146_combout\)))) # (\Decoder|output[5]~0_combout\ & (((!\ROM1|memROM~15_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\Decoder|output[5]~0_combout\ & (((!\RAM1|ram~146_combout\)))) # (\Decoder|output[5]~0_combout\ & (((!\ROM1|memROM~15_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output[5]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~15_combout\,
	datad => \RAM1|ALT_INV_ram~146_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\Decoder|output[5]~0_combout\ & (((!\RAM1|ram~148_combout\)))) # (\Decoder|output[5]~0_combout\ & (((!\ROM1|memROM~16_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\Decoder|output[5]~0_combout\ & (((!\RAM1|ram~148_combout\)))) # (\Decoder|output[5]~0_combout\ & (((!\ROM1|memROM~16_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output[5]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~16_combout\,
	datad => \RAM1|ALT_INV_ram~148_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2x1|saida_MUX[1]~1_combout\,
	asdata => \ULA1|Add1~5_sumout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~147_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~147_combout\);

\RAM1|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~148_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~147_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~148_combout\);

\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\Decoder|output[5]~0_combout\ & (((!\RAM1|ram~150_combout\)))) # (\Decoder|output[5]~0_combout\ & (((!\ROM1|memROM~17_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\Decoder|output[5]~0_combout\ & (((!\RAM1|ram~150_combout\)))) # (\Decoder|output[5]~0_combout\ & (((!\ROM1|memROM~17_combout\)) # (\PC|DOUT\(8)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output[5]~0_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~17_combout\,
	datad => \RAM1|ALT_INV_ram~150_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2x1|saida_MUX[2]~2_combout\,
	asdata => \ULA1|Add1~9_sumout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~149_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~149_combout\);

\RAM1|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~150_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~149_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~150_combout\);

\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\ROM1|memROM~13_combout\ & ((!\Decoder|output[5]~2_combout\ & (!\RAM1|ram~152_combout\)) # (\Decoder|output[5]~2_combout\ & ((!\ROM1|memROM~12_combout\))))) # (\ROM1|memROM~13_combout\ & (!\RAM1|ram~152_combout\)) ) + ( 
-- \REG1|DOUT\(3) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\ROM1|memROM~13_combout\ & ((!\Decoder|output[5]~2_combout\ & (!\RAM1|ram~152_combout\)) # (\Decoder|output[5]~2_combout\ & ((!\ROM1|memROM~12_combout\))))) # (\ROM1|memROM~13_combout\ & (!\RAM1|ram~152_combout\)) ) + ( 
-- \REG1|DOUT\(3) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \RAM1|ALT_INV_ram~152_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \Decoder|ALT_INV_output[5]~2_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2x1|saida_MUX[3]~3_combout\,
	asdata => \ULA1|Add1~13_sumout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~151_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~151_combout\);

\RAM1|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~152_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~151_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~151_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~152_combout\);

\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\RAM1|ram~154_combout\) # ((!\ROM1|memROM~13_combout\ & !\MUX2x1|saida_MUX[7]~4_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\RAM1|ram~154_combout\) # ((!\ROM1|memROM~13_combout\ & !\MUX2x1|saida_MUX[7]~4_combout\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datac => \RAM1|ALT_INV_ram~154_combout\,
	datad => \MUX2x1|ALT_INV_saida_MUX[7]~4_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

\MUX2x1|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[5]~6_combout\ = (\RAM1|ram~156_combout\ & ((\MUX2x1|saida_MUX[7]~4_combout\) # (\ROM1|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[7]~4_combout\,
	datac => \RAM1|ALT_INV_ram~156_combout\,
	combout => \MUX2x1|saida_MUX[5]~6_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2x1|saida_MUX[5]~6_combout\,
	asdata => \ULA1|Add1~21_sumout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~155_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~155_combout\);

\RAM1|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~156_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~155_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~155_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~156_combout\);

\ROM1|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~18_combout\ = (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~18_combout\);

\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\RAM1|ram~156_combout\) # ((!\MUX2x1|saida_MUX[7]~4_combout\ & ((!\ROM1|memROM~18_combout\) # (\PC|DOUT\(8))))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\RAM1|ram~156_combout\) # ((!\MUX2x1|saida_MUX[7]~4_combout\ & ((!\ROM1|memROM~18_combout\) # (\PC|DOUT\(8))))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[7]~4_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~156_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

\MUX2x1|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[6]~7_combout\ = (\RAM1|ram~158_combout\ & ((\MUX2x1|saida_MUX[7]~4_combout\) # (\ROM1|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[7]~4_combout\,
	datac => \RAM1|ALT_INV_ram~158_combout\,
	combout => \MUX2x1|saida_MUX[6]~7_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2x1|saida_MUX[6]~7_combout\,
	asdata => \ULA1|Add1~25_sumout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~157_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~157_combout\);

\RAM1|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~158_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~157_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~158_combout\);

\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\RAM1|ram~158_combout\) # ((!\MUX2x1|saida_MUX[7]~4_combout\ & ((!\ROM1|memROM~18_combout\) # (\PC|DOUT\(8))))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\RAM1|ram~158_combout\) # ((!\MUX2x1|saida_MUX[7]~4_combout\ & ((!\ROM1|memROM~18_combout\) # (\PC|DOUT\(8))))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101011110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[7]~4_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \RAM1|ALT_INV_ram~158_combout\,
	datad => \ROM1|ALT_INV_memROM~18_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

\MUX2x1|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[7]~8_combout\ = (\RAM1|ram~160_combout\ & ((\MUX2x1|saida_MUX[7]~4_combout\) # (\ROM1|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[7]~4_combout\,
	datac => \RAM1|ALT_INV_ram~160_combout\,
	combout => \MUX2x1|saida_MUX[7]~8_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2x1|saida_MUX[7]~8_combout\,
	asdata => \ULA1|Add1~29_sumout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \RAM1|ram~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~159_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~12_combout\ & ( \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM1|ram~159_combout\);

\RAM1|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~160_combout\ = ( !\ROM1|memROM~6_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM1|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~159_combout\,
	datae => \ROM1|ALT_INV_memROM~6_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM1|ram~160_combout\);

\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\RAM1|ram~160_combout\) # ((!\MUX2x1|saida_MUX[7]~4_combout\ & ((!\ROM1|memROM~18_combout\) # (\PC|DOUT\(8))))) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[7]~4_combout\,
	datab => \PC|ALT_INV_DOUT\(8),
	datac => \ROM1|ALT_INV_memROM~18_combout\,
	datad => \RAM1|ALT_INV_ram~160_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = (\Decoder|Equal3~0_combout\ & ((!\ROM1|memROM~2_combout\) # (!\ROM1|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111000001110000011100000111000001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \Decoder|ALT_INV_Equal3~0_combout\,
	combout => \FLAG|DOUT~1_combout\);

\FLAG|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~2_combout\ = ( \FLAG|DOUT~q\ & ( \FLAG|DOUT~1_combout\ & ( (!\ULA1|Add1~1_sumout\ & (!\ULA1|Add1~5_sumout\ & (!\ULA1|Add1~9_sumout\ & !\ULA1|Add1~13_sumout\))) ) ) ) # ( !\FLAG|DOUT~q\ & ( \FLAG|DOUT~1_combout\ & ( (!\ULA1|Add1~1_sumout\ & 
-- (!\ULA1|Add1~5_sumout\ & (!\ULA1|Add1~9_sumout\ & !\ULA1|Add1~13_sumout\))) ) ) ) # ( \FLAG|DOUT~q\ & ( !\FLAG|DOUT~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~1_sumout\,
	datab => \ULA1|ALT_INV_Add1~5_sumout\,
	datac => \ULA1|ALT_INV_Add1~9_sumout\,
	datad => \ULA1|ALT_INV_Add1~13_sumout\,
	datae => \FLAG|ALT_INV_DOUT~q\,
	dataf => \FLAG|ALT_INV_DOUT~1_combout\,
	combout => \FLAG|DOUT~2_combout\);

\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = ( \FLAG|DOUT~1_combout\ & ( \FLAG|DOUT~2_combout\ & ( (!\ULA1|Add1~17_sumout\ & (!\ULA1|Add1~21_sumout\ & (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~29_sumout\))) ) ) ) # ( !\FLAG|DOUT~1_combout\ & ( \FLAG|DOUT~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ULA1|ALT_INV_Add1~17_sumout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \ULA1|ALT_INV_Add1~25_sumout\,
	datad => \ULA1|ALT_INV_Add1~29_sumout\,
	datae => \FLAG|ALT_INV_DOUT~1_combout\,
	dataf => \FLAG|ALT_INV_DOUT~2_combout\,
	combout => \FLAG|DOUT~0_combout\);

\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLAG|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

\MUX4x1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[4]~4_combout\ = ( \ROM1|memROM~4_combout\ & ( \FLAG|DOUT~q\ & ( (\ROM1|memROM~11_combout\ & ((!\ROM1|memROM~13_combout\ & ((\ROM1|memROM~3_combout\))) # (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))) 
-- ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\FLAG|DOUT~q\ & ( (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~13_combout\ $ (!\ROM1|memROM~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000100000000000000000000000010000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \FLAG|ALT_INV_DOUT~q\,
	combout => \MUX4x1|saida_MUX[4]~4_combout\);

\somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \somaUm|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \somaUm|Add0~1_sumout\,
	cout => \somaUm|Add0~2\);

\somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \somaUm|Add0~2\ ))
-- \somaUm|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \somaUm|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \somaUm|Add0~2\,
	sumout => \somaUm|Add0~5_sumout\,
	cout => \somaUm|Add0~6\);

\somaUm|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \somaUm|Add0~6\ ))
-- \somaUm|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \somaUm|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \somaUm|Add0~6\,
	sumout => \somaUm|Add0~9_sumout\,
	cout => \somaUm|Add0~10\);

\somaUm|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \somaUm|Add0~10\ ))
-- \somaUm|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \somaUm|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \somaUm|Add0~10\,
	sumout => \somaUm|Add0~13_sumout\,
	cout => \somaUm|Add0~14\);

\somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~17_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~14\ ))
-- \somaUm|Add0~18\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somaUm|Add0~14\,
	sumout => \somaUm|Add0~17_sumout\,
	cout => \somaUm|Add0~18\);

\somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~21_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~18\ ))
-- \somaUm|Add0~22\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somaUm|Add0~18\,
	sumout => \somaUm|Add0~21_sumout\,
	cout => \somaUm|Add0~22\);

\REG_RET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~21_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(5));

\MUX4x1|saida_MUX[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[5]~6_combout\ = ( \somaUm|Add0~21_sumout\ & ( (!\Decoder|Equal8~0_combout\ & ((!\MUX4x1|saida_MUX[4]~4_combout\) # ((\Decoder|Equal9~0_combout\ & \REG_RET|DOUT\(5))))) ) ) # ( !\somaUm|Add0~21_sumout\ & ( (\Decoder|Equal9~0_combout\ & 
-- (!\Decoder|Equal8~0_combout\ & \REG_RET|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100110000001100010000000000010001001100000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal9~0_combout\,
	datab => \Decoder|ALT_INV_Equal8~0_combout\,
	datac => \MUX4x1|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(5),
	datae => \somaUm|ALT_INV_Add0~21_sumout\,
	combout => \MUX4x1|saida_MUX[5]~6_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x1|saida_MUX[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~22\ ))
-- \somaUm|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somaUm|Add0~22\,
	sumout => \somaUm|Add0~25_sumout\,
	cout => \somaUm|Add0~26\);

\REG_RET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~25_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(6));

\MUX4x1|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[6]~7_combout\ = ( \somaUm|Add0~25_sumout\ & ( (!\Decoder|Equal8~0_combout\ & ((!\MUX4x1|saida_MUX[4]~4_combout\) # ((\Decoder|Equal9~0_combout\ & \REG_RET|DOUT\(6))))) ) ) # ( !\somaUm|Add0~25_sumout\ & ( (\Decoder|Equal9~0_combout\ & 
-- (!\Decoder|Equal8~0_combout\ & \REG_RET|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100110000001100010000000000010001001100000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal9~0_combout\,
	datab => \Decoder|ALT_INV_Equal8~0_combout\,
	datac => \MUX4x1|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(6),
	datae => \somaUm|ALT_INV_Add0~25_sumout\,
	combout => \MUX4x1|saida_MUX[6]~7_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x1|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~29_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaUm|Add0~26\ ))
-- \somaUm|Add0~30\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somaUm|Add0~26\,
	sumout => \somaUm|Add0~29_sumout\,
	cout => \somaUm|Add0~30\);

\REG_RET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~29_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(7));

\MUX4x1|saida_MUX[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[7]~8_combout\ = ( \somaUm|Add0~29_sumout\ & ( (!\Decoder|Equal8~0_combout\ & ((!\MUX4x1|saida_MUX[4]~4_combout\) # ((\Decoder|Equal9~0_combout\ & \REG_RET|DOUT\(7))))) ) ) # ( !\somaUm|Add0~29_sumout\ & ( (\Decoder|Equal9~0_combout\ & 
-- (!\Decoder|Equal8~0_combout\ & \REG_RET|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100110000001100010000000000010001001100000011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal9~0_combout\,
	datab => \Decoder|ALT_INV_Equal8~0_combout\,
	datac => \MUX4x1|ALT_INV_saida_MUX[4]~4_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(7),
	datae => \somaUm|ALT_INV_Add0~29_sumout\,
	combout => \MUX4x1|saida_MUX[7]~8_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x1|saida_MUX[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	datae => \PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~11_combout\ & ( (!\PC|DOUT\(0) & (((!\PC|DOUT\(2) & !\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000010000000000000000001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~12_combout\);

\PC|DOUT[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[3]~1_combout\ = ( \ROM1|memROM~4_combout\ & ( \FLAG|DOUT~q\ & ( (!\ROM1|memROM~13_combout\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~3_combout\)) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \FLAG|DOUT~q\ & ( (\ROM1|memROM~13_combout\ & 
-- (\ROM1|memROM~2_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~3_combout\))) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\FLAG|DOUT~q\ & ( (!\ROM1|memROM~13_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~11_combout\ & \ROM1|memROM~3_combout\))) ) ) 
-- ) # ( !\ROM1|memROM~4_combout\ & ( !\FLAG|DOUT~q\ & ( (\ROM1|memROM~13_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000100000000001000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \FLAG|ALT_INV_DOUT~q\,
	combout => \PC|DOUT[3]~1_combout\);

\REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~13_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(3));

\MUX4x1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[3]~3_combout\ = ( \REG_RET|DOUT\(3) & ( (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~13_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (((!\PC|DOUT[3]~1_combout\)) # (\ROM1|memROM~12_combout\))) ) ) # ( !\REG_RET|DOUT\(3) & ( 
-- (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~13_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (\ROM1|memROM~12_combout\ & (\PC|DOUT[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~12_combout\,
	datab => \PC|ALT_INV_DOUT[3]~0_combout\,
	datac => \PC|ALT_INV_DOUT[3]~1_combout\,
	datad => \somaUm|ALT_INV_Add0~13_sumout\,
	datae => \REG_RET|ALT_INV_DOUT\(3),
	combout => \MUX4x1|saida_MUX[3]~3_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x1|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100100110001000010010011000100001001001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \ROM1|memROM~10_combout\);

\REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~9_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(2));

\MUX4x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[2]~2_combout\ = ( \REG_RET|DOUT\(2) & ( (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~9_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (((!\PC|DOUT[3]~1_combout\)) # (\ROM1|memROM~10_combout\))) ) ) # ( !\REG_RET|DOUT\(2) & ( 
-- (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~9_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (\ROM1|memROM~10_combout\ & (\PC|DOUT[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~10_combout\,
	datab => \PC|ALT_INV_DOUT[3]~0_combout\,
	datac => \PC|ALT_INV_DOUT[3]~1_combout\,
	datad => \somaUm|ALT_INV_Add0~9_sumout\,
	datae => \REG_RET|ALT_INV_DOUT\(2),
	combout => \MUX4x1|saida_MUX[2]~2_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x1|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~7_combout\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \ROM1|memROM~8_combout\);

\REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~5_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(1));

\MUX4x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[1]~1_combout\ = ( \REG_RET|DOUT\(1) & ( (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~5_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (((!\PC|DOUT[3]~1_combout\)) # (\ROM1|memROM~8_combout\))) ) ) # ( !\REG_RET|DOUT\(1) & ( 
-- (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~5_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (\ROM1|memROM~8_combout\ & (\PC|DOUT[3]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111001101001100011111110100000001110011010011000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~8_combout\,
	datab => \PC|ALT_INV_DOUT[3]~0_combout\,
	datac => \PC|ALT_INV_DOUT[3]~1_combout\,
	datad => \somaUm|ALT_INV_Add0~5_sumout\,
	datae => \REG_RET|ALT_INV_DOUT\(1),
	combout => \MUX4x1|saida_MUX[1]~1_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x1|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(1) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\Decoder|Equal9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal9~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~2_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decoder|Equal9~0_combout\);

\REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~17_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(4));

\MUX4x1|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[4]~5_combout\ = ( \MUX4x1|saida_MUX[4]~4_combout\ & ( (\Decoder|Equal9~0_combout\ & (!\Decoder|Equal8~0_combout\ & \REG_RET|DOUT\(4))) ) ) # ( !\MUX4x1|saida_MUX[4]~4_combout\ & ( (!\Decoder|Equal8~0_combout\ & 
-- (((\Decoder|Equal9~0_combout\ & \REG_RET|DOUT\(4))) # (\somaUm|Add0~17_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011001100000001000000010000000100110011000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal9~0_combout\,
	datab => \Decoder|ALT_INV_Equal8~0_combout\,
	datac => \REG_RET|ALT_INV_DOUT\(4),
	datad => \somaUm|ALT_INV_Add0~17_sumout\,
	datae => \MUX4x1|ALT_INV_saida_MUX[4]~4_combout\,
	combout => \MUX4x1|saida_MUX[4]~5_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x1|saida_MUX[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\PC|DOUT\(4) & (!\PC|DOUT\(5) & (!\PC|DOUT\(6) & !\PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(4),
	datab => \PC|ALT_INV_DOUT\(5),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(7),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & \ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \ROM1|memROM~6_combout\);

\REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~1_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(0));

\MUX4x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[0]~0_combout\ = ( \REG_RET|DOUT\(0) & ( (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~1_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (((!\PC|DOUT[3]~1_combout\)) # (\ROM1|memROM~6_combout\))) ) ) # ( !\REG_RET|DOUT\(0) & ( 
-- (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~1_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (\ROM1|memROM~6_combout\ & ((\PC|DOUT[3]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001111110011010100110000001101010011111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~6_combout\,
	datab => \somaUm|ALT_INV_Add0~1_sumout\,
	datac => \PC|ALT_INV_DOUT[3]~0_combout\,
	datad => \PC|ALT_INV_DOUT[3]~1_combout\,
	datae => \REG_RET|ALT_INV_DOUT\(0),
	combout => \MUX4x1|saida_MUX[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x1|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~13_combout\ = (!\PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~13_combout\);

\PC|DOUT[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[3]~0_combout\ = ( \ROM1|memROM~4_combout\ & ( \FLAG|DOUT~q\ & ( (\ROM1|memROM~11_combout\ & ((!\ROM1|memROM~13_combout\ & ((\ROM1|memROM~3_combout\))) # (\ROM1|memROM~13_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\)))) ) ) ) # 
-- ( !\ROM1|memROM~4_combout\ & ( \FLAG|DOUT~q\ & ( (\ROM1|memROM~13_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~3_combout\))) ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\FLAG|DOUT~q\ & ( (!\ROM1|memROM~2_combout\ & 
-- (\ROM1|memROM~11_combout\ & (!\ROM1|memROM~13_combout\ $ (!\ROM1|memROM~3_combout\)))) ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\FLAG|DOUT~q\ & ( (\ROM1|memROM~13_combout\ & (\ROM1|memROM~2_combout\ & (\ROM1|memROM~11_combout\ & !\ROM1|memROM~3_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000001000000100000000001000000000000010000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~13_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \FLAG|ALT_INV_DOUT~q\,
	combout => \PC|DOUT[3]~0_combout\);

\somaUm|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~33_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somaUm|Add0~30\,
	sumout => \somaUm|Add0~33_sumout\);

\ROM1|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~14_combout\ = ( \ROM1|memROM~11_combout\ & ( (!\PC|DOUT\(0) & (\PC|DOUT\(1) & (\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~14_combout\);

\REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~33_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(8));

\MUX4x1|saida_MUX[8]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[8]~9_combout\ = ( \REG_RET|DOUT\(8) & ( (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~33_sumout\)))) # (\PC|DOUT[3]~0_combout\ & ((!\PC|DOUT[3]~1_combout\) # ((\ROM1|memROM~14_combout\)))) ) ) # ( !\REG_RET|DOUT\(8) & ( 
-- (!\PC|DOUT[3]~0_combout\ & (((\somaUm|Add0~33_sumout\)))) # (\PC|DOUT[3]~0_combout\ & (\PC|DOUT[3]~1_combout\ & ((\ROM1|memROM~14_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010011100101111100001010000110110100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[3]~0_combout\,
	datab => \PC|ALT_INV_DOUT[3]~1_combout\,
	datac => \somaUm|ALT_INV_Add0~33_sumout\,
	datad => \ROM1|ALT_INV_memROM~14_combout\,
	datae => \REG_RET|ALT_INV_DOUT\(8),
	combout => \MUX4x1|saida_MUX[8]~9_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX4x1|saida_MUX[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\Decoder|output[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|output[5]~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( \ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)) ) ) ) # ( \ROM1|memROM~3_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & 
-- (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) ) ) # ( !\ROM1|memROM~3_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & \ROM1|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010000000000000001000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \Decoder|output[5]~0_combout\);

\MUX2x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[0]~0_combout\ = (!\Decoder|output[5]~0_combout\ & ((\RAM1|ram~146_combout\))) # (\Decoder|output[5]~0_combout\ & (\ROM1|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output[5]~0_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM1|ALT_INV_ram~146_combout\,
	combout => \MUX2x1|saida_MUX[0]~0_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2x1|saida_MUX[0]~0_combout\,
	asdata => \ULA1|Add1~1_sumout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

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

ww_ENDERECO(0) <= \ENDERECO[0]~output_o\;

ww_ENDERECO(1) <= \ENDERECO[1]~output_o\;

ww_ENDERECO(2) <= \ENDERECO[2]~output_o\;

ww_ENDERECO(3) <= \ENDERECO[3]~output_o\;

ww_ENDERECO(4) <= \ENDERECO[4]~output_o\;

ww_ENDERECO(5) <= \ENDERECO[5]~output_o\;

ww_ENDERECO(6) <= \ENDERECO[6]~output_o\;

ww_ENDERECO(7) <= \ENDERECO[7]~output_o\;

ww_ENDERECO(8) <= \ENDERECO[8]~output_o\;
END structure;


