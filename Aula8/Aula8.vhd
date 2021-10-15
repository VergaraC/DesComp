library ieee;
use ieee.std_logic_1164.all;

entity Aula8 is
  -- Total de bits das entradas e saidas
  generic ( 
		  larguraDados : natural := 8;
		  larguraROM: natural := 15;
		  larguraAddROM: natural := 9;
		  larguraPCROM: natural := 9;
		  larguraRAM: natural := 8;
		  larguraAddRAM: natural := 6;
        simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 
	 SW: in std_logic_vector(9 downto 0);
    KEY: in std_logic_vector(3 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 FPGA_RESET_N: in std_logic;
	
	 ROM_Saida   : out std_logic_vector(14 downto 0);
	 RAM_Saida  : out std_logic_vector(7 downto 0);
	 A0_A8: out std_logic_vector(8 downto 0);
	 Address      : out std_logic_vector(8 downto 0);
	 
	 HEX0 : out std_logic_vector(6 downto 0);
	 HEX1 : out std_logic_vector(6 downto 0);
	 HEX2 : out std_logic_vector(6 downto 0);
	 HEX3 : out std_logic_vector(6 downto 0);
	 HEX4 : out std_logic_vector(6 downto 0);
	 HEX5 : out std_logic_vector(6 downto 0)
	 
--	 --SAIDAS P/ TESTE
--	 WRTE : out std_logic;
--	 HABILITAREGHEX: out std_logic;
--	 DECODEREND: out std_logic_vector(7 downto 0);
--	 DECODERBLOC: out std_logic_vector(7 downto 0);
--	 SAIDA_DEBOUNCE: out std_logic;
--	 BarramentoDadosOUT: out std_logic_vector(7 downto 0);
--	 BarramentoDadosIN: out std_logic_vector(7 downto 0);
--	 RESET_KEY: out std_logic;
--	 
--	 --TESTE CPU
--	 ENTRADAA_ULA: out std_logic_vector(7 downto 0);
--	 ENTRADAB_ULA: out std_logic_vector(7 downto 0);
--	 OUT_ULA: out std_logic_vector(7 downto 0);
--	 SELETOR_ULA: out std_logic_vector(1 downto 0)
	 
	 
  );
end entity;


architecture arquitetura of Aula8 is

  signal Sinais_Controle : std_logic_vector (11 downto 0);
  signal CLK : std_logic;
  
  signal LED : std_logic_vector (9 downto 0);

  signal ROM_out : std_logic_vector (14 downto 0);
  signal ROM_Addr : std_logic_vector(8 downto 0);

  signal Reset_A : std_logic;
  signal LeituraDados : std_logic_vector(7 downto 0);
  signal SaidaDecoder1: std_logic_vector(7 downto 0);
  signal SaidaDecoder2: std_logic_vector(7 downto 0);
  
  signal wr : std_logic;
  signal rd : std_logic;

  signal escritaDados: std_logic_vector(7 downto 0);
  signal DataAddress: std_logic_vector(8 downto 0);
  
  signal HabilitaLED: std_logic;
  signal HabilitaLED8: std_logic;  
  signal HabilitaLED9: std_logic;
  
  signal HabilitaKEY0: std_logic;
  signal HabilitaKEY1: std_logic;
  signal HabilitaKEY2: std_logic;
  signal HabilitaKEY3: std_logic;
  signal HabilitaKEY_RST: std_logic;
  
  signal HabilitaSW: std_logic;
  signal HabilitaSW8: std_logic;
  signal HabilitaSW9: std_logic;
  
  signal HabilitaHEX0: std_logic;
  signal HabilitaHEX1: std_logic;  
  signal HabilitaHEX2: std_logic;
  signal HabilitaHEX3: std_logic;
  signal HabilitaHEX4: std_logic;  
  signal HabilitaHEX5: std_logic;
  
  signal REG_OUT_HEX0: std_logic_vector(3 downto 0);
  signal REG_OUT_HEX1: std_logic_vector(3 downto 0);
  signal REG_OUT_HEX2: std_logic_vector(3 downto 0);
  signal REG_OUT_HEX3: std_logic_vector(3 downto 0);
  signal REG_OUT_HEX4: std_logic_vector(3 downto 0);
  signal REG_OUT_HEX5: std_logic_vector(3 downto 0);

  signal Debounce_BufferKEY0: std_logic;
  signal Debounce_BufferKEY1: std_logic;
  signal CLK_KEY1 : std_logic;
  signal CLK_KEY0 : std_logic;
  signal RST_KEY0 : std_logic;
  signal RST_KEY1 : std_logic;
  
  signal incrementoSeg : std_logic;


begin

-- Para simular, fica mais simples tirar o edgeDetector
--gravar:  if simulacao generate
--CLK <= KEY(0);
--else generate

CLK <= CLOCK_50;

divisor : entity work.divisorGenerico
            generic map (divisor => 5)   -- divide por 10.
            port map (clk => CLOCK_50, saida_clk => incrementoSeg);
				
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK_KEY0);
		  
