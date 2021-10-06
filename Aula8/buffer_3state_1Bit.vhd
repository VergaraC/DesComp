library IEEE;
use ieee.std_logic_1164.all;

entity buffer_3state_1bit is
    port(
        entrada  : in std_logic;
        habilita : in std_logic;
        saida    : out std_logic);
end;

architecture comportamento of buffer_3state_1bit is
begin
    saida <= entrada when (habilita = '1') else 'Z';
end;
