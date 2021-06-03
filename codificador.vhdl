-- decodificador 2 para 4 com enable.
library IEEE;
IEEE.numeric_bit.all;
IEEE.std_logic.all;
entity decodificador is port(input   : in bit_vector(1 downto 0);
                                en   : in bit;
                              output : out bit_vector(3 downto 0));
end decodificador;
architecture archDecodificador of decodificador is
  signal inputConcatenadoComEn : bit_vector(2 downto 0);
  begin
  inputConcatenadoComEn <= (en & input);
  with en or input  select
    output <= bit_vector("0001" when "100",
                         "0010" when "101",
                         "0100" when "110",
                         "1000" when "111",
                         "0000" when others);
end archDecodificador;
