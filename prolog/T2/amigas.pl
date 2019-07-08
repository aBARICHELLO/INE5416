% https://rachacuca.com.br/logica/problemas/amigas-na-escola-ii/
% (2)

nome(aline).
nome(beatriz).
nome(isabelle).
nome(juliana).
nome(patricia).

mochila(amarela).
mochila(azul).
mochila(branca).
mochila(verde).
mochila(vermelha).

materia(artes).
materia(biologia).
materia(historia).
materia(matematica).
materia(portugues).

animal(cachorros).
animal(cavalos).
animal(gatos).
animal(hamsters).
animal(passaros).

lugar(florianopolis).
lugar(manaus).
lugar(recife).
lugar(rio_de_janeiro).
lugar(salvador).

suco(abacaxi).
suco(laranja).
suco(limao).
suco(maracuja).
suco(morango).

% Canto/Pontas se é o primeiro ou último da lista
canto(X, L) :-
    last(L, X).
canto(X, [X|_]).

% X está à esquerda de Y
esquerda(X, Y, L) :-
    nth0(IndexX, L, X),
    nth0(IndexY, L, Y),
    IndexX < IndexY.

% X está imediatamente à esquerda de Y
esquerdaImd(X, Y, L) :-
    nextto(X, Y, L).

% X está à direita de Y
direita(X, Y, L) :-
    esquerda(Y, X, L).

% X está imediatamente ao lado de Y
aoLado(X, Y, L) :-
    (   nextto(X, Y, L)
    ;   nextto(Y, X, L)
    ).

% Retorna de X está entre Y e Z na lista L
entre(X, Y, Z, L) :-
    esquerda(X, Z, L),
    direita(X, Y, L).

% Função recursiva checando cada elemento se não é repetido
diferentes([]).
diferentes([H|T]) :-
    not(member(H, T)),
    diferentes(T).