detectorSub1: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(1)), saida => CLK_KEY1);

--end generate;

CPU : entity work.CPU
          port map (
			Instruction_IN => ROM_out,
			Data_IN => LeituraDados,
			Data_Address => DataAddress,
			Data_OUT => escritaDados,
			ROM_Address => ROM_Addr,
			CLOCK_50 => CLK,
			--KEY => KEY,
			RESET => '0',
			Rd => rd,
			Wr => wr
--			--TESTES
--			ENTRADAA_ULA => ENTRADAA_ULA,
--			ENTRADAB_ULA => ENTRADAb_ULA,
--			OUT_ULA => OUT_ULA,
--			SELETOR_ULA => SELETOR_ULA
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
		 port map (Endereco => ROM_Addr , Dado => ROM_out);
		 
RAM : entity work.MemoriaRAM   generic map (dataWidth => larguraRAM, addrWidth => larguraAddRAM)
		 port map (addr => DataAddress(5 downto 0), we => wr, re => rd, habilita => SaidaDecoder1(0), dado_in => escritaDados, dado_out => LeituraDados, clk => CLK);

--0		 
REG_HEX0 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => escritaDados(3 downto 0), DOUT => REG_OUT_HEX0, ENABLE => HabilitaHEX0, CLK => CLK, RST => '0');
		 
CONV_HEX0 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX0,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX0);

--1	
REG_HEX1 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => escritaDados(3 downto 0), DOUT => REG_OUT_HEX1, ENABLE => HabilitaHEX1, CLK => CLK, RST => '0');
	 
CONV_HEX1 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX1,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX1);
					  
--2
REG_HEX2 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => escritaDados(3 downto 0), DOUT => REG_OUT_HEX2, ENABLE => HabilitaHEX2, CLK => CLK, RST => '0');
		 
CONV_HEX2 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX2,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX2);

--3					  
REG_HEX3 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => escritaDados(3 downto 0), DOUT => REG_OUT_HEX3, ENABLE => HabilitaHEX3, CLK => CLK, RST => '0');
		 
CONV_HEX3 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX3,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX3);
					  
--4
REG_HEX4 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => escritaDados(3 downto 0), DOUT => REG_OUT_HEX4, ENABLE => HabilitaHEX4, CLK => CLK, RST => '0');
		 
CONV_HEX4 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX4,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX4);					  

--5
REG_HEX5 : entity work.registradorGenerico   generic map (larguraDados => 4)
		 port map (DIN => escritaDados(3 downto 0), DOUT => REG_OUT_HEX5, ENABLE => HabilitaHEX5, CLK => CLK, RST => '0');
		 
CONV_HEX5 :  entity work.conversorHex7Seg
        port map(dadoHex => REG_OUT_HEX5,
                 apaga =>  '0',
                 negativo => '0',
                 overFlow =>  '0',
                 saida7seg => HEX5);
			
--buffers KEY
					
BUF3STATE_KEY0 :  entity work.buffer_3state_1bit
        port map(entrada => Debounce_BufferKEY0, habilita =>  HabilitaKEY0, saida => LeituraDados);

BUF3STATE_KEY1 :  entity work.buffer_3state_1bit
        port map(entrada => Debounce_BufferKEY1, habilita =>  HabilitaKEY1, saida => LeituraDados);

BUF3STATE_KEY2 :  entity work.buffer_3state_1bit
        port map(entrada => KEY(2), habilita =>  HabilitaKEY2, saida => LeituraDados);

BUF3STATE_KEY3 :  entity work.buffer_3state_1bit
        port map(entrada => KEY(3), habilita =>  HabilitaKEY3, saida => LeituraDados);
		  
BUF3STATE_KEY_RST :  entity work.buffer_3state_1bit
        port map(entrada => FPGA_RESET_N, habilita =>  HabilitaKEY_RST, saida => LeituraDados);

--buffers SW		  
		  
BUF3STATE_SW :  entity work.buffer_3state_8portas
        port map(entrada => SW(7 downto 0), habilita =>  HabilitaSW, saida => LeituraDados);
		  
