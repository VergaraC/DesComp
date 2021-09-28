library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder3x8 is
  generic   (
    larguraDados  : natural := 3
  );

  port   (
    -- Input ports
    OPCODE  :  in   std_logic_vector(larguraDados-1 downto 0);
    OUTPUT :  out  std_logic_vector(7 downto 0)
  );
end entity;


architecture arquitetura of Decoder3x8 is


begin
	process (OPCODE) is
	begin
		case OPCODE is
			when "000" => OUTPUT <= "00000001";
			when "001" => OUTPUT <= "00000010";
			when "010" => OUTPUT <= "00000100";
			when "011" => OUTPUT <= "00001000";
			when "100" => OUTPUT <= "00010000";
			when "101" => OUTPUT <= "00100000";
			when "110" => OUTPUT <= "01000000";
			when "111" => OUTPUT <= "10000000";
		end case;
	end process;
end architecture;