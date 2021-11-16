library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  generic   (
	 OpCodeWidth  : natural := 6;
    outWidth: natural := 9
  );

  port   (
    OpCode  :  in  std_logic_vector(OpCodeWidth-1 downto 0);
    Sinais_Controle :  out  std_logic_vector(outWidth-1 downto 0)
  );
end entity;

architecture arquitetura of Decoder is

  constant lw  : std_logic_vector(5 downto 0) := "100011";
  constant sw  : std_logic_vector(5 downto 0) := "101011";
  constant beq : std_logic_vector(5 downto 0) := "000100";
  constant jmp : std_logic_vector(5 downto 0) := "000010";
  constant r : std_logic_vector(5 downto 0) := "000000";

begin

  
-----------------------------------
----------------------------------------------------------------------------------------------

  Sinais_Controle(8)<= '1' when (OpCode = r) else '0'; -- Tipo R (no lugar dos 2 Ula Ops)
  Sinais_Controle(7)<= '1' when (OpCode = sw) else '0'; --we
  Sinais_Controle(6)<= '1' when (OpCode = lw) else '0'; --re  
  Sinais_Controle(5)<= '1' when (OpCode = beq) else '0'; --BEQ
  Sinais_Controle(4)<= '0' when (OpCode = r) else '1'; --MuxUlaMem
  Sinais_Controle(3)<= '1' when (OpCode = sw or OpCode = lw) else '0'; --MuxRtImediato
  Sinais_Controle(2)<= '0' when (OpCode = sw or OpCode = beq) else '1'; -- Habilita EscritaReg3
  Sinais_Controle(1)<= '1' when (OpCode = r) else '0'; --MuxRtRd
  Sinais_Controle(0)<= '1' when (OpCode = jmp) else '0' ;--MuxPc jmp
  
end architecture;