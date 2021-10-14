library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 4 
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  constant NOP : std_logic_vector(3 downto 0) := "0000";
  constant LDA : std_logic_vector(3 downto 0) := "0001";
  constant SOMA : std_logic_vector(3 downto 0) := "0010";
  constant SUB : std_logic_vector(3 downto 0) := "0011";
  constant LDI : std_logic_vector(3 downto 0) := "0100";
  constant STA : std_logic_vector(3 downto 0) := "0101"; 
  constant CEQ : std_logic_vector(3 downto 0) := "1000"; 
  constant RET : std_logic_vector(3 downto 0) := "1010";
  constant JSR : std_logic_vector(3 downto 0) := "1001"; 
  constant JEQ : std_logic_vector(3 downto 0) := "0111";
  constant JMP : std_logic_vector(3 downto 0) := "0110"; 
  
  constant R0 : std_logic_vector(1 downto 0) := "00"; 
  constant R1 : std_logic_vector(1 downto 0) := "01"; 
  constant R2 : std_logic_vector(1 downto 0) := "10"; 
  constant R3 : std_logic_vector(1 downto 0) := "11"; 

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
-- Address[0] => 1x
-- Address[1] => 10x
-- Address[2] => 100x
-- Address[3] => 1000x
-- Address[4] => 10000x
-- Address[5] => 100000x
-- Address[6] => Flag Contador
-- Address[10] => 0 ----------------------
-- Address[11] => 1 --------------------
-- Address[12] => 9 ---------------------
-- Address[13] => 10 -------------------------------
-- Address[20] => 1x limite
-- Address[21] => 10x limite
-- Address[22] => 100x limite
-- Address[23] => 1000x limite
-- Address[24] => 10000x limite
-- Address[25] => 100000x limite
-- Address[256] LEDs 0-7 
-- Address[257] LED 8 ascende se passou do limite
-- Address[258] LED 9 ascende quando se está setando o limite
-- Address[288] SevenSeg 0
-- Address[289] SevenSeg 1
-- Address[290] SevenSeg 2
-- Address[291] SevenSeg 3
-- Address[292] SevenSeg 4
-- Address[293] SevenSeg 5
------------------------------------------

 --Preparando os componentes
 tmp(0) := LDI & R0 & '0' & x"00"; --Carrega 0

-- Escrevendo 0 nos SevenSegs
tmp(1) := STA & R0 & '1' & x"20";
tmp(2) := STA & R0  & '1' & x"21";
tmp(3) := STA & R0 & '1' & x"22";
tmp(4) := STA & R0 & '1' & x"23";
tmp(5) := STA & R0 & '1' & x"24";
tmp(6) := STA & R0 & '1' & x"25";

-- Apagando todos os LEDs
tmp(7) := STA & R0 & '1' & x"00";
tmp(8) := STA & R0 & '1' & x"01";
tmp(9) := STA & R0 & '1' & x"02";

-- Colocando 0 nas RAMs que armazenam os valores
tmp(10) := STA & R0 & '0' & x"00";
tmp(11) := STA & R0 & '0' & x"01";
tmp(12) := STA & R0 & '0' & x"02";
tmp(13) := STA & R0 & '0' & x"03";
tmp(14) := STA & R0 & '0' & x"04";
tmp(15) := STA & R0 & '0' & x"05"; 

-- Zerando Flag Contador
tmp(16) := STA & R0 & '0' & x"06";

-- Armazenando Variaveis Fixas a serrem utilizadas no Projeto
tmp(17) := LDI & R0 & '0' & x"00";
tmp(18) := STA & R0 & '0' & x"0A"; -- 0 
tmp(19) := LDI & R0 & '0' & x"01";
tmp(20) := STA & R0 & '0' & x"0B"; -- 1
tmp(21) := LDI & R0 & '0' & x"09";
tmp(22) := STA & R0 & '0' & x"0C"; -- 9
tmp(23) := LDI & R0 & '0' & x"0A"; 
tmp(24) := STA & R0 & '0' & x"0D"; -- 10

-- setando o limite inicial
tmp(25) := STA & R0 & '0' & x"14";
tmp(26) := STA & R0 & '0' & x"15";
tmp(27) := STA & R0 & '0' & x"16";
tmp(28) := STA & R0 & '0' & x"17";
tmp(29) := STA & R0 & '0' & x"18";
tmp(30) := STA & R0 & '0' & x"19";
    
-- SetUp Feito
-- Loop Keys 
-- Checando Flag Contador (6 na RAM)
tmp(31) := NOP & R0 & '0' & x"00"; 
tmp(32) := LDA & R0 & '0' & x"06"; -- Pega o Valor da Flag
tmp(33) := CEQ & R0 & '0' & x"0B"; -- Compara com 1
tmp(34) := JEQ & R0 & '0' & x"27"; -- Efetua o Jump (Address[39]) quando for igual a 1

 --Checando Key 0
