/*9) Incrementar	em	uma	unidade	cada	elemento	de	uma	lista	de	inteiros.
 Ex.: ?- incrementar([5, 6, 7, 8], L).
 L = [6, 7, 8, 9] .
 */


incrementar([], []).
incrementar([H|T], [H1|T1]) :- H1 is H + 1, incrementar(T, T1).  
