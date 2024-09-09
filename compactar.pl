/*11) Compactar	uma	lista	de	elementos	consecutivos.
 Ex.: ?- compactar([a,a,a,a,b,c,c,a,a,d,e,e,e,e], L).
 L = [[4,a], [1,b], [2,c], [2,a], [1,d], [4,e]] .
 */

compactar(Lista, L) :-
    compactar_aux(Lista, [], L).

compactar_aux([], L, L).

compactar_aux([H|T], Acc, L) :-
    conta_consecutivos([H|T], H, 0, N, Resto),
    adicionar_no_fim(Acc, [N, H], NovaAcc),  
    compactar_aux(Resto, NovaAcc, L).

conta_consecutivos([X|T], X, Contador, N, Resto) :-
    Contador1 is Contador + 1,
    conta_consecutivos(T, X, Contador1, N, Resto).
conta_consecutivos([Y|T], X, N, N, [Y|T]) :-
    X \= Y.
conta_consecutivos([], _, N, N, []).

adicionar_no_fim([], Elem, [Elem]).
adicionar_no_fim([H|T], Elem, [H|NovoT]) :-
    adicionar_no_fim(T, Elem, NovoT).








