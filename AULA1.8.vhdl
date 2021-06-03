--atribuição de sinais condicional when-else
--<alvo> <= <expressão>when <condição> else 
-----------<expressão>when <condição> else
-----------<expressão>;

--Condições =,/=, >, >=, < , <= 
--Implemente a arquitetura de f = l'm'n+lm usando atribuição condicional

entity myFunction is
  port(l,m,n : in bit;
       f     : out bit);
  end myFunction;
architecture archMyFunction  of myFunction is
  begin
      f <= '1' when not(l) and not(m) and n else 
           '1' when (l and n) else 
           '0'; 
   end archMyFunction;
