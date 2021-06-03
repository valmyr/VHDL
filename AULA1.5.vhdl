library IEEE;
use IEEE.numeric_bit.all; -- Aritimética com / sem sinal
--Somador de 4 bits sem sinal com TS
entity somador4bits is
  port(A , B : in bit_vector(3 downto 0);
       S     : out bit_vector(3 downto 0);
       Ts    : out bit);
end somador4bits;
architecture archSomador4bits of somador4bits
       begin
         soma_C <= bit_vector(unsigned("0" & A)+unsigned("0" & B);
         S = bit_vector(soma_C(3 downto 0));
         Ts     <=  soma(4);
 end archSomador4Bits;
