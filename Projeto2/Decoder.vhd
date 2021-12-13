library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  generic   (
	 OpCodeWidth  : natural := 6;
	 FunctWidth : natural := 6
    outWidth: natural := 14
  );

  port   (
    OpCode  :  in  std_logic_vector(OpCodeWidth-1 downto 0);
	 Funct   :	in  std_logic_vector(FunctWidth-1 downto 0);
    Sinais_Controle :  out  std_logic_vector(outWidth-1 downto 0)
  );
end entity;

architecture arquitetura of Decoder is

  constant lw   : std_logic_vector(5 downto 0) := "100011";
  constant sw   : std_logic_vector(5 downto 0) := "101011";
  
  constant beq  : std_logic_vector(5 downto 0) := "000100";
  constant bne  : std_logic_vector(5 downto 0) := "000101";
  
  constant jmp  : std_logic_vector(5 downto 0) := "000010";
  constant jal  : std_logic_vector(5 downto 0) := "000011";
  constant jr   : std_logic_vector(5 downto 0) := "001000";
  
  constant r    : std_logic_vector(5 downto 0) := "000000";
  constant lui  : std_logic_vector(5 downto 0) := "001111";
  constant ori  : std_logic_vector(5 downto 0) := "001101";
  constant andi : std_logic_vector(5 downto 0) := "001100";
  constant addi : std_logic_vector(5 downto 0) := "001000";
  constant slti : std_logic_vector(5 downto 0) := "001010";

  

begin

 
----------------------------------------------------------------------------------------------

  Sinais_Controle(13)<= '1' when (OpCode = sw) else '0'; 						--habEscritaMEM
  
  Sinais_Controle(12)<= '1' when (OpCode = lw) else '0'; 						--habLeituraMEM
  
  Sinais_Controle(11)<= '1' when (OpCode = bne) else '0'; 						--BNE
  
  Sinais_Controle(10)<= '1' when (OpCode = beq) else '0'; 						--BEQ

  Sinais_Controle(9 downto 8)<= "00" when (OpCode = r 
															or OpCode = ori 
															or OpCode = addi 
															or OpCode = andi 
															or OpCode = slti)
											else "11" when (OpCode = lui)
											else "10" when (OpCode = jal)
 											else "01";											--mux(ULA/mem)
  
  Sinais_Controle(7)<= '1' when (OpCode = r) else '0'; 							--Tipo R
  
  Sinais_Controle(6)<= '1' when (OpCode = lw 
											or OpCode = sw 
											or OpCode = ori 
											or OpCode = addi 
											or OpCode = slti 
											or OpCode = andi) 
											else '0';											--mux(Rt/Imediato)
  
  Sinais_Controle(5)<= '1' when (OpCode = lui 
											or OpCode = andi 
											or OpCode = ori 
											or (OpCode = r and Funct /= jr) 
											or OpCode = lw 
											or OpCode = addi 
											or OpCode = jal 
											or OpCode = slti) 
											else '0'; 											--habEscritaReg
											
  Sinais_Controle(4)<= '1' when (OpCode = ori or OpCode = andi) else '0'; 	--ORI ANDI
  
  Sinais_Controle(3 downto 2)<= "01" when (OpCode = r) 
									else "10" when (OpCode = jal) 
									else "00";													--mux(Rt/Rd)
  
  Sinais_Controle(1)<= '1' when (OpCode = jmp or OpCode = jal) else '0';	--Mux JMP
  
  Sinais_Controle(0)<= '1' when (OpCode = r and Funct = jr) else '0' ;		--Mux JR
  
end architecture;