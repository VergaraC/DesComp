library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity debounceMemorizacao is
    port (entrada : in std_logic;
       saida : out std_logic;
       clk : in std_logic;
		 rst: in std_logic_vector(8 downto 0)
	  );
end entity;

architecture comportamento of debounceMemorizacao is
begin
    process(rst, clk)
    begin
		if (rising_edge(clk)) then
			saida <= entrada;
		end if;
		if(rst = "111111111") then
			saida <= '0';
		end if;
    end process;
end architecture;