distance3D(point(X1, Y1, Z1), point(X2, Y2, Z2), Dist) :-
    Dist is sqrt((X1-X2)*(X1-X2)+(Y1-Y2)*(Y1-Y2)+(Z1-Z2)*(Z1-Z2)).
