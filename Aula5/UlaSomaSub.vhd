library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 4 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(1 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		saida_FLAG: out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal vetorAnds : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   begin
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		vetorAnds(0) <= entradaA(0) AND entradaB(0);
		vetorAnds(1) <= entradaA(1) AND entradaB(1);
		vetorAnds(2) <= entradaA(2) AND entradaB(2);
		vetorAnds(3) <= entradaA(3) AND entradaB(3);
		
		saida_FLAG <= vetorAnds(0) AND vetorAnds(1) AND vetorAnds(2) AND vetorAnds(3);
		
      saida <= soma when (seletor = "01") else 
                    subtracao when (seletor = "00") else
                    entradaB;
end architecture;