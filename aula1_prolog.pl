mulher(ana).
mulher(bia).
mulher(eva).
mulher(clo).
mulher(lia).
mulher(gal).

homem(ivo).
homem(gil).
homem(rai).
homem(ary).
homem(noe).

mae(ana, eva).
mae(bia, rai).
mae(bia, clo).
mae(bia, ary).
mae(eva, noe).
mae(lia, gal).

pai(ivo, eva).
pai(gil, rai).
pai(gil, clo).
pai(gil, ary).
pai(rai, noe).
pai(ary, gal).

gerou(X,Y) :- pai(X, Y) ; mae(X, Y).

irmao(X, Y) :- gerou(Z, X), 
    			gerou(Z, Y), 
    			homem(X), 
    			X \== Y.

irma(X, Y) :- gerou(Z, X), 
    			gerou(Z, Y), 
    			mulher(X), 
    			X \== Y.

tio(X, Y) :- irmao(X, Z),
    			gerou(Z, Y).
    
tia(X, Y) :- irma(X, Z),
    			gerou(Z, Y).

avô(X,Y) :- pai(X,Z),
    		gerou(Z,Y).
    
avó(X,Y) :- mae(X,Z),
    		gerou(Z,Y).  
    
casal(X,Y) :- pai(X,Z), mae(Y,Z).
    
feliz(X) :- gerou(X, _Y).

