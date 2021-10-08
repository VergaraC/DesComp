library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is

  port   (
    -- Input [e o opCode output: saida decodificada
	 opCode: in std_logic_vector(3 downto 0);
	 output: out std_logic_vector(11 downto 0)
  );
end entity;

architecture arch_name of Decoder is
    
  signal NOP : std_logic := '0';
  signal LDI : std_logic := '0';
  signal LDA : std_logic := '0';
  signal SOMA: std_logic := '0';
  signal SUB : std_logic := '0';
  signal STA : std_logic := '0';
  signal JMP : std_logic := '0';
  signal JEQ : std_logic := '0';
  signal CEQ : std_logic := '0';
  signal JSR : std_logic := '0';
  signal RET : std_logic := '0';

begin
  NOP <= '1' when opCode = "0000" else '0';
  LDA <= '1' when opCode = "0001" else '0';
  SOMA<= '1' when opCode = "0010" else '0';
  SUB <= '1' when opCode = "0011" else '0';
  LDI <= '1' when opCode = "0100" else '0';
  STA <= '1' when opCode = "0101" else '0';
  JMP <= '1' when opCode = "0110" else '0';
  JEQ <= '1' when opCode = "0111" else '0';
  CEQ <= '1' when opCode = "1000" else '0';
  JSR <= '1' when opCode = "1001" else '0';
  RET <= '1' when opCode = "1010" else '0';
  
  output(11)<= JSR;                       
  output(10)<= JMP;
  output(9) <= RET;
  output(8) <= JSR;
  output(7) <= JEQ;                       
  output(6) <= LDI;                      
  output(5) <= LDI or SOMA or SUB or LDA;
  output(4) <= LDA or LDI or CEQ or STA;
  output(3) <= SOMA or CEQ;         
  output(2) <= CEQ;
  output(1) <= LDA or SOMA or SUB or CEQ; 
  output(0) <= STA;                       
end architecture;