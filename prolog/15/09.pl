% (x && not y) || (not x && y)
% ,(and)
% ;(or)
% not
xorr(X, Y) :-
    (   X,
        not(Y)
    ;   not(X),
        Y
    ).

% ?- xorr(true, false).
% true .

% ?- xorr(false, false).
% false.
