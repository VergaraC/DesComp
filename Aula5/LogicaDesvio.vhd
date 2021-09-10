library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LogicaDesvio is

  port   (
    -- Input [e o opCode output: saida decodificada
     decoder: in std_logic_vector(4 downto 0); --- Sel,RRET,JSR,JEQ, flag
     output: out std_logic_vector(1 downto 0)
  );
end entity;

architecture arch_name of LogicaDesvio is
  constant PC_1 : std_logic_vector(3 downto 0) := "0000";
  constant JMP : std_logic_vector(3 downto 0) := "1000";
  constant JEQ : std_logic_vector(3 downto 0) := "1001";
  constant CEQ : std_logic_vector(3 downto 0) := "0000";
  constant JSR : std_logic_vector(3 downto 0) := "1010";
  constant RET : std_logic_vector(3 downto 0) := "1100"; --vetores errados ate aqui

begin
    output <= "01" when decoder = "10000" else
                "01" when decoder = "10001" else
                "01" when decoder = "10011" else
                "01" when decoder = "10100" else
                "01" when decoder = "10101" else  --jump              
                "10" when decoder = "11000" else
                "10" when decoder = "11001" else
                "00";

end architecture;