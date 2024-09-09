/* 12)  Remover de uma lista um elemento (todas as suas ocorrências). 
  Ex.: ?- remover(3, [1,3,2,3,4], L). 
       L = [1, 2, 4] .
*/


remover(_, [], []).

remover(E, [E|T], L) :- remover(E, T, L).

remover(E, [H|T], [H|L]) :- E \= H, remover(E, T, L).

