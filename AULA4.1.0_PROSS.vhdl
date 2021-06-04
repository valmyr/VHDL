entity myXOR is port(A , B : in bit;
                      S    : out bit);
end myXOR;
architecture archMyXOR of myXOR is begin
  myProcess: process(A,B)
    begin
      S <= A xor B;
     end process myProcess;
end archMyXOR;
