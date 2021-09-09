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

-- DATE "09/03/2021 19:12:21"

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

ENTITY 	Aula4 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula4;

ARCHITECTURE structure OF Aula4 IS
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \somaUm|Add0~5_sumout\ : std_logic;
SIGNAL \somaUm|Add0~6\ : std_logic;
SIGNAL \somaUm|Add0~9_sumout\ : std_logic;
SIGNAL \somaUm|Add0~10\ : std_logic;
SIGNAL \somaUm|Add0~13_sumout\ : std_logic;
SIGNAL \somaUm|Add0~14\ : std_logic;
SIGNAL \somaUm|Add0~29_sumout\ : std_logic;
SIGNAL \somaUm|Add0~30\ : std_logic;
SIGNAL \somaUm|Add0~25_sumout\ : std_logic;
SIGNAL \somaUm|Add0~26\ : std_logic;
SIGNAL \somaUm|Add0~21_sumout\ : std_logic;
SIGNAL \somaUm|Add0~22\ : std_logic;
SIGNAL \somaUm|Add0~17_sumout\ : std_logic;
SIGNAL \somaUm|Add0~18\ : std_logic;
SIGNAL \somaUm|Add0~1_sumout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \Decoder|Equal1~0_combout\ : std_logic;
SIGNAL \Decoder|Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \RAM1|process_0~0_combout\ : std_logic;
SIGNAL \RAM1|ram~89_combout\ : std_logic;
SIGNAL \RAM1|ram~17_q\ : std_logic;
SIGNAL \RAM1|ram~90_combout\ : std_logic;
SIGNAL \RAM1|ram~25_q\ : std_logic;
SIGNAL \RAM1|ram~91_combout\ : std_logic;
SIGNAL \RAM1|ram~49_q\ : std_logic;
SIGNAL \RAM1|ram~92_combout\ : std_logic;
SIGNAL \RAM1|ram~57_q\ : std_logic;
SIGNAL \RAM1|ram~81_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \Decoder|output[4]~0_combout\ : std_logic;
SIGNAL \RAM1|ram~18_q\ : std_logic;
SIGNAL \RAM1|ram~26_q\ : std_logic;
SIGNAL \RAM1|ram~50_q\ : std_logic;
SIGNAL \RAM1|ram~58_q\ : std_logic;
SIGNAL \RAM1|ram~82_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \RAM1|ram~19_q\ : std_logic;
SIGNAL \RAM1|ram~27_q\ : std_logic;
SIGNAL \RAM1|ram~51_q\ : std_logic;
SIGNAL \RAM1|ram~59_q\ : std_logic;
SIGNAL \RAM1|ram~83_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \RAM1|ram~20_q\ : std_logic;
SIGNAL \RAM1|ram~28_q\ : std_logic;
SIGNAL \RAM1|ram~52_q\ : std_logic;
SIGNAL \RAM1|ram~60_q\ : std_logic;
SIGNAL \RAM1|ram~84_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \RAM1|ram~21_q\ : std_logic;
SIGNAL \RAM1|ram~29_q\ : std_logic;
SIGNAL \RAM1|ram~53_q\ : std_logic;
SIGNAL \RAM1|ram~61_q\ : std_logic;
SIGNAL \RAM1|ram~85_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \RAM1|ram~22_q\ : std_logic;
SIGNAL \RAM1|ram~30_q\ : std_logic;
SIGNAL \RAM1|ram~54_q\ : std_logic;
SIGNAL \RAM1|ram~62_q\ : std_logic;
SIGNAL \RAM1|ram~86_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \RAM1|ram~23_q\ : std_logic;
SIGNAL \RAM1|ram~31_q\ : std_logic;
SIGNAL \RAM1|ram~55_q\ : std_logic;
SIGNAL \RAM1|ram~63_q\ : std_logic;
SIGNAL \RAM1|ram~87_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \RAM1|ram~24_q\ : std_logic;
SIGNAL \RAM1|ram~32_q\ : std_logic;
SIGNAL \RAM1|ram~56_q\ : std_logic;
SIGNAL \RAM1|ram~64_q\ : std_logic;
SIGNAL \RAM1|ram~88_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \REG1|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM1|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~88_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~87_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~86_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~85_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~84_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~83_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~82_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \Decoder|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~81_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM1|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \REG1|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM1|ALT_INV_process_0~0_combout\ <= NOT \RAM1|process_0~0_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\Decoder|ALT_INV_Equal1~1_combout\ <= NOT \Decoder|Equal1~1_combout\;
\RAM1|ALT_INV_ram~88_combout\ <= NOT \RAM1|ram~88_combout\;
\RAM1|ALT_INV_ram~64_q\ <= NOT \RAM1|ram~64_q\;
\RAM1|ALT_INV_ram~56_q\ <= NOT \RAM1|ram~56_q\;
\RAM1|ALT_INV_ram~32_q\ <= NOT \RAM1|ram~32_q\;
\RAM1|ALT_INV_ram~24_q\ <= NOT \RAM1|ram~24_q\;
\RAM1|ALT_INV_ram~87_combout\ <= NOT \RAM1|ram~87_combout\;
\RAM1|ALT_INV_ram~63_q\ <= NOT \RAM1|ram~63_q\;
\RAM1|ALT_INV_ram~55_q\ <= NOT \RAM1|ram~55_q\;
\RAM1|ALT_INV_ram~31_q\ <= NOT \RAM1|ram~31_q\;
\RAM1|ALT_INV_ram~23_q\ <= NOT \RAM1|ram~23_q\;
\RAM1|ALT_INV_ram~86_combout\ <= NOT \RAM1|ram~86_combout\;
\RAM1|ALT_INV_ram~62_q\ <= NOT \RAM1|ram~62_q\;
\RAM1|ALT_INV_ram~54_q\ <= NOT \RAM1|ram~54_q\;
\RAM1|ALT_INV_ram~30_q\ <= NOT \RAM1|ram~30_q\;
\RAM1|ALT_INV_ram~22_q\ <= NOT \RAM1|ram~22_q\;
\RAM1|ALT_INV_ram~85_combout\ <= NOT \RAM1|ram~85_combout\;
\RAM1|ALT_INV_ram~61_q\ <= NOT \RAM1|ram~61_q\;
\RAM1|ALT_INV_ram~53_q\ <= NOT \RAM1|ram~53_q\;
\RAM1|ALT_INV_ram~29_q\ <= NOT \RAM1|ram~29_q\;
\RAM1|ALT_INV_ram~21_q\ <= NOT \RAM1|ram~21_q\;
\RAM1|ALT_INV_ram~84_combout\ <= NOT \RAM1|ram~84_combout\;
\RAM1|ALT_INV_ram~60_q\ <= NOT \RAM1|ram~60_q\;
\RAM1|ALT_INV_ram~52_q\ <= NOT \RAM1|ram~52_q\;
\RAM1|ALT_INV_ram~28_q\ <= NOT \RAM1|ram~28_q\;
\RAM1|ALT_INV_ram~20_q\ <= NOT \RAM1|ram~20_q\;
\RAM1|ALT_INV_ram~83_combout\ <= NOT \RAM1|ram~83_combout\;
\RAM1|ALT_INV_ram~59_q\ <= NOT \RAM1|ram~59_q\;
\RAM1|ALT_INV_ram~51_q\ <= NOT \RAM1|ram~51_q\;
\RAM1|ALT_INV_ram~27_q\ <= NOT \RAM1|ram~27_q\;
\RAM1|ALT_INV_ram~19_q\ <= NOT \RAM1|ram~19_q\;
\RAM1|ALT_INV_ram~82_combout\ <= NOT \RAM1|ram~82_combout\;
\RAM1|ALT_INV_ram~58_q\ <= NOT \RAM1|ram~58_q\;
\RAM1|ALT_INV_ram~50_q\ <= NOT \RAM1|ram~50_q\;
\RAM1|ALT_INV_ram~26_q\ <= NOT \RAM1|ram~26_q\;
\RAM1|ALT_INV_ram~18_q\ <= NOT \RAM1|ram~18_q\;
\Decoder|ALT_INV_Equal1~0_combout\ <= NOT \Decoder|Equal1~0_combout\;
\RAM1|ALT_INV_ram~81_combout\ <= NOT \RAM1|ram~81_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\RAM1|ALT_INV_ram~57_q\ <= NOT \RAM1|ram~57_q\;
\RAM1|ALT_INV_ram~49_q\ <= NOT \RAM1|ram~49_q\;
\RAM1|ALT_INV_ram~25_q\ <= NOT \RAM1|ram~25_q\;
\RAM1|ALT_INV_ram~17_q\ <= NOT \RAM1|ram~17_q\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\REG1|ALT_INV_DOUT\(7) <= NOT \REG1|DOUT\(7);
\REG1|ALT_INV_DOUT\(0) <= NOT \REG1|DOUT\(0);
\REG1|ALT_INV_DOUT\(6) <= NOT \REG1|DOUT\(6);
\REG1|ALT_INV_DOUT\(5) <= NOT \REG1|DOUT\(5);
\REG1|ALT_INV_DOUT\(4) <= NOT \REG1|DOUT\(4);
\REG1|ALT_INV_DOUT\(3) <= NOT \REG1|DOUT\(3);
\REG1|ALT_INV_DOUT\(2) <= NOT \REG1|DOUT\(2);
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\REG1|ALT_INV_DOUT\(1) <= NOT \REG1|DOUT\(1);
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;

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

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~0_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC|DOUT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\somaUm|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~5_sumout\ = SUM(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))
-- \somaUm|Add0~6\ = CARRY(( \PC|DOUT\(0) ) + ( \PC|DOUT\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	dataf => \PC|ALT_INV_DOUT\(1),
	cin => GND,
	sumout => \somaUm|Add0~5_sumout\,
	cout => \somaUm|Add0~6\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~5_sumout\,
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

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~9_sumout\,
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

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\somaUm|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~29_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~14\ ))
-- \somaUm|Add0~30\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \somaUm|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \somaUm|Add0~14\,
	sumout => \somaUm|Add0~29_sumout\,
	cout => \somaUm|Add0~30\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\somaUm|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~25_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~30\ ))
