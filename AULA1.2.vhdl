--Escreva a entity para o circuito a seguir
entity entityMySwitch is
  port(ent1, ent0: in bit_vector(4 downto 0);
       sel : in  bit_vector(4 downto 0);
       outp: out bit_vector(4 downto 0));
end entityMySwitch;
architecture archiMySwitch of entityMySwitch is
  begin
    
end archiMySwitch;
