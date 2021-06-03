library IEEE;
use IEEE.numeric_bit.all;
use IEEE.std_logic.all;
entity Mux4To1 is port(seletor : in bit_vector (1 downto 0);
                       input   : in bit_vector(7  downto 0);
                       output  : out std_logic);
end Mux4to1;
architecture archMux4To1 of Mux4To1 is begin
    with seletor select
        ouput <=input(0) when "000",
                input(1) when "001",
                input(2) when "010",
                input(3) when "011",
                input(4) when "100";
end archMux4To1;
                       
