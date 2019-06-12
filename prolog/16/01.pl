position(_, [], P) :-
    P is 0.
position(X, [X|_], P) :-
    P is X.
position(X, [_|T], P) :-
    position(X, T, P1),
    P is P1+1.

% ?- position(1, [0, 1], P).
% P = 2 .
