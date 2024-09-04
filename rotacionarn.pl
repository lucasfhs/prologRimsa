/*
14)  Rotacionar uma lista n posições. 
  Ex.: ?- rotacionarn(2, [1, 2, 3, 4, 5], L). 
      L = [3, 4, 5, 1, 2] .
*/

concatenar([], L, L).
concatenar([H|T], L, [H|R]) :- concatenar(T, L, R).

rotacionarn(0, L, L).
rotacionarn(N, [H|T], L) :- N > 0, N1 is N - 1, concatenar(T, [H], L1), rotacionarn(N1, L1, L).

