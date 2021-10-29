library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity somadorGenerico1Bit is
    generic
    (
        larguraDados : natural := 32
    );
    port
    (
        entradaA, entradaB, caryIn: in STD_LOGIC;
        carryOut, saida:  out STD_LOGIC
    );
end entity;

architecture comportamento of somadorGenerico is
    begin
        saida <= caryIn xor (entradaA xor entradaB);
		  carryOut <= (entradaA and entradaB) or (caryIn and (entradaA xor entradaB));
end architecture;