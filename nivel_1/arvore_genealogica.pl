% Gêneros
homem(jose).
homem(joao).
homem(carlos).
homem(lucas).
mulher(maria).
mulher(ana).
mulher(julia).

pai(jose, joao).
pai(jose, ana).
mae(maria, joao).
mae(maria, ana).

pai(carlos, lucas).
pai(carlos, julia).
mae(ana, lucas).
mae(ana, julia).

gerou(X, Y) :- pai(X, Y).
gerou(X, Y) :- mae(X, Y).

filho(X, Y) :- gerou(Y, X), homem(X).

avo(X, Y) :- pai(X, Z), gerou(Z, Y).

irmao(X, Y) :- gerou(P, X), gerou(P, Y), X \= Y, homem(X).
