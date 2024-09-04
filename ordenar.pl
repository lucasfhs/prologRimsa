/*15) Ordenar	uma	lista	de	inteiros.
 Ex.: ?- ordenar([3, 1, 2], L).
 L = [1, 2, 3] .
 */

ordenar([], L).
ordenar([H|M], L) :- iterar(H, L, L1), ordenar(M, L1).

iterar(X, [], [X]). 
iterar(X, [H|L], [H|R]) :- X > H, iterar(X, L, R).  
iterar(X, [H|L], [X, H|R]) :- X =< H. 

/*
% CHAT GPTECO -

ordenar([], []).  % Se a lista de entrada é vazia, a lista ordenada também é vazia.
ordenar([H|M], L) :- 
    iterar(H, M, L1), 
    ordenar(L1, L).

iterar(X, [], [X]). 
iterar(X, [H|L], [H|R]) :- X > H, iterar(X, L, R).  
iterar(X, [H|L], [X, H|L]) :- X =< H.

*/