tmp(35) := LDA & R0 & '1' & x"60"; -- Pega o Valor de key 0
tmp(36) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(37) := JEQ & R0 & '0' & x"27"; -- Efetua o Jump (Address[39]) quando for igual a 0
tmp(38) := JSR & R0 & '0' & x"33"; -- Efetua o Jump (Address[51])

--Checando Key 1
tmp(39) := LDA & R0 & '1' & x"61"; -- Pega o Valor da key 1
tmp(40) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(41) := JEQ & R0 & '0' & x"2C"; -- Efetua o Jump (Address[44]) quando for igual a 0
tmp(42) := JSR & R0 & '0' & x"9A"; -- Efetua o Jump (Address[154])
tmp(43) := NOP & R0 & '0' & x"00"; 
tmp(44) := JSR & R0 & '0' & x"7E"; -- Efetua o Jump (Address[126])

--Checando Key FPGA-Reset
tmp(45) := LDA & R0 & '1' & x"64"; -- Observa o valor do FPGA-Reset
tmp(46) := CEQ & R0 & '0' & x"0B"; -- Compara com 1    
tmp(47) := JEQ & R0 & '0' & x"31"; -- Efetua o Jump (Address[49]) quando for igual a 1
tmp(48) := JSR & R0 & '0' & x"66"; -- Efetua o Jump (Address[102])
tmp(49) := JSR & R0 & '0' & x"71"; -- Efetua o Jump (Address[113])
tmp(50) := JMP & R0 & '0' & x"1E"; -- Efetua o Jump (Address[31])

-- Loop Key 0 
tmp(51) := STA & R0 & '1' & x"FF"; -- Zerar KEY0    

-- Incremento 1X
tmp(52) := LDA & R0 & '0' & x"00"; -- Pega o Valor 1X
tmp(53) := SOMA & R0 & '0' & x"0B"; -- Soma 1 
tmp(54) := STA & R0 & '0' & x"00"; -- Guarda no mesmo lugar
tmp(55) := CEQ & R0 & '0' & x"0D"; -- Compara com 10
tmp(56) := JEQ & R0 & '0' & x"3A"; -- Efetua o Jump (Address[58])
tmp(57) := RET & R0 & '0' & x"00"; -- Return    
    
-- Incremento 10X
tmp(58) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(59) := STA & R0 & '0' & x"00"; -- Zera 	 
tmp(60) := LDA & R0 & '0' & x"01"; -- Pega o Valor 10X
tmp(61) := SOMA & R0 & '0' & x"0B"; -- Soma 1 
tmp(62) := STA & R0 & '0' & x"01"; -- Guarda no mesmo lugar
tmp(63) := CEQ & R0 & '0' & x"0D"; -- Compara com 10
tmp(64) := JEQ & R0 & '0' & x"42"; -- Efetua o Jump (Address[66])
tmp(65) := RET & R0 & '0' & x"00"; -- Return
        
-- Incremento 100X
tmp(66) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(67) := STA & R0 & '0' & x"00"; -- Zera 	 
tmp(68) := LDA & R0 & '0' & x"02"; -- Pega o Valor 100X
tmp(69) := SOMA & R0 & '0' & x"0B"; -- Soma 1 
tmp(70) := STA & R0 & '0' & x"02"; -- Guarda no mesmo lugar
tmp(71) := CEQ & R0 & '0' & x"0D"; -- Compara com 10
tmp(72) := JEQ & R0 & '0' & x"4A"; -- Efetua o Jump (Address[74]) quando for igual a 10
tmp(73) := RET & R0 & '0' & x"00"; -- Return    
  
-- Incremento 1000X
tmp(74) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(75) := STA & R0 & '0' & x"00"; -- Zera  
tmp(76) := LDA & R0 & '0' & x"03"; -- Pega o Valor 1000X
tmp(77) := SOMA & R0 & '0' & x"0B"; -- Soma 1 
tmp(78) := STA & R0 & '0' & x"03"; -- Guarda no mesmo lugar
tmp(79) := CEQ & R0 & '0' & x"0D"; -- Compara com 10
tmp(80) := JEQ & R0 & '0' & x"52"; -- Efetua o Jump (Address[82]) quando for igual a 10
tmp(81) := RET & R0 & '0' & x"00"; -- Return
    
