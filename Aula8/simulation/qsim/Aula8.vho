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

-- DATE "10/08/2021 17:26:44"

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

ENTITY 	CPU IS
    PORT (
	CLOCK_50 : IN std_logic;
	RESET : IN std_logic;
	Rd : OUT std_logic;
	Wr : OUT std_logic;
	Data_IN : IN std_logic_vector(7 DOWNTO 0);
	Data_OUT : OUT std_logic_vector(7 DOWNTO 0);
	Instruction_IN : IN std_logic_vector(12 DOWNTO 0);
	ROM_Address : OUT std_logic_vector(8 DOWNTO 0);
	DATA_Address : OUT std_logic_vector(8 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	ENTRADAA_ULA : OUT std_logic_vector(7 DOWNTO 0);
	ENTRADAB_ULA : OUT std_logic_vector(7 DOWNTO 0);
	OUT_ULA : OUT std_logic_vector(7 DOWNTO 0);
	SELETOR_ULA : OUT std_logic_vector(1 DOWNTO 0)
	);
END CPU;

ARCHITECTURE structure OF CPU IS
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
SIGNAL ww_RESET : std_logic;
SIGNAL ww_Rd : std_logic;
SIGNAL ww_Wr : std_logic;
SIGNAL ww_Data_IN : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Data_OUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Instruction_IN : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_ROM_Address : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_DATA_Address : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ENTRADAA_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ENTRADAB_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OUT_ULA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SELETOR_ULA : std_logic_vector(1 DOWNTO 0);
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Rd~output_o\ : std_logic;
SIGNAL \Wr~output_o\ : std_logic;
SIGNAL \Data_OUT[0]~output_o\ : std_logic;
SIGNAL \Data_OUT[1]~output_o\ : std_logic;
SIGNAL \Data_OUT[2]~output_o\ : std_logic;
SIGNAL \Data_OUT[3]~output_o\ : std_logic;
SIGNAL \Data_OUT[4]~output_o\ : std_logic;
SIGNAL \Data_OUT[5]~output_o\ : std_logic;
SIGNAL \Data_OUT[6]~output_o\ : std_logic;
SIGNAL \Data_OUT[7]~output_o\ : std_logic;
SIGNAL \ROM_Address[0]~output_o\ : std_logic;
SIGNAL \ROM_Address[1]~output_o\ : std_logic;
SIGNAL \ROM_Address[2]~output_o\ : std_logic;
SIGNAL \ROM_Address[3]~output_o\ : std_logic;
SIGNAL \ROM_Address[4]~output_o\ : std_logic;
SIGNAL \ROM_Address[5]~output_o\ : std_logic;
SIGNAL \ROM_Address[6]~output_o\ : std_logic;
SIGNAL \ROM_Address[7]~output_o\ : std_logic;
SIGNAL \ROM_Address[8]~output_o\ : std_logic;
SIGNAL \DATA_Address[0]~output_o\ : std_logic;
SIGNAL \DATA_Address[1]~output_o\ : std_logic;
SIGNAL \DATA_Address[2]~output_o\ : std_logic;
SIGNAL \DATA_Address[3]~output_o\ : std_logic;
SIGNAL \DATA_Address[4]~output_o\ : std_logic;
SIGNAL \DATA_Address[5]~output_o\ : std_logic;
SIGNAL \DATA_Address[6]~output_o\ : std_logic;
SIGNAL \DATA_Address[7]~output_o\ : std_logic;
SIGNAL \DATA_Address[8]~output_o\ : std_logic;
SIGNAL \ENTRADAA_ULA[0]~output_o\ : std_logic;
SIGNAL \ENTRADAA_ULA[1]~output_o\ : std_logic;
SIGNAL \ENTRADAA_ULA[2]~output_o\ : std_logic;
SIGNAL \ENTRADAA_ULA[3]~output_o\ : std_logic;
SIGNAL \ENTRADAA_ULA[4]~output_o\ : std_logic;
SIGNAL \ENTRADAA_ULA[5]~output_o\ : std_logic;
SIGNAL \ENTRADAA_ULA[6]~output_o\ : std_logic;
SIGNAL \ENTRADAA_ULA[7]~output_o\ : std_logic;
SIGNAL \ENTRADAB_ULA[0]~output_o\ : std_logic;
SIGNAL \ENTRADAB_ULA[1]~output_o\ : std_logic;
SIGNAL \ENTRADAB_ULA[2]~output_o\ : std_logic;
SIGNAL \ENTRADAB_ULA[3]~output_o\ : std_logic;
SIGNAL \ENTRADAB_ULA[4]~output_o\ : std_logic;
SIGNAL \ENTRADAB_ULA[5]~output_o\ : std_logic;
SIGNAL \ENTRADAB_ULA[6]~output_o\ : std_logic;
SIGNAL \ENTRADAB_ULA[7]~output_o\ : std_logic;
SIGNAL \OUT_ULA[0]~output_o\ : std_logic;
SIGNAL \OUT_ULA[1]~output_o\ : std_logic;
SIGNAL \OUT_ULA[2]~output_o\ : std_logic;
SIGNAL \OUT_ULA[3]~output_o\ : std_logic;
SIGNAL \OUT_ULA[4]~output_o\ : std_logic;
SIGNAL \OUT_ULA[5]~output_o\ : std_logic;
SIGNAL \OUT_ULA[6]~output_o\ : std_logic;
SIGNAL \OUT_ULA[7]~output_o\ : std_logic;
SIGNAL \SELETOR_ULA[0]~output_o\ : std_logic;
SIGNAL \SELETOR_ULA[1]~output_o\ : std_logic;
SIGNAL \Instruction_IN[11]~input_o\ : std_logic;
SIGNAL \Instruction_IN[12]~input_o\ : std_logic;
SIGNAL \Instruction_IN[9]~input_o\ : std_logic;
SIGNAL \Instruction_IN[10]~input_o\ : std_logic;
SIGNAL \Decoder|output[1]~0_combout\ : std_logic;
SIGNAL \Decoder|Equal4~0_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \Instruction_IN[0]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Equal0~0_combout\ : std_logic;
SIGNAL \ULA1|Add1~34_cout\ : std_logic;
SIGNAL \ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~8_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \Instruction_IN[1]~input_o\ : std_logic;
SIGNAL \Data_IN[1]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ULA1|Add1~2\ : std_logic;
SIGNAL \ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~9_combout\ : std_logic;
SIGNAL \Instruction_IN[2]~input_o\ : std_logic;
SIGNAL \Data_IN[2]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ULA1|Add1~6\ : std_logic;
SIGNAL \ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~10_combout\ : std_logic;
SIGNAL \Instruction_IN[3]~input_o\ : std_logic;
SIGNAL \Data_IN[3]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ULA1|Add1~10\ : std_logic;
SIGNAL \ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~11_combout\ : std_logic;
SIGNAL \Instruction_IN[4]~input_o\ : std_logic;
SIGNAL \Data_IN[4]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ULA1|Add1~14\ : std_logic;
SIGNAL \ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~12_combout\ : std_logic;
SIGNAL \Instruction_IN[5]~input_o\ : std_logic;
SIGNAL \Data_IN[5]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ULA1|Add1~18\ : std_logic;
SIGNAL \ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~13_combout\ : std_logic;
SIGNAL \Instruction_IN[6]~input_o\ : std_logic;
SIGNAL \Data_IN[6]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ULA1|Add1~22\ : std_logic;
SIGNAL \ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~14_combout\ : std_logic;
SIGNAL \Instruction_IN[7]~input_o\ : std_logic;
SIGNAL \Data_IN[7]~input_o\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2x1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ULA1|Add1~26\ : std_logic;
SIGNAL \ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~15_combout\ : std_logic;
SIGNAL \somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \Decoder|Equal8~0_combout\ : std_logic;
SIGNAL \LogicaDesvio|output[1]~0_combout\ : std_logic;
SIGNAL \Decoder|Equal3~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~0_combout\ : std_logic;
SIGNAL \FLAG|DOUT~1_combout\ : std_logic;
SIGNAL \FLAG|DOUT~q\ : std_logic;
SIGNAL \LogicaDesvio|output[0]~1_combout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \somaUm|Add0~2\ : std_logic;
SIGNAL \somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \somaUm|Add0~6\ : std_logic;
SIGNAL \somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \somaUm|Add0~10\ : std_logic;
SIGNAL \somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \somaUm|Add0~14\ : std_logic;
SIGNAL \somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \somaUm|Add0~18\ : std_logic;
SIGNAL \somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \somaUm|Add0~22\ : std_logic;
SIGNAL \somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \somaUm|Add0~26\ : std_logic;
SIGNAL \somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \Instruction_IN[8]~input_o\ : std_logic;
SIGNAL \somaUm|Add0~30\ : std_logic;
SIGNAL \somaUm|Add0~33_sumout\ : std_logic;
SIGNAL \MUX4x1|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \Decoder|output[3]~1_combout\ : std_logic;
SIGNAL \REG_RET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Decoder|output\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \somaUm|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_output\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \REG_RET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \LogicaDesvio|ALT_INV_output[0]~1_combout\ : std_logic;
SIGNAL \FLAG|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \LogicaDesvio|ALT_INV_output[1]~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \MUX2x1|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \MUX2x1|ALT_INV_saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \MUX2x1|ALT_INV_saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \MUX2x1|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \MUX2x1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \MUX2x1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \MUX2x1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \MUX2x1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_Instruction_IN[11]~input_o\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_RESET <= RESET;
Rd <= ww_Rd;
Wr <= ww_Wr;
ww_Data_IN <= Data_IN;
Data_OUT <= ww_Data_OUT;
ww_Instruction_IN <= Instruction_IN;
ROM_Address <= ww_ROM_Address;
DATA_Address <= ww_DATA_Address;
ww_KEY <= KEY;
ENTRADAA_ULA <= ww_ENTRADAA_ULA;
ENTRADAB_ULA <= ww_ENTRADAB_ULA;
OUT_ULA <= ww_OUT_ULA;
SELETOR_ULA <= ww_SELETOR_ULA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add1~25_sumout\ <= NOT \ULA1|Add1~25_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add1~21_sumout\ <= NOT \ULA1|Add1~21_sumout\;
\ULA1|ALT_INV_Add1~17_sumout\ <= NOT \ULA1|Add1~17_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add1~29_sumout\ <= NOT \ULA1|Add1~29_sumout\;
\somaUm|ALT_INV_Add0~21_sumout\ <= NOT \somaUm|Add0~21_sumout\;
\somaUm|ALT_INV_Add0~17_sumout\ <= NOT \somaUm|Add0~17_sumout\;
\somaUm|ALT_INV_Add0~13_sumout\ <= NOT \somaUm|Add0~13_sumout\;
\somaUm|ALT_INV_Add0~29_sumout\ <= NOT \somaUm|Add0~29_sumout\;
\somaUm|ALT_INV_Add0~9_sumout\ <= NOT \somaUm|Add0~9_sumout\;
\somaUm|ALT_INV_Add0~5_sumout\ <= NOT \somaUm|Add0~5_sumout\;
\somaUm|ALT_INV_Add0~33_sumout\ <= NOT \somaUm|Add0~33_sumout\;
\somaUm|ALT_INV_Add0~25_sumout\ <= NOT \somaUm|Add0~25_sumout\;
\somaUm|ALT_INV_Add0~1_sumout\ <= NOT \somaUm|Add0~1_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\FLAG|ALT_INV_DOUT~0_combout\ <= NOT \FLAG|DOUT~0_combout\;
\Decoder|ALT_INV_Equal3~0_combout\ <= NOT \Decoder|Equal3~0_combout\;
\Decoder|ALT_INV_output\(5) <= NOT \Decoder|output\(5);
\REG_RET|ALT_INV_DOUT\(8) <= NOT \REG_RET|DOUT\(8);
\REG_RET|ALT_INV_DOUT\(7) <= NOT \REG_RET|DOUT\(7);
\REG_RET|ALT_INV_DOUT\(6) <= NOT \REG_RET|DOUT\(6);
\REG_RET|ALT_INV_DOUT\(5) <= NOT \REG_RET|DOUT\(5);
\REG_RET|ALT_INV_DOUT\(4) <= NOT \REG_RET|DOUT\(4);
\REG_RET|ALT_INV_DOUT\(3) <= NOT \REG_RET|DOUT\(3);
\REG_RET|ALT_INV_DOUT\(2) <= NOT \REG_RET|DOUT\(2);
\REG_RET|ALT_INV_DOUT\(1) <= NOT \REG_RET|DOUT\(1);
\LogicaDesvio|ALT_INV_output[0]~1_combout\ <= NOT \LogicaDesvio|output[0]~1_combout\;
\FLAG|ALT_INV_DOUT~q\ <= NOT \FLAG|DOUT~q\;
\LogicaDesvio|ALT_INV_output[1]~0_combout\ <= NOT \LogicaDesvio|output[1]~0_combout\;
\REG_RET|ALT_INV_DOUT\(0) <= NOT \REG_RET|DOUT\(0);
\ULA1|ALT_INV_Equal0~0_combout\ <= NOT \ULA1|Equal0~0_combout\;
\Decoder|ALT_INV_Equal1~0_combout\ <= NOT \Decoder|Equal1~0_combout\;
\MUX2x1|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \MUX2x1|saida_MUX[7]~7_combout\;
\MUX2x1|ALT_INV_saida_MUX[6]~6_combout\ <= NOT \MUX2x1|saida_MUX[6]~6_combout\;
\MUX2x1|ALT_INV_saida_MUX[5]~5_combout\ <= NOT \MUX2x1|saida_MUX[5]~5_combout\;
\MUX2x1|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \MUX2x1|saida_MUX[4]~4_combout\;
\MUX2x1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX2x1|saida_MUX[3]~3_combout\;
\MUX2x1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX2x1|saida_MUX[2]~2_combout\;
\MUX2x1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX2x1|saida_MUX[1]~1_combout\;
\MUX2x1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX2x1|saida_MUX[0]~0_combout\;
\ALT_INV_Data_IN[7]~input_o\ <= NOT \Data_IN[7]~input_o\;
\ALT_INV_Data_IN[6]~input_o\ <= NOT \Data_IN[6]~input_o\;
\ALT_INV_Data_IN[5]~input_o\ <= NOT \Data_IN[5]~input_o\;
\ALT_INV_Data_IN[4]~input_o\ <= NOT \Data_IN[4]~input_o\;
\ALT_INV_Data_IN[3]~input_o\ <= NOT \Data_IN[3]~input_o\;
\ALT_INV_Data_IN[2]~input_o\ <= NOT \Data_IN[2]~input_o\;
\ALT_INV_Data_IN[1]~input_o\ <= NOT \Data_IN[1]~input_o\;
\ALT_INV_Data_IN[0]~input_o\ <= NOT \Data_IN[0]~input_o\;
\ALT_INV_Instruction_IN[8]~input_o\ <= NOT \Instruction_IN[8]~input_o\;
\ALT_INV_Instruction_IN[7]~input_o\ <= NOT \Instruction_IN[7]~input_o\;
\ALT_INV_Instruction_IN[6]~input_o\ <= NOT \Instruction_IN[6]~input_o\;
\ALT_INV_Instruction_IN[5]~input_o\ <= NOT \Instruction_IN[5]~input_o\;
\ALT_INV_Instruction_IN[4]~input_o\ <= NOT \Instruction_IN[4]~input_o\;
\ALT_INV_Instruction_IN[3]~input_o\ <= NOT \Instruction_IN[3]~input_o\;
\ALT_INV_Instruction_IN[2]~input_o\ <= NOT \Instruction_IN[2]~input_o\;
\ALT_INV_Instruction_IN[1]~input_o\ <= NOT \Instruction_IN[1]~input_o\;
\ALT_INV_Instruction_IN[0]~input_o\ <= NOT \Instruction_IN[0]~input_o\;
\ALT_INV_Instruction_IN[10]~input_o\ <= NOT \Instruction_IN[10]~input_o\;
\ALT_INV_Instruction_IN[9]~input_o\ <= NOT \Instruction_IN[9]~input_o\;
\ALT_INV_Instruction_IN[12]~input_o\ <= NOT \Instruction_IN[12]~input_o\;
\ALT_INV_Instruction_IN[11]~input_o\ <= NOT \Instruction_IN[11]~input_o\;
\ULA1|ALT_INV_Add1~13_sumout\ <= NOT \ULA1|Add1~13_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add1~9_sumout\ <= NOT \ULA1|Add1~9_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add1~5_sumout\ <= NOT \ULA1|Add1~5_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add1~1_sumout\ <= NOT \ULA1|Add1~1_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);

