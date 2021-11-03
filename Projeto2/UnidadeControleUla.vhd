library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity UnidadeControleUla is
    generic ( larguraDados : natural := 32 );
	 
	 port
    (
        Funct: in  STD_LOGIC_VECTOR(6 downto 0);
		  DecoderIn: in  STD_LOGIC_VECTOR(2 downto 0);
        SeletorUla:   out STD_LOGIC_VECTOR(3 downto 0)
    );
end entity;

architecture comportamento of UnidadeControleUla is
    begin
        SeletorUla <= "0000";
end architecture;