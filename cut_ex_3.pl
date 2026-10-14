% Add element in the list without duplicating

add(X,L,L):- member(X,L).
add(X,L,[X|L]).

% Add element in the list without duplicating (Using Cut)

add_cut(X,L,L):- member(X,L), !.
add_cut(X,L,[X|L]).