entity myFunction is
  port(L,M,N : in bit;
           F : out bit);
  end myFunction;
architecture archMyFunction of myFunction is
   begin
     F <= (not(L) and not(M) and N) or (L and M);
  end archMyFunction;
