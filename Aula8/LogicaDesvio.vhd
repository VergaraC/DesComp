library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LogicaDesvio is

  port   (
    -- Input [e o opCode output: saida decodificada
     JMP, RET, JSR, JEQ, FLAG: in std_logic; --- Sel,RET,JSR,JEQ, flag
     output: out std_logic_vector(1 downto 0)
  );
end entity;

architecture arch_name of LogicaDesvio is

begin
    output <= "01" when JSR = '1' else
                "10" when RET = '1' else
                "01" when JMP = '1' else
                "01" when (JEQ = '1' and FLAG = '1') else
					 "00";

end architecture;