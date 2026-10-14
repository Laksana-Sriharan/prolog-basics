% Find maximum without cut
max(X,Y,X):- X>=Y.
max(X,Y,Y):- X<Y.

% Find maximum with cut

max_cut(X,Y,Max):- X>=Y, !, Max = X; Max = Y.