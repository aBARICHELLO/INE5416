% if x > y && x > z then x else if y > x && y > z then y else z)
biggest(A, B, C, A) :-
    A>B,
    A>C.
biggest(A, B, C, B) :-
    B>A,
    B>C.
biggest(A, B, C, C) :-
    C>A,
    C>B.

% ?- biggest(1,2,3, X).
% X = 3.
