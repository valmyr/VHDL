--Ex.: Implementar a arquitetura do verificador de faixas de magnnitude de 4bits abaixo, usando with- selection
library IEEE;
use IEEE.numeric_bit.all;
entity checkMag is port(input  :in bit_vector(3 downto 0)
                        output : out bit_vector(2 downto 0));
end checkMag;
architecture archCheckMag of checkMag is begin
  with (input < 4 or input < 10 or input < 16) select
      output <= "100" when (input < 4),
                "010" when (input < 10),
                "001" when (input < 16),
                "000" when others;
end archCheckMag;
