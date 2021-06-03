library IEEE;
use IEEE.numeric_bit.all;
use IEEE.std_logic.all;
entity entAnd is port (A, B : in bit;
                       S    : out bit);
end entAnd;
architecture archEntAnd of entAnd is begin
  S <= A and B;
end archEntAnd;
