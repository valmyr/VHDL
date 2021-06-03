library IEEE;
use IEEE.numeric_bit.all; -- Aritimética com / sem sinal
--Somador de 4 bits sem sinal com TS sem as variáveis Extensoras
entity somador4bits is
  port(A , B : in bit_vector(3 downto 0);
       S     : out bit_vector(3 downto 0);
       Ts    : out bit);
end somador4bits;
architecture archSomador4bits of somador4bits is
       signal soma_C : unsigned(4 downto 0);
       begin
         soma_C <= bit_vector(unsigned("0" & A)+unsigned("0" & B);
         S <= bit_vector(soma_C(3 downto 0));
         Ts     <=  soma_C(4);
 end archSomador4bits;
