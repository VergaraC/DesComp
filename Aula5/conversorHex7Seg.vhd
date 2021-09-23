library IEEE;
use ieee.std_logic_1164.all;

entity conversorHex7Seg is
    port
    (
        -- Input ports
        hex : in  std_logic_vector(3 downto 0);
        off   : in  std_logic := '0';
        negativo : in  std_logic := '0';
        overFlow : in  std_logic := '0';
        -- Output ports
        out7seg : out std_logic_vector(6 downto 0)  -- := (others => '1')
    );
end entity;

architecture comportamento of conversorHex7Seg is
  
    signal saida7seg: std_logic_vector(6 downto 0);
begin
    saida7seg <=        "1000000" when hex="0000" else 
                            "1111001" when hex="0001" else 
                            "0100100" when hex="0010" else 
                            "0110000" when hex="0011" else 
                            "0011001" when hex="0100" else 
                            "0010010" when hex="0101" else 
                            "0000010" when hex="0110" else 
                            "1111000" when hex="0111" else 
                            "0000000" when hex="1000" else 
                            "0010000" when hex="1001" else 
                            "0001000" when hex="1010" else 
                            "0000011" when hex="1011" else 
                            "1000110" when hex="1100" else 
                            "0100001" when hex="1101" else 
                            "0000110" when hex="1110" else 
                            "0001110" when hex="1111" else 
                            "1111111"; 

    out7seg <=     "1100010" when (overFlow='1') else
                            "1111111" when (off='1' and negativo='0') else
                            "0111111" when (off='0' and negativo='1') else
                            saida7seg;
end architecture;
