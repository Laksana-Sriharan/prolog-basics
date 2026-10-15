% not(goal) is true if the goal is false.

not(P):- P, !, fail; true.