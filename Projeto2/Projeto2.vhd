library ieee;
use ieee.std_logic_1164.all;

entity Projeto2 is
  -- Total de bits das entradas e saidas
  generic ( 
		  
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 
	 
	 
  );
end entity;


architecture arquitetura of Projeto2 is

  


begin



CLK <= CLOCK_50;
				
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK_KEY0);
		  
PC : entity work.registradorGenerico   generic map (larguraDados => larguraPCROM)
          port map (DIN => OutputMux4X1, DOUT => ROM_OUT, ENABLE => '1', CLK => CLK, RST => '0');

			 
somaUm :  entity work.somaConstante  generic map (larguraDados => larguraPCROM, constante => 1)
          port map( entrada => ROM_OUT, saida => SomaUmPC);

ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => BANCO_ULA_A, entradaB => MUX_ULA, saida => Saida_ULA, saida_FLAG => ULA_FLAG , seletor => Sinais_Controle(4 downto 3));

--end generate;


end architecture;

