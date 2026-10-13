% Unions in Lists
union([X|Y],Z,W):- 
    list_member(X,Z), union(Y,Z,W).
union([X|Y],Z,[X|W]):- 
    \+ list_member(X,Z), union(Y,Z,W).
union([],Z,Z).

% List Membership

list_member(X,[X|_]). % Check in Head
list_member(X,[_|T]):- list_member(X,T). % Check in Tail