\Rd~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|output[1]~0_combout\,
	devoe => ww_devoe,
	o => \Rd~output_o\);

\Wr~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|Equal4~0_combout\,
	devoe => ww_devoe,
	o => \Wr~output_o\);

\Data_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
	devoe => ww_devoe,
	o => \Data_OUT[0]~output_o\);

\Data_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(1),
	devoe => ww_devoe,
	o => \Data_OUT[1]~output_o\);

\Data_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(2),
	devoe => ww_devoe,
	o => \Data_OUT[2]~output_o\);

\Data_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(3),
	devoe => ww_devoe,
	o => \Data_OUT[3]~output_o\);

\Data_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(4),
	devoe => ww_devoe,
	o => \Data_OUT[4]~output_o\);

\Data_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(5),
	devoe => ww_devoe,
	o => \Data_OUT[5]~output_o\);

\Data_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(6),
	devoe => ww_devoe,
	o => \Data_OUT[6]~output_o\);

\Data_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(7),
	devoe => ww_devoe,
	o => \Data_OUT[7]~output_o\);

\ROM_Address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => \ROM_Address[0]~output_o\);

\ROM_Address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => \ROM_Address[1]~output_o\);

\ROM_Address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \ROM_Address[2]~output_o\);

\ROM_Address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \ROM_Address[3]~output_o\);

