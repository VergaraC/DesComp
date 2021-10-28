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
	signal Mux_PC : std_logic_vector(larguraDados-1 downto 0);
	signal SomadorConstOut : std_logic_vector(larguraDados-1 downto 0);
  	signal SomadorOut : std_logic_vector(larguraDados-1 downto 0);

  
   signal MuxReg3Out : std_logic_vector(4 downto 0);
	
	signal extensorOut : std_logic_vector(larguraDados-1 downto 0);
	signal deslocadorOut : std_logic_vector(larguraDados-1 downto 0);
	
	signal BancoULA_A : std_logic_vector(larguraDados-1 downto 0);
	signal BancoULA_B : std_logic_vector(larguraDados-1 downto 0);
	signal MuxULA_B : std_logic_vector(larguraDados-1 downto 0);
	signal ULA_Out : std_logic_vector(larguraDados-1 downto 0);
	signal UlaZ : std_logic;
	
	signal DadoReg3 : std_logic_vector(larguraDados-1 downto 0);
	signal Sinais_Controle : std_logic_vector(11 downto 0);

	signal SelMuxSomImediato : std_logic;
	signal Saida_RAM : std_logic_vector(larguraDados-1 downto 0);
	
begin


CLK <= CLOCK_50;
				
		  
PC : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
          port map (DIN => Mux_PC , DOUT => PC_ROM, ENABLE => '1', CLK => CLK, RST => '0');

			 
somaConst :  entity work.somaConstante  generic map (larguraDados => larguraDados, constante => 4)
          port map( entrada => PC_ROM, saida => SomadorConstOut);
			 
MuxSomImediato: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
			port map (entradaA_MUX => SomadorConstOut, entradaB_MUX => SomadorOut,
			seletor_MUX => SelMuxSomImediato, saida_MUX => Mux_PC);

ROM1 : entity work.MemoriaROM   generic map (dataWidth => larguraDados, addrWidth => larguraDados )
		 port map (clk => CLK, Endereco => PC_ROM, Dado => Instruction);

MuxReg3: entity work.muxGenerico2x1 generic map(larguraDados => 5)
			port map (entradaA_MUX => Instruction(20 downto 16),entradaB_MUX => Instruction(15 downto 11),
				seletor_MUX =>Sinais_Controle(1) , saida_MUX => MuxReg3Out);
	 
Banco_Registradores : entity work.bancoRegistradoresArqRegMem  generic map (larguraDados => larguraDados, larguraEndBancoRegs => larguraAddrBanco)
			port map ( clk => CLK, A => Instruction(25 downto 21), B => Instruction(20 downto 16),
				C => MuxReg3Out, DadosC => DadoReg3,
				FlagC => Sinais_Controle(2), A_Out => BancoULA_A, B_Out => BancoULA_B);
		 
ExtendeSinal : entity work.estendeSinalGenerico   generic map (larguraDadoEntrada => 16, larguraDadoSaida => 32)
          port map (estendeSinal_IN => Instruction(15 downto 0), estendeSinal_OUT =>  extensorOut);

Decoder : entity work.Decoder generic map (FunctWidth => 6,OpCodeWidth => 6,outWidth =>12)
          port map (OpCode => instruction(31 downto 26), Funct=> instruction(5 downto 0), 
			 Sinais_Controle => Sinais_Controle);	

Deslocador: entity work.deslocadorGenerico  generic map(larguraDadoEntrada => larguraDados, larguraDadoSaida => larguraDados, deslocamento => 2)
            port map (sinalIN => extensorOut, sinalOUT => deslocadorOut);

somador:      entity work.somadorGenerico  generic map (larguraDados => larguraDados)
							port map (entradaA => SomadorConstOut, entradaB =>  deslocadorOut, saida => SomadorOut);	
							
MuxReg2Ula: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
			port map (entradaA_MUX => BancoULA_B,entradaB_MUX => extensorOut,
				seletor_MUX =>Sinais_Controle(3) , saida_MUX => MuxULA_B);

	
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados) --- ADD Saida Z
          port map (entradaA => BancoULA_A, entradaB => MuxULA_B,
			 saida => ULA_Out, seletor => Sinais_Controle(7 downto 4), flagZ => UlaZ);


RAM_MIPS: entity work.RAMMIPS  generic map (dataWidth => larguraDados, addrWidth => larguraDados, memoryAddrWidth => 6)
			port map( clk => CLK, Endereco => ULA_Out,
			Dado_in => BancoULA_B, Dado_out => Saida_RAM,
			we => Sinais_Controle(10), re => Sinais_Controle(11));
		
MuxDadoReg3: entity work.muxGenerico2x1 generic map(larguraDados => larguraDados)
			port map (entradaA_MUX => ULA_Out, entradaB_MUX => Saida_RAM, seletor_MUX => Sinais_Controle(8) , saida_MUX => DadoReg3);	

SelMuxSomImediato <=	(Sinais_Controle(9) and UlaZ);
A <= BancoULA_A;
B <= BancoULA_B;
OutULA <= ULA_Out;

end architecture;

