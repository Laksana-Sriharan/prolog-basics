% Collection of all solutions as a list

% findall/3

?- member(X, [1,2,3,4]).
X = 1 ;
X = 2 ;
X = 3 ;
X = 4.

?- findall(X, member(X, [1,2,3,4]), Results).
Results = [1, 2, 3, 4].

?- findall(X, (member(X, [1,2,3,4]), X>2), Results).
Results = [3, 4].

?- findall(X/Y, (member(X, [1,2,3,4]), Y is X * X), Results).
Results = [1/1, 2/4, 3/9, 4/16].

