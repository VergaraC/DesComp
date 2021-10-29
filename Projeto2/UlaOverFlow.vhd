ibrary ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity UlaOverFlow is
    generic ( larguraDados : natural := 32 );
    port (
      entradaA, entradaB, SelinverteB:  in STD_LOGIC;
		carryIn, less:  in STD_LOGIC;
      seletor:  in STD_LOGIC;
      saida, slt:    out STD_LOGIC;
    );
end entity;

architecture comportamento of UlaOverFlow is
   signal valorB
	signal andOp :    STD_LOGIC;
   signal orOp :     STD_LOGIC;
	signal SomaOp :     STD_LOGIC;
	
	signal carryOut:  STD_LOGIC;
	
	signal overFlow :     STD_LOGIC;
	signal SomaOp :     STD_LOGIC;
	
	signal sltOp :     STD_LOGIC;
begin

	MuxValorB: entity work.muxGenerico2x1_1Bit generic map(larguraDados => 1)
			port map (entradaA_MUX => entradaB, entradaB_MUX => not(entradaB),
			seletor_MUX => SelinverteB, saida_MUX => valorB);
	
	andOp    <= entradaA and valorB;
	orOp     <= entradaA or valorB;
	
	somador: entity work.somadorGenerico
			port map (entradaA => entradaA, entradaB => valorB, cIn => carryIn,
			saida => SomaOp, cOut => carryOut);

	MuxSaida: entity work.muxGenerico4x1_1Bit generic map(larguraDados => 1)
			port map (entradaA_MUX => andOp, entradaB_MUX => orOp,
			entradaC_MUX => SomaOp, entradaD_MUX => less,
			seletor_MUX => SelinverteB, saida_MUX => saida);

	overFlow <= carryIn xor carryOut;
	sltOp SomaOp xor overflow_slt;
	slt <= sltOp;
	
end architecture;