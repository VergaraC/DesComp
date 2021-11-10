library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity ULA_completa is
    port
    (
      entradaA:                  in STD_LOGIC_VECTOR(31 downto 0);
		entradaB:                  in STD_LOGIC_VECTOR(31 downto 0);
      saida:                     out STD_LOGIC_VECTOR(31 downto 0);
		FlagZ:                  out std_logic;
		Seletor:                   in std_logic_vector(2 downto 0)
    );
end entity;

architecture comportamento of ULA_completa is
	constant zero : std_logic_vector(31 downto 0) := (others => '0');
	
	signal CarryIn            : std_logic;
	signal carry0, carry1, carry2, carry3, carry4, carry5, carry6, carry7, carry8, carry9, carry10, carry11, carry12, carry13, carry14, carry15: std_logic;
	signal carry16, carry17, carry18, carry19, carry20, carry21, carry22, carry23, carry24, carry25, carry26, carry27, carry28, carry29, carry30 : std_logic;
	signal slt            : std_logic;	
	alias SelinverteB       : std_logic is Seletor(2);
	alias seletor         : std_logic_vector(1 downto 0) is Seletor(1 downto 0);
	
begin

	
	ULA0:             entity work.ULA
						port map (  entradaA => entradaA(0),
										entradaB => entradaB(0),
										SelinverteB => SelinverteB,
										less => slt,
										saida => saida(0),
										CarryIn => SelinverteB,
										Carryout => carry0,
										seletor => seletor);

	ULA1:             entity work.ULA
						port map (  entradaA => entradaA(1),
										entradaB => entradaB(1),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(1),
										CarryIn => carry0,
										Carryout => carry1,
										seletor => seletor);
											
	ULA2:             entity work.ULA
						port map (  entradaA => entradaA(2),
										entradaB => entradaB(2),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(2),
										CarryIn => carry1,
										Carryout => carry2,
										seletor => seletor);

	ULA3:             entity work.ULA
						port map (  entradaA => entradaA(3),
										entradaB => entradaB(3),
										SelinverteB => SelinverteB,
										less => '0',										
										saida => saida(3),
										CarryIn => carry2,
										Carryout => carry3,
										seletor => seletor);
											
	ULA4:             entity work.ULA
						port map (  entradaA => entradaA(4),
										entradaB => entradaB(4),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(4),
										CarryIn => carry3,
										Carryout => carry4,
										seletor => seletor);

	ULA5:             entity work.ULA
						port map (  entradaA => entradaA(5),
										entradaB => entradaB(5),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(5),
										CarryIn => carry4,
										Carryout => carry5,
										seletor => seletor);
											
	ULA6:             entity work.ULA
						port map (  entradaA => entradaA(6),
										entradaB => entradaB(6),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(6),
										CarryIn => carry5,
										Carryout => carry6,
										seletor => seletor);

	ULA7:             entity work.ULA
						port map (  entradaA => entradaA(7),
										entradaB => entradaB(7),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(7),
										CarryIn => carry6,
										Carryout => carry7,
										seletor => seletor);
										
	ULA8:             entity work.ULA
						port map (  entradaA => entradaA(8),
										entradaB => entradaB(8),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(8),
										CarryIn => carry7,
										Carryout => carry8,
										seletor => seletor);

	ULA9:             entity work.ULA
						port map (  entradaA => entradaA(9),
										entradaB => entradaB(9),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(9),
										CarryIn => carry8,
										Carryout => carry9,
										seletor => seletor);
										
	ULA10:             entity work.ULA
						port map (  entradaA => entradaA(10),
										entradaB => entradaB(10),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(10),
										CarryIn => carry9,
										Carryout => carry10,
										seletor => seletor);

	ULA11:             entity work.ULA
						port map (  entradaA => entradaA(11),
										entradaB => entradaB(11),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(11),
										CarryIn => carry10,
										Carryout => carry11,
										seletor => seletor);
											
	ULA12:             entity work.ULA
						port map (  entradaA => entradaA(12),
										entradaB => entradaB(12),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(12),
										CarryIn => carry11,
										Carryout => carry12,
										seletor => seletor);

	ULA13:             entity work.ULA
						port map (  entradaA => entradaA(13),
										entradaB => entradaB(13),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(13),
										CarryIn => carry12,
										Carryout => carry13,
										seletor => seletor);
											
	ULA14:             entity work.ULA
						port map (  entradaA => entradaA(14),
										entradaB => entradaB(14),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(14),
										CarryIn => carry13,
										Carryout => carry14,
										seletor => seletor);

	ULA15:             entity work.ULA
						port map (  entradaA => entradaA(15),
										entradaB => entradaB(15),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(15),
										CarryIn => carry14,
										Carryout => carry15,
										seletor => seletor);
											
	ULA16:             entity work.ULA
						port map (  entradaA => entradaA(16),
										entradaB => entradaB(16),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(16),
										CarryIn => carry15,
										Carryout => carry16,
										seletor => seletor);

	ULA17:             entity work.ULA
						port map (  entradaA => entradaA(17),
										entradaB => entradaB(17),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(17),
										CarryIn => carry16,
										Carryout => carry17,
										seletor => seletor);
											
	ULA18:             entity work.ULA
						port map (  entradaA => entradaA(18),
										entradaB => entradaB(18),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(18),
										CarryIn => carry17,
										Carryout => carry18,
										seletor => seletor);

	ULA19:             entity work.ULA
						port map (  entradaA => entradaA(19),
										entradaB => entradaB(19),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(19),
										CarryIn => carry18,
										Carryout => carry19,
										seletor => seletor);
										
	ULA20:             entity work.ULA
						port map (  entradaA => entradaA(20),
										entradaB => entradaB(20),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(20),
										CarryIn => carry19,
										Carryout => carry20,
										seletor => seletor);

	ULA21:             entity work.ULA
						port map (  entradaA => entradaA(21),
										entradaB => entradaB(21),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(21),
										CarryIn => carry20,
										Carryout => carry21,
										seletor => seletor);
											
	ULA22:             entity work.ULA
						port map (  entradaA => entradaA(22),
										entradaB => entradaB(22),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(22),
										CarryIn => carry21,
										Carryout => carry22,
										seletor => seletor);

	ULA23:             entity work.ULA
						port map (  entradaA => entradaA(23),
										entradaB => entradaB(23),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(23),
										CarryIn => carry22,
										Carryout => carry23,
										seletor => seletor);
											
	ULA24:             entity work.ULA
						port map (  entradaA => entradaA(24),
										entradaB => entradaB(24),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(24),
										CarryIn => carry23,
										Carryout => carry24,
										seletor => seletor);

	ULA25:             entity work.ULA
						port map (  entradaA => entradaA(25),
										entradaB => entradaB(25),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(25),
										CarryIn => carry24,
										Carryout => carry25,
										seletor => seletor);
											
	ULA26:             entity work.ULA
						port map (  entradaA => entradaA(26),
										entradaB => entradaB(26),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(26),
										CarryIn => carry25,
										Carryout => carry26,
										seletor => seletor);

	ULA27:             entity work.ULA
						port map (  entradaA => entradaA(27),
										entradaB => entradaB(27),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(27),
										CarryIn => carry26,
										Carryout => carry27,
										seletor => seletor);
											
	ULA28:             entity work.ULA
						port map (  entradaA => entradaA(28),
										entradaB => entradaB(28),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(28),
										CarryIn => carry27,
										Carryout => carry28,
										seletor => seletor);

	ULA29:             entity work.ULA
						port map (  entradaA => entradaA(29),
										entradaB => entradaB(29),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(29),
										CarryIn => carry28,
										Carryout => carry29,
										seletor => seletor);
										
	ULA30:             entity work.ULA
						port map (  entradaA => entradaA(30),
										entradaB => entradaB(30),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(30),
										CarryIn => carry29,
										Carryout => carry30,
										seletor => seletor);
										
	ULA31:             entity work.ULAbit
						port map (  entradaA => entradaA(31),
										entradaB => entradaB(31),
										SelinverteB => SelinverteB,
										less => '0',
										saida => saida(31),
										CarryIn => carry30,
										slt => slt,
										seletor => seletor);

	FlagZ <= '1' when unsigned(saida) = unsigned(zero) else '0';
							
end architecture;