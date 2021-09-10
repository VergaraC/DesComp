library ieee;
use ieee.std_logic_1164.all;

entity Aula5 is
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
    LEDR  : out std_logic_vector(9 downto 0)
  );
end entity;


architecture arquitetura of Aula5 is

  signal MUX_ULA : std_logic_vector(larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (5 downto 0);
  signal CLK : std_logic;
  signal SelMUX : std_logic;
  signal Reset_A : std_logic;
  signal Operacao_ULA : std_logic;
  signal Instrucao : std_logic_vector (larguraROM-1 downto 0);
  signal RAM_MUX : std_logic_vector (larguraRAM-1 downto 0);
  signal PCROM : std_logic_vector (larguraAddROM-1 downto 0);
  signal SomaUmPC : std_logic_vector (larguraAddROM-1 downto 0);
  signal ULA_FLAG : std_logic;
  
  
  signal SelMux4X1 : std_logic_vector (1 downto 0);
  signal OutputMux4X1 : std_logic_vector ((larguraDados-1) downto 0);
  signal REG_RET_Output : std_logic_vector (1 downto 0);

  signal OutputFlagEQ : std_logic;
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
MUX2x1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => RAM_MUX,
                 entradaB_MUX =>  Instrucao(larguraDados-1 downto 0),
                 seletor_MUX => Sinais_Controle(5),
                 saida_MUX => MUX_ULA);
					  				  
-- Mux aula5 ainda n completo				
MUX4x1 :  entity work.muxGenerico4x1  generic map (larguraDados => 9)
        port map( entradaA_MUX => SomaUmPC,
                 entradaB_MUX =>  Instrucao(8 downto 0),
					  entradaC_MUX =>  REG_RET_Output,
					  entradaD_MUX =>  "000000000",
                 seletor_MUX => SelMux4X1,
                 saida_MUX => OutputMux4X1);
					  			  
-- O port map completo do Acumulador.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => SAIDA_ULA, DOUT => REG1_ULA_A, ENABLE => Sinais_Controle(4), CLK => CLK, RST => Reset_A);


FLAG : entity work.Registrador1X1   generic map (larguraDados => larguraDados)
          port map (DIN => ULA_FLAG, DOUT => OutputFlagEQ, ENABLE => Sinais_Controle(6), CLK => CLK, RST => Reset_A);
			 
			 
REG_RET : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
			 port map (DIN => SomaUmPC, DOUT =>REG_RET_Output , ENABLE => Sinais_Controle(11), CLK => CLK, RST => Reset_A);


PC : entity work.registradorGenerico   generic map (larguraDados => larguraPCROM)
          port map (DIN => OutputMux4X1, DOUT => PCROM, ENABLE => '1', CLK => CLK, RST => '0');

			 
somaUm :  entity work.somaConstante  generic map (larguraDados => larguraPCROM, constante => 1)
          port map( entrada => PCROM, saida => SomaUmPC);
			 
-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA, saida => Saida_ULA, saida_FLAG => ULA_FLAG , seletor => Sinais_Controle(3 downto 2));

-- Falta acertar o conteudo da ROM (no arquivo memoriaROM.vhd)
ROM1 : entity work.memoriaROM   generic map (dataWidth => larguraROM, addrWidth => larguraAddROM)
          port map (Endereco => PCROM, Dado => Instrucao);

			 
Decoder : entity work.Decoder
          port map (OPCODE => Instrucao(12 downto 9), OUTPUT => Sinais_Controle);
			
			
RAM1 : entity work.memoriaRAM   generic map (dataWidth => larguraRAM, addrWidth => larguraAddRAM)
          port map (addr => Instrucao(7 downto 0), we => Sinais_Controle(0), re => Sinais_Controle(1), habilita => Instrucao(8), dado_in => REG1_ULA_A, dado_out => RAM_MUX, clk => CLK);


LogicaDesvio : entity work.Decoder
          port map (opCode(0) => Sinais_Controle(10), opCode(1) => Sinais_Controle(9), opCode(2) => Sinais_Controle(8), opCode(3) => Sinais_Controle(7), opCode(4) => OutputFlagEQ  , output => SelMux4X1);
			 --- Sel,RRET,JSR,JEQ, flag
-- A ligacao dos LEDs:

LEDR (7 downto 0) <= REG1_ULA_A;

end architecture;