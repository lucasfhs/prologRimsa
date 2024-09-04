/* 12)  Remover de uma lista um elemento (todas as suas ocorrências). 
  Ex.: ?- remover(3, [1,3,2,3,4], L). 
       L = [1, 2, 4] .
*/


remover(_, [], []).

% Caso em que o elemento a ser removido é a cabeça da lista: remove o elemento e continua removendo na cauda
remover(E, [E|T], L) :- 
    remover(E, T, L).

% Caso em que o elemento a ser removido não é a cabeça da lista: mantém o elemento e continua removendo na cauda
remover(E, [H|T], [H|L]) :- 
    E \= H, 
    remover(E, T, L).

