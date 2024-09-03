/* 5) Obter o último elemento de uma lista. 
  Ex.: ?- ultimo([1, 2, 3, 4], U). 
       U = 4 .
*/
ultimo([U],U).
ultimo([],[]).
ultimo([_|T],U) :- ultimo(T,U).