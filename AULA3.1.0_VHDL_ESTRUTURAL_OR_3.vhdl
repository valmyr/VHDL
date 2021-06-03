library IEEE;
use IEEE.numeric_bit.all;
use IEEE.std_logic.all;
entity or3 is port(A, B, C : in bit,
                   S       : out bit);
end or3;
architecture arch_or3 of or3 is begin
  S <= A or B or C;
end arch_or3;
