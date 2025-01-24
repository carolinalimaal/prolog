raiz(15).
no(10, 15, 20).
no(5, 10, 9).
no(17, 20, 27).
no(nil, 5, 7).
no(25,27, nil).

% 1) Todo nó que nâo é folha
no_interno(No) :- no(_, No, _).

% 2) Todo nó que é folha
no_folha(No) :- no(No, _, _), \+no_interno(No).
no_folha(No) :- no(_, _, No), \+no_interno(No).


% 3)
filhos(No) :- 	no(E, No, D), 
    		  	E \== nil, 
              	D \== nil, 
              	write("Filho da esquerda e da direita: "), 
              	write(E), write(" e "), write(D), !.
filhos(No) :- 	no(E, No, _), 
    		  	E \== nil,
              	write("Filho da esquerda: "), 
              	write(E), !.
filhos(No) :- 	no(_, No, D), 
    		  	D \== nil,
              	write("Filho da direita: "), 
              	write(D), !.
filhos(_No) :- 	write("Não possui filhos").

% 4)
visita(No) :- write(No), write(" - ").

pre_ordem :- raiz(No), pre_ordem(No).
pre_ordem(No) :- No == nil, !.
pre_ordem(No) :- no_folha(No), visita(No), !.
pre_ordem(No) :- 	no(E, No, D),
    				visita(No),
    				pre_ordem(E),
    				pre_ordem(D).

% 5)
em_ordem :- raiz(No), em_ordem(No).
em_ordem(No) :- No == nil, !.
em_ordem(No) :- no_folha(No), visita(No), !.
em_ordem(No) :- no(E, No, D),
    			em_ordem(E),
    			visita(No),
    			em_ordem(D).

% 6)
pos_ordem :- raiz(No), pos_ordem(No).
pos_ordem(No) :- No == nil, !.
pos_ordem(No) :- no_folha(No), visita(No), !.
pos_ordem(No) :- 	no(E, No, D),
                  	pos_ordem(E),
                  	pos_ordem(D),
                  	visita(No).

% 7) nivel
nivel(No, R) :- raiz(Raiz), nivel(Raiz, No, R).
nivel(Atual, No, R) :- Atual =:= No, R is 1, !.
nivel(Atual, No, R) :- 	no(E, Atual, _),
    					E \== nil,
    					nivel(E, No, R1),
    					R is R1 + 1, !.
nivel(Atual, No, R) :- 	no(_, Atual, D),
    					D \== nil,
    					nivel(D, No, R1),
    					R is R1 + 1.


% 8) grau
grau(No, R) :- no(E, No, D), E \== nil, D \== nil, R is 2, !.
grau(No, R) :- no(E, No, nil), E \== nil, R is 1, !.
grau(No, R) :- no(nil, No, D), D \== nil, R is 1, !.
grau(_No, R) :- R is 0.

% 9) irmao

% 10) altura

% 11) mais a esquerda, nunca pode pegar um caminho a direita