-- \somaUm|Add0~26\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \somaUm|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \somaUm|Add0~30\,
	sumout => \somaUm|Add0~25_sumout\,
	cout => \somaUm|Add0~26\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\somaUm|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~21_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~26\ ))
-- \somaUm|Add0~22\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \somaUm|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \somaUm|Add0~26\,
	sumout => \somaUm|Add0~21_sumout\,
	cout => \somaUm|Add0~22\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\somaUm|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~17_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \somaUm|Add0~22\ ))
-- \somaUm|Add0~18\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \somaUm|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \somaUm|Add0~22\,
	sumout => \somaUm|Add0~17_sumout\,
	cout => \somaUm|Add0~18\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\somaUm|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \somaUm|Add0~1_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \somaUm|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \somaUm|Add0~18\,
	sumout => \somaUm|Add0~1_sumout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \somaUm|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = (\PC|DOUT\(1) & (!\PC|DOUT\(3) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000100000000001100010000000000110001000000000011000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( !\PC|DOUT\(4) & ( \ROM1|memROM~6_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \ROM1|memROM~4_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) $ (((!\PC|DOUT\(0) & !\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100000000000011110000000000001111000000000000111100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & (!\PC|DOUT\(5) & !\PC|DOUT\(4))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(7),
	datab => \PC|ALT_INV_DOUT\(6),
	datac => \PC|ALT_INV_DOUT\(5),
	datad => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1) $ (!\PC|DOUT\(2)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & \PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100000000001010010000000000101001000000000010100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (\PC|DOUT\(2) & (!\PC|DOUT\(3) & ((\PC|DOUT\(1)) # (\PC|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000001110000000000000111000000000000011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\Decoder|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~0_combout\ = ( !\ROM1|memROM~3_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \Decoder|Equal1~0_combout\);

\Decoder|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|Equal1~1_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \Decoder|Equal1~1_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(8) & (\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(0),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~5_combout\);

\RAM1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|process_0~0_combout\ = ( \ROM1|memROM~1_combout\ & ( !\PC|DOUT\(8) & ( (!\PC|DOUT\(3) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) $ (!\PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \PC|ALT_INV_DOUT\(8),
	combout => \RAM1|process_0~0_combout\);

\RAM1|ram~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~89_combout\ = (!\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & \RAM1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~89_combout\);

\RAM1|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \RAM1|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~17_q\);

\RAM1|ram~90\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~90_combout\ = (\ROM1|memROM~4_combout\ & (!\ROM1|memROM~5_combout\ & \RAM1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~90_combout\);

\RAM1|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \RAM1|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~25_q\);

\RAM1|ram~91\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~91_combout\ = (!\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~91_combout\);

\RAM1|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \RAM1|ram~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~49_q\);

\RAM1|ram~92\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~92_combout\ = (\ROM1|memROM~4_combout\ & (\ROM1|memROM~5_combout\ & \RAM1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM1|ALT_INV_process_0~0_combout\,
	combout => \RAM1|ram~92_combout\);

\RAM1|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(0),
	ena => \RAM1|ram~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~57_q\);

\RAM1|ram~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~81_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~57_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~49_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~25_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~17_q\,
	datab => \RAM1|ALT_INV_ram~25_q\,
	datac => \RAM1|ALT_INV_ram~49_q\,
	datad => \RAM1|ALT_INV_ram~57_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~81_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\Decoder|Equal1~1_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Decoder|ALT_INV_Equal1~1_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\RAM1|ram~81_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\RAM1|ram~81_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \REG1|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000101001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \Decoder|ALT_INV_Equal1~1_combout\,
	datad => \RAM1|ALT_INV_ram~81_combout\,
	dataf => \REG1|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~0_combout\ = ( \ULA1|Add0~1_sumout\ & ( (!\Decoder|Equal1~0_combout\) # (\ROM1|memROM~4_combout\) ) ) # ( !\ULA1|Add0~1_sumout\ & ( (\ROM1|memROM~4_combout\ & \Decoder|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \Decoder|ALT_INV_Equal1~0_combout\,
	datae => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~0_combout\);

\Decoder|output[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder|output[4]~0_combout\ = ( \ROM1|memROM~3_combout\ & ( (!\PC|DOUT\(8) & (!\ROM1|memROM~0_combout\ & \ROM1|memROM~1_combout\)) ) ) # ( !\ROM1|memROM~3_combout\ & ( (!\PC|DOUT\(8) & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~0_combout\ $ 
-- (!\ROM1|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001000000010000000100000000010000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~3_combout\,
	combout => \Decoder|output[4]~0_combout\);

\REG1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[0]~0_combout\,
	ena => \Decoder|output[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(0));

\RAM1|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \RAM1|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~18_q\);

\RAM1|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \RAM1|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~26_q\);

\RAM1|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \RAM1|ram~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~50_q\);

\RAM1|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(1),
	ena => \RAM1|ram~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~58_q\);

\RAM1|ram~82\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~82_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~58_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~50_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~26_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~18_q\,
	datab => \RAM1|ALT_INV_ram~26_q\,
	datac => \RAM1|ALT_INV_ram~50_q\,
	datad => \RAM1|ALT_INV_ram~58_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~82_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~82_combout\))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~82_combout\))) ) + ( \REG1|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \RAM1|ALT_INV_ram~82_combout\,
	dataf => \REG1|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~1_combout\ = (!\Decoder|Equal1~0_combout\ & \ULA1|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~1_combout\);

\REG1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[1]~1_combout\,
	ena => \Decoder|output[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(1));

\RAM1|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \RAM1|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~19_q\);

\RAM1|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \RAM1|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~27_q\);

\RAM1|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \RAM1|ram~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~51_q\);

