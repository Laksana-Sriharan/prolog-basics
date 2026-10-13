% Intersection in Lists

intersection([X|Y],M,[X|Z]):- list_member(X,M), intersection(Y,M,Z).
intersection([X|Y],M,Z):- \+ list_member(X,M), intersection(Y,M,Z).
intersection([],M,[]).

% List Membership

list_member(X,[X|_]). % Check in Head
list_member(X,[_|T]):- list_member(X,T). % Check in Tail