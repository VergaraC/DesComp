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
-- Address[0] => unidade segundo
-- Address[1] => dezena segundo
-- Address[2] => unidade minuto
-- Address[3] => dezena minuto
-- Address[4] => unidade hora
-- Address[5] => dezena hora
-- Address[6] => Flag Contador
-- Address[10] => 0 ----------------------
-- Address[11] => 1 --------------------
-- Address[12] => 9 ---------------------
-- Address[13] => 10 -------------------------------
-- Address[14] => 6 -------------------------------
-- Address[15] => 4 -------------------------------
-- Address[16] => 2 -------------------------------
-- Address[20] => unidade segundo limite
-- Address[21] => dezena segundo limite
-- Address[22] => unidade minuto limite
-- Address[23] => dezena minuto limite
-- Address[24] => unidade hora limite
-- Address[25] => dezena hora limite
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
 tmp(0) := LDI & R2 & '0' & x"00"; --Carrega 0

-- Escrevendo 0 nos SevenSegs
tmp(1) := STA & R2 & '1' & x"20";
tmp(2) := STA & R2 & '1' & x"21";
tmp(3) := STA & R2 & '1' & x"22";
tmp(4) := STA & R2 & '1' & x"23";
tmp(5) := STA & R2 & '1' & x"24";
tmp(6) := STA & R2 & '1' & x"25";

-- Apagando todos os LEDs
tmp(7) := STA & R2 & '1' & x"00";
tmp(8) := STA & R2 & '1' & x"01";
tmp(9) := STA & R2 & '1' & x"02";

-- Colocando 0 nas RAMs que armazenam os valores
tmp(10) := STA & R2 & '0' & x"00";
tmp(11) := STA & R2 & '0' & x"01";
tmp(12) := STA & R2 & '0' & x"02";
tmp(13) := STA & R2 & '0' & x"03";
tmp(14) := STA & R2 & '0' & x"04";
tmp(15) := STA & R2 & '0' & x"05";  

-- Zerando Flag Contador
tmp(16) := STA & R2 & '0' & x"06";

-- Armazenando Variaveis Fixas a serrem utilizadas no Projeto
tmp(17) := LDI & R0 & '0' & x"00";
tmp(18) := STA & R0 & '0' & x"0A"; -- 0 
tmp(19) := LDI & R0 & '0' & x"01";
tmp(20) := STA & R0 & '0' & x"0B"; -- 1
tmp(21) := LDI & R0 & '0' & x"09";
tmp(22) := STA & R0 & '0' & x"0C"; -- 9
tmp(23) := LDI & R0 & '0' & x"0A"; 
tmp(24) := STA & R0 & '0' & x"0D"; -- 10
tmp(25) := LDI & R0 & '0' & x"06"; 
tmp(26) := STA & R0 & '0' & x"0E"; -- 6
tmp(27) := LDI & R0 & '0' & x"04"; 
tmp(28) := STA & R0 & '0' & x"0F"; -- 4
tmp(29) := LDI & R0 & '0' & x"02"; 
tmp(30) := STA & R0 & '0' & x"10"; -- 2

-- setando o limite inicial
tmp(31) := LDI & R0 & '0' & x"09";
tmp(32) := STA & R0 & '0' & x"14"; -- seta limite unidade segundo como 9
tmp(33) := STA & R0 & '0' & x"16"; -- seta limite unidade minuto como 9

tmp(34) := LDI & R0 & '0' & x"06";
tmp(35) := STA & R0 & '0' & x"15"; -- seta limite dezena segundo como 6
tmp(36) := STA & R0 & '0' & x"17"; -- seta limite dezena minuto como 6

tmp(37) := LDI & R0 & '0' & x"04";
tmp(38) := STA & R0 & '0' & x"18"; -- seta limite unidade hora como 4

tmp(39) := LDI & R0 & '0' & x"02";
tmp(40) := STA & R0 & '0' & x"19"; -- seta limite dezena hora como 2

-- SetUp Feito
-- Loop Keys 
-- Checando Flag Contador (6 na RAM) 

