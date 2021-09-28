library ieee;
use ieee.std_logic_1164.all;

entity Aula8 is
  -- Total de bits das entradas e saidas
  generic ( 
		  larguraDados : natural := 8;
		  larguraROM: natural := 13;
		  larguraAddROM: natural := 9;
		  larguraPCROM: natural := 9;
		  larguraRAM: natural := 8;
		  larguraAddRAM: natural := 6;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    LEDR  : out std_logic_vector(9 downto 0); 
	 ROM_Saida   : out std_logic_vector(12 downto 0); 
	 RAM_Saida  : out std_logic_vector(7 downto 0);
	 Address      : out std_logic_vector(7 downto 0)
	 
  );
end entity;


architecture arquitetura of Aula8 is

  signal Sinais_Controle : std_logic_vector (11 downto 0);
  signal CLK : std_logic;
  
  signal LED : std_logic_vector (9 downto 0);

  signal ROM_out : std_logic_vector (12 downto 0);
  signal ROM_Address : std_logic_vector(8 downto 0);

  signal Reset_A : std_logic;
  signal RAM_out : std_logic_vector(7 downto 0);
  signal SaidaDecoder1: std_logic_vector(7 downto 0);
  signal SaidaDecoder2: std_logic_vector(7 downto 0);
  
  signal wr : std_logic;
  signal rd : std_logic;

  signal escritaDados: std_logic_vector(7 downto 0);
  signal DataAddress: std_logic_vector(8 downto 0);
  
  signal HabilitaLED: std_logic;
  signal HabilitaLED8: std_logic;  
  signal HabilitaLED9: std_logic;


begin

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate

detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

CPU : entity work.CPU
          port map (Instruction_IN => ROM_out,
			Data_IN => RAM_out,
			Data_Address => DataAddress,
			Data_OUT => escritaDados,
			ROM_Address => ROM_Address,
			CLOCK_50 => CLK,
			KEY => KEY,
			RESET => '0',
			RD => rd,
			WR => wr 
		 );
			 
Decoder1 : entity work.Decoder3X8
          port map (OPCODE => DataAddress(8 downto 6), OUTPUT => SaidaDecoder1);

Decoder2 : entity work.Decoder3X8
          port map (OPCODE => DataAddress(2 downto 0), OUTPUT => SaidaDecoder2);
			
-- O port map completo do Acumulador.

LEDRP : entity work.registradorGenerico   generic map (larguraDados => 8)
		 port map (DIN => escritaDados, DOUT => LED(7 downto 0), ENABLE => HabilitaLED, CLK => CLK, RST => '0');
			 
LEDR8 : entity work.Registrador1X1  generic map (larguraDados => 1)
		 port map (DIN => escritaDados(0), DOUT => LED(8), ENABLE => HabilitaLED8, CLK => CLK, RST => '0');
			 
LEDR9 :	entity work.Registrador1X1  generic map (larguraDados => 1)
		 port map (DIN => escritaDados(0), DOUT => LED(9), ENABLE => HabilitaLED9, CLK => CLK, RST => '0');
			 
ROM : entity work.MemoriaROM   generic map (dataWidth => larguraROM, addrWidth => larguraAddROM)
		 port map (Endereco => ROM_Address , Dado => ROM_out);
		 
RAM : entity work.MemoriaRAM   generic map (dataWidth => larguraRAM, addrWidth => larguraAddRAM)
		 port map (addr => DataAddress(5 downto 0), we => wr, re => rd, habilita => SaidaDecoder1(0), dado_in => escritaDados, dado_out => RAM_out, clk => CLK);

		 
HabilitaLED <= '1' when (SaidaDecoder2(0) and SaidaDecoder1(4) and wr) else '0';
HabilitaLED8 <= '1' when (SaidaDecoder2(1) and SaidaDecoder1(4) and wr) else '0';
HabilitaLED9 <= '1' when (SaidaDecoder2(2) and SaidaDecoder1(4) and wr) else '0';

RAM_Saida <= RAM_out; 
LEDR	  <= LED;
Address <= ROM_Address;
ROM_Saida <= ROM_out;

end architecture;