\ROM_Address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \ROM_Address[4]~output_o\);

\ROM_Address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \ROM_Address[5]~output_o\);

\ROM_Address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \ROM_Address[6]~output_o\);

\ROM_Address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \ROM_Address[7]~output_o\);

\ROM_Address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \ROM_Address[8]~output_o\);

\DATA_Address[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_IN[0]~input_o\,
	devoe => ww_devoe,
	o => \DATA_Address[0]~output_o\);

\DATA_Address[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_IN[1]~input_o\,
	devoe => ww_devoe,
	o => \DATA_Address[1]~output_o\);

\DATA_Address[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_IN[2]~input_o\,
	devoe => ww_devoe,
	o => \DATA_Address[2]~output_o\);

\DATA_Address[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_IN[3]~input_o\,
	devoe => ww_devoe,
	o => \DATA_Address[3]~output_o\);

\DATA_Address[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_IN[4]~input_o\,
	devoe => ww_devoe,
	o => \DATA_Address[4]~output_o\);

\DATA_Address[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_IN[5]~input_o\,
	devoe => ww_devoe,
	o => \DATA_Address[5]~output_o\);

\DATA_Address[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_IN[6]~input_o\,
	devoe => ww_devoe,
	o => \DATA_Address[6]~output_o\);

\DATA_Address[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_IN[7]~input_o\,
	devoe => ww_devoe,
	o => \DATA_Address[7]~output_o\);

\DATA_Address[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Instruction_IN[8]~input_o\,
	devoe => ww_devoe,
	o => \DATA_Address[8]~output_o\);

\ENTRADAA_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(0),
	devoe => ww_devoe,
	o => \ENTRADAA_ULA[0]~output_o\);

\ENTRADAA_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(1),
	devoe => ww_devoe,
	o => \ENTRADAA_ULA[1]~output_o\);

\ENTRADAA_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(2),
	devoe => ww_devoe,
	o => \ENTRADAA_ULA[2]~output_o\);

\ENTRADAA_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(3),
	devoe => ww_devoe,
	o => \ENTRADAA_ULA[3]~output_o\);

\ENTRADAA_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(4),
	devoe => ww_devoe,
	o => \ENTRADAA_ULA[4]~output_o\);

\ENTRADAA_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(5),
	devoe => ww_devoe,
	o => \ENTRADAA_ULA[5]~output_o\);

\ENTRADAA_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(6),
	devoe => ww_devoe,
	o => \ENTRADAA_ULA[6]~output_o\);

\ENTRADAA_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG1|DOUT\(7),
	devoe => ww_devoe,
	o => \ENTRADAA_ULA[7]~output_o\);

\ENTRADAB_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2x1|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => \ENTRADAB_ULA[0]~output_o\);

\ENTRADAB_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2x1|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => \ENTRADAB_ULA[1]~output_o\);

\ENTRADAB_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2x1|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => \ENTRADAB_ULA[2]~output_o\);

\ENTRADAB_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2x1|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => \ENTRADAB_ULA[3]~output_o\);

\ENTRADAB_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2x1|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => \ENTRADAB_ULA[4]~output_o\);

\ENTRADAB_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2x1|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => \ENTRADAB_ULA[5]~output_o\);

\ENTRADAB_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2x1|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => \ENTRADAB_ULA[6]~output_o\);

\ENTRADAB_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \MUX2x1|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => \ENTRADAB_ULA[7]~output_o\);

\OUT_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[0]~0_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[0]~output_o\);

\OUT_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[1]~1_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[1]~output_o\);

\OUT_ULA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[2]~2_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[2]~output_o\);

\OUT_ULA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[3]~3_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[3]~output_o\);

\OUT_ULA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[4]~4_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[4]~output_o\);

\OUT_ULA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[5]~5_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[5]~output_o\);

\OUT_ULA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[6]~6_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[6]~output_o\);

\OUT_ULA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ULA1|saida[7]~7_combout\,
	devoe => ww_devoe,
	o => \OUT_ULA[7]~output_o\);

\SELETOR_ULA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|output[3]~1_combout\,
	devoe => ww_devoe,
	o => \SELETOR_ULA[0]~output_o\);

\SELETOR_ULA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decoder|output\(4),
	devoe => ww_devoe,
	o => \SELETOR_ULA[1]~output_o\);

\Instruction_IN[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(11),
	o => \Instruction_IN[11]~input_o\);

\Instruction_IN[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(12),
	o => \Instruction_IN[12]~input_o\);

\Instruction_IN[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(9),
	o => \Instruction_IN[9]~input_o\);

\Instruction_IN[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(10),
	o => \Instruction_IN[10]~input_o\);

