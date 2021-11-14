library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity UnidadeControleUla is	
	
	generic   (
    larguraDados  : natural := 6
	);
 
	 port
    (
        Funct: in  STD_LOGIC_VECTOR(5 downto 0);
		  OpCode: in  STD_LOGIC_VECTOR(5 downto 0);
		  SeletorTipoR: in STD_LOGIC;
        SeletorUla:   out STD_LOGIC_VECTOR(2 downto 0)
    );
end entity;

architecture comportamento of UnidadeControleUla is

	signal ControleFunct: STD_LOGIC_VECTOR(2 downto 0);
	signal ControleOpCOde: STD_LOGIC_VECTOR(2 downto 0);

    begin
        
UlaControleFunct : entity work.UnidadeControleUlaFunct  generic map(larguraDados => 32)
			port map (Funct => Funct, saidaFunct=> ControleFunct);	

UlaControleOpCode : entity work.UnidadeControleUlaOpCode generic map(larguraDados => 32) 
			port map (OpCode => OpCode, saidaOpCode => ControleOpCOde);
				
Mux: entity work.muxGenerico2x1 generic map(largudraDados => 3)
			port map (entradaA_MUX => ControleOpCOde, entradaB_MUX => ControleFunct,
			seletor_MUX => SeletorTipoR, saida_MUX => SeletorUla);

end architecture;