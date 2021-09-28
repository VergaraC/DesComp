library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU is
  generic   (
    larguraDados : natural := 8;
	 larguraROM: natural := 13;
	 larguraAddROM: natural := 9;
	 larguraPCROM: natural := 9;
	 larguraRAM: natural := 8;
	 larguraAddRAM: natural := 8;
	 simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
  
    CLOCK_50      : in std_logic;
	 Reset         : in std_logic;
    KEY           : in std_logic_vector(3 downto 0);
	 Instuction_IN : in std_logic_vector(12 downto 0);
	 Data_IN       : in std_logic_vector(7 downto 0);
	 
	 Wr            : out std_logic;
	 Rd            : out std_logic;
	 ROM_Address   : out std_logic_vector(8 downto 0); 
	 Data_Address  : out std_logic_vector(8 downto 0);
	 Data_Out      : out std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of CPU is

  signal MUX_ULA : std_logic_vector(larguraDados-1 downto 0);
  signal REG1_ULA_A : std_logic_vector (larguraDados-1 downto 0);
  signal Saida_ULA : std_logic_vector (larguraDados-1 downto 0);
  signal Sinais_Controle : std_logic_vector (11 downto 0);
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
  signal OutputMux4X1 : std_logic_vector (larguraDados downto 0);
  signal REG_RET_Output : std_logic_vector (larguraDados downto 0);

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
MUX1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( 
			  entradaA_MUX => Data_IN,
			  entradaB_MUX =>  Instruction_IN(7 downto 0),
			  seletor_MUX => SelMUX,
			  saida_MUX => MUX_ULA
		  );

MUX4x2_PC :  entity work.muxGenerico4x2 generic map (larguraDados => 9)
        port map( 
			  entradaA_MUX => SomaUm_MUX_Desvio,
			  entradaB_MUX =>  Instruction_IN(8 downto 0),
			  entradaC_MUX => REG_END_MUX,
			  entradaD_MUX =>  "000000000",
			  seletor_MUX => SelMux_MUXROM,
			  saida_MUX => MUX_Desvio_PC
			);
			
Decoder : entity work.Decoder
          port map (OPCODE => Instruction_IN(12 downto 9), OUTPUT => Sinais_Controle);
			
-- O port map completo do Acumulador.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- O botao 3 faz o Reset da MEF:
PC : entity work.registradorGenerico   generic map (larguraDados => larguraPC_ROM)
          port map (DIN => MUX_Desvio_PC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');
			 
somaUm :  entity work.somaConstante  generic map (larguraDados => larguraPC_ROM, constante => 1)
        port map( entrada => PC_ROM, saida => SomaUm_MUX_Desvio);
			 
-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => REG1_ULA_A, entradaB => MUX_ULA, saida => Saida_ULA, seletor => Operacao_ULA, flagIgual => ULA_FLAG);		 

FLAG_IGUAL : entity work.flagComparacao   generic map (larguraDados => larguraFLAG_IGUAL)
          port map (DIN => ULA_FLAG, DOUT => saidaFLAG_LogicaDesvio, ENABLE => Habilita_Flag_Igual, CLK => CLK, RST => '0');
			 
END_RET : entity work.enderecoRetorno   generic map (larguraDados => 9)
          port map (DIN => SomaUm_MUX_Desvio, DOUT => REG_END_MUX, ENABLE => Habilita_RET, CLK => CLK, RST => '0');

LOGICA_DESVIO : entity work.logicaDesvio   generic map (larguraDados => larguraFLAG_IGUAL)
          port map (SelMUX_JMP_PC => SelMux_JMP_PC, RET => ret, JSR => jsr, JEQ => jeq, FLAG_COMP => saidaFLAG_LogicaDesvio, SelMUX_ROM => SelMux_MUXROM);
			 

Habilita_RET <= Sinais_Controle(11);
SelMux_JMP_PC <= Sinais_Controle(10);
ret <= Sinais_Controle(9);
jsr <= Sinais_Controle(8);
jeq <= Sinais_Controle(7);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
Habilita_Flag_Igual <= Sinais_Controle(2);

RD <= Sinais_Controle(1);
WR <= Sinais_Controle(0);			 
Data_Address <= Instruction_IN(8 downto 0);
Data_OUT <= REG1_ULA_A;
ROM_Address <= PC_ROM;

end architecture;