library IEEE;
use IEEE.numeric_bit.all; -- Aritimética com / sem sinal
--Somador de 4 bits sem sinal com TS
entity somador4bits is
  port(A , B : in bit_vector(3 downto 0);
       S     : out bit_vector(3 downto 0);
       Ts    : out bit);
end somador4bits;
architecture archSomador4bits of somador4bits is
       signal extenA,extenB: bit_vector(4 downto 0);
       signal soma_C       : unsigned (4 downto 0);
       begin
         extenA <= bit_vector("0" & A); --concatenando o caracter "0" com o vetor de 4 bits A
         extenB <= bit_vector("0" & B);
         soma_C <= bit_vector(unsigned(extenA)+unsigned(extenB));
         S = bit_vector(soma_C(3 downto 0));
         Ts     <=  soma_C(4);
 end archSomador4bits;
