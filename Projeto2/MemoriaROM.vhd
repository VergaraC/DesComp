library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 32;
          addrWidth: natural := 32 
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is
  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
-- OpCode Rs    Rt    Rd    Shamt Funct
-- 000000 01001 01000 01010 00000 100000
tmp(0) := "000000" & "01001" & "01000" & "01010" & "00000" & "100000";
tmp(1) := 32x"00";
tmp(2) := 32x"00";
tmp(3) := 32x"00";
tmp(4) := 32x"00";
tmp(5) := 32x"00";


return tmp;
end initMemory;

signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture; 