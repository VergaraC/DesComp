library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;          -- Biblioteca IEEE para funções aritméticas

entity deslocadorExt is
    generic(
        larguraDadoEntrada : natural  :=    32);
    port(
        -- Input ports
        sinalIN : in  std_logic_vector(larguraDadoEntrada-1 downto 0);
        -- Output ports
        sinalOUT: out std_logic_vector(larguraDadoEntrada-1 downto 0)
		  );
end entity;

architecture comportamento of deslocadorExt is
    begin
			sinalOUT <= sinalIN(larguraDadoEntrada-3 downto 0) & "00";
end architecture;