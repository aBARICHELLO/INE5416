% https://rachacuca.com.br/logica/problemas/amigas-na-escola-ii/

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

% Qualquer lugar à esquerda
esquerda(X, Y, L) :-
    nth0(IndexX, L, X),
    nth0(IndexY, L, Y),
    IndexX<IndexY.

% Qualquer lugar à direita
direita(X, Y, L) :-
    esquerda(Y, X, L).

% Imediatamente ao lado
aoLado(X, Y, L) :-
    (   nextto(X, Y, L)
    ;   nextto(Y, X, L)
    ).

% Entre
% entre().

% Função recursiva checando cada elemento se não é repetido
diferentes([]).
diferentes([H|T]) :-
    not(member(H, T)),
    diferentes(T).

solucao(L) :-
    L=[
        amiga(Nome1, Mochila1, Materia1, Animal1, Lugar1, Suco1),
        amiga(Nome2, Mochila2, Materia2, Animal2, Lugar2, Suco2),
        amiga(Nome3, Mochila3, Materia3, Animal3, Lugar3, Suco3),
        amiga(Nome4, Mochila4, Materia4, Animal4, Lugar4, Suco4),
        amiga(Nome5, Mochila5, Materia5, Animal5, Lugar5, Suco5),
    ],

    % A menina que gosta de suco de Laranja está em um dos cantos.

    % Quem gosta de suco de Maracujá está sentada em algum lugar entre quem gosta de cavalos e quem gosta de suco de Morango, nessa ordem.

    % A menina que gosta de suco de Limão está sentada ao lado da que tem a mochila Vermelha.

    % A Isabelle está sentada ao lado de quem gosta de suco de Laranja.

    % Quem gosta de Hamsters vai para o Rio de Janeiro.

    % A Aline está sentada exatamente à esquerda de quem viajará para Manaus.

    % Quem vai para Florianópolis está sentada em algum lugar à direita da Aline.

    % Quem vai viajará para o Recife está sentada em um dos cantos.

    % A menina que gosta de Biologia vai viajar para o Rio de Janeiro.

    % Ao lado de quem gosta de Gatos está sentada a menina com a mochila Branca.

    % A menina que gosta de pássaros está sentada em uma das pontas.

    % Quem gosta de Hamsters está sentada ao lado de quem gosta de Cachorros.

    % Ao lado de quem tem a mochila Branca está a menina que gosta de Pássaros.

    % Quem gosta de Cachorros está sentada na extrema direita.
    Animal5=Cachorros,

    % A menina que adora Matemática está sentada ao lado de quem gosta de Cavalos.

    % Quem usa a mochila Verde adora estudar História.

    % A Aline adora estudar Português.

    % Quem gosta de Matemática está sentada exatamente à esquerda de quem gosta de Hamsters.

    % A menina da mochila Vermelha está sentada exatamente à esquerda de quem gosta de Biologia.

    % A menina da mochila Azul gosta de estudar Biologia.

    % A Aline está sentada em algum lugar entre quem vai para o Recife e quem tem a mochila Verde, nessa ordem.

    % A Beatriz está sentada no meio.
    Nome3=Beatriz,

    % A Patrícia está sentada na primeira cadeira.
    Nome1=Patricia,

    % Testando possibilidades
    nome(Nome1),
    nome(Nome2),
    nome(Nome3),
    nome(Nome4),
    nome(Nome5),
    diferentes([Nome1, Nome2, Nome3, Nome4, Nome5]),
    mochila(Mochila1),
    mochila(Mochila2),
    mochila(Mochila3),
    mochila(Mochila4),
    mochila(Mochila5),
    diferentes([Mochila1, Mochila2, Mochila3, Mochila4, Mochila5]),
    materia(Materia1),
    materia(Materia2),
    materia(Materia3),
    materia(Materia4),
    materia(Materia5),
    diferentes([Materia1, Materia2, Materia3, Materia4, Materia5]),
    animal(Animal1),
    animal(Animal2),
    animal(Animal3),
    animal(Animal4),
    animal(Animal5),
    diferentes([Animal1, Animal2, Animal3, Animal4, Animal5]),
    lugar(Lugar1),
    lugar(Lugar2),
    lugar(Lugar3),
    lugar(Lugar4),
    lugar(Lugar5),
    diferentes([Lugar1, Lugar2, Lugar3, Lugar4, Lugar5]),
    suco(Suco1),
    suco(Suco2),
    suco(Suco3),
    suco(Suco4),
    suco(Suco5),
    diferentes([Suco1, Suco2, Suco3, Suco4, Suco5]).
