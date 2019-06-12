sum_([], 0).
sum_([H|T], X) :-
    sum_(T, X2),
    X is H+X2.

% ?- sum_([1, 2, 3], X).
% X = 6.
