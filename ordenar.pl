/*15) Ordenar	uma	lista	de	inteiros.
 Ex.: ?- ordenar([3, 1, 2], L).
 L = [1, 2, 3] .
 */

ordenar([], []).
ordenar([H|M], L) :- ordenar(M, L1), iterar(H, L1, L).

iterar(X, [], [X]). 
iterar(X, [H|L], [H|R]) :- X > H, iterar(X, L, R).  
iterar(X, [H|L], [X,H|L]) :- X =< H.
