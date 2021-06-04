library IEEE;
use IEEE.numeric_bit.all;
use IEEE.std_logic.all;
entity unidadeLogicaAritmetrica is port(   sel : in std_logic_vector(2 downto 0);
                                          A,B : in std_logic_vector(3 downto 0);
                                        output: out std_logic_vector(3 downto 0));
end unidadeLogicaAritmetrica;
architecture archUnidadeLogicaAritmetrica of unidadeLogicaAritmetrica is begin
    ULA : process(sel,A,B) begin
      case sel is
        when "000" => output <= unsigned(A) + unsigned(B);
        when "001" => output <= unsigned(A) - unsigned(B);
        when "010" => output <= (A)  and (B);
        when "011" => output <= (A) or (B);
        when "100" => output <= (A) xor (B);
        when "101" => output <= not(A);
        when "110" => output <= not(B);
        when others => output <= "ZZZZ";
      end case;
    end process ULA;
end archUnidadeLogicaAritmetrica;
