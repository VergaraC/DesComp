library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Decoder is
  generic   (
    dataWidth  : natural := 6;
    outWidth: natural := 8
  );

  port   (
    DadosIn  :  in  std_logic_vector(dataWidth-1 downto 0);
    Sinais_Controle :  out  std_logic_vector(outWidth-1 downto 0)
  );
end entity;

architecture arquitetura of Decoder is

  signal lw : std_logic;
  signal sw : std_logic;
  signal beq: std_logic;

begin
-- Checar se est[a correto
  lw <= '1' when DadosIn = 6x"23" else '0';
  sw <= '1' when DadosIn = 6x"2B" else '0';
  beq<= '1' when DadosIn = 6x"04" else '0';
  
---------------------------------------------------------------------------------------------------------------------------------
  Sinais_Controle(7)<= sw or lw;--imRT
  Sinais_Controle(6)<= beq;--beq
  Sinais_Controle(5)<= sw;--we
  Sinais_Controle(4)<= lw;--re
  Sinais_Controle(3)<= '0';--Op3
  Sinais_Controle(2)<= '0';--Op3
  Sinais_Controle(1)<= beq;--Op1
  Sinais_Controle(0)<= lw;--re
  
end architecture;