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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/08/2021 16:41:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Aula8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Aula8_vhd_vec_tst IS
END Aula8_vhd_vec_tst;
ARCHITECTURE Aula8_arch OF Aula8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0_A8 : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Address : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DECODERBLOC : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DECODEREND : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HABILITAREGHEX : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL KEY_RST : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL RAM_Saida : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ROM_Saida : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL SAIDA_DEBOUNCE : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL WRTE : STD_LOGIC;
COMPONENT Aula8
	PORT (
	A0_A8 : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	Address : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	DECODERBLOC : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DECODEREND : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HABILITAREGHEX : OUT STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	KEY_RST : IN STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	RAM_Saida : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ROM_Saida : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	SAIDA_DEBOUNCE : OUT STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	WRTE : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Aula8
	PORT MAP (
-- list connections between master ports and signals
	A0_A8 => A0_A8,
	Address => Address,
	CLOCK_50 => CLOCK_50,
	DECODERBLOC => DECODERBLOC,
	DECODEREND => DECODEREND,
	HABILITAREGHEX => HABILITAREGHEX,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	KEY => KEY,
	KEY_RST => KEY_RST,
	LEDR => LEDR,
	RAM_Saida => RAM_Saida,
	ROM_Saida => ROM_Saida,
	SAIDA_DEBOUNCE => SAIDA_DEBOUNCE,
	SW => SW,
	WRTE => WRTE
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		CLOCK_50 <= '0';
		WAIT FOR 10000 ps;
		CLOCK_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	CLOCK_50 <= '0';
WAIT;
END PROCESS t_prcs_CLOCK_50;
-- KEY[3]
t_prcs_KEY_3: PROCESS
BEGIN
	KEY(3) <= '0';
WAIT;
END PROCESS t_prcs_KEY_3;
-- KEY[2]
t_prcs_KEY_2: PROCESS
BEGIN
	KEY(2) <= '0';
WAIT;
END PROCESS t_prcs_KEY_2;
-- KEY[1]
t_prcs_KEY_1: PROCESS
BEGIN
	KEY(1) <= '0';
WAIT;
END PROCESS t_prcs_KEY_1;
-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END Aula8_arch;