tmp(41) := NOP & R0 & '0' & x"00";
tmp(42) := LDA & R0 & '0' & x"06"; -- Pega o Valor da Flag
tmp(43) := CEQ & R0 & '0' & x"0B"; -- Compara com 1
tmp(44) := JEQ & R0 & '0' & x"31"; -- Efetua o Jump (Address[49]) quando for igual a 1

 --Checando Key 0
tmp(45) := LDA & R0 & '1' & x"60"; -- Pega o Valor de key 0
tmp(46) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(47) := JEQ & R0 & '0' & x"31"; -- Efetua o Jump (Address[49]) quando for igual a 0
tmp(48) := JSR & R0 & '0' & x"3C"; -- Efetua o Jump (Address[60])

--Checando Key 1
tmp(49) := LDA & R0 & '1' & x"61"; -- Pega o Valor da key 1
tmp(50) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(51) := JEQ & R0 & '0' & x"36"; -- Efetua o Jump (Address[54]) quando for igual a 0
tmp(52) := JSR & R0 & '0' & x"A8"; -- Efetua o Jump (Address[168])
tmp(53) := NOP & R0 & '0' & x"00"; 

--Checando Key FPGA-Reset
tmp(54) := LDA & R0 & '1' & x"64"; -- Observa o valor do FPGA-Reset
tmp(55) := CEQ & R0 & '0' & x"0B"; -- Compara com 1    
tmp(56) := JEQ & R0 & '0' & x"3A"; -- Efetua o Jump (Address[58]) quando for igual a 1
tmp(57) := JSR & R0 & '0' & x"74"; -- Efetua o Jump (Address[116])
tmp(58) := JSR & R0 & '0' & x"7F"; -- Efetua o Jump (Address[127])
tmp(59) := JMP & R0 & '0' & x"29"; -- Efetua o Jump (Address[41])

-- Loop Key 0 
tmp(60) := STA & R0 & '1' & x"FF"; -- Zerar KEY0    

-- Incremento unidade segundo
tmp(61) := LDA & R0 & '0' & x"00"; -- Pega o Valor unidade segundo
tmp(62) := SOMA & R0 & '0' & x"0B"; -- Soma 1 
tmp(63) := STA & R0 & '0' & x"00"; -- Guarda no mesmo lugar
tmp(64) := CEQ & R0 & '0' & x"0D"; -- Compara com 10
tmp(65) := JEQ & R0 & '0' & x"43"; -- Efetua o Jump (Address[67])
tmp(66) := RET & R0 & '0' & x"00"; -- Return    

-- Incremento dezena segundo
tmp(67) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(68) := STA & R0 & '0' & x"00"; -- Zera 	 
tmp(69) := LDA & R0 & '0' & x"01"; -- Pega o Valor dezena segundo
tmp(70) := SOMA & R0 & '0' & x"0B"; -- Soma 1 
tmp(71) := STA & R0 & '0' & x"01"; -- Guarda no mesmo lugar
tmp(72) := CEQ & R0 & '0' & x"0E"; -- Compara com 6
tmp(73) := JEQ & R0 & '0' & x"4B"; -- Efetua o Jump (Address[75])
tmp(74) := RET & R0 & '0' & x"00"; -- Return

-- Incremento unidade minuto
tmp(75) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(76) := STA & R0 & '0' & x"01"; -- Zera 	 
tmp(77) := LDA & R0 & '0' & x"02"; -- Pega o Valor unidade minuto
tmp(78) := SOMA & R0 & '0' & x"0B"; -- Soma 1 
tmp(79) := STA & R0 & '0' & x"02"; -- Guarda no mesmo lugar
tmp(80) := CEQ & R0 & '0' & x"0D"; -- Compara com 10
tmp(81) := JEQ & R0 & '0' & x"53"; -- Efetua o Jump (Address[83]) quando for igual a 10
tmp(82) := RET & R0 & '0' & x"00"; -- Return    

-- Incremento dezena minuto
tmp(83) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(84) := STA & R0 & '0' & x"02"; -- Zera  
tmp(85) := LDA & R0 & '0' & x"03"; -- Pega o Valor dezena minuto
tmp(86) := SOMA & R0 & '0' & x"0B"; -- Soma 1 
tmp(87) := STA & R0 & '0' & x"03"; -- Guarda no mesmo lugar
tmp(88) := CEQ & R0 & '0' & x"0E"; -- Compara com 6
tmp(89) := JEQ & R0 & '0' & x"5B"; -- Efetua o Jump (Address[91]) quando for igual a 10
tmp(90) := RET & R0 & '0' & x"00"; -- Return