\RAM1|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(2),
	ena => \RAM1|ram~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~59_q\);

\RAM1|ram~83\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~83_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~59_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~51_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~27_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~19_q\,
	datab => \RAM1|ALT_INV_ram~27_q\,
	datac => \RAM1|ALT_INV_ram~51_q\,
	datad => \RAM1|ALT_INV_ram~59_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~83_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\RAM1|ram~83_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & ((\RAM1|ram~83_combout\))) # (\Decoder|Equal1~0_combout\ & (\ROM1|memROM~5_combout\)))) ) + ( \REG1|DOUT\(2) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \RAM1|ALT_INV_ram~83_combout\,
	dataf => \REG1|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~2_combout\ = ( \ULA1|Add0~9_sumout\ & ( (!\Decoder|Equal1~0_combout\) # (\ROM1|memROM~5_combout\) ) ) # ( !\ULA1|Add0~9_sumout\ & ( (\ROM1|memROM~5_combout\ & \Decoder|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \Decoder|ALT_INV_Equal1~0_combout\,
	datae => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~2_combout\);

\REG1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[2]~2_combout\,
	ena => \Decoder|output[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(2));

\RAM1|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \RAM1|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~20_q\);

\RAM1|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \RAM1|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~28_q\);

\RAM1|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \RAM1|ram~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~52_q\);

