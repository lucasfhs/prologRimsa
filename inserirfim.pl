/*
4) Inserir um elemento no fim da lista. 
  Ex.: ?- inserirfim(4, [1, 2, 3], L). 
       L = [1,2,3,4] .
*/

inserirfim(X, [], [X]).
inserirfim(X, [H|T], [H|R]) :- inserirfim(X, T, R).
