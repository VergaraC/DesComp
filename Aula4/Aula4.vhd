library ieee;
use ieee.std_logic_1164.all;

entity Aula4 is
  -- Total de bits das entradas e saidas
  generic ( 
		  larguraDados : natural := 8;
		  larguraROM: natural := 13;
		  larguraAddROM: natural := 9;
		  larguraPCROM: natural := 9;
		  larguraRAM: natural := 8;
		  larguraAddRAM: natural := 8;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    LEDR  : out std_logic_vector(9 downto 0)
		 SEL_MUX: out std_logic;
		 HABILITA: out std_logic;
		 OPERACAO: out std_logic_vector(1 downto 0);
		 SAIDA_MUX: out std_logic_vector(larguraDados-1 downto 0)
  );
end entity;


architecture arquitetura of Aula4 is

  signal MUX_ULA : std_logic_vector(larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (5 downto 0);
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic;
  signal Instrucao : std_logic_vector (larguraDadosROM-1 downto 0);
  signal RAM_MUX : std_logic_vector (larguraDadosRAM-1 downto 0);
  signal PCROM : std_logic_vector (larguraAddrROM-1 downto 0);
  signal SomaUmPC : std_logic_vector (larguraAddrROM-1 downto 0);


begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- O port map completo do MUX.
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => chavesY_MUX_A,
                 entradaB_MUX =>  Saida_ULA,
                 seletor_MUX => SelMUX,
                 saida_MUX => MUX_REG1);

-- O port map completo do Acumulador.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => MUX_REG1, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => Reset_A);

-- O botao 3 faz o Reset da MEF:
REG_MEF : entity work.registradorGenerico   generic map (larguraDados => 4)
          port map (DIN => Proximo_Estado, DOUT => Estado_Atual, ENABLE => '1', CLK => CLK, RST => not(KEY(3)));

			 
PC : entity work.registradorGenerico   generic map (larguraDados => larguraPCROM)
          port map (DIN => SomaUmPC, DOUT => PCROM, ENABLE => '1', CLK => CLK, RST => '0');

			 
somaUm :  entity work.somaConstante  generic map (larguraDados => larguraPCROM, constante => 1)
          port map( entrada => PCROM, saida => SomaUmPC);
			 
-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => chavesX_ULA_B, saida => Saida_ULA, seletor => Operacao_ULA);

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => 8, addrWidth => 4)
          port map (Endereco => Estado_Atual, Dado(7 downto 4) => Sinais_Controle, Dado(3 downto 0) => Proximo_Estado);

			 
Decoder : entity work.Decoder
          port map (OPCODE => Instrucao(larguraROM-1 downto 9), OUTPUT => Sinais_Controle);
			
			
RAM : entity work.memoriaRAM   generic map (dataWidth => larguraRAM, addrWidth => larguraAddRAM)
          port map (addr => Instrucao(7 downto 0), we => Sinais_Controle(0), re => Sinais_Controle(1), habilita => Instrucao(8), dado_in => REG1_ULA_A, dado_out => RAM_MUX, clk => CLK);


			 
selMUX <= Sinais_Controle(5);
Habilita_A <= Sinais_Controle(4);
Operacao_ULA <= Sinais_Controle(3 downto 2);

-- A ligacao dos LEDs:

SEL_MUX <= SelMUX;
HABILITA <= Habilita_A;
OPERACAO <= Operacao_ULA;
SAIDA_MUX <= MUX_ULA;
LEDR (7 downto 0) <= REG1_ULA_A;

end architecture;