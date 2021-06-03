--Ex (coont): e se "sel' invertesse as saídas?
library IEEE;
use IEEE.numeric_bit.all;
entity myInvert is port(ent0,ent1      : in  bit_vector(3 downto 0);
                        sel            : in bit;
                        saida0, saida1 : out bit_vector(3 downto 0));
end myInvert;
architecture archMyInvert of myInvert is begin
  when sel select
      saida0 <= ent1 when  '1',
                ent0 when '0',
                "0000" when others;
   when sel select 
      saida1 <= ent1 when '0',
                ent0 when '1',
                "0000" when others;  
end archMyInvert;
