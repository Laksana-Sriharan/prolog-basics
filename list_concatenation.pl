concatenation([],L,L).
concatenation([X|L1],L2,[X|L3]):- concatenation(L1,L2,L3).