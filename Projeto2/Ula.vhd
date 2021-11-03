library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity Ula is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB, SelinverteB:  in STD_LOGIC;
		carryIn:  in STD_LOGIC;
		carryOut:  out STD_LOGIC;
      seletor:  in STD_LOGIC;
      saida:    out STD_LOGIC
    );
end entity;

architecture comportamento of Ula is
   signal valorB :   STD_LOGIC;
	signal andOp :    STD_LOGIC;
   signal orOp :     STD_LOGIC;
	signal SomaOp :   STD_LOGIC;
	
begin


	MuxValorB: entity work.muxGenerico2x1_1Bit generic map(larguraDados => 1)
			port map (entradaA_MUX => entradaB, 
							entradaB_MUX => not(entradaB),
							seletor_MUX => SelinverteB, 
							saida_MUX => valorB);
	
	andOp    <= entradaA and valorB;
	orOp     <= entradaA or valorB;
	
	somador: entity work.somadorGenerico
			port map (entradaA => entradaA, entradaB => valorB, cIn => carryIn, saida => soma_mux, cOut => carryOut);

	MuxSaida: entity work.muxGenerico4x1_1Bit generic map(larguraDados => 1)
			port map (entradaA_MUX => andOp,
							entradaB_MUX => orOp,
							entradaC_MUX => ResultadoSomador,
							entradaD_MUX => "0", -- IMPORTANTE: TA ERRADO, BOTEI 0 SO PARA RODAR, CORRIGIR
							seletor_MUX => SelinverteB,
							saida_MUX => saida);

end architecture;