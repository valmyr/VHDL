entity maioria is port(A,B,C : in bit;
                       S     : out bit);
end maioria;
architecture archMaioria of maioria is
  component and2 is port(A,B : in bit;
                    S   : out bit);
  end component;
  
  component or3 is port(A, B, C : in bit,
                   S       : out bit);
  end component;
  --sinais intermediarios
  signal AB, AC, BC: bit;
  begin
      xAB : and2 port map (A,B,AB);
      xAC : and2 port map (A,C,AC);
      xBC : and2 port map (B,C,AB);
      xS  : maioria port map(AB,AC,BC, S);
end archMaioria;
