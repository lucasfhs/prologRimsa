/* 6) Verificar se um elemento X é adjacente a um elemento Y. 
    Ex.: ?- adjacente(3, 4, [1, 2, 3, 4, 5, 6]). 
       true . 
*/


adjacente(X, Y, [X, Y | _]).
adjacente(X, Y, [_ | T]) :- adjacente(X, Y, T).
