genitor(fred, maria).
genitor(pam, bob).
genitor(tom, bob).
genitor(pam, liz).
genitor(tom, liz).

genitor(bob, ana).
genitor(bob, pat).
genitor(bia, ana).
genitor(bia, pat).

genitor(liz, bill).
genitor(trump, bill).

genitor(mary, tim).
genitor(trump, tim).

genitor(pat, jim).
genitor(kim, jim).

mulher(maria).
mulher(pam).
mulher(bia).
mulher(liz).
mulher(mary).
mulher(ana).
mulher(pat).

homem(fred).
homem(tom).
homem(bob).
homem(trump).
homem(kim).
homem(bill).
homem(tim).
homem(jim).

idade(fred, 56).
idade(maria, 30).
idade(pam, 98).
idade(tom, 70).
idade(bob, 45).
idade(bia, 43).
idade(liz, 47).
idade(trump, 54).
idade(mary, 51).
idade(ana, 12).
idade(pat, 25).
idade(kim, 27).
idade(bill, 15).
idade(tim, 17).
idade(jim, 1).

% Solteiro - Não possui filhos
% Casado - Possui filhos

%%% A
solteiro(X) :-
    not(genitor(X, _)).

% ?- solteiro(jim).
% true.

% ?- solteiro(kim).
% false.

%%% B
avo(AvoX, X) :-
    genitor(GenitorX, X),
    genitor(AvoX, GenitorX),
    homem(AvoX).

avos([]).
avos([H|T]) :-
    avo(H, _),
    avos(T).

%%% C
ascendente(X, Y) :-
    genitor(X, Y).
ascendente(X, Y) :-
    genitor(X, Z),
    ascendente(Z, Y).

descendente(X, Y) :-
    genitor(Y, X).
descendente(X, Y) :-
    genitor(Z, X),
    descendente(Y, Z).

cunhado(X, Y) :-
    casados(Y, A),
    irmaos(X, A).
cunhados(X, Y) :-
    (   cunhado(X, Y)
    ;   cunhado(Y, X)
    ).

irmao(X, Y) :-
    genitor(PaiAmbos, X),
    genitor(PaiAmbos, Y),
    X\==Y,
    homem(X).

irma(X, Y) :-
    genitor(PaiAmbos, X),
    genitor(PaiAmbos, Y),
    X\==Y,
    mulher(X).

irmaos(X, Y) :-
    (   irmao(X, Y)
    ;   irma(X, Y)
    ),
    X\==Y.

casados(X, Y) :-
    genitor(X, Z),
    genitor(Y, Z).

semParentesco(X, Y) :-
    not(ascendente(X, Y)),
    not(descendente(X, Y)),
    not(casados(X, Y)),
    not(cunhados(X, Y)).

% ?- semParentesco(liz, bill).
% false.

% ?- semParentesco(liz, maria).
% true.

%%% D
maisVelha(X, Y) :-
    idade(X, I1),
    idade(Y, I2),
    I1>I2.

% ?-maisVelha(fred, maria).
% true.

%%% E
% Não possuem filhos que tem menos de 17 anos.
% Inclui grupo de todos os solteiros.
% Inclui grupo de casados com filhos maiores de 17.
filhoMenor(X) :-
    genitor(X, Y),
    idade(Y, I),
    I=<17.

% findall(A, ((idade(A,_), solteiro(A)); genitor(A,_), not(filhoMenor(A))), L),sort(L, Res).

% ?- findall(A, ((idade(A,_), solteiro(A)); genitor(A,_), not(filhoMenor(A))), L),sort(L, Res).
% L = [maria, ana, bill, tim, jim, fred, pam, tom, pam|...],
% Res = [ana, bill, fred, jim, maria, pam, tim, tom].

%%% F
% Pessoa casada entre 30 e 70 anos.

% setof(X, (idade(X, I), I >= 30, I =< 70, not(solteiro(X))), P).

% ?- setof(X, (idade(X, I), I >= 30, I =< 70, not(solteiro(X))), P).
% I = 43,
% P = [bia] ;
% I = 45,
% P = [bob] ;
% I = 47,
% P = [liz] ;
% I = 51,
% P = [mary] ;
% I = 54,
% P = [trump] ;
% I = 56,
% P = [fred] ;
% I = 70,
% P = [tom].

%%% G
% Agrupar ascendentes de todos os homens

% bagof(X, (ascendente(X, P), homem(P)), R).

% ?- bagof(X, (ascendente(X, P), homem(P)), R).
% P = bill,
% R = [liz, trump, pam, tom] ;
% P = bob,
% R = [pam, tom] ;
% P = jim,
% R = [pat, kim, pam, tom, bob, bia] ;
% P = tim,
% R = [mary, trump].
