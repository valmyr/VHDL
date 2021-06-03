library IEEE;
use IEEE.numeric_bit.all; -- Aritimética com / sem sinal
--Somador de 4 bits sem sinal
entity somador4bits is
  port(A , B : in bit_vector(3 downto 0);
       S     : out bit_vector(3 downto 0);
end somador4bits;
architecture archSomador4bits of somador4bits
       begin
         S <= bit_vector(unsigned(A) + usingned(B));
 end archSomador4Bits;
       
