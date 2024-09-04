/*9) Incrementar	em	uma	unidade	cada	elemento	de	uma	lista	de	inteiros.
 Ex.: ?- incrementar([5, 6, 7, 8], L).
 L = [6, 7, 8, 9] .
 */

% inserirfim(X, [], [X]).
% inserirfim(X, [H|T], [H|R]) :- inserirfim(X, T, R).

% ultimo([U],U).
% ultimo([],[]).
% ultimo([_|T],U) :- ultimo(T,U).

% incrementar([_|X], L) :- ultimo(X, U), U1 is U+1, inserirfim(U1, X, L).

incrementar([], []).
incrementar([H|T], [H1|T1]) :- H1 is H + 1, incrementar(T, T1).

