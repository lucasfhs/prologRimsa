/*
1) Obter o número de elementos de uma lista. 
  Ex.: ?- nelementos([1, 2, 3], S). 
       S = 3 .
 */

nelementos([],0).
nelementos([_|T],S) :- nelementos(T,S1), S is (S1 + 1).