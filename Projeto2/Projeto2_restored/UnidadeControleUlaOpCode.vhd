library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity UnidadeControleUlaOpCode is
	 generic   (
    larguraDados  : natural := 6
	);
	 port
    (
        OpCode: in  STD_LOGIC_VECTOR(5 downto 0);
        saidaOpCode:   out STD_LOGIC_VECTOR(2 downto 0)
    );
end entity;

architecture comportamento of UnidadeControleUlaOpCode is

	constant r : std_logic_vector(5 downto 0) := "000000";
	constant jmp : std_logic_vector(5 downto 0) := "000010";
	constant beq : std_logic_vector(5 downto 0) := "000100";
	constant lw  : std_logic_vector(5 downto 0) := "100011";
	constant sw  : std_logic_vector(5 downto 0) := "101011";
	
    begin
		  saidaOpCode <= "010" when (OpCode = lw or OpCode = sw) else 
            "110" when (OpCode = beq) else
            "000";
end architecture;