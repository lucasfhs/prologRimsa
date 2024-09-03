/*7) Gerar	uma	lista	com	os	elementos	de	uma	faixa	(inclusive).
 Ex.: ?- gerar(5, 10, L).
 L = [5, 6, 7, 8, 9, 10] .
 */

gerar(F,F,[F]).
gerar(I,F,[I|L]) :- I1 is I+1, gerar(I1, F, L). 