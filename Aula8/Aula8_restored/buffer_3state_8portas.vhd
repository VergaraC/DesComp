library IEEE;
use ieee.std_logic_1164.all;

entity buffer_3state_8portas is
    port(
        entrada  : in std_logic_vector(7 downto 0);
        habilita : in std_logic;
        saida    : out std_logic_vector(7 downto 0));
end;

architecture comportamento of buffer_3state_8portas is
begin
    saida <= entrada when (habilita = '1') else "ZZZZZZZZ";
end;
