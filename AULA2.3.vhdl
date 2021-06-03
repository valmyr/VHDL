--Atribuição condicional com seleção: with- select
--Ex.: Impressão de "P" "O" "L" "I" em display
library IEEE;
use IEEE.numeric_bit.all;
entity display7Segments is port(on_off   : in bit;
                                output_P : out bit_vector(7 downto 0);
                                output_O : out bit_vector(7 downto 0);
                                output_L : out bit_vector(7 downto 0);
                                output_I : out bit_vector(7 downto 0)
                               );
end display7Segments;
architecture archDisplay7Segments of display7Segments is begin
    with on_off select
        output_P <= bit_vector("1110011" when '1',
                               "0000000" when '0',
                               "0000000" when others);
    with on_off select
        output_O <= bit_vector("0111111" when '1',
                               "0000000" when '0',
                               "0000000" when others);
    with on_off select
        output_L <= bit_vector("0111000" when '1',
                               "0000000" when '0',
                               "0000000" when others);
    with on_off select
        output_I <= bit_vector("0110000" when '1',
                               "0000000" when '0',
                               "0000000" when others);       
end archDisplay7Segments;
