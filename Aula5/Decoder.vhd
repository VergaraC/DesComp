library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is

  port   (
    -- Input [e o opCode output: saida decodificada
	 opCode: in std_logic_vector(3 downto 0);
	 output: out std_logic_vector(5 downto 0)
  );
end entity;

architecture arch_name of Decoder is
  constant NOP : std_logic_vector(3 downto 0) := "0000";
  constant LDA : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101"; 

begin
	output <= "011010" when opCode = LDA else
				 "010110" when opCode = SOMA else
				 "010010" when opCode = SUB else
				 "111000" when opCode = LDI else
				 "000001" when opCode = STA else
				 "000000" when opCode = NOP; --???????
end architecture;