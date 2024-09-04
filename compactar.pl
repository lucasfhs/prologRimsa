/*11) Compactar	uma	lista	de	elementos	consecutivos.
 Ex.: ?- compactar([a,a,a,a,b,c,c,a,a,d,e,e,e,e], L).
 L = [[4,a], [1,b], [2,c], [2,a], [1,d], [4,e]] .
 */

% Predicado principal para compactar a lista
compactar([], []).
compactar(L, [[N, X]|R]) :-
    conta_consecutivos(L, X, N, Restante),
    compactar(Restante, R).

% Contar elementos consecutivos
conta_consecutivos([], _, 0, []).
conta_consecutivos([X|T], X, N, Restante) :-
    conta_consecutivos(T, X, N1, Restante),
    N is N1 + 1.
conta_consecutivos(L, Y, 1, L) :-
    L = [Y|_],
    Y \= _.




