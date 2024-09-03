/* 3) Obter o valor médio de uma lista de inteiros. 
  Ex.: ?- medio([4, 5, 2, 3, 1], M). 
       M = 3.0 
*/

nelementos([],0).
nelementos([_|T],S) :- nelementos(T,S1), S is (S1 + 1).

soma([],0).
soma([H|T],R) :-  soma(T,R1), R is (H+R1).

medio([],0).
medio(L,M) :- soma(L,RS), nelementos(L,RE), RE > 0, M is (RS/RE).
