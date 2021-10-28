library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULASomaSub is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB:  in STD_LOGIC_VECTOR((larguraDados-1) downto 0);
      seletor:  in STD_LOGIC_VECTOR(2 downto 0);
      saida:    out STD_LOGIC_VECTOR((larguraDados-1) downto 0);
		flagZ: out std_logic
    );
end entity;

architecture comportamento of ULASomaSub is
   signal soma :      STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal subtracao : STD_LOGIC_VECTOR((larguraDados-1) downto 0);
	signal andOp :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal orOp :     STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal xorOp :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   signal notOp :    STD_LOGIC_VECTOR((larguraDados-1) downto 0);
   begin
	
      soma      <= STD_LOGIC_VECTOR(unsigned(entradaA) + unsigned(entradaB));
      subtracao <= STD_LOGIC_VECTOR(unsigned(entradaA) - unsigned(entradaB));
		andOp    <= entradaA and entradaB;
      orOp     <= entradaA or entradaB;
      xorOp    <= entradaA xor entradaB;
      notOp    <= not entradaA;
		
      saida <= soma when (seletor = "000") else 
			subtracao when (seletor = "001") else 
			entradaA when (seletor = "010") else
			entradaB when (seletor = "011") else
			xorOp when (seletor = "100") else 
			notOp when (seletor = "101") else 
			andOp when (seletor = "110") else 
			orOp when (seletor = "111") else 			
			entradaA; 
end architecture;