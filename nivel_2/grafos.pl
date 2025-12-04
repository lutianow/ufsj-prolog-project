% 1. Fatos: Estradas de Minas Gerais

% estrada(Origem, Destino, DistanciaKm).

estrada(belo_horizonte, ouro_preto, 100).
estrada(ouro_preto, mariana, 15).
estrada(mariana, ponte_nova, 60).
estrada(belo_horizonte, congonhas, 80).
estrada(congonhas, sao_joao_del_rei, 100).
estrada(sao_joao_del_rei, tiradentes, 15).

% 2. REGRAS

% REGRA 1: Conexao entre cidades
% explicacao: O codigo verifica se existe estrada direta OU se existe
% estrada ate uma cidade intermediaria que leva ao destino.

existe_caminho(Origem, Destino) :-
    estrada(Origem, Destino, _).            % Caso base (estrada direta)

existe_caminho(Origem, Destino) :-
    estrada(Origem, Vizinha, _),            % Regra recursiva(existe_caminho)
    existe_caminho(Vizinha, Destino).       % Continua a busca a partir da vizinha


% REGRA 2: Distancia Total
% explicacao: Percorre o grafo somando as distancias.
% Total = Distancia do Trecho Atual + Distancia do Restante.

distancia_total(Origem, Destino, KmTotal) :-
    estrada(Origem, Destino, Km),           % Caso base
    KmTotal is Km.

distancia_total(Origem, Destino, KmTotal) :-
    estrada(Origem, Vizinha, KmTrecho1),    % Pega dist do 1º trecho
    distancia_total(Vizinha, Destino, KmRestante), % Regra recursiva(distancia_total)
    KmTotal is KmTrecho1 + KmRestante.      % Somatoria


% REGRA 3: Contador de Escalas
% explicacao: Conta quantos trechos de estrada (arestas do grafo) existem no caminho.
% Escalas = 1 + Escalas do resto do caminho.

conta_escalas(Origem, Destino, 1) :-        % Caso base (1 trecho)
    estrada(Origem, Destino, _).

conta_escalas(Origem, Destino, Total) :-
    estrada(Origem, Vizinha, _),            % Regra recursiva(conta_escalas)
    conta_escalas(Vizinha, Destino, Restante),
    Total is 1 + Restante.                  % Incremento