mdc(X, Y, Res) :-
    Res is X mod Y,
    Y mod Res=:=0.
mdc(X, Y, Res) :-
    R is X mod Y,
    mdc(Y, R, Res).

% ?- mdc(4,6,X).
% X = 2 .
