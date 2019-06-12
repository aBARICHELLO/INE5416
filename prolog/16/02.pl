insert_at_pos(X, _, [], [X]) :-
    !.
insert_at_pos(X, 0, L1, [X|L1]) :- !.
insert_at_pos(X, P, L1, L2) :-
    P1 is P-1, insert_at_pos(X, P1, T, L2), !.

% f
