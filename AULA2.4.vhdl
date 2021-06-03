library IEEE;
use IEEE.numeric_bit.all;
entity display7Segments is port(contador   : in bit_vector(1 downto 0);
                                output : out bit_vector(7 downto 0)--mais significativo = g e menos significativo = a
                               );
end display7Segments;
architecture archDisplay7Segments of display7Segments is begin
    with contador select
        output <= bit_vector("1110011" when '00', --P
                             "0111111" when '01', --O
                             "0111000" when '10', --L
                             "0110000" when '11', --I
                             "0000000" when others);       
end archDisplay7Segments;
