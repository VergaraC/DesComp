library ieee;
use ieee.std_logic_1164.all;

entity CPU is
  -- Total de bits das entradas e saidas
  generic ( 
		  larguraDados : natural := 8;
		  larguraROM: natural := 13;
		  larguraAddROM: natural := 9;
		  larguraPCROM: natural := 9;
		  larguraRAM: natural := 8;
		  larguraAddRAM: natural := 8
        --simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 RESET : in std_logic;
	 Rd : out std_logic;
	 Wr : out std_logic;
	 
	 Data_IN : in std_logic_vector(7 downto 0);
	 Data_OUT : out std_logic_vector(7 downto 0);
	 Instruction_IN : in std_logic_vector(12 downto 0);
	 ROM_Address : out std_logic_vector(8 downto 0);
	 DATA_Address : out std_logic_vector(8 downto 0);
	 
    KEY: in std_logic_vector(3 downto 0);
    --LEDR  : out std_logic_vector(9 downto 0);
	 --ENDERECO : out std_logic_vector(8 downto 0)
	 
	 ENTRADAA_ULA: out std_logic_vector(7 downto 0);
	 ENTRADAB_ULA: out std_logic_vector(7 downto 0);
	 OUT_ULA: out std_logic_vector(7 downto 0);
	 SELETOR_ULA: out std_logic_vector(1 downto 0)

	 
  );
end entity;


architecture arquitetura of CPU is

  signal MUX_ULA : std_logic_vector(larguraDados-1 downto 0);
  signal BANCO_ULA_A : std_logic_vector (larguraDados-1 downto 0);
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
  
  signal ROM_OUT : std_logic_vector (8 downto 0);
 
begin

-- Instanciando os componentes:

CLK <= CLOCK_50;


-- O port map completo do MUX.
MUX2x1 :  entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
        port map( entradaA_MUX => Data_IN,
                 entradaB_MUX =>  Instruction_IN(larguraDados-1 downto 0),
                 seletor_MUX => Sinais_Controle(6),
                 saida_MUX => MUX_ULA);
					  				  
-- Mux aula5 ainda n completo				
MUX4x1 :  entity work.muxGenerico4x1  generic map (larguraDados => 9)
        port map( entradaA_MUX => SomaUmPC,
                 entradaB_MUX =>  Instruction_IN(8 downto 0),
					  entradaC_MUX =>  REG_RET_Output,
					  entradaD_MUX =>  "000000000",
                 seletor_MUX => SelMux4X1,
                 saida_MUX => OutputMux4X1);
					  			  
-- O port map completo do Acumulador.
REG1 : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => SAIDA_ULA, DOUT => BANCO_ULA_A, ENABLE => Sinais_Controle(5), CLK => CLK, RST => Reset_A);

Banco_Registradores : entity work.bancoRegistradores   generic map (larguraDados => larguraDados, larguraEndBancoRegs => 2)
		 port map ( 
			  clk => CLK,
			  endereco => Instruction_IN(10 downto 9),
			  dadoEscrita => SAIDA_ULA,
			  habilitaEscrita => Sinais_Controle(5),
			  saida  => BANCO_ULA_A
		 );
		 
FLAG : entity work.Registrador1X1   generic map (larguraDados => larguraDados)
          port map (DIN => ULA_FLAG, DOUT => OutputFlagEQ, ENABLE => Sinais_Controle(2), CLK => CLK, RST => Reset_A);
			 
			 
REG_RET : entity work.registradorGenerico   generic map (larguraDados => 9)
			 port map (DIN => SomaUmPC, DOUT =>REG_RET_Output, ENABLE => Sinais_Controle(11), CLK => CLK, RST => Reset_A);


PC : entity work.registradorGenerico   generic map (larguraDados => larguraPCROM)
          port map (DIN => OutputMux4X1, DOUT => ROM_OUT, ENABLE => '1', CLK => CLK, RST => '0');

			 
somaUm :  entity work.somaConstante  generic map (larguraDados => larguraPCROM, constante => 1)
          port map( entrada => ROM_OUT, saida => SomaUmPC);
			 
-- O port map completo da ULA:
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => BANCO_ULA_A, entradaB => MUX_ULA, saida => Saida_ULA, saida_FLAG => ULA_FLAG , seletor => Sinais_Controle(4 downto 3));

			 
Decoder : entity work.Decoder
          port map (OPCODE => Instruction_IN(12 downto 9), OUTPUT => Sinais_Controle);
			 
			 
LogicaDesvio : entity work.LogicaDesvio
          port map (JMP => Sinais_Controle(10), RET => Sinais_Controle(9), JSR => Sinais_Controle(8), JEQ => Sinais_Controle(7), FLAG => OutputFlagEQ  , output => SelMux4X1);
			 --- Sel,RRET,JSR,JEQ, flag
-- A ligacao dos LEDs:


Rd <= Sinais_Controle(1);
Wr <= Sinais_Controle(0);
Data_OUT <= BANCO_ULA_A;
Data_Address <= Instruction_IN(8 downto 0);
ROM_Address <= ROM_OUT;

ENTRADAA_ULA <= BANCO_ULA_A;
ENTRADAB_ULA <= MUX_ULA;
OUT_ULA <= Saida_ULA;
SELETOR_ULA <= Sinais_Controle(4 downto 3);

end architecture;