library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  --Soma (esta biblioteca =ieee)

entity UnidadeControleUlaFunct is
	 generic   (
    larguraDados  : natural := 6
	);
	 port
    (
        Funct: in  STD_LOGIC_VECTOR(5 downto 0);
        saidaFunct:   out STD_LOGIC_VECTOR(2 downto 0)
    );
end entity;

architecture comportamento of UnidadeControleUlaFunct is

	constant addOp  : std_logic_vector(5 downto 0) := "100000";
	constant subOp  : std_logic_vector(5 downto 0) := "100010";
	constant andOp : std_logic_vector(5 downto 0) := "100100";
	constant orOp : std_logic_vector(5 downto 0) := "100101";
	constant sltOp : std_logic_vector(5 downto 0) := "101010";
    begin
        saidaFunct <= "000" when (Funct = addOp) else 
            "001" when (Funct = orOp) else
            "010" when (Funct = addOp) else
            "110" when (Funct = subOp) else
            "111" when (Funct = sltOp) else
            "000";
end architecture;