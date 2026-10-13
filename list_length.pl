% Length of a List

list_length([],0). 
list_length([_|T],N):- list_length(T,M), N is M+1. 