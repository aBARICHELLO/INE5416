numbers_to_words([], []) :-
    !.
numbers_to_words([0|T0], [zero|T1]) :-
    numbers_to_words(T0, T1).
numbers_to_words([1|T0], [um|T1]) :-
    numbers_to_words(T0, T1).
numbers_to_words([2|T0], [dois|T1]) :-
    numbers_to_words(T0, T1).
numbers_to_words([3|T0], [tres|T1]) :-
    numbers_to_words(T0, T1).
numbers_to_words([4|T0], [quatro|T1]) :-
    numbers_to_words(T0, T1).
numbers_to_words([5|T0], [cinco|T1]) :-
    numbers_to_words(T0, T1).
numbers_to_words([6|T0], [seis|T1]) :-
    numbers_to_words(T0, T1).
numbers_to_words([7|T0], [sete|T1]) :-
    numbers_to_words(T0, T1).
numbers_to_words([8|T0], [oito|T1]) :-
    numbers_to_words(T0, T1).
numbers_to_words([9|T0], [nove|T1]) :-
    numbers_to_words(T0, T1).
