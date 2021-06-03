--Exemplo: qual a arquitetura que representa um "inibidor"  que dá saída X quando Y = 0, e saída  0 quando Y = 1?


-- Y S
-- 0 x
-- 1 0
-- S <= (~Y) AND X;

entity minha_entidade is 
    port(x,y: in bit;
         s : out bit);
    architecture minha_arquitetura of minha_entidade is
      begin
         s <=  ~y and x;
      end minha_arquitetura;
end minha_entidade;
