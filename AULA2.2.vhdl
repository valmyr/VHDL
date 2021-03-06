--Ex.: Implementar a arquitetura do verificador de faixas de magnnitude de 4bits abaixo, usando with- selection
--Entrada     -> Saída 
--0000 a 0011 -> 100
--0100 a 1001 -> 010
--1010 a 1111 -> 001
--valorDesconhecido - > 000
--

library IEEE;
use IEEE.numeric_bit.all;
entity checkMag is port(input  :in bit_vector(3 downto 0)
                        output : out bit_vector(2 downto 0));
end checkMag;
architecture archCheckMag of checkMag is begin
  with (input) select
      output <= "100" when ("0000"|"0001"|"0010"|"0011"),
                "010" when ("0100"|"0101"|"0110"|"0111"|"1000"|"1001"),
                "001" when ("1010"|"1011"|"1100"|"1101"|"1110"|"1111"),
                "000" when others;
end archCheckMag;
