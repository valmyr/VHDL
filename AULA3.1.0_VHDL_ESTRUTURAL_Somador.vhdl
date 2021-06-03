library IEEE;
use IEEE.numeric_bit.all;
use IEEE.std_logic.all;
entity somador is port(A, B   : in  bit;
                       S,Cout : out bit);
end somador;
architecture archSomador of somador is 
  component entXor is port(A, B : in bit;
                            S    : out bit);
  end component;
  component entAnd is port(A, B : in bit;
                           S    : out bit);
  end component;
  begin
    entXor(A,B,S);
    entAnd(A,B,Cout);
end archSomador;
    
