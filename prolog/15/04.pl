triangle(X, Y, Z) :-
    X<Y+Z,
    Y<X+Z,
    Z<X+Y,
    X>abs(Y-Z),
    Y>abs(X-Z),
    Z>abs(X-Y).

% triangle(10, 5, 4).
% true.

% triangle(4, 8, 9).
% false.
