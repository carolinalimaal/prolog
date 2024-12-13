% Questão 1
% func(Código, Nome, Salário)
func(1, ana, 1000.90).
func(2, bia, 1200.00).
func(3, ivo, 903.50).
% dep(Código, Nome)
dep(1, ary).
dep(3, raí).
dep(3, eva).

% a) Dependentes do ivo:
% func(N, ivo, _), dep(N, X).

% b) De quem ary depende?
% dep(N, ary), func(N, X, _).

% c) Quem depende de funcionário com salário inferior a R$950,00?
% func(N, _, S), dep(N, X), S < 950.

% d) Quais funcionários que não têm dependentes?
% func(N, X, _), \+(dep(N, _))

% Questão 2
joga(ana,volei).
joga(bia,tenis).
joga(ivo,basquete).
joga(eva,volei).
joga(leo,tenis).

% A primeira consulta é mais eficiênte, pois compara somente com as pessoas que jogam o mesmo esporte de leo
% (tênis, bia e leo). Na segunda, ele escolhe a primeira pessoa e seu respectivo esporte e verifica se o leo
% joga o mesmo esporte, resultando em mais comparações.

% A primeira faz menos comparações (5 + 2 + 1)
