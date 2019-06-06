mdc2(X, Y, Res) :-
    Res is X mod Y,
    Y mod Res=:=0.
mdc2(X, Y, Res) :-
    R is X mod Y,
    mdc2(Y, R, Res).

mdc(X, Y, Z, Res) :-
    mdc2(X, Y, MDC1),
    mdc2(MDC1, Z, Res).