-- Incremento 10000X
tmp(82) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(83) := STA & R0 & '0' & x"00"; -- Zera   	 
tmp(84) := LDA & R0 & '0' & x"04"; -- Pega o Valor 10000X
tmp(85) := SOMA & R0 & '0' & x"0B"; -- Soma 1 
tmp(86) := STA & R0 & '0' & x"04"; -- Guarda no mesmo lugar
tmp(87) := CEQ & R0 & '0' & x"0D"; -- Compara com 10
tmp(88) := JEQ & R0 & '0' & x"5A"; -- Efetua o Jump (Address[90]) quando for igual a 10
tmp(89) := RET & R0 & '0' & x"00"; -- Return    
    
-- Incremento 100000X
tmp(90) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(91) := STA & R0 & '0' & x"00"; -- Zera 	 
tmp(92) := LDA & R0 & '0' & x"05"; -- Pega o Valor 100000X
tmp(93) := SOMA & R0 & '0' & x"0B"; -- Soma 1
tmp(94) := STA & R0 & '0' & x"05"; -- Guarda no mesmo lugar
tmp(95) := CEQ & R0 & '0' & x"0D"; -- Compara com 10
tmp(96) := JEQ & R0 & '0' & x"62"; -- Efetua o Jump (Address[98]) quando for igual a 10
tmp(97) := RET & R0 & '0' & x"00"; -- Return    

-- Liga LEDs
tmp(98) := LDA & R0 & '0' & x"0B"; -- Pega Address[11]
tmp(99) := STA & R0 & '0' & x"06"; -- Ativa Flag Contador
tmp(100) := STA & R0 & '1' & x"02"; -- Ativa LED9 	 
tmp(101) := RET & R0 & '0' & x"00"; -- Return

-- Reset FPGA
tmp(102) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(103) := STA & R0 & '0' & x"00"; -- Armazena 0 no 1X
tmp(104) := STA & R0 & '0' & x"01"; -- Armazena 0 no 10X
tmp(105) := STA & R0 & '0' & x"02"; -- Armazena 0 no 100X
tmp(106) := STA & R0 & '0' & x"03"; -- Armazena 0 no 1000X
tmp(107) := STA & R0 & '0' & x"04"; -- Armazena 0 no 10000X
tmp(108) := STA & R0 & '0' & x"05"; -- Armazena 0 no 100000X    
tmp(109) := STA & R0 & '0' & x"06"; -- Ativa Flag Contador
tmp(110) := STA & R0 & '1' & x"01"; -- Ativa LED8
tmp(111) := STA & R0 & '1' & x"02"; -- Ativa LED9
tmp(112) := RET & R0 & '0' & x"00"; -- Return

-- atualiza Valores
tmp(113) := LDA & R0 & '0' & x"00"; -- Pega o Valor 1X
tmp(114) := STA & R0 & '1' & x"20"; -- Salva no HEX0   
tmp(115) := LDA & R0 & '0' & x"01"; -- Pega o Valor 10X
tmp(116) := STA & R0 & '1' & x"21"; -- Salva no HEX1
tmp(117) := LDA & R0 & '0' & x"02"; -- Pega o Valor 100X
tmp(118) := STA & R0 & '1' & x"22"; -- Salva no HEX2   
tmp(119) := LDA & R0 & '0' & x"03"; -- Pega o Valor 1000X
tmp(120) := STA & R0 & '1' & x"23"; -- Salva no HEX3   
tmp(121) := LDA & R0 & '0' & x"04"; -- Pega o Valor 10000X
tmp(122) := STA & R0 & '1' & x"24"; -- Salva no HEX4
tmp(123) := LDA & R0 & '0' & x"05"; -- Pega o Valor 100000X
tmp(124) := STA & R0 & '1' & x"25"; -- Salva no HEX5    
tmp(125) := RET & R0 & '0' & x"00"; -- Return

--checando limites
tmp(126) := LDA & R0 & '0' & x"14"; -- Carrega limite 1X
tmp(127) := CEQ & R0 & '0' & x"00"; -- Compara 1X e o seu limite
tmp(128) := JEQ & R0 & '0' & x"82"; -- Efetua o Jump (Address[130])
tmp(129) := RET & R0 & '0' & x"00"; -- Return

tmp(130) := LDA & R0 & '0' & x"15"; -- Carrega limite 10X
tmp(131) := CEQ & R0 & '0' & x"01"; -- Compara 10X e o seu limite
tmp(132) := JEQ & R0 & '0' & x"86"; -- Efetua o Jump (Address[134])
tmp(133) := RET & R0 & '0' & x"00"; -- Return

tmp(134) := LDA & R0 & '0' & x"16"; -- Carrega limite 100X
tmp(135) := CEQ & R0 & '0' & x"02"; -- Compara 100X e o seu limite
tmp(136) := JEQ & R0 & '0' & x"8A"; -- Efetua o Jump (Address[138])
tmp(137) := RET & R0 & '0' & x"00"; -- Return