\Decoder|output[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|output[1]~0_combout\ = (!\Instruction_IN[11]~input_o\ & (!\Instruction_IN[12]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010001000001010001000100000101000100010000010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \Decoder|output[1]~0_combout\);

\Decoder|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal4~0_combout\ = (\Instruction_IN[11]~input_o\ & (!\Instruction_IN[12]~input_o\ & (\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \Decoder|Equal4~0_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\Decoder|output[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|output\(5) = (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100010001000010010001000100001001000100010000100100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \Decoder|output\(5));

\Instruction_IN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(0),
	o => \Instruction_IN[0]~input_o\);

\Data_IN[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_IN(0),
	o => \Data_IN[0]~input_o\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\Decoder|output\(5) & ((\Data_IN[0]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[0]~input_o\)) ) + ( \REG1|DOUT\(0) ) + ( !VCC ))
-- \ULA1|Add0~2\ = CARRY(( (!\Decoder|output\(5) & ((\Data_IN[0]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[0]~input_o\)) ) + ( \REG1|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[0]~input_o\,
	datad => \ALT_INV_Data_IN[0]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\MUX2x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[0]~0_combout\ = ( \Instruction_IN[0]~input_o\ & ( \Data_IN[0]~input_o\ ) ) # ( !\Instruction_IN[0]~input_o\ & ( \Data_IN[0]~input_o\ & ( (!\Instruction_IN[11]~input_o\ $ (((\Instruction_IN[10]~input_o\) # (\Instruction_IN[9]~input_o\)))) 
-- # (\Instruction_IN[12]~input_o\) ) ) ) # ( \Instruction_IN[0]~input_o\ & ( !\Data_IN[0]~input_o\ & ( (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001000100010110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	datae => \ALT_INV_Instruction_IN[0]~input_o\,
	dataf => \ALT_INV_Data_IN[0]~input_o\,
	combout => \MUX2x1|saida_MUX[0]~0_combout\);

\ULA1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Equal0~0_combout\ = (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[10]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (!\Instruction_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \ULA1|Equal0~0_combout\);

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
-- \ULA1|Add1~1_sumout\ = SUM(( (!\Decoder|output\(5) & ((!\Data_IN[0]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[0]~input_o\)) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))
-- \ULA1|Add1~2\ = CARRY(( (!\Decoder|output\(5) & ((!\Data_IN[0]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[0]~input_o\)) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[0]~input_o\,
	datad => \ALT_INV_Data_IN[0]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add1~34_cout\,
	sumout => \ULA1|Add1~1_sumout\,
	cout => \ULA1|Add1~2\);

\ULA1|saida[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~8_combout\ = (!\ULA1|Equal0~0_combout\ & ((\ULA1|Add1~1_sumout\))) # (\ULA1|Equal0~0_combout\ & (\MUX2x1|saida_MUX[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[0]~0_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[0]~8_combout\);

\Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = (((!\Instruction_IN[10]~input_o\) # (\Instruction_IN[9]~input_o\)) # (\Instruction_IN[12]~input_o\)) # (\Instruction_IN[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111111110111111111111111011111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \Decoder|Equal1~0_combout\);

\Decoder|output[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|output\(4) = (!\Instruction_IN[10]~input_o\ & ((!\Instruction_IN[11]~input_o\ & (!\Instruction_IN[12]~input_o\ $ (!\Instruction_IN[9]~input_o\))) # (\Instruction_IN[11]~input_o\ & (!\Instruction_IN[12]~input_o\ & !\Instruction_IN[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100000000000011010000000000001101000000000000110100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \Decoder|output\(4));

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~1_sumout\,
	asdata => \ULA1|saida[0]~8_combout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\Instruction_IN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(1),
	o => \Instruction_IN[1]~input_o\);

\Data_IN[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_IN(1),
	o => \Data_IN[1]~input_o\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\Decoder|output\(5) & ((\Data_IN[1]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[1]~input_o\)) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\Decoder|output\(5) & ((\Data_IN[1]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[1]~input_o\)) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[1]~input_o\,
	datad => \ALT_INV_Data_IN[1]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\MUX2x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[1]~1_combout\ = ( \Instruction_IN[1]~input_o\ & ( \Data_IN[1]~input_o\ ) ) # ( !\Instruction_IN[1]~input_o\ & ( \Data_IN[1]~input_o\ & ( (!\Instruction_IN[11]~input_o\ $ (((\Instruction_IN[10]~input_o\) # (\Instruction_IN[9]~input_o\)))) 
-- # (\Instruction_IN[12]~input_o\) ) ) ) # ( \Instruction_IN[1]~input_o\ & ( !\Data_IN[1]~input_o\ & ( (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001000100010110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	datae => \ALT_INV_Instruction_IN[1]~input_o\,
	dataf => \ALT_INV_Data_IN[1]~input_o\,
	combout => \MUX2x1|saida_MUX[1]~1_combout\);

\ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~5_sumout\ = SUM(( (!\Decoder|output\(5) & ((!\Data_IN[1]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[1]~input_o\)) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add1~2\ ))
-- \ULA1|Add1~6\ = CARRY(( (!\Decoder|output\(5) & ((!\Data_IN[1]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[1]~input_o\)) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[1]~input_o\,
	datad => \ALT_INV_Data_IN[1]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add1~2\,
	sumout => \ULA1|Add1~5_sumout\,
	cout => \ULA1|Add1~6\);

\ULA1|saida[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~9_combout\ = (!\ULA1|Equal0~0_combout\ & ((\ULA1|Add1~5_sumout\))) # (\ULA1|Equal0~0_combout\ & (\MUX2x1|saida_MUX[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[1]~1_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[1]~9_combout\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~5_sumout\,
	asdata => \ULA1|saida[1]~9_combout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\Instruction_IN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(2),
	o => \Instruction_IN[2]~input_o\);

\Data_IN[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_IN(2),
	o => \Data_IN[2]~input_o\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\Decoder|output\(5) & ((\Data_IN[2]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[2]~input_o\)) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\Decoder|output\(5) & ((\Data_IN[2]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[2]~input_o\)) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[2]~input_o\,
	datad => \ALT_INV_Data_IN[2]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\MUX2x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[2]~2_combout\ = ( \Instruction_IN[2]~input_o\ & ( \Data_IN[2]~input_o\ ) ) # ( !\Instruction_IN[2]~input_o\ & ( \Data_IN[2]~input_o\ & ( (!\Instruction_IN[11]~input_o\ $ (((\Instruction_IN[10]~input_o\) # (\Instruction_IN[9]~input_o\)))) 
-- # (\Instruction_IN[12]~input_o\) ) ) ) # ( \Instruction_IN[2]~input_o\ & ( !\Data_IN[2]~input_o\ & ( (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001000100010110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	datae => \ALT_INV_Instruction_IN[2]~input_o\,
	dataf => \ALT_INV_Data_IN[2]~input_o\,
	combout => \MUX2x1|saida_MUX[2]~2_combout\);

\ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~9_sumout\ = SUM(( (!\Decoder|output\(5) & ((!\Data_IN[2]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[2]~input_o\)) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add1~6\ ))
-- \ULA1|Add1~10\ = CARRY(( (!\Decoder|output\(5) & ((!\Data_IN[2]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[2]~input_o\)) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[2]~input_o\,
	datad => \ALT_INV_Data_IN[2]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add1~6\,
	sumout => \ULA1|Add1~9_sumout\,
	cout => \ULA1|Add1~10\);

\ULA1|saida[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~10_combout\ = (!\ULA1|Equal0~0_combout\ & ((\ULA1|Add1~9_sumout\))) # (\ULA1|Equal0~0_combout\ & (\MUX2x1|saida_MUX[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[2]~2_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[2]~10_combout\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~9_sumout\,
	asdata => \ULA1|saida[2]~10_combout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\Instruction_IN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(3),
	o => \Instruction_IN[3]~input_o\);

\Data_IN[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_IN(3),
	o => \Data_IN[3]~input_o\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\Decoder|output\(5) & ((\Data_IN[3]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[3]~input_o\)) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\Decoder|output\(5) & ((\Data_IN[3]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[3]~input_o\)) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[3]~input_o\,
	datad => \ALT_INV_Data_IN[3]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\MUX2x1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[3]~3_combout\ = ( \Instruction_IN[3]~input_o\ & ( \Data_IN[3]~input_o\ ) ) # ( !\Instruction_IN[3]~input_o\ & ( \Data_IN[3]~input_o\ & ( (!\Instruction_IN[11]~input_o\ $ (((\Instruction_IN[10]~input_o\) # (\Instruction_IN[9]~input_o\)))) 
-- # (\Instruction_IN[12]~input_o\) ) ) ) # ( \Instruction_IN[3]~input_o\ & ( !\Data_IN[3]~input_o\ & ( (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001000100010110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	datae => \ALT_INV_Instruction_IN[3]~input_o\,
	dataf => \ALT_INV_Data_IN[3]~input_o\,
	combout => \MUX2x1|saida_MUX[3]~3_combout\);

\ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~13_sumout\ = SUM(( (!\Decoder|output\(5) & ((!\Data_IN[3]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[3]~input_o\)) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add1~10\ ))
-- \ULA1|Add1~14\ = CARRY(( (!\Decoder|output\(5) & ((!\Data_IN[3]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[3]~input_o\)) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[3]~input_o\,
	datad => \ALT_INV_Data_IN[3]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add1~10\,
	sumout => \ULA1|Add1~13_sumout\,
	cout => \ULA1|Add1~14\);

\ULA1|saida[3]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~11_combout\ = (!\ULA1|Equal0~0_combout\ & ((\ULA1|Add1~13_sumout\))) # (\ULA1|Equal0~0_combout\ & (\MUX2x1|saida_MUX[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[3]~3_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~11_combout\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~13_sumout\,
	asdata => \ULA1|saida[3]~11_combout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\Instruction_IN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(4),
	o => \Instruction_IN[4]~input_o\);

\Data_IN[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_IN(4),
	o => \Data_IN[4]~input_o\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (!\Decoder|output\(5) & ((\Data_IN[4]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[4]~input_o\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( (!\Decoder|output\(5) & ((\Data_IN[4]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[4]~input_o\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[4]~input_o\,
	datad => \ALT_INV_Data_IN[4]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\MUX2x1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[4]~4_combout\ = ( \Instruction_IN[4]~input_o\ & ( \Data_IN[4]~input_o\ ) ) # ( !\Instruction_IN[4]~input_o\ & ( \Data_IN[4]~input_o\ & ( (!\Instruction_IN[11]~input_o\ $ (((\Instruction_IN[10]~input_o\) # (\Instruction_IN[9]~input_o\)))) 
-- # (\Instruction_IN[12]~input_o\) ) ) ) # ( \Instruction_IN[4]~input_o\ & ( !\Data_IN[4]~input_o\ & ( (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001000100010110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	datae => \ALT_INV_Instruction_IN[4]~input_o\,
	dataf => \ALT_INV_Data_IN[4]~input_o\,
	combout => \MUX2x1|saida_MUX[4]~4_combout\);

\ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~17_sumout\ = SUM(( (!\Decoder|output\(5) & ((!\Data_IN[4]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[4]~input_o\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~14\ ))
-- \ULA1|Add1~18\ = CARRY(( (!\Decoder|output\(5) & ((!\Data_IN[4]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[4]~input_o\)) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[4]~input_o\,
	datad => \ALT_INV_Data_IN[4]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add1~14\,
	sumout => \ULA1|Add1~17_sumout\,
	cout => \ULA1|Add1~18\);

\ULA1|saida[4]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~12_combout\ = (!\ULA1|Equal0~0_combout\ & ((\ULA1|Add1~17_sumout\))) # (\ULA1|Equal0~0_combout\ & (\MUX2x1|saida_MUX[4]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[4]~4_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~12_combout\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~17_sumout\,
	asdata => \ULA1|saida[4]~12_combout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\Instruction_IN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(5),
	o => \Instruction_IN[5]~input_o\);

\Data_IN[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_IN(5),
	o => \Data_IN[5]~input_o\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\Decoder|output\(5) & ((\Data_IN[5]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[5]~input_o\)) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\Decoder|output\(5) & ((\Data_IN[5]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[5]~input_o\)) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[5]~input_o\,
	datad => \ALT_INV_Data_IN[5]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\MUX2x1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[5]~5_combout\ = ( \Instruction_IN[5]~input_o\ & ( \Data_IN[5]~input_o\ ) ) # ( !\Instruction_IN[5]~input_o\ & ( \Data_IN[5]~input_o\ & ( (!\Instruction_IN[11]~input_o\ $ (((\Instruction_IN[10]~input_o\) # (\Instruction_IN[9]~input_o\)))) 
-- # (\Instruction_IN[12]~input_o\) ) ) ) # ( \Instruction_IN[5]~input_o\ & ( !\Data_IN[5]~input_o\ & ( (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001000100010110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	datae => \ALT_INV_Instruction_IN[5]~input_o\,
	dataf => \ALT_INV_Data_IN[5]~input_o\,
	combout => \MUX2x1|saida_MUX[5]~5_combout\);

\ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~21_sumout\ = SUM(( (!\Decoder|output\(5) & ((!\Data_IN[5]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[5]~input_o\)) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add1~18\ ))
-- \ULA1|Add1~22\ = CARRY(( (!\Decoder|output\(5) & ((!\Data_IN[5]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[5]~input_o\)) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[5]~input_o\,
	datad => \ALT_INV_Data_IN[5]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add1~18\,
	sumout => \ULA1|Add1~21_sumout\,
	cout => \ULA1|Add1~22\);

\ULA1|saida[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~13_combout\ = (!\ULA1|Equal0~0_combout\ & ((\ULA1|Add1~21_sumout\))) # (\ULA1|Equal0~0_combout\ & (\MUX2x1|saida_MUX[5]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[5]~5_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[5]~13_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~21_sumout\,
	asdata => \ULA1|saida[5]~13_combout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\Instruction_IN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(6),
	o => \Instruction_IN[6]~input_o\);

\Data_IN[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_IN(6),
	o => \Data_IN[6]~input_o\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\Decoder|output\(5) & ((\Data_IN[6]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[6]~input_o\)) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\Decoder|output\(5) & ((\Data_IN[6]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[6]~input_o\)) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[6]~input_o\,
	datad => \ALT_INV_Data_IN[6]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\MUX2x1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[6]~6_combout\ = ( \Instruction_IN[6]~input_o\ & ( \Data_IN[6]~input_o\ ) ) # ( !\Instruction_IN[6]~input_o\ & ( \Data_IN[6]~input_o\ & ( (!\Instruction_IN[11]~input_o\ $ (((\Instruction_IN[10]~input_o\) # (\Instruction_IN[9]~input_o\)))) 
-- # (\Instruction_IN[12]~input_o\) ) ) ) # ( \Instruction_IN[6]~input_o\ & ( !\Data_IN[6]~input_o\ & ( (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001000100010110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	datae => \ALT_INV_Instruction_IN[6]~input_o\,
	dataf => \ALT_INV_Data_IN[6]~input_o\,
	combout => \MUX2x1|saida_MUX[6]~6_combout\);

\ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~25_sumout\ = SUM(( (!\Decoder|output\(5) & ((!\Data_IN[6]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[6]~input_o\)) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add1~22\ ))
-- \ULA1|Add1~26\ = CARRY(( (!\Decoder|output\(5) & ((!\Data_IN[6]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[6]~input_o\)) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[6]~input_o\,
	datad => \ALT_INV_Data_IN[6]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add1~22\,
	sumout => \ULA1|Add1~25_sumout\,
	cout => \ULA1|Add1~26\);

\ULA1|saida[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~14_combout\ = (!\ULA1|Equal0~0_combout\ & ((\ULA1|Add1~25_sumout\))) # (\ULA1|Equal0~0_combout\ & (\MUX2x1|saida_MUX[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[6]~6_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~14_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~25_sumout\,
	asdata => \ULA1|saida[6]~14_combout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\Instruction_IN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(7),
	o => \Instruction_IN[7]~input_o\);

\Data_IN[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_IN(7),
	o => \Data_IN[7]~input_o\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\Decoder|output\(5) & ((\Data_IN[7]~input_o\))) # (\Decoder|output\(5) & (\Instruction_IN[7]~input_o\)) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datac => \ALT_INV_Instruction_IN[7]~input_o\,
	datad => \ALT_INV_Data_IN[7]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\MUX2x1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2x1|saida_MUX[7]~7_combout\ = ( \Instruction_IN[7]~input_o\ & ( \Data_IN[7]~input_o\ ) ) # ( !\Instruction_IN[7]~input_o\ & ( \Data_IN[7]~input_o\ & ( (!\Instruction_IN[11]~input_o\ $ (((\Instruction_IN[10]~input_o\) # (\Instruction_IN[9]~input_o\)))) 
-- # (\Instruction_IN[12]~input_o\) ) ) ) # ( \Instruction_IN[7]~input_o\ & ( !\Data_IN[7]~input_o\ & ( (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[11]~input_o\ $ (((!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010010001000100010110111011101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	datae => \ALT_INV_Instruction_IN[7]~input_o\,
	dataf => \ALT_INV_Data_IN[7]~input_o\,
	combout => \MUX2x1|saida_MUX[7]~7_combout\);

\ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add1~29_sumout\ = SUM(( (!\Decoder|output\(5) & ((!\Data_IN[7]~input_o\))) # (\Decoder|output\(5) & (!\Instruction_IN[7]~input_o\)) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_output\(5),
	datab => \ALT_INV_Instruction_IN[7]~input_o\,
	datad => \ALT_INV_Data_IN[7]~input_o\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add1~26\,
	sumout => \ULA1|Add1~29_sumout\);

\ULA1|saida[7]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~15_combout\ = (!\ULA1|Equal0~0_combout\ & ((\ULA1|Add1~29_sumout\))) # (\ULA1|Equal0~0_combout\ & (\MUX2x1|saida_MUX[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MUX2x1|ALT_INV_saida_MUX[7]~7_combout\,
	datab => \ULA1|ALT_INV_Equal0~0_combout\,
	datac => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~15_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \ULA1|Add0~29_sumout\,
	asdata => \ULA1|saida[7]~15_combout\,
	sload => \Decoder|Equal1~0_combout\,
	ena => \Decoder|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

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

\Decoder|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal8~0_combout\ = (!\Instruction_IN[11]~input_o\ & (\Instruction_IN[12]~input_o\ & (\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \Decoder|Equal8~0_combout\);

\REG_RET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somaUm|Add0~1_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(0));

\LogicaDesvio|output[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicaDesvio|output[1]~0_combout\ = (!\Instruction_IN[11]~input_o\ & (\Instruction_IN[12]~input_o\ & (!\Instruction_IN[9]~input_o\ & \Instruction_IN[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \LogicaDesvio|output[1]~0_combout\);

\Decoder|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal3~0_combout\ = (\Instruction_IN[11]~input_o\ & (!\Instruction_IN[12]~input_o\ & (!\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \Decoder|Equal3~0_combout\);

\FLAG|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~0_combout\ = ( !\ULA1|Add1~13_sumout\ & ( !\ULA1|Add1~17_sumout\ & ( (\Decoder|Equal3~0_combout\ & (!\ULA1|Add1~1_sumout\ & (!\ULA1|Add1~5_sumout\ & !\ULA1|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal3~0_combout\,
	datab => \ULA1|ALT_INV_Add1~1_sumout\,
	datac => \ULA1|ALT_INV_Add1~5_sumout\,
	datad => \ULA1|ALT_INV_Add1~9_sumout\,
	datae => \ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \FLAG|DOUT~0_combout\);

\FLAG|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG|DOUT~1_combout\ = ( \FLAG|DOUT~q\ & ( \FLAG|DOUT~0_combout\ & ( (!\Decoder|Equal3~0_combout\) # ((!\ULA1|Add1~21_sumout\ & (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~29_sumout\))) ) ) ) # ( !\FLAG|DOUT~q\ & ( \FLAG|DOUT~0_combout\ & ( 
-- (!\ULA1|Add1~21_sumout\ & (!\ULA1|Add1~25_sumout\ & !\ULA1|Add1~29_sumout\)) ) ) ) # ( \FLAG|DOUT~q\ & ( !\FLAG|DOUT~0_combout\ & ( !\Decoder|Equal3~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011000000000000001110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal3~0_combout\,
	datab => \ULA1|ALT_INV_Add1~21_sumout\,
	datac => \ULA1|ALT_INV_Add1~25_sumout\,
	datad => \ULA1|ALT_INV_Add1~29_sumout\,
	datae => \FLAG|ALT_INV_DOUT~q\,
	dataf => \FLAG|ALT_INV_DOUT~0_combout\,
	combout => \FLAG|DOUT~1_combout\);

\FLAG|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \FLAG|DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG|DOUT~q\);

\LogicaDesvio|output[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LogicaDesvio|output[0]~1_combout\ = ( \FLAG|DOUT~q\ & ( (!\Instruction_IN[11]~input_o\ & (\Instruction_IN[12]~input_o\ & (\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))) # (\Instruction_IN[11]~input_o\ & (!\Instruction_IN[12]~input_o\ & 
-- ((\Instruction_IN[10]~input_o\)))) ) ) # ( !\FLAG|DOUT~q\ & ( (!\Instruction_IN[11]~input_o\ & (\Instruction_IN[12]~input_o\ & (\Instruction_IN[9]~input_o\ & !\Instruction_IN[10]~input_o\))) # (\Instruction_IN[11]~input_o\ & (!\Instruction_IN[12]~input_o\ 
-- & (!\Instruction_IN[9]~input_o\ & \Instruction_IN[10]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100100010000000010010000000000001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	datae => \FLAG|ALT_INV_DOUT~q\,
	combout => \LogicaDesvio|output[0]~1_combout\);

\MUX4x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[0]~0_combout\ = ( \somaUm|Add0~1_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (((!\LogicaDesvio|output[0]~1_combout\)) # (\Instruction_IN[0]~input_o\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(0))))) ) ) # ( 
-- !\somaUm|Add0~1_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (\Instruction_IN[0]~input_o\ & ((\LogicaDesvio|output[0]~1_combout\)))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011111100110101001100000011010100111111001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[0]~input_o\,
	datab => \REG_RET|ALT_INV_DOUT\(0),
	datac => \LogicaDesvio|ALT_INV_output[1]~0_combout\,
	datad => \LogicaDesvio|ALT_INV_output[0]~1_combout\,
	datae => \somaUm|ALT_INV_Add0~1_sumout\,
	combout => \MUX4x1|saida_MUX[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MUX4x1|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

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

\REG_RET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somaUm|Add0~5_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(1));

\MUX4x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[1]~1_combout\ = ( \somaUm|Add0~5_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (((!\LogicaDesvio|output[0]~1_combout\)) # (\Instruction_IN[1]~input_o\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(1))))) ) ) # ( 
-- !\somaUm|Add0~5_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (\Instruction_IN[1]~input_o\ & (\LogicaDesvio|output[0]~1_combout\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[1]~input_o\,
	datab => \LogicaDesvio|ALT_INV_output[1]~0_combout\,
	datac => \LogicaDesvio|ALT_INV_output[0]~1_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(1),
	datae => \somaUm|ALT_INV_Add0~5_sumout\,
	combout => \MUX4x1|saida_MUX[1]~1_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MUX4x1|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

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

\REG_RET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somaUm|Add0~9_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(2));

\MUX4x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[2]~2_combout\ = ( \somaUm|Add0~9_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (((!\LogicaDesvio|output[0]~1_combout\)) # (\Instruction_IN[2]~input_o\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(2))))) ) ) # ( 
-- !\somaUm|Add0~9_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (\Instruction_IN[2]~input_o\ & (\LogicaDesvio|output[0]~1_combout\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[2]~input_o\,
	datab => \LogicaDesvio|ALT_INV_output[1]~0_combout\,
	datac => \LogicaDesvio|ALT_INV_output[0]~1_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(2),
	datae => \somaUm|ALT_INV_Add0~9_sumout\,
	combout => \MUX4x1|saida_MUX[2]~2_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MUX4x1|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

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

\REG_RET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somaUm|Add0~13_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(3));

\MUX4x1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[3]~3_combout\ = ( \somaUm|Add0~13_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (((!\LogicaDesvio|output[0]~1_combout\)) # (\Instruction_IN[3]~input_o\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(3))))) ) ) # ( 
-- !\somaUm|Add0~13_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (\Instruction_IN[3]~input_o\ & (\LogicaDesvio|output[0]~1_combout\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[3]~input_o\,
	datab => \LogicaDesvio|ALT_INV_output[1]~0_combout\,
	datac => \LogicaDesvio|ALT_INV_output[0]~1_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(3),
	datae => \somaUm|ALT_INV_Add0~13_sumout\,
	combout => \MUX4x1|saida_MUX[3]~3_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MUX4x1|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

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

\REG_RET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somaUm|Add0~17_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(4));

\MUX4x1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[4]~4_combout\ = ( \somaUm|Add0~17_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (((!\LogicaDesvio|output[0]~1_combout\)) # (\Instruction_IN[4]~input_o\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(4))))) ) ) # ( 
-- !\somaUm|Add0~17_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (\Instruction_IN[4]~input_o\ & (\LogicaDesvio|output[0]~1_combout\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(4))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[4]~input_o\,
	datab => \LogicaDesvio|ALT_INV_output[1]~0_combout\,
	datac => \LogicaDesvio|ALT_INV_output[0]~1_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(4),
	datae => \somaUm|ALT_INV_Add0~17_sumout\,
	combout => \MUX4x1|saida_MUX[4]~4_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MUX4x1|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

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
	clk => \CLOCK_50~input_o\,
	d => \somaUm|Add0~21_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(5));

\MUX4x1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[5]~5_combout\ = ( \somaUm|Add0~21_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (((!\LogicaDesvio|output[0]~1_combout\)) # (\Instruction_IN[5]~input_o\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(5))))) ) ) # ( 
-- !\somaUm|Add0~21_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (\Instruction_IN[5]~input_o\ & (\LogicaDesvio|output[0]~1_combout\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[5]~input_o\,
	datab => \LogicaDesvio|ALT_INV_output[1]~0_combout\,
	datac => \LogicaDesvio|ALT_INV_output[0]~1_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(5),
	datae => \somaUm|ALT_INV_Add0~21_sumout\,
	combout => \MUX4x1|saida_MUX[5]~5_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MUX4x1|saida_MUX[5]~5_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \somaUm|Add0~25_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(6));

\MUX4x1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[6]~6_combout\ = ( \somaUm|Add0~25_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (((!\LogicaDesvio|output[0]~1_combout\)) # (\Instruction_IN[6]~input_o\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(6))))) ) ) # ( 
-- !\somaUm|Add0~25_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (\Instruction_IN[6]~input_o\ & (\LogicaDesvio|output[0]~1_combout\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[6]~input_o\,
	datab => \LogicaDesvio|ALT_INV_output[1]~0_combout\,
	datac => \LogicaDesvio|ALT_INV_output[0]~1_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(6),
	datae => \somaUm|ALT_INV_Add0~25_sumout\,
	combout => \MUX4x1|saida_MUX[6]~6_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MUX4x1|saida_MUX[6]~6_combout\,
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
	clk => \CLOCK_50~input_o\,
	d => \somaUm|Add0~29_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(7));

\MUX4x1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[7]~7_combout\ = ( \somaUm|Add0~29_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (((!\LogicaDesvio|output[0]~1_combout\)) # (\Instruction_IN[7]~input_o\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(7))))) ) ) # ( 
-- !\somaUm|Add0~29_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (\Instruction_IN[7]~input_o\ & (\LogicaDesvio|output[0]~1_combout\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[7]~input_o\,
	datab => \LogicaDesvio|ALT_INV_output[1]~0_combout\,
	datac => \LogicaDesvio|ALT_INV_output[0]~1_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(7),
	datae => \somaUm|ALT_INV_Add0~29_sumout\,
	combout => \MUX4x1|saida_MUX[7]~7_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MUX4x1|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\Instruction_IN[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction_IN(8),
	o => \Instruction_IN[8]~input_o\);

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

\REG_RET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \somaUm|Add0~33_sumout\,
	ena => \Decoder|Equal8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG_RET|DOUT\(8));

\MUX4x1|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX4x1|saida_MUX[8]~8_combout\ = ( \somaUm|Add0~33_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (((!\LogicaDesvio|output[0]~1_combout\)) # (\Instruction_IN[8]~input_o\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(8))))) ) ) # ( 
-- !\somaUm|Add0~33_sumout\ & ( (!\LogicaDesvio|output[1]~0_combout\ & (\Instruction_IN[8]~input_o\ & (\LogicaDesvio|output[0]~1_combout\))) # (\LogicaDesvio|output[1]~0_combout\ & (((\REG_RET|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111110001001111011100000100001101111100010011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[8]~input_o\,
	datab => \LogicaDesvio|ALT_INV_output[1]~0_combout\,
	datac => \LogicaDesvio|ALT_INV_output[0]~1_combout\,
	datad => \REG_RET|ALT_INV_DOUT\(8),
	datae => \somaUm|ALT_INV_Add0~33_sumout\,
	combout => \MUX4x1|saida_MUX[8]~8_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \MUX4x1|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add1~1_sumout\ & ( (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~1_sumout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ULA1|Equal0~0_combout\)) # (\MUX2x1|saida_MUX[0]~0_combout\))) ) ) # ( !\ULA1|Add1~1_sumout\ & ( 
-- (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~1_sumout\)))) # (\Decoder|Equal1~0_combout\ & (\MUX2x1|saida_MUX[0]~0_combout\ & ((\ULA1|Equal0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000011011010111110001101100001010000110110101111100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	datad => \ULA1|ALT_INV_Equal0~0_combout\,
	datae => \ULA1|ALT_INV_Add1~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = ( \ULA1|Add1~5_sumout\ & ( (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~5_sumout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ULA1|Equal0~0_combout\)) # (\MUX2x1|saida_MUX[1]~1_combout\))) ) ) # ( !\ULA1|Add1~5_sumout\ & ( 
-- (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~5_sumout\)))) # (\Decoder|Equal1~0_combout\ & (\MUX2x1|saida_MUX[1]~1_combout\ & (\ULA1|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	datae => \ULA1|ALT_INV_Add1~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add1~9_sumout\ & ( (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~9_sumout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ULA1|Equal0~0_combout\)) # (\MUX2x1|saida_MUX[2]~2_combout\))) ) ) # ( !\ULA1|Add1~9_sumout\ & ( 
-- (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~9_sumout\)))) # (\Decoder|Equal1~0_combout\ & (\MUX2x1|saida_MUX[2]~2_combout\ & (\ULA1|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ULA1|ALT_INV_Add0~9_sumout\,
	datae => \ULA1|ALT_INV_Add1~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = ( \ULA1|Add1~13_sumout\ & ( (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~13_sumout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ULA1|Equal0~0_combout\)) # (\MUX2x1|saida_MUX[3]~3_combout\))) ) ) # ( !\ULA1|Add1~13_sumout\ & ( 
-- (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~13_sumout\)))) # (\Decoder|Equal1~0_combout\ & (\MUX2x1|saida_MUX[3]~3_combout\ & (\ULA1|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	datae => \ULA1|ALT_INV_Add1~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = ( \ULA1|Add1~17_sumout\ & ( (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~17_sumout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ULA1|Equal0~0_combout\)) # (\MUX2x1|saida_MUX[4]~4_combout\))) ) ) # ( !\ULA1|Add1~17_sumout\ & ( 
-- (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~17_sumout\)))) # (\Decoder|Equal1~0_combout\ & (\MUX2x1|saida_MUX[4]~4_combout\ & (\ULA1|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[4]~4_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	datae => \ULA1|ALT_INV_Add1~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = ( \ULA1|Add1~21_sumout\ & ( (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~21_sumout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ULA1|Equal0~0_combout\)) # (\MUX2x1|saida_MUX[5]~5_combout\))) ) ) # ( !\ULA1|Add1~21_sumout\ & ( 
-- (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~21_sumout\)))) # (\Decoder|Equal1~0_combout\ & (\MUX2x1|saida_MUX[5]~5_combout\ & (\ULA1|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[5]~5_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ULA1|ALT_INV_Add0~21_sumout\,
	datae => \ULA1|ALT_INV_Add1~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = ( \ULA1|Add1~25_sumout\ & ( (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~25_sumout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ULA1|Equal0~0_combout\)) # (\MUX2x1|saida_MUX[6]~6_combout\))) ) ) # ( !\ULA1|Add1~25_sumout\ & ( 
-- (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~25_sumout\)))) # (\Decoder|Equal1~0_combout\ & (\MUX2x1|saida_MUX[6]~6_combout\ & (\ULA1|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[6]~6_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ULA1|ALT_INV_Add0~25_sumout\,
	datae => \ULA1|ALT_INV_Add1~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = ( \ULA1|Add1~29_sumout\ & ( (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~29_sumout\)))) # (\Decoder|Equal1~0_combout\ & (((!\ULA1|Equal0~0_combout\)) # (\MUX2x1|saida_MUX[7]~7_combout\))) ) ) # ( !\ULA1|Add1~29_sumout\ & ( 
-- (!\Decoder|Equal1~0_combout\ & (((\ULA1|Add0~29_sumout\)))) # (\Decoder|Equal1~0_combout\ & (\MUX2x1|saida_MUX[7]~7_combout\ & (\ULA1|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011010100011111101100000001101010110101000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \MUX2x1|ALT_INV_saida_MUX[7]~7_combout\,
	datac => \ULA1|ALT_INV_Equal0~0_combout\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	datae => \ULA1|ALT_INV_Add1~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

\Decoder|output[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|output[3]~1_combout\ = (!\Instruction_IN[11]~input_o\ & (!\Instruction_IN[9]~input_o\ & (!\Instruction_IN[12]~input_o\ $ (!\Instruction_IN[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Instruction_IN[11]~input_o\,
	datab => \ALT_INV_Instruction_IN[12]~input_o\,
	datac => \ALT_INV_Instruction_IN[9]~input_o\,
	datad => \ALT_INV_Instruction_IN[10]~input_o\,
	combout => \Decoder|output[3]~1_combout\);

\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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

ww_Rd <= \Rd~output_o\;

ww_Wr <= \Wr~output_o\;

ww_Data_OUT(0) <= \Data_OUT[0]~output_o\;

ww_Data_OUT(1) <= \Data_OUT[1]~output_o\;

ww_Data_OUT(2) <= \Data_OUT[2]~output_o\;

ww_Data_OUT(3) <= \Data_OUT[3]~output_o\;

ww_Data_OUT(4) <= \Data_OUT[4]~output_o\;

ww_Data_OUT(5) <= \Data_OUT[5]~output_o\;

ww_Data_OUT(6) <= \Data_OUT[6]~output_o\;

ww_Data_OUT(7) <= \Data_OUT[7]~output_o\;

ww_ROM_Address(0) <= \ROM_Address[0]~output_o\;

ww_ROM_Address(1) <= \ROM_Address[1]~output_o\;

ww_ROM_Address(2) <= \ROM_Address[2]~output_o\;

ww_ROM_Address(3) <= \ROM_Address[3]~output_o\;

ww_ROM_Address(4) <= \ROM_Address[4]~output_o\;

ww_ROM_Address(5) <= \ROM_Address[5]~output_o\;

ww_ROM_Address(6) <= \ROM_Address[6]~output_o\;

ww_ROM_Address(7) <= \ROM_Address[7]~output_o\;

ww_ROM_Address(8) <= \ROM_Address[8]~output_o\;

ww_DATA_Address(0) <= \DATA_Address[0]~output_o\;

ww_DATA_Address(1) <= \DATA_Address[1]~output_o\;

ww_DATA_Address(2) <= \DATA_Address[2]~output_o\;

ww_DATA_Address(3) <= \DATA_Address[3]~output_o\;

ww_DATA_Address(4) <= \DATA_Address[4]~output_o\;

ww_DATA_Address(5) <= \DATA_Address[5]~output_o\;

ww_DATA_Address(6) <= \DATA_Address[6]~output_o\;

ww_DATA_Address(7) <= \DATA_Address[7]~output_o\;

ww_DATA_Address(8) <= \DATA_Address[8]~output_o\;

ww_ENTRADAA_ULA(0) <= \ENTRADAA_ULA[0]~output_o\;

ww_ENTRADAA_ULA(1) <= \ENTRADAA_ULA[1]~output_o\;

ww_ENTRADAA_ULA(2) <= \ENTRADAA_ULA[2]~output_o\;

ww_ENTRADAA_ULA(3) <= \ENTRADAA_ULA[3]~output_o\;

ww_ENTRADAA_ULA(4) <= \ENTRADAA_ULA[4]~output_o\;

ww_ENTRADAA_ULA(5) <= \ENTRADAA_ULA[5]~output_o\;

ww_ENTRADAA_ULA(6) <= \ENTRADAA_ULA[6]~output_o\;

ww_ENTRADAA_ULA(7) <= \ENTRADAA_ULA[7]~output_o\;

ww_ENTRADAB_ULA(0) <= \ENTRADAB_ULA[0]~output_o\;

ww_ENTRADAB_ULA(1) <= \ENTRADAB_ULA[1]~output_o\;

ww_ENTRADAB_ULA(2) <= \ENTRADAB_ULA[2]~output_o\;

ww_ENTRADAB_ULA(3) <= \ENTRADAB_ULA[3]~output_o\;

ww_ENTRADAB_ULA(4) <= \ENTRADAB_ULA[4]~output_o\;

ww_ENTRADAB_ULA(5) <= \ENTRADAB_ULA[5]~output_o\;

ww_ENTRADAB_ULA(6) <= \ENTRADAB_ULA[6]~output_o\;

ww_ENTRADAB_ULA(7) <= \ENTRADAB_ULA[7]~output_o\;

ww_OUT_ULA(0) <= \OUT_ULA[0]~output_o\;

ww_OUT_ULA(1) <= \OUT_ULA[1]~output_o\;

ww_OUT_ULA(2) <= \OUT_ULA[2]~output_o\;

ww_OUT_ULA(3) <= \OUT_ULA[3]~output_o\;

ww_OUT_ULA(4) <= \OUT_ULA[4]~output_o\;

ww_OUT_ULA(5) <= \OUT_ULA[5]~output_o\;

ww_OUT_ULA(6) <= \OUT_ULA[6]~output_o\;

ww_OUT_ULA(7) <= \OUT_ULA[7]~output_o\;

ww_SELETOR_ULA(0) <= \SELETOR_ULA[0]~output_o\;

ww_SELETOR_ULA(1) <= \SELETOR_ULA[1]~output_o\;
END structure;


