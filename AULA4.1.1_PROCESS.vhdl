--Ex:.: Saída recebe entrada só se a chave "load" mudar de valor
library IEEE;
use IEEE.std_logic.all;
use IEEE.numeric_bit.all;
entity myBuffer is port(input : in std_logic_vector(7 downto 0);
                        load  : in str_logic;
                        output: out std_logic_vectpr(7 downto 0));
end myBuffer;
architecture archMyBuffer of myBuffer is begin
  processBuffer: process (load) begin
         output <= input;
  end process processBuffer
end archMyBuffer;
