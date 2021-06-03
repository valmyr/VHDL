library IEEE;
use IEEE.numeric.all;
entity mySwitch is port(ent0, ent1 : in bit_vector(3 downto 0 );
                       sel        : in bit;
                       s          : out bit_vector (3 downto 0));
end mySwitch;
architecture archMySwitch of mySwitch is begin
  with  sel  select
      s <= ent1 when '1',
           ent0 when "0',
           "0000" when others;
end archMySwitch;
