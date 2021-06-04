library IEEE;
use IEEE.numeric_bit.all;
use IEEE.std_logic.all;
entity unidadeLogicaAritmetrica is port(   sel : in std_logic_vector(2 downto 0);
                                          A,B : in std_logic_vector(3 downto 0);
                                        output: out std_logic_vector(3 downto 0));
end unidadeLogicaAritmetrica;
architecture archUnidadeLogicAritmetrica of unidadeLogicaAritmetrica is begin
    ULA : process(sel) begin
      if(sel="000") then
        output <= A + B;
      elsif(sel="001") then
        output <= A - B;
      elsif(sel="010") then 
        output <= A and B;
      elsif(sel="011") then 
        output <= A or B;
      elsif(sel="100") then 
        output<=A xor B;
      elsif(sel="101") then
        output <= not(A);
      elsif(sel="110") then
        output <= not(B);
      else
         output <= "ZZZZ"; 
      end if;
    end process ULA;
end archUnidadeLogicaAritmentrica;
