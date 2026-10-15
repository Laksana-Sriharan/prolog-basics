% var/1 - suceeds if X is currently an uninstantiated variable.

?- var(X).
true.

?- X=5, var(X).
false.

?- var([X]).
false.

% Conversely, nonvar/1 suceeds if X is not a variable or already instantiated

?- nonvar(X).
false.

?- X = 5, nonvar(X).
X = 5.

?- nonvar([X]).
true.

% atom/1 - suceeds if it is a non variable with 0 arguments and not a number

?- atom(paul).
true.

?- X = paul, atom(X).
X = paul.

?- atom([]).
false.

% number/1 - suceeds for any number

?- number(X).
false.

?- X = 5, number(X).
X = 5.

?- number(3.46).
true.

% integer/1 and float/1

?- integer(3).
true.

?- integer(-3).
true.

?- integer(3.46).
false.

?- float(3.47).
true.

?- float(3).
false.

?- float(-3.47).
true.

% if atom/1 is too specific then use atomic/1 which accepts both atoms and numbers.

?- atom(4).
false.

?- atomic(4).
true.

% if atomic/1 fails it should be either uninstantiated variable (can be tested with var/1) or a compund term.

?- compound([]).
false.

?- compound([a]).
true.

?- compound(b(a)).
true.

% ground(X) - works if does not contain uninstantiated, also checks inside compound terms.

