/* 8) Reverter uma lista. Dica: use o predicado concatenar. 
  Ex.: ?- reverter([1, 2, 3], L). 
       L = [3, 2, 1] 
*/



concatenar([], L, L).
concatenar([X|L1], L2, [X|L3]) :- concatenar(L1, L2, L3).


ultimo([U], U).
ultimo([_|T], U) :- ultimo(T, U).


reverter([], []).
reverter([H|T], Reversa) :-
    reverter(T, ReversaT),  % Reverter a cauda da lista
    concatenar(ReversaT, [H], Reversa).  % Adicionar a cabeça no final da lista invertida
