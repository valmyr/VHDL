library IEEE;
use IEEE.std_logic.all;
use IEEE.numeric_bit.all;
entity entXor is port(A , B : in bit
                      S     : out bit);
end entXor;
architecture archEntXor of entXor is begin
  S <= A xor B;
end archEntXor;
