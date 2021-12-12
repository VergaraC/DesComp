library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity UlaTotal is
	generic   (
		larguraDados  : natural := 6
	);
 
    port
    (
      entradaA:               in STD_LOGIC_VECTOR(31 downto 0);
		entradaB:               in STD_LOGIC_VECTOR(31 downto 0);
      saida:                  out STD_LOGIC_VECTOR(31 downto 0);
		FlagZ:                  out std_logic;
		Seletor:                in std_logic_vector(2 downto 0)
    );
end entity;

architecture comportamento of UlaTotal is
	constant zero : std_logic_vector(31 downto 0) := (others => '0');
	
	signal CarryIn         : std_logic;
	signal carry0, carry1, carry2, carry3, carry4, carry5, carry6, carry7, carry8, carry9, carry10, carry11, carry12, carry13, carry14, carry15: std_logic;
	signal carry16, carry17, carry18, carry19, carry20, carry21, carry22, carry23, carry24, carry25, carry26, carry27, carry28, carry29, carry30 : std_logic;
	signal slt             : std_logic;	
	alias SelinverteB      : std_logic is Seletor(2);
	alias seletorS         : std_logic_vector(1 downto 0) is Seletor(1 downto 0);
	signal concatSaida     : std_logic_vector(31 downto 0);
	
