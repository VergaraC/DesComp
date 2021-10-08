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
-- Generated on "10/08/2021 17:26:43"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_vhd_vec_tst IS
END CPU_vhd_vec_tst;
ARCHITECTURE CPU_arch OF CPU_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DATA_Address : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL Data_IN : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Data_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ENTRADAA_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ENTRADAB_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Instruction_IN : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUT_ULA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Rd : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL ROM_Address : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL SELETOR_ULA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Wr : STD_LOGIC;
COMPONENT CPU
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	DATA_Address : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	Data_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	Data_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ENTRADAA_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ENTRADAB_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Instruction_IN : IN STD_LOGIC_VECTOR(12 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUT_ULA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Rd : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	ROM_Address : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	SELETOR_ULA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	Wr : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CPU
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	DATA_Address => DATA_Address,
	Data_IN => Data_IN,
	Data_OUT => Data_OUT,
	ENTRADAA_ULA => ENTRADAA_ULA,
	ENTRADAB_ULA => ENTRADAB_ULA,
	Instruction_IN => Instruction_IN,
	KEY => KEY,
	OUT_ULA => OUT_ULA,
	Rd => Rd,
	RESET => RESET,
	ROM_Address => ROM_Address,
	SELETOR_ULA => SELETOR_ULA,
	Wr => Wr
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
-- Data_IN[7]
t_prcs_Data_IN_7: PROCESS
BEGIN
	Data_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_Data_IN_7;
-- Data_IN[6]
t_prcs_Data_IN_6: PROCESS
BEGIN
	Data_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_Data_IN_6;
-- Data_IN[5]
t_prcs_Data_IN_5: PROCESS
BEGIN
	Data_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_Data_IN_5;
-- Data_IN[4]
t_prcs_Data_IN_4: PROCESS
BEGIN
	Data_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_Data_IN_4;
-- Data_IN[3]
t_prcs_Data_IN_3: PROCESS
BEGIN
	Data_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_Data_IN_3;
-- Data_IN[2]
t_prcs_Data_IN_2: PROCESS
BEGIN
	Data_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_Data_IN_2;
-- Data_IN[1]
t_prcs_Data_IN_1: PROCESS
BEGIN
	Data_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_Data_IN_1;
-- Data_IN[0]
t_prcs_Data_IN_0: PROCESS
BEGIN
	Data_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_Data_IN_0;
-- Instruction_IN[12]
t_prcs_Instruction_IN_12: PROCESS
BEGIN
	Instruction_IN(12) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_12;
-- Instruction_IN[11]
t_prcs_Instruction_IN_11: PROCESS
BEGIN
	Instruction_IN(11) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_11;
-- Instruction_IN[10]
t_prcs_Instruction_IN_10: PROCESS
BEGIN
	Instruction_IN(10) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_10;
-- Instruction_IN[9]
t_prcs_Instruction_IN_9: PROCESS
BEGIN
	Instruction_IN(9) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_9;
-- Instruction_IN[8]
t_prcs_Instruction_IN_8: PROCESS
BEGIN
	Instruction_IN(8) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_8;
-- Instruction_IN[7]
t_prcs_Instruction_IN_7: PROCESS
BEGIN
	Instruction_IN(7) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_7;
-- Instruction_IN[6]
t_prcs_Instruction_IN_6: PROCESS
BEGIN
	Instruction_IN(6) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_6;
-- Instruction_IN[5]
t_prcs_Instruction_IN_5: PROCESS
BEGIN
	Instruction_IN(5) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_5;
-- Instruction_IN[4]
t_prcs_Instruction_IN_4: PROCESS
BEGIN
	Instruction_IN(4) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_4;
-- Instruction_IN[3]
t_prcs_Instruction_IN_3: PROCESS
BEGIN
	Instruction_IN(3) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_3;
-- Instruction_IN[2]
t_prcs_Instruction_IN_2: PROCESS
BEGIN
	Instruction_IN(2) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_2;
-- Instruction_IN[1]
t_prcs_Instruction_IN_1: PROCESS
BEGIN
	Instruction_IN(1) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_1;
-- Instruction_IN[0]
t_prcs_Instruction_IN_0: PROCESS
BEGIN
	Instruction_IN(0) <= '0';
WAIT;
END PROCESS t_prcs_Instruction_IN_0;
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

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;
END CPU_arch;