\RAM1|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(3),
	ena => \RAM1|ram~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~60_q\);

\RAM1|ram~84\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~84_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~60_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~52_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~28_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~20_q\,
	datab => \RAM1|ALT_INV_ram~28_q\,
	datac => \RAM1|ALT_INV_ram~52_q\,
	datad => \RAM1|ALT_INV_ram~60_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~84_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~84_combout\))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~84_combout\))) ) + ( \REG1|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \RAM1|ALT_INV_ram~84_combout\,
	dataf => \REG1|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~3_combout\ = (!\Decoder|Equal1~0_combout\ & \ULA1|Add0~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~3_combout\);

\REG1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[3]~3_combout\,
	ena => \Decoder|output[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(3));

\RAM1|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \RAM1|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~21_q\);

\RAM1|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \RAM1|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~29_q\);

\RAM1|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \RAM1|ram~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~53_q\);

\RAM1|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(4),
	ena => \RAM1|ram~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~61_q\);

\RAM1|ram~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~85_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~61_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~53_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~29_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~21_q\,
	datab => \RAM1|ALT_INV_ram~29_q\,
	datac => \RAM1|ALT_INV_ram~53_q\,
	datad => \RAM1|ALT_INV_ram~61_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~85_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~85_combout\))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~85_combout\))) ) + ( \REG1|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \RAM1|ALT_INV_ram~85_combout\,
	dataf => \REG1|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~4_combout\ = (!\Decoder|Equal1~0_combout\ & \ULA1|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[4]~4_combout\);

\REG1|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[4]~4_combout\,
	ena => \Decoder|output[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(4));

\RAM1|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \RAM1|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~22_q\);

