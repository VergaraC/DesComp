library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU is
  generic   (
    larguraDados  : natural := 8
  );
  port   (
    CLOCK_50      : in std_logic;
	 Reset         : in std_logic;
    KEY           : in std_logic_vector(3 downto 0);
	 Instuction_IN : in std_logic_vector(12 downto 0);
	 Data_IN       : in std_logic_vector(7 downto 0);
	 
	 Wr            : out std_logic;
	 Rd            : out std_logic;
	 ROM_Address   : out std_logic_vector(8 downto 0); 
	 Data_Address  : out std_logic_vector(8 downto 0);
	 Data_OUT      : out std_logic_vector(7 downto 0)
  );
end entity;