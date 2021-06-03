library IEEE;
use IEEE.numeric_bit.all;
use IEEE.std_logic.all;
entity Mux4To1 is port(seletor : in bit_vector (1 downto 0);
                       input   : in bit_vector(3  downto 0);
                       output  : out std_logic);
end Mux4To1;
architecture archMux4To1 of Mux4To1 is begin
    with seletor select
        output <= input(0) when "00",
                  input(1) when "01",
                  input(2) when "10",
                  input(3) when "11",
                       '0' when others;
                 
end archMux4To1;
                       
