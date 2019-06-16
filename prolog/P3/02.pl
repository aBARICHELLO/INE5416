% Para resolver o problema, vamos criar uma nova instância com uma lista temporária adicional e uma cópia da lista passada
repetidos(L1, N, L2) :-
    repetidos(L1, N, LR, [], L1),
    L2=LR.

% Esse é o passo base, onde tornamos o retorno igual a lista temporária
repetidos([], _, LR, LParcial, _) :-
    LR=LParcial.

% Aqui é verificado se o número de ocorrências de cada cabeça na lista original
% está entre 1 e N, caso esteja, é adicionado na lista temporária
repetidos([H|T], N, LR, L3, LOriginal) :-
    ocorrencias(LOriginal, H, NOcorrencias),
    (   NOcorrencias=<N,
        not(estaNaLista(L3, H)),
        inserirElemento(H, L3, LParcial),
        repetidos(T, N, LRA, LParcial, LOriginal),
        LR=LRA
    ;   repetidos(T, N, LRA, L3, LOriginal),
        LR=LRA
    ).

% Funções adicionais
estaNaLista([H|T], N) :-
    (   N=:=H
    ;   estaNaLista(T, N)
    ).

ocorrencias([], _, N) :-
    N is 0.
ocorrencias([H|T], X, N) :-
    (   H=:=X,
        ocorrencias(T, X, R),
        N is R+1
    ;   ocorrencias(T, X, R),
        N is R
    ).

inserirElemento(X, L, [X|L]).