BUF3STATE_SW8 :  entity work.buffer_3state_1bit
        port map(entrada => SW(8), habilita =>  HabilitaSW8, saida => LeituraDados);
		  
BUF3STATE_SW9 :  entity work.buffer_3state_1bit
        port map(entrada => SW(9), habilita =>  HabilitaSW9, saida => LeituraDados);
		  
--Debounce KEY0

DEBOUNCE_KEY0 : entity work.DebounceMemorizacao
		  port map(entrada => '1', saida => Debounce_BufferKEY0, clk => CLK_KEY0, rst => RST_KEY0);

DEBOUNCE_KEY1 : entity work.DebounceMemorizacao
		  port map(entrada => '1', saida => Debounce_BufferKEY1, clk => CLK_KEY1, rst => RST_KEY1);
		  
RST_KEY0 <= (DataAddress(0) and DataAddress(1) and DataAddress(2) and DataAddress(3) and DataAddress(4) and DataAddress(5) and DataAddress(6) and DataAddress(7) and DataAddress(8));
RST_KEY1 <= (not(DataAddress(0)) and DataAddress(1) and DataAddress(2) and DataAddress(3) and DataAddress(4) and DataAddress(5) and DataAddress(6) and DataAddress(7) and DataAddress(8));

--ANDs de habilita
		  
HabilitaKEY0 <= '1' when (SaidaDecoder2(0) and SaidaDecoder1(5) and rd and DataAddress(5)) else '0';
HabilitaKEY1 <= '1' when (SaidaDecoder2(1) and SaidaDecoder1(5) and rd and DataAddress(5)) else '0';
HabilitaKEY2 <= '1' when (SaidaDecoder2(2) and SaidaDecoder1(5) and rd and DataAddress(5)) else '0';
HabilitaKEY3 <= '1' when (SaidaDecoder2(3) and SaidaDecoder1(5) and rd and DataAddress(5)) else '0';
HabilitaKEY_RST <= '1' when (SaidaDecoder2(4) and SaidaDecoder1(5) and rd and DataAddress(5)) else '0';

HabilitaSW <= '1' when (SaidaDecoder2(0) and SaidaDecoder1(5) and rd and not(DataAddress(5))) else '0';
HabilitaSW8 <= '1' when (SaidaDecoder2(1) and SaidaDecoder1(5) and rd and not(DataAddress(5))) else '0';
HabilitaSW9 <= '1' when (SaidaDecoder2(2) and SaidaDecoder1(5) and rd and not(DataAddress(5))) else '0';

HabilitaLED <= '1' when (SaidaDecoder2(0) and SaidaDecoder1(4) and wr and not(DataAddress(5))) else '0';
HabilitaLED8 <= '1' when (SaidaDecoder2(1) and SaidaDecoder1(4) and wr and not(DataAddress(5))) else '0';
HabilitaLED9 <= '1' when (SaidaDecoder2(2) and SaidaDecoder1(4) and wr and not(DataAddress(5))) else '0';

HabilitaHEX0 <= '1' when (SaidaDecoder2(0) and SaidaDecoder1(4) and wr and DataAddress(5)) else '0';
HabilitaHEX1 <= '1' when (SaidaDecoder2(1) and SaidaDecoder1(4) and wr and DataAddress(5)) else '0';
HabilitaHEX2 <= '1' when (SaidaDecoder2(2) and SaidaDecoder1(4) and wr and DataAddress(5)) else '0';
HabilitaHEX3 <= '1' when (SaidaDecoder2(3) and SaidaDecoder1(4) and wr and DataAddress(5)) else '0';
HabilitaHEX4 <= '1' when (SaidaDecoder2(4) and SaidaDecoder1(4) and wr and DataAddress(5)) else '0';
HabilitaHEX5 <= '1' when (SaidaDecoder2(5) and SaidaDecoder1(4) and wr and DataAddress(5)) else '0';


RAM_Saida <= LeituraDados; 
LEDR	  <= LED;
Address <= ROM_Addr;
ROM_Saida <= ROM_out;
A0_A8 <= DataAddress;
--WRTE <= wr;
--HABILITAREGHEX <= HabilitaKEY0;
--DECODEREND <= SaidaDecoder2;
--DECODERBLOC <= SaidaDecoder1;
--SAIDA_DEBOUNCE <= Debounce_BufferKEY0;
--BarramentoDadosOUT <= escritaDados;
--BarramentoDadosIN <= leituraDados;
--RESET_KEY <= CLK_KEY0;

end architecture;

