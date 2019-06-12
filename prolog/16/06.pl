smallest([X], X).
smallest([H|T], H) :-
    smallest(T, M),
    H<M.
smallest([H|T], M) :-
    smallest(T, M),
    H>=M.

% ?- smallest([4,3,-1],X).
% X = -1 .
