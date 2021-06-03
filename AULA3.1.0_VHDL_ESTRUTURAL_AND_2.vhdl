--Ex.: maioria entre A,B e C; AB+AC+BC
library IEEE;
use IEEE.numeric_bit.all;
use IEEE.std_logic.all;
entity and2 is port(A,B : in bit;
                    S   : out bit);
end and2;
architecture arch_and2 of and2 is  begin
  S <= A and B;
end arch_and2;
