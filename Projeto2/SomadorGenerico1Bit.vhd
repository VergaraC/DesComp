library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity somadorGenerico1Bit is
    port
    (
        entradaA, entradaB : in STD_LOGIC;
		  carryIn: in STD_LOGIC;
        carryOut, saida:  out STD_LOGIC
    );
end entity;

architecture comportamento1Bit of somadorGenerico1Bit is
	--signal CarryInS: STD_LOGIC;  
    begin
        saida <= carryIn xor (entradaA xor entradaB);
		  carryOut <= (entradaA and entradaB) or (carryIn and (entradaA xor entradaB));
		  
--CarryInS <= CarryIn;

end architecture;