-- Incremento unidade hora
tmp(91) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(92) := STA & R0 & '0' & x"03"; -- Zera
tmp(93) := LDA & R0 & '0' & x"04"; -- Pega o Valor unidade hora
tmp(94) := SOMA & R0 & '0' & x"0B"; -- Soma 1
tmp(95) := STA & R0 & '0' & x"04"; -- Guarda no mesmo lugar
tmp(96) := CEQ & R0 & '0' & x"0F"; -- Compara com 4
tmp(97) := JEQ & R0 & '0' & x"6C"; -- Efetua o Jump (Address[108]) quando for igual a 4
tmp(98) := LDA & R0 & '0' & x"04"; -- Pega Address[4]
tmp(99) := CEQ & R0 & '0' & x"0D"; -- Compara com 10
tmp(100) := JEQ & R0 & '0' & x"66"; -- Efetua o Jump (Address[102]) quando for igual a 10
tmp(101) := RET & R0 & '0' & x"00"; -- Return

-- Incremento dezena hora
tmp(102) := LDA & R0 & '0' & x"0A"; -- Pega Address[10]
tmp(103) := STA & R0 & '0' & x"04"; -- Zera 	 
tmp(104) := LDA & R0 & '0' & x"05"; -- Pega o Valor dezena hora
tmp(105) := SOMA & R0 & '0' & x"0B"; -- Soma 1
tmp(106) := STA & R0 & '0' & x"05"; -- Guarda no mesmo lugar
tmp(107) := RET & R0 & '0' & x"00"; -- Return

tmp(108) := LDA & R0 & '0' & x"05"; -- Pega o Valor dezena hora
tmp(109) := CEQ & R0 & '0' & x"10"; -- Compara com 2
tmp(110) := JEQ & R0 & '0' & x"70"; -- Efetua o Jump (Address[112]) quando for igual a 2
tmp(111) := RET & R0 & '0' & x"00"; -- Return    

-- Liga LEDs
tmp(112) := LDA & R0 & '0' & x"0B"; -- Pega Address[11]
tmp(113) := STA & R0 & '0' & x"06"; -- Ativa Flag Contador
tmp(114) := STA & R0 & '1' & x"02"; -- Ativa LED9 	 
tmp(115) := RET & R0 & '0' & x"00"; -- Return

-- Reset FPGA
tmp(116) := LDA & R1 & '0' & x"0A"; -- Pega Address[116]
tmp(117) := STA & R1 & '0' & x"00"; -- Armazena 0 no unidade segundo
tmp(118) := STA & R1 & '0' & x"01"; -- Armazena 0 no dezena segundo
tmp(119) := STA & R1 & '0' & x"02"; -- Armazena 0 no unidade minuto
tmp(120) := STA & R1 & '0' & x"03"; -- Armazena 0 no dezena minuto
tmp(121) := STA & R1 & '0' & x"04"; -- Armazena 0 no unidade hora
tmp(122) := STA & R1 & '0' & x"05"; -- Armazena 0 no dezena hora 
tmp(123) := STA & R1 & '0' & x"06"; -- Ativa Flag Contador
tmp(124) := STA & R1 & '1' & x"01"; -- Ativa LED8
tmp(125) := STA & R1 & '1' & x"02"; -- Ativa LED9
tmp(126) := RET & R1 & '0' & x"00"; -- Return

-- atualiza Valores
tmp(127) := LDA & R2 & '0' & x"00"; -- Pega o Valor unidade segundo
tmp(128) := STA & R2 & '1' & x"20"; -- Salva no HEX0   
tmp(129) := LDA & R2 & '0' & x"01"; -- Pega o Valor dezena segundo
tmp(130) := STA & R2 & '1' & x"21"; -- Salva no HEX1
tmp(131) := LDA & R2 & '0' & x"02"; -- Pega o Valor unidade minuto
tmp(132) := STA & R2 & '1' & x"22"; -- Salva no HEX2   
tmp(133) := LDA & R2 & '0' & x"03"; -- Pega o Valor dezena minuto
tmp(134) := STA & R2 & '1' & x"23"; -- Salva no HEX3   
tmp(135) := LDA & R2 & '0' & x"04"; -- Pega o Valor unidade hora
tmp(136) := STA & R2 & '1' & x"24"; -- Salva no HEX4
tmp(137) := LDA & R2 & '0' & x"05"; -- Pega o Valor dezena hora
tmp(138) := STA & R2 & '1' & x"25"; -- Salva no HEX5    
tmp(139) := RET & R0 & '0' & x"00"; -- Return


