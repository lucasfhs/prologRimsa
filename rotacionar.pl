/*13) Rotacionar	uma	lista	uma	posição.
 Ex.: ?- rotacionar([1, 2, 3, 4, 5], L).
 L = [2, 3, 4, 5, 1] .
 */

rotacionar([H|T], L) :- inserirfim(H, T, L).

inserirfim(X, [], [X]).
inserirfim(X, [H|T], [H|R]) :- inserirfim(X, T, R).