begin

	
	ULA0:             entity work.ULA
						port map (  entradaA => entradaA(0),
										entradaB => entradaB(0),
										SelinverteB => SelinverteB,
										less => slt,
										saida => concatSaida(0),
										CarryIn => SelinverteB,
										Carryout => carry0,
										seletor => seletorS);

	ULA1:             entity work.ULA
						port map (  entradaA => entradaA(1),
										entradaB => entradaB(1),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(1),
										CarryIn => carry0,
										Carryout => carry1,
										seletor => seletorS);
											
	ULA2:             entity work.ULA
						port map (  entradaA => entradaA(2),
										entradaB => entradaB(2),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(2),
										CarryIn => carry1,
										Carryout => carry2,
										seletor => seletorS);

	ULA3:             entity work.ULA
						port map (  entradaA => entradaA(3),
										entradaB => entradaB(3),
										SelinverteB => SelinverteB,
										less => '0',										
										saida => concatSaida(3),
										CarryIn => carry2,
										Carryout => carry3,
										seletor => seletorS);
											
	ULA4:             entity work.ULA
						port map (  entradaA => entradaA(4),
										entradaB => entradaB(4),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(4),
										CarryIn => carry3,
										Carryout => carry4,
										seletor => seletorS);

	ULA5:             entity work.ULA
						port map (  entradaA => entradaA(5),
										entradaB => entradaB(5),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(5),
										CarryIn => carry4,
										Carryout => carry5,
										seletor => seletorS);
											
	ULA6:             entity work.ULA
						port map (  entradaA => entradaA(6),
										entradaB => entradaB(6),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(6),
										CarryIn => carry5,
										Carryout => carry6,
										seletor => seletorS);

	ULA7:             entity work.ULA
						port map (  entradaA => entradaA(7),
										entradaB => entradaB(7),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(7),
										CarryIn => carry6,
										Carryout => carry7,
										seletor => seletorS);
										
	ULA8:             entity work.ULA
						port map (  entradaA => entradaA(8),
										entradaB => entradaB(8),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(8),
										CarryIn => carry7,
										Carryout => carry8,
										seletor => seletorS);

	ULA9:             entity work.ULA
						port map (  entradaA => entradaA(9),
										entradaB => entradaB(9),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(9),
										CarryIn => carry8,
										Carryout => carry9,
										seletor => seletorS);
										
	ULA10:             entity work.ULA
						port map (  entradaA => entradaA(10),
										entradaB => entradaB(10),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(10),
										CarryIn => carry9,
										Carryout => carry10,
										seletor => seletorS);

	ULA11:             entity work.ULA
						port map (  entradaA => entradaA(11),
										entradaB => entradaB(11),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(11),
										CarryIn => carry10,
										Carryout => carry11,
										seletor => seletorS);
											
	ULA12:             entity work.ULA
						port map (  entradaA => entradaA(12),
										entradaB => entradaB(12),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(12),
										CarryIn => carry11,
										Carryout => carry12,
										seletor => seletorS);

	ULA13:             entity work.ULA
						port map (  entradaA => entradaA(13),
										entradaB => entradaB(13),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(13),
										CarryIn => carry12,
										Carryout => carry13,
										seletor => seletorS);
											
	ULA14:             entity work.ULA
						port map (  entradaA => entradaA(14),
										entradaB => entradaB(14),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(14),
										CarryIn => carry13,
										Carryout => carry14,
										seletor => seletorS);

	ULA15:             entity work.ULA
						port map (  entradaA => entradaA(15),
										entradaB => entradaB(15),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(15),
										CarryIn => carry14,
										Carryout => carry15,
										seletor => seletorS);
											
	ULA16:             entity work.ULA
						port map (  entradaA => entradaA(16),
										entradaB => entradaB(16),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(16),
										CarryIn => carry15,
										Carryout => carry16,
										seletor => seletorS);

	ULA17:             entity work.ULA
						port map (  entradaA => entradaA(17),
										entradaB => entradaB(17),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(17),
										CarryIn => carry16,
										Carryout => carry17,
										seletor => seletorS);
											
	ULA18:             entity work.ULA
						port map (  entradaA => entradaA(18),
										entradaB => entradaB(18),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(18),
										CarryIn => carry17,
										Carryout => carry18,
										seletor => seletorS);

	ULA19:             entity work.ULA
						port map (  entradaA => entradaA(19),
										entradaB => entradaB(19),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(19),
										CarryIn => carry18,
										Carryout => carry19,
										seletor => seletorS);
										
	ULA20:             entity work.ULA
						port map (  entradaA => entradaA(20),
										entradaB => entradaB(20),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(20),
										CarryIn => carry19,
										Carryout => carry20,
										seletor => seletorS);

	ULA21:             entity work.ULA
						port map (  entradaA => entradaA(21),
										entradaB => entradaB(21),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(21),
										CarryIn => carry20,
										Carryout => carry21,
										seletor => seletorS);
											
	ULA22:             entity work.ULA
						port map (  entradaA => entradaA(22),
										entradaB => entradaB(22),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(22),
										CarryIn => carry21,
										Carryout => carry22,
										seletor => seletorS);

	ULA23:             entity work.ULA
						port map (  entradaA => entradaA(23),
										entradaB => entradaB(23),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(23),
										CarryIn => carry22,
										Carryout => carry23,
										seletor => seletorS);
											
	ULA24:             entity work.ULA
						port map (  entradaA => entradaA(24),
										entradaB => entradaB(24),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(24),
										CarryIn => carry23,
										Carryout => carry24,
										seletor => seletorS);

	ULA25:             entity work.ULA
						port map (  entradaA => entradaA(25),
										entradaB => entradaB(25),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(25),
										CarryIn => carry24,
										Carryout => carry25,
										seletor => seletorS);
											
	ULA26:             entity work.ULA
						port map (  entradaA => entradaA(26),
										entradaB => entradaB(26),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(26),
										CarryIn => carry25,
										Carryout => carry26,
										seletor => seletorS);

	ULA27:             entity work.ULA
						port map (  entradaA => entradaA(27),
										entradaB => entradaB(27),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(27),
										CarryIn => carry26,
										Carryout => carry27,
										seletor => seletorS);
											
	ULA28:             entity work.ULA
						port map (  entradaA => entradaA(28),
										entradaB => entradaB(28),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(28),
										CarryIn => carry27,
										Carryout => carry28,
										seletor => seletorS);

	ULA29:             entity work.ULA
						port map (  entradaA => entradaA(29),
										entradaB => entradaB(29),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(29),
										CarryIn => carry28,
										Carryout => carry29,
										seletor => seletorS);
										
	ULA30:             entity work.ULA
						port map (  entradaA => entradaA(30),
										entradaB => entradaB(30),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(30),
										CarryIn => carry29,
										Carryout => carry30,
										seletor => seletorS);
										
	ULA31:             entity work.UlaOverFlow
						port map (  entradaA => entradaA(31),
										entradaB => entradaB(31),
										SelinverteB => SelinverteB,
										less => '0',
										saida => concatSaida(31),
										CarryIn => carry30,
										slt => slt,
										seletor => seletorS);
										
	saida <= concatSaida;
	FlagZ <= '1' when unsigned(concatSaida) = unsigned(zero) else '0';
							
end architecture;