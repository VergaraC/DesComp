library ieee;
use ieee.std_logic_1164.all;

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
	 
	 
  );
end entity;


architecture arquitetura of Projeto2 is
	signal CLK : std_logic;
	signal Instruction : std_logic(larguraDados-1 downto 0);
	signal PC_ROM : std_logic(larguraDados-1 downto 0);
	
	signal SomadorPC : std_logic(larguraDados-1 downto 0);
  
	signal BancoULA_A : std_logic(larguraDados-1 downto 0);
	signal BancoULA_B : std_logic(larguraDados-1 downto 0);
	signal ULA_Out : std_logic(larguraDados-1 downto 0);

begin



CLK <= CLOCK_50;
				
		  
PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => SomadorPC, DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');

			 
somaUm :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
          port map( entrada => PC_ROM, saida => SomadorPC);

ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
          port map (entradaA => BancoULA_A, entradaB => BancoULA_B, saida => ULA_Out, seletor => Seletor_ULA);

			 Banco_Registradores : entity work.bancoRegistradoresArqRegMem 
		generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraAddrBanco)
		port map ( 
			  clk => CLK,
			  enderecoA => Instruction(15 downto 11),    
			  enderecoB => Instruction(20 downto 16),   
			  enderecoC => Instruction(25 downto 21),
			  dadoEscritaC => ULA_Out,
			  escreveC => Wr_R3,
			  saidaA => BancoULA_A,
			  saidaB => BancoULA_B
		 );
		 
ROM1 : entity work.MemoriaROM   generic map (dataWidth => larguraDadosROM, addrWidth => larguraAddrROM)
		 port map (
			 Endereco => PC_ROM,
			 Dado => Instruction
		 );
		 
--end generate;


end architecture;