solucao(L) :-
    L=[
        menina(Nome1, Mochila1, Materia1, Animal1, Lugar1, Suco1),
        menina(Nome2, Mochila2, Materia2, Animal2, Lugar2, Suco2),
        menina(Nome3, Mochila3, Materia3, Animal3, Lugar3, Suco3),
        menina(Nome4, Mochila4, Materia4, Animal4, Lugar4, Suco4),
        menina(Nome5, Mochila5, Materia5, Animal5, Lugar5, Suco5)
    ],

    % A menina que gosta de suco de Laranja está em um dos cantos.
    canto(menina(_, _, _, _, _, laranja), L),

    % Quem gosta de suco de Maracujá está sentada em algum lugar entre quem gosta de cavalos e
    % quem gosta de suco de Morango, nessa ordem.
    entre(menina(_, _, _, _, _, maracuja),
          menina(_, _, _, cavalos, _, _),
          menina(_, _, _, _, _, morango),
          L),

    % A menina que gosta de suco de Limão está sentada ao lado da que tem a mochila Vermelha.
    aoLado(menina(_, _, _, _, _, limao),
           menina(_, vermelha, _, _, _, _),
           L),

    % A Isabelle está sentada ao lado de quem gosta de suco de Laranja.
    aoLado(menina(isabelle, _, _, _, _, _),
           menina(_, _, _, _, _, laranja),
           L),

    % Quem gosta de Hamsters vai para o Rio de Janeiro.
    member(menina(_, _, _, hamsters, rio_de_janeiro, _), L),

    % A Aline está sentada exatamente à esquerda de quem viajará para Manaus.
    esquerdaImd(menina(aline, _, _, _, _, _),
                menina(_, _, _, _, manaus, _),
                L),

    % Quem vai para Florianópolis está sentada em algum lugar à direita da Aline.
    direita(menina(_, _, _, _, florianopolis, _),
            menina(aline, _, _, _, _, _),
            L),

    % Quem vai viajará para o Recife está sentada em um dos cantos.
    canto(menina(_, _, _, _, recife, _), L),

    % A menina que gosta de Biologia vai viajar para o Rio de Janeiro.
    member(menina(_, _, biologia, _, rio_de_janeiro, _), L),

    % Ao lado de quem gosta de Gatos está sentada a menina com a mochila Branca.
    aoLado(menina(_, _, _, gatos, _, _),
           menina(_, branca, _, _, _, _),
           L),

    % A menina que gosta de pássaros está sentada em uma das pontas.
    canto(menina(_, _, _, passaros, _, _), L),

    % Quem gosta de Hamsters está sentada ao lado de quem gosta de Cachorros.
    aoLado(menina(_, _, _, hamsters, _, _),
           menina(_, _, _, cachorros, _, _),
           L),

    % Ao lado de quem tem a mochila Branca está a menina que gosta de Pássaros.
    aoLado(menina(_, branca, _, _, _, _),
           menina(_, _, _, passaros, _, _),
           L),

    % Quem gosta de Cachorros está sentada na extrema direita.
    Animal5=cachorros,

    % A menina que adora Matemática está sentada ao lado de quem gosta de Cavalos.
    aoLado(menina(_, _, matematica, _, _, _),
           menina(_, _, _, cavalos, _, _),
           L),

    % Quem usa a mochila Verde adora estudar História.
    member(menina(_, verde, historia, _, _, _), L),

    % A Aline adora estudar Português.
    member(menina(aline, _, portugues, _, _, _), L),

    % Quem gosta de Matemática está sentada exatamente à esquerda de quem gosta de Hamsters.
    esquerdaImd(menina(_, _, matematica, _, _, _),
                menina(_, _, _, hamsters, _, _),
                L),

    % A menina da mochila Vermelha está sentada exatamente à esquerda de quem gosta de Biologia.
    esquerdaImd(menina(_, vermelha, _, _, _, _),
                menina(_, _, biologia, _, _, _),
                L),

    % A menina da mochila Azul gosta de estudar Biologia.
    member(menina(_, azul, biologia, _, _, _), L),

    % A Aline está sentada em algum lugar entre quem vai para o Recife e quem tem a mochila Verde,
    % nessa ordem.
    entre(menina(aline, _, _, _, _, _),
          menina(_, _, _, _, recife, _),
          menina(_, verde, _, _, _, _),
          L),

    % A Beatriz está sentada no meio.
    Nome3=beatriz,

    % A Patrícia está sentada na primeira cadeira.
    Nome1=patricia,

    % Testando possibilidades
    nome(Nome1), nome(Nome2), nome(Nome3), nome(Nome4), nome(Nome5),
    diferentes([Nome1, Nome2, Nome3, Nome4, Nome5]),

    mochila(Mochila1), mochila(Mochila2), mochila(Mochila3), mochila(Mochila4), mochila(Mochila5),
    diferentes([Mochila1, Mochila2, Mochila3, Mochila4, Mochila5]),

    materia(Materia1), materia(Materia2), materia(Materia3), materia(Materia4), materia(Materia5),
    diferentes([Materia1, Materia2, Materia3, Materia4, Materia5]),

    animal(Animal1), animal(Animal2), animal(Animal3), animal(Animal4), animal(Animal5),
    diferentes([Animal1, Animal2, Animal3, Animal4, Animal5]),

    lugar(Lugar1), lugar(Lugar2), lugar(Lugar3), lugar(Lugar4), lugar(Lugar5),
    diferentes([Lugar1, Lugar2, Lugar3, Lugar4, Lugar5]),

    suco(Suco1), suco(Suco2), suco(Suco3), suco(Suco4), suco(Suco5),
    diferentes([Suco1, Suco2, Suco3, Suco4, Suco5]).

% Solução:

% ?- solucao(L).
% L = [
%     menina(patricia, amarela, artes, passaros, recife, abacaxi),
%     menina(aline, branca, portugues, cavalos, salvador, limao),
%     menina(beatriz, vermelha, matematica, gatos, manaus, maracuja),
%     menina(isabelle, azul, biologia, hamsters, rio_de_janeiro, morango),
%     menina(juliana, verde, historia, cachorros, florianopolis, laranja)
% ].
