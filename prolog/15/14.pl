operate(+, X, Y, Res) :-
    Res is X+Y.
operate(-, X, Y, Res) :-
    Res is X-Y.
operate(*, X, Y, Res) :-
    Res is X*Y.
operate(/, X, Y, Res) :-
    Res is X/Y.

% ?- operate(/,3,2,X).
% X = 1.5.
