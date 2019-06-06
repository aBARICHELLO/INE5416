mdc(X, Y, Res) :-
    Res is X mod Y,
    Y mod Res=:=0.
mdc(X, Y, Res) :-
    R is X mod Y,
    mdc(Y, R, Res).

mmc(X, Y, Res) :-
    mdc(X, Y, MDC),
    Res is Y*(X/MDC).
