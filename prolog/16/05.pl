sum_([], 0).
sum_([H|T], X) :-
    sum_(T, X2),
    X is H+X2.

len_([], 0).
len_([_|T], X) :-
    len_(T, X2),
    X is 1+X2.

list_average(L, X) :-
    sum_(L, SUM),
    len_(L, LEN),
    X is SUM/LEN.

% ?- list_average([1,1,1],X).
% X = 1.
