/*
2) Obter o maior valor de uma lista de inteiros. 
  Ex.: ?- maior([4, 5, 2, 3, 1], M). 
       M = 5 
*/

maior([X], X).
maior([X|Xs], M) :- maior(Xs, M1), maior_aux(X, M1, M).

maior_aux(X, Y, X) :- X >= Y.
maior_aux(X, Y, Y) :- X < Y.