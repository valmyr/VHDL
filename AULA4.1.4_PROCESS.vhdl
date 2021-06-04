entity buffer_ is port(input : in bit_vector(7 downto 0);
                       output: out bit_vector(7 downto 0);
                       load  : in bit);
end buffer_;
architecture  archBuffer_ of bufer_ is begin 
  processBuffer : process (load) begin
  --se load "0 -> 1"
    if(load = '1') then 
        output <= input;
    end if;
  end process processBuffer;
end archBuffer_;
