% List Membership

list_member(X,[X|_]). % Check in Head
list_member(X,[_|T]):- list_member(X,T). % Check in Tail