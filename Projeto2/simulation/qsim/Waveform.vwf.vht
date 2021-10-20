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
-- Generated on "10/20/2021 16:12:21"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Projeto2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Projeto2_vhd_vec_tst IS
END Projeto2_vhd_vec_tst;
ARCHITECTURE Projeto2_arch OF Projeto2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL OutULA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL Seletor_ULA : STD_LOGIC;
SIGNAL Wr3 : STD_LOGIC;
COMPONENT Projeto2
	PORT (
	A : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	B : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	OutULA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	Seletor_ULA : IN STD_LOGIC;
	Wr3 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Projeto2
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	CLOCK_50 => CLOCK_50,
	OutULA => OutULA,
	Seletor_ULA => Seletor_ULA,
	Wr3 => Wr3
	);

-- Seletor_ULA
t_prcs_Seletor_ULA: PROCESS
BEGIN
	Seletor_ULA <= '0';
WAIT;
END PROCESS t_prcs_Seletor_ULA;

-- Wr3
t_prcs_Wr3: PROCESS
BEGIN
	Wr3 <= '0';
WAIT;
END PROCESS t_prcs_Wr3;

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 10000 ps;
	CLOCK_50 <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;
END Projeto2_arch;
