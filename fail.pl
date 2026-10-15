% Negation as Failure

animal(tiger).
animal(lion).
animal(dog).
animal(cat).
animal(mouse).
animal(zebra).

snake(cobra).
snake(python).

% A person likes animals but not snakes.

likes(mary,X):- snake(X), !, fail.
likes(mary,X):- animal(X).
