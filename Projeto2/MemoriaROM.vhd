library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MemoriaROM is

    generic
    (
        dataWidth : natural := 32;
        addrWidth : natural := 32;
		  memoryAddrWidth:  natural := 6
    );

    port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0);
			 clk      : IN  std_logic
    );
end entity;

architecture initFileROM of MemoriaROM is

type memory_t is array (2**memoryAddrWidth -1 downto 0) of std_logic_vector (dataWidth-1 downto 0);
signal content: memory_t;
attribute ram_init_file : string;
attribute ram_init_file of content:
signal is "initRom.mif";

signal Address : std_logic_vector(memoryAddrWidth-1 downto 0);

begin
	Address <= Endereco(memoryAddrWidth+1 downto 2);
   Dado <= content(to_integer(unsigned(Address)));
end architecture;