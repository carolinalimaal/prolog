num(N, positivo) :- N>0.
num(0, nulo).
num(N, negativo) :- N<0.

% Acontece retrocesso desnecessário pois em prolog 
% todas as clausulas da base de conhecimento são 
% testadas, como não há cortes, não há interrupção.

% num(0, nulo).
% num(N, positivo) :- N > 0, !.
% num(N, negativo) :- N < 0, !.

cadastro("Ana", fem, 23, 1.55, 56.0).
cadastro("Bia", fem, 19, 1.71, 61.3).
cadastro("Ivo", masc, 22, 1.80, 70.5).
cadastro("Lia", fem, 17, 1.85, 57.3).
cadastro("Eva", fem, 28, 1.75, 68.7).
cadastro("Ary", masc, 25, 1.72, 68.9).

% Questão 4 letra a)
% cadastro(N, fem, I, _, _), I > 20

% letra b)
% cadastro(N, _, _, A, P), A > 1.70, P < 65.0

% letra c)
% cadastro(H, masc, _, Ah, _), 
% cadastro(M, fem, _, Am, _), Ah > Am


isModelo(Peso, Altura, Idade, Nome) :- 	cadastro(Nome, fem, Idade, Altura, Peso),
    									Peso =< (62.1 * Altura) - 44.7,
    									Altura > 1.70,
    									Idade < 25.
