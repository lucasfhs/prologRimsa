/* 10)  Linearizar uma lista de inteiros. Dica: use o predicado concatenar. 
  Ex.: ?- linearizar([[1,2,3], [4,5], [6], [7,8]], L). 
           L = [1, 2, 3, 4, 5, 6, 7, 8] .

*/

concatenar([], L, L).
concatenar([H|T], L, [H|R]) :- concatenar(T, L, R).

linearizar([], []).
linearizar([H|T], L) :- linearizar(T, L1), concatenar(H, L1, L).
