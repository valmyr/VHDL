entity fliFlopD is port(D, clk : in bit;
                        Q, Qb  : out bit);
end flipFlopD;
architecture archFlipFlopD of FlipFlopD is begin 
  FLIPFLOP_PROCESS : process (clk) begin
    if(rising_edge(clk)) then 
      Q <= D;
      Qb <= not(Q);
    end if
  end process FLIPFLOP_PROCESS;
end archFlipFlopD;
