% BASE DE CONHECIMENTO (FATOS)
estrada(sao_paulo, campinas, 90).
estrada(campinas, ribeirao_preto, 230).
estrada(sao_paulo, santos, 70).
estrada(sao_paulo, sao_jose_dos_campos, 80).
estrada(sao_jose_dos_campos, taubate, 40).
estrada(taubate, ubatuba, 50).
estrada(santos, ubatuba, 200).
estrada(ribeirao_preto, franca, 90).

% REGRAS

% REGRA 1: Conexão Bidirecional
conectado(X, Y, Dist) :- estrada(X, Y, Dist).
conectado(X, Y, Dist) :- estrada(Y, X, Dist).

% REGRA 2: Encontrar Caminho
rota(Origem, Destino, Caminho, DistanciaTotal) :-
    viajar(Origem, Destino, [Origem], Caminho, DistanciaTotal).

% REGRA 3: Navegação Recursiva
viajar(Destino, Destino, Visitados, Caminho, 0) :-
    reverse(Visitados, Caminho).

% Passo Recursivo:
% 1. Verifica se há uma cidade 'Proxima' conectada à 'Atual'.
% 2. Garante que 'Proxima' NãO está na lista 'Visitados' (manipulação de lista) para evitar loops.
% 3. Chama 'viajar' recursivamente, adicionando 'Proxima' aos visitados.
% 4. Após o retorno da recursão, soma as distâncias.
viajar(Atual, Destino, Visitados, Caminho, DistTotal) :-
    conectado(Atual, Proxima, DistanciaTrecho),
    \+ member(Proxima, Visitados), % '\+' significa NOT. Verifica se não à membro da lista.
    viajar(Proxima, Destino, [Proxima|Visitados], Caminho, DistRestante),
    DistTotal is DistanciaTrecho + DistRestante.

% REGRA 4: Rota Segura (MENOR ROTA)
rota_curta(Origem, Destino, MaxCidades) :-
    rota(Origem, Destino, Caminho, _),
    length(Caminho, Tamanho),
    Tamanho =< MaxCidades.
