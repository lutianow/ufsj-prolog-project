%----------------------------------------
%       este é o banco de dados

sintoma(nao_liga).
sintoma(aquecendo).
sintoma(fumaça).
%---------------------------------------

%nesta parte ele verifica se o carro nao liga
problema(nao_liga) :-

    sintoma(nao_liga),write('seu carro acende o painel quando gira a chave? '),
    writeln(' (sim) ou (nao).'),
    write('digite:'),
    read(R1),

    (   R1 == nao ->
            writeln('Provavelmente voce tem um problema de bateria, '),
            writeln('o recomendado e que voce troque sua bateria, ou leve em alguma mecanica para recarrega-la')
    ;

    R1 == sim ->
          writeln('ja que seu painel acende, entao verifique se seu carro tem combustivel'),
          writeln('(sim) ou (nao)'),
          write('digite'),
          read(R2),

        (


          R2 == sim ->
              write('descobrimos seu problema, obrigado pela preferencia')
     ;
          R2 == nao ->
              write('recomendo que procure uma mecanica, pois nao consigo mais te ajudar')

        )

    ).

%aqui ele verifica se o carro esta aquecendo
problema(aquecendo):-
    sintoma(aquecendo),
    writeln('verivique se o reservatorio de agua do seu veiculo esta baixando agua'),
    writeln(' (sim) ou (nao).'),
    write('digite:'),
    read(R1),

    (
         R1 == sim ->
            write('verifique se seu carro esta pigando agua embaixo dele'),
            writeln(' (sim) ou (nao).'),
            write('digite:'),
            read(R2),

           (
             R2 == sim ->
                writeln('entao analise as mangueiras de liquido de arrefecimento se estao com folga ou furo, caso nao, tambem pode ser o radiador, verifique se a algun furo.'),
                writeln('caso nao tenha esperiencia com mecanica, leve o seu veiculo para um proficional qualificado')
             ;
             R2 == nao ->
                write('olhe a vareta de oleo, seu oleo esta marron ou uma cor mais clara'),
                writeln('(sim) ou (nao)'),
                write('digite'),
                read(R3),

                       (
                          R3 == sim ->
                              writeln('entao muito provavelmente, a junta do cabeçote do seu carro queimou, e a agua esta vazando para o oleo contaminando ele'),
                              writeln('recomendo que procure uma mecânico de confiança para efetuar o reparo')
                          ;
                          R3 == nao ->
                              writeln('uma possivel posibilidade e que a sua junta do cabeçote esteja queimada e a agua esta vazando para sua camara de combustao dentro do motor'),
                              writeln('neste caso leve para um mecanico, pois este problema e mais complexo e requer um proficional para fazer o conserto')
                       )

          )

    ;  R1 == nao ->write('infelizmente nao consigo te ajudar, recomendo que leve seu carro em um mecanico de sua confiança')


    ).


% aqui ele verifica o porque do seu carro esta saindo fumaça pelo escapamento
problema(fumaça):-
    sintoma(fumaça),
    writeln('primeiro veja se o oleo do carro esta abaixando'),
    writeln(' (sim) ou (nao).'),
    write('digite:'),
    read(R1),

    (
      R1 == sim ->write('retire as velas do carro e veja se a oleo nas velas'),
                  writeln(' (sim) ou (nao).'),
                  write('digite:'),
                  read(R2),

          (
                  R2 == sim ->writeln('o oleo pode estar entrando na camara de combustao,'),
                              writeln('porque provavelmente os aneis e pistões estao gasto'),
                              write('leve seu carro a um mecanico se sua segurança para fazer o reparo')
                  ;
                  R2 == nao ->writeln(' o oleo do pode estar entrando na camara de conbustao pelos retentores e valvulas'),
                              write('leve seu carro a um mecanico se sua segurança para fazer o reparo')

          )

    ;  R1 == nao ->writeln('infelizmente nao consigo te ajudar, recomendo que leve seu carro em um mecanico de sua confiança')

    ).












