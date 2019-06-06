% (if (or (= n 1) (= n 2))
% 1
% (+ (fib (- n 1)) (fib (- n 2)))
% )
fib(1, 1).
fib(2, 1).
fib(N, K) :-
    N1 is N-1,
    fib(N1, K1),
    N2 is N-2,
    fib(N2, K2),
    K is K1+K2.