tmp(138) := LDA & R0 & '0' & x"17"; -- Carrega limite 1000X
tmp(139) := CEQ & R0 & '0' & x"03"; -- Compara 1000X e o seu limite
tmp(140) := JEQ & R0 & '0' & x"8E"; -- Efetua o Jump (Address[142])
tmp(141) := RET & R0 & '0' & x"00"; -- Return

tmp(142) := LDA & R0 & '0' & x"18"; -- Carrega limite 10000X
tmp(143) := CEQ & R0 & '0' & x"04"; -- Compara 10000X e o seu limite
tmp(144) := JEQ & R0 & '0' & x"92"; -- Efetua o Jump (Address[146])
tmp(145) := RET & R0 & '0' & x"00"; -- Return 

tmp(146) := LDA & R0 & '0' & x"19"; -- Carrega limite 100000X
tmp(147) := CEQ & R0 & '0' & x"05"; -- Compara 100000X e o seu limite
tmp(148) := JEQ & R0 & '0' & x"96"; -- Efetua o Jump (Address[150])
tmp(149) := RET & R0 & '0' & x"00"; -- Return

tmp(150) := LDA & R0 & '0' & x"0B"; -- Carrega Address[11]
tmp(151) := STA & R0 & '0' & x"06"; -- Ativa Flag Contador
tmp(152) := STA & R0 & '1' & x"01"; -- Ativa o LED 9
tmp(153) := RET & R0 & '0' & x"00"; -- Return    

-- Definindo limites
--1X
tmp(154) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(155) := LDI & R3 & '0' & x"01"; -- Pega 1 
tmp(156) := STA & R3 & '1' & x"00"; -- Ativa o LED 0   	 
tmp(157) := LDA & R0 & '1' & x"61"; -- Pega Key 1
tmp(158) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(159) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(160) := JEQ & R0 & '0' & x"9B"; -- Efetua o Jump (Address[155]) quando for igual a 0
tmp(161) := STA & R1 & '0' & x"14"; -- Guarda limite 1X    

-- 10X
tmp(162) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(163) := LDI & R3 & '0' & x"03"; -- Pega 3 
tmp(164) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-1)
tmp(165) := LDA & R0 & '1' & x"61"; -- Pega a Key 1
tmp(166) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(167) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(168) := JEQ & R0 & '0' & x"A3"; -- Efetua o Jump (Address[163]) quando for igual a 0
tmp(169) := STA & R1 & '0' & x"15"; -- Guarda limite 10X 

-- 100X
tmp(170) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(171) := LDI & R3 & '0' & x"07"; -- Pega 7 
tmp(172) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-2)
tmp(173) := LDA & R0 & '1' & x"61"; -- Pega a KEY1
tmp(174) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(175) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(176) := JEQ & R0 & '0' & x"AB"; -- Efetua o Jump (Address[171]) quando for igual a 0
tmp(177) := STA & R1 & '0' & x"16"; -- Armazena novo limite para 100X
        
-- 1000X
tmp(178) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(179) := LDI & R3 & '0' & x"0F"; -- Pega 15 
tmp(180) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-3)
tmp(181) := LDA & R0 & '1' & x"61"; -- Pega a KEY1
tmp(182) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(183) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(184) := JEQ & R0 & '0' & x"B3"; -- Efetua o Jump (Address[179]) quando for igual a 0
tmp(185) := STA & R1 & '0' & x"17"; -- Armazena novo limite para 1000X
    
-- 10000X  
tmp(186) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(187) := LDI & R3 & '0' & x"1F"; -- Pega 31 
tmp(188) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-4)
tmp(189) := LDA & R0 & '1' & x"61"; -- Pega a KEY1
tmp(190) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(191) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(192) := JEQ & R0 & '0' & x"BB"; -- Efetua o Jump (Address[187]) quando for igual a 0
tmp(193) := STA & R1 & '0' & x"18"; -- Armazena novo limite para 10000X

-- 100000X 
tmp(194) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(195) := LDI & R3 & '0' & x"3F"; -- Pega 63 
tmp(196) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-5)
tmp(197) := LDA & R0 & '1' & x"61"; -- Pega a KEY1
tmp(198) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(199) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(200) := JEQ & R0 & '0' & x"C3"; -- Efetua o Jump (Address[195]) quando for igual a 0
tmp(201) := STA & R1 & '0' & x"19"; -- Armazena novo limite para 100000X


tmp(202) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(203) := LDA & R0 & '0' & x"0A"; -- Carrega Address[10]
tmp(204) := STA & R0 & '1' & x"00"; -- Desliga os LEDs
tmp(205) := RET & R0 & '0' & x"00"; -- Return

return tmp;
end initMemory;

signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;