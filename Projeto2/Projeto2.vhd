library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Projeto2 is
  -- Total de bits das entradas e saidas
  generic ( 
		larguraDados : natural := 32;
		larguraAddrBanco : natural := 5;
      simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
	 Wr3: in std_logic;
	 Seletor_ULA: in std_logic;
	 A: out std_logic_vector(larguraDados-1 downto 0);
	 B: out std_logic_vector(larguraDados-1 downto 0);
    OutULA: out std_logic_vector(larguraDados-1 downto 0)
	 
  );
end entity;


architecture arquitetura of Projeto2 is
	signal CLK : std_logic;
	signal Instruction : std_logic_vector(larguraDados-1 downto 0);
	signal PC_ROM : std_logic_vector(larguraDados-1 downto 0);
	
	signal SomadorPC : std_logic_vector(larguraDados-1 downto 0);
  
	signal BancoULA_A : std_logic_vector(larguraDados-1 downto 0);
	signal BancoULA_B : std_logic_vector(larguraDados-1 downto 0);
	signal ULA_Out : std_logic_vector(larguraDados-1 downto 0);


begin


CLK <= CLOCK_50;
				
		  
PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => SomadorPC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');

			 
somaConst :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
          port map( entrada => PC_ROM, saida => SomadorPC);

ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => BancoULA_A, entradaB => BancoULA_B, saida => ULA_Out, seletor => Seletor_ULA);

Banco_Registradores : entity work.bancoRegistradoresArqRegMem  generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraAddrBanco)
			 port map ( clk => CLK, A => Instruction(15 downto 11), B => Instruction(20 downto 16),C => Instruction(25 downto 21), DadosC => ULA_Out,
				 FlagC => Wr3, A_Out => BancoULA_A, B_Out => BancoULA_B);
		 
ROM1 : entity work.MemoriaROM   generic map (dataWidth => larguraDados, addrWidth => larguraDados )
		 port map (
			 clk => CLK,
			 Endereco => PC_ROM,
			 Dado => Instruction
		 );
		 
Extensor : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => VALOR_LOCAL, larguraDadoSaida => VALOR_LOCAL)
          port map (estendeSinal_IN => sinalLocal, estendeSinal_OUT =>  sinalLocal);

RAM_MIPS: entity work.RAM_MIPS  generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
			port map( clk => CLK, Endereco => Saida_ULA,
			Dado_in => bancoReg_ULA_B, Dado_out => Saida_RAM,
			we => Wr, re => Rd);
			
A <= BancoULA_A;
B <= BancoULA_B;
OutULA <= ULA_Out;

end architecture;

