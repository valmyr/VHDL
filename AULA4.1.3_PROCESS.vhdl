--AB'C'+BC
entity myFunction is port(A,B,C : in bit;
                              F : out bit);
end myFunction;
architecture archMyFunction of myFunction is begin
  myFunctionLabel : process (A,B,C) begin
    if(A = '1' and B ='0' and C = '0') then 
      F <= '1';
    elsif(B='1' and C='1') then
      F <= '1'
    else
      F<= '0';
    end if;
  end process myFunctionLabel;
end archMyFunction;
