% Generos
homem(jose).
homem(joao).
homem(carlos).
homem(lucas).
mulher(maria).
mulher(ana).
mulher(julia).

% Relacoes de paternidade
pai(jose, joao).
pai(jose, ana).
mae(maria, joao).
mae(maria, ana).

% Outra relacao de paternidade
pai(carlos, lucas).
pai(carlos, julia).
mae(ana, lucas).
mae(ana, julia).

% A regra "gerou" define quem eh o genitor de um filho, seja pai ou mae
gerou(X, Y) :- pai(X, Y).
gerou(X, Y) :- mae(X, Y).

% A regra "filho" especifica quem eh filho de alguem e do sexo masculino
filho(X, Y) :- gerou(Y, X), homem(X).

avo(X, Y) :- pai(X, Z), gerou(Z, Y).

irmao(X, Y) :- gerou(P, X), gerou(P, Y), X \= Y, homem(X).
