% Gêneros
homem(jose).
homem(joao).
homem(carlos).
homem(lucas).
mulher(maria).
mulher(ana).
mulher(julia).

% Relações de paternidade
pai(jose, joao).
pai(jose, ana).
mae(maria, joao).
mae(maria, ana).

% Outra relação de paternidade
pai(carlos, lucas).
pai(carlos, julia).
mae(ana, lucas).
mae(ana, julia).

% A regra "gerou" define quem é o genitor de um filho, seja pai ou mãe
gerou(X, Y) :- pai(X, Y).
gerou(X, Y) :- mae(X, Y).

% A regra "filho" específica quem é filho de alguém e do sexo masculino
filho(X, Y) :- gerou(Y, X), homem(X).

avo(X, Y) :- pai(X, Z), gerou(Z, Y).

irmao(X, Y) :- gerou(P, X), gerou(P, Y), X \= Y, homem(X).
