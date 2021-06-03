--atribuições de sinais condicionais
--Ex.: Implemente a arquitetura do circuito seletor de bits abaixo usp aula 4
library IEEE;
use IEEE.numeric_bit.all;
entity mySwitch is
  port(ent0, ent1 : in bit_vector(3 downto 0);
       saida      : out bit_vector(3 downto 0);
       seletor    : in bit);
  end mySwitch;
architecture archMySwitch of mySwitch is begin
  saida <= ent1 when seletor = '1' else
           ent0 when seletor = '0'  else
            "0000";-- "catch-all"
end archMySwitch;
