--Atruibuição de Sinal  incondicional: <= 
library IEEE;
IEEE.numeric_bit.all;
entity myNAND3 is
  port(A,B,C : in logic_std;
       F     : out logic_std);
  end myNAND3;
architecture archMyNAND3 of myNAND3 is
  begin
    F <= not(A and B and C);
  end archMyNAND3;
