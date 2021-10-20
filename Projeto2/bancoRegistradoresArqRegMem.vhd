-- Baseado no apendice C (Register Files) do COD (Patterson & Hennessy).
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity bancoRegistradoresArqRegMem is
    generic(
        larguraDados        : natural := 32;
        larguraEndBancoRegs : natural := 5   
    );
    port (
        
        A       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        B       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        C       : in std_logic_vector((larguraEndBancoRegs-1) downto 0);
        DadosC    : in std_logic_vector((larguraDados-1) downto 0);
        FlagC        : in std_logic := '0';
        A_Out          : out std_logic_vector((larguraDados -1) downto 0);
        B_Out          : out std_logic_vector((larguraDados -1) downto 0);
		  clk        : in std_logic
    );
end entity;

architecture comportamento of bancoRegistradoresArqRegMem is

    subtype palavra_t is std_logic_vector((larguraDados-1) downto 0);
    type memoria_t is array(2**larguraEndBancoRegs-1 downto 0) of palavra_t;

function initMemory
        return memoria_t is variable tmp : memoria_t := (others => (others => '0'));
  begin
        -- Inicializa os endereços:
        tmp(0) := x"00000000";  -- Nao deve ter efeito.
        tmp(8)  := "11000000000000000000000000000000";  -- $t0 = 0x00
        tmp(9)  := "11100000000000000000000000000000"; -- $t1 = 0x0A
        tmp(10) := "11110000000000000000000000000000";  -- $t2 = 0x0B
        tmp(11) := "11111000000000000000000000000000";  -- $t3 = 0x0C
        tmp(12) := "11111100000000000000000000000000";  -- $t4 = 0x0D
        tmp(13) := "11111110000000000000000000000000";  -- $t5 = 0x16
        return tmp;
    end initMemory;

    -- Declaracao dos registradores:
    shared variable registrador : memoria_t := initMemory;
    constant zero : std_logic_vector(larguraDados-1 downto 0) := (others => '0');
begin
    process(clk) is
    begin
        if (rising_edge(clk)) then
            if (FlagC = '1') then
                registrador(to_integer(unsigned(C))) := DadosC;
            end if;
        end if;
    end process;
    -- Se endereco = 0 : retorna ZERO
    B_Out <= zero when to_integer(unsigned(B)) = to_integer(unsigned(zero)) else registrador(to_integer(unsigned(B)));
    A_Out <= zero when to_integer(unsigned(A)) = to_integer(unsigned(zero)) else registrador(to_integer(unsigned(A)));
end architecture;