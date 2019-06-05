course(ine5416).
course(ine5417).
course(ine5418).

person(alice).
person(bob).
person(charlie).

person(daniel).

studies(alice, ine5416).
studies(bob, ine5416).
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

colleague(X, Y) :-
    studies(X, C),
    studies(Y, C),
    course(C),
    X\==Y.

% Quais s ̃ao todas as disciplinas lecionadas pelo professorx?  (substitua x por algum nome deprofessor no seu programa
% teaches(daniel, X).

% Quais s ̃ao todos os alunos do professorx?  (substitua x por algum nome de professor no seuprograma)
% teaches_alumn(daniel, X).

% Quais s ̃ao todos os amigos do estudantey?  (substitua y por algum nome de aluno no seuprograma)
% colleague(alice, X).

% a & b s ̃ao amigos?
% colleague(alice, bob).