\RAM1|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \RAM1|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~30_q\);

\RAM1|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \RAM1|ram~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~54_q\);

\RAM1|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(5),
	ena => \RAM1|ram~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~62_q\);

\RAM1|ram~86\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~86_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~62_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~54_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~30_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~22_q\,
	datab => \RAM1|ALT_INV_ram~30_q\,
	datac => \RAM1|ALT_INV_ram~54_q\,
	datad => \RAM1|ALT_INV_ram~62_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~86_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~86_combout\))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~86_combout\))) ) + ( \REG1|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \RAM1|ALT_INV_ram~86_combout\,
	dataf => \REG1|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~5_combout\ = (!\Decoder|Equal1~0_combout\ & \ULA1|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~5_combout\);

\REG1|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[5]~5_combout\,
	ena => \Decoder|output[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(5));

\RAM1|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \RAM1|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~23_q\);

\RAM1|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \RAM1|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~31_q\);

\RAM1|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \RAM1|ram~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~55_q\);

\RAM1|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(6),
	ena => \RAM1|ram~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~63_q\);

\RAM1|ram~87\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~87_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~63_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~55_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~31_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~23_q\,
	datab => \RAM1|ALT_INV_ram~31_q\,
	datac => \RAM1|ALT_INV_ram~55_q\,
	datad => \RAM1|ALT_INV_ram~63_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~87_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~87_combout\))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~87_combout\))) ) + ( \REG1|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \RAM1|ALT_INV_ram~87_combout\,
	dataf => \REG1|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~6_combout\ = (!\Decoder|Equal1~0_combout\ & \ULA1|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~6_combout\);

\REG1|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[6]~6_combout\,
	ena => \Decoder|output[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(6));

\RAM1|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \RAM1|ram~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~24_q\);

\RAM1|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \RAM1|ram~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~32_q\);

\RAM1|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \RAM1|ram~91_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~56_q\);

\RAM1|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REG1|DOUT\(7),
	ena => \RAM1|ram~92_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM1|ram~64_q\);

\RAM1|ram~88\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM1|ram~88_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~64_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( \ROM1|memROM~5_combout\ & ( \RAM1|ram~56_q\ ) ) ) # ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( 
-- \RAM1|ram~32_q\ ) ) ) # ( !\ROM1|memROM~4_combout\ & ( !\ROM1|memROM~5_combout\ & ( \RAM1|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM1|ALT_INV_ram~24_q\,
	datab => \RAM1|ALT_INV_ram~32_q\,
	datac => \RAM1|ALT_INV_ram~56_q\,
	datad => \RAM1|ALT_INV_ram~64_q\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM1|ram~88_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\Decoder|Equal1~1_combout\ $ (((!\Decoder|Equal1~0_combout\ & \RAM1|ram~88_combout\))) ) + ( \REG1|DOUT\(7) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder|ALT_INV_Equal1~1_combout\,
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \RAM1|ALT_INV_ram~88_combout\,
	dataf => \REG1|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~7_combout\ = (!\Decoder|Equal1~0_combout\ & \ULA1|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Decoder|ALT_INV_Equal1~0_combout\,
	datad => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~7_combout\);

\REG1|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[7]~7_combout\,
	ena => \Decoder|output[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG1|DOUT\(7));

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
END structure;


