% Without cut

member(X,[X|L]).
member(X,[Y|L]):- member(X,L).

% With cut
member_cut(X,[X|L]):- !.
member_cut(X,[Y|L]):- member_cut(X,L).