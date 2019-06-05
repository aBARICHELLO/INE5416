abso(X, X) :-
    X>=0.
abso(X, N2) :-
    X<0,
    N2 is -X.

% ?- abso(2, X).
% X = 2 .

% ?- abso(-2, X).
% X = 2.
