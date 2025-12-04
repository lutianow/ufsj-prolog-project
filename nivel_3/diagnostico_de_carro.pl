%--------------------------------------------------
% Banco de dados
%--------------------------------------------------

sintoma(nao_liga).
sintoma(aquecendo).
sintoma(fumaca).

%--------------------------------------------------
% Mensagem padrao de impossibilidade de ajuda
%--------------------------------------------------

nao_posso_ajudar :-
    writeln('Nao sera possivel prosseguir com o diagnostico com as informacoes fornecidas.'),
    writeln('E recomendavel procurar uma assistencia mecanica qualificada para uma avaliacao adequada.').

%--------------------------------------------------
% Diagnostico: carro nao liga
%--------------------------------------------------

problema(nao_liga) :-
    sintoma(nao_liga),
    writeln('O painel do veiculo acende ao girar a chave?'),
    writeln('Digite: sim ou nao.'),
    read(R1),

    (   R1 == nao ->
            writeln('Possivel falha na bateria.'),
            writeln('Recomenda-se testar, recarregar ou substituir a bateria conforme necessario.')
    ;
        R1 == sim ->
            writeln('Verifique se o veiculo possui combustivel suficiente.'),
            writeln('Digite: sim ou nao.'),
            read(R2),

            (   R2 == nao ->
                    writeln('Combustivel insuficiente detectado.'),
                    writeln('Reposicao de combustivel deve resolver o problema.')
            ;
                R2 == sim ->
                    nao_posso_ajudar
            )
    ).

%--------------------------------------------------
% Diagnostico: veiculo aquecendo
%--------------------------------------------------

problema(aquecendo) :-
    sintoma(aquecendo),
    writeln('O reservatorio de agua esta reduzindo o nivel?'),
    writeln('Digite: sim ou nao.'),
    read(R1),

    (   R1 == sim ->
            writeln('Ha vazamento de agua sob o veiculo?'),
            writeln('Digite: sim ou nao.'),
            read(R2),

            (   R2 == sim ->
                    writeln('Possivel vazamento no sistema de arrefecimento.'),
                    writeln('Verifique mangueiras, conexoes e radiador.'),
                    writeln('Caso nao tenha experiencia, procure uma assistencia mecanica qualificada.')
            ;
                R2 == nao ->
                    writeln('O oleo esta com aspecto marrom claro ou alterado?'),
                    writeln('Digite: sim ou nao.'),
                    read(R3),

                    (   R3 == sim ->
                            writeln('Possivel falha na junta do cabecote com contaminacao do oleo.'),
                            writeln('Procure uma assistencia mecanica especializada.')
                    ;
                        R3 == nao ->
                            writeln('Possivel falha na junta do cabecote permitindo passagem de agua para a camara de combustao.'),
                            writeln('E necessario levar o veiculo a um mecanico para avaliacao detalhada.')
                    )
            )
    ;
        R1 == nao ->
            nao_posso_ajudar
    ).

%--------------------------------------------------
% Diagnostico: fumaca no escapamento
%--------------------------------------------------

problema(fumaca) :-
    sintoma(fumaca),
    writeln('O nivel de oleo esta reduzindo?'),
    writeln('Digite: sim ou nao.'),
    read(R1),

    (   R1 == sim ->
            writeln('As velas apresentam oleo?'),
            writeln('Digite: sim ou nao.'),
            read(R2),

            (   R2 == sim ->
                    writeln('Possivel desgaste em aneis ou pistoes, permitindo entrada de oleo na camara de combustao.'),
                    writeln('Leve o veiculo a um mecanico para avaliacao.')
            ;
                R2 == nao ->
                    writeln('Possivel passagem de oleo pelos retentores de valvula.'),
                    writeln('Procure uma assistencia mecanica para avaliacao.')
            )
    ;
        R1 == nao ->
            nao_posso_ajudar
    ).
