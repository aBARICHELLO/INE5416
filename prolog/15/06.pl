power(X, 0, 1).
power(X, 1, X).
power(X, Y, Res) :-
    Y1 is Y - 1,
    power(X, Y1, Res1),
    Res is X * Res1.