-- Definindo limites
--unidade segundo
tmp(168) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(169) := LDI & R3 & '0' & x"01"; -- Pega 1 
tmp(170) := STA & R3 & '1' & x"00"; -- Ativa o LED 0   	 
tmp(171) := LDA & R0 & '1' & x"61"; -- Pega Key 1
tmp(172) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(173) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(174) := JEQ & R0 & '0' & x"A9"; -- Efetua o Jump (Address[169]) quando for igual a 0
tmp(175) := STA & R1 & '0' & x"00"; -- Guarda limite unidade segundo    

-- dezena segundo
tmp(176) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(177) := LDI & R3 & '0' & x"03"; -- Pega 3 
tmp(178) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-1)
tmp(179) := LDA & R0 & '1' & x"61"; -- Pega a Key 1
tmp(180) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(181) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(182) := JEQ & R0 & '0' & x"B1"; -- Efetua o Jump (Address[177]) quando for igual a 0
tmp(183) := STA & R1 & '0' & x"01"; -- Guarda limite dezena segundo 

-- unidade minuto
tmp(184) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(185) := LDI & R3 & '0' & x"07"; -- Pega 7 
tmp(186) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-2)
tmp(187) := LDA & R0 & '1' & x"61"; -- Pega a KEY1
tmp(188) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(189) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(190) := JEQ & R0 & '0' & x"B9"; -- Efetua o Jump (Address[185]) quando for igual a 0
tmp(191) := STA & R1 & '0' & x"02"; -- Armazena novo limite para unidade minuto

-- dezena minuto
tmp(192) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(193) := LDI & R3 & '0' & x"0F"; -- Pega 15 
tmp(194) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-3)
tmp(195) := LDA & R0 & '1' & x"61"; -- Pega a KEY1
tmp(196) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(197) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(198) := JEQ & R0 & '0' & x"C1"; -- Efetua o Jump (Address[193]) quando for igual a 0
tmp(199) := STA & R1 & '0' & x"03"; -- Armazena novo limite para dezena minuto

-- unidade hora  
tmp(200) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(201) := LDI & R3 & '0' & x"1F"; -- Pega 31 
tmp(202) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-4)
tmp(203) := LDA & R0 & '1' & x"61"; -- Pega a KEY1
tmp(204) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(205) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(206) := JEQ & R0 & '0' & x"C9"; -- Efetua o Jump (Address[201]) quando for igual a 0
tmp(207) := STA & R1 & '0' & x"04"; -- Armazena novo limite para unidade hora

-- dezena hora 
tmp(208) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(209) := LDI & R3 & '0' & x"3F"; -- Pega 63 
tmp(210) := STA & R3 & '1' & x"00"; -- Ativa o LEDs (0-5)
tmp(211) := LDA & R0 & '1' & x"61"; -- Pega a KEY1
tmp(212) := CEQ & R0 & '0' & x"0A"; -- Compara com 0
tmp(213) := LDA & R1 & '1' & x"40"; -- Pega o Switches (0-7)
tmp(214) := JEQ & R0 & '0' & x"D1"; -- Efetua o Jump (Address[209]) quando for igual a 0
tmp(215) := STA & R1 & '0' & x"05"; -- Armazena novo limite para dezena hora


tmp(216) := STA & R0 & '1' & x"FE"; -- Zera Key 1
tmp(217) := LDA & R0 & '0' & x"0A"; -- Carrega Address[10]
tmp(218) := STA & R0 & '1' & x"00"; -- Desliga os LEDs
tmp(219) := RET & R0 & '0' & x"00"; -- Return

return tmp;
end initMemory;

signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture; 