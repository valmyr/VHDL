-- decodificador 2 para 4 com enable.
library IEEE;
IEEE.numeric_bit.all;
IEEE.std_logic.all;
entity decodificador is port(input     : in std_logic_vector(1 downto 0);
                              enable   : in std_logic;
                              output   : out std_logic_vector(3 downto 0));
end decodificador;
architecture archDecodificador of decodificador is
  begin
  --Bloco sequêncial
  process (enable, input)
    begin
      Y <= "ZZZZ";
      if(enable = '1') then
          case input is
            when "00" >= output <= "0001";
            when "01" >= output <= "0010";
            when "10" >= output <= "0100";
            when "11" >= output <= "1000";
            when others => output <= "ZZZZ";
          end case;
      end if;
  end process;
end archDecodificador;
