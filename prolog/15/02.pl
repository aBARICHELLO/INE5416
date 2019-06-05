course(ine5416).
course(ine5417).
course(ine5418).

person(alice).
person(bob).
person(charlie).

person(daniel).

studies(alice, ine5416).
studies(bob, ine5417).
studies(charlie, ine5418).

teaches(daniel, ine5416).

student(X) :-
    person(X),
    studies(X, Y),
    course(Y).

teacher(X) :-
    person(X),
    teaches(X, Y),
    course(Y).

teaches_alumn(T, A) :-
    teaches(T, C),
    studies(A, C),
    course(C).

colleagues(X, Y) :-
    studies(X, C),
    studies(Y, C),
    course(C),
    X\==Y.
