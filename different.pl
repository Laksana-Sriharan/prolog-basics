% different relation - if X and Y are the same it fails otherwise the goal is true.

different(X,Y):- X=Y, !, fail; true.