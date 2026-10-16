% setof/3 is similar to findall/3 but the result has no duplicates and items are ordered

age(peter, 7).
age(ann, 5).
age(pat, 8).
age(tom, 5).
age(ann, 5).


/* Queries

?- setof(Child, age(Child,Age), Results).
Age = 5,
Results = [ann, tom] ;
Age = 7,
Results = [peter] ;
Age = 8,
Results = [pat].

?- setof(Child/Age, age(Child,Age), Results).
Results = [ann/5, pat/8, peter/7, tom/5].

?- setof(Age/Children, setof(Child, age(Child,Age), Children), AllResults).AllResults = [5/[ann, tom], 7/[peter], 8/[pat]].

?- setof(Child, Age^age(Child,Age), Results).
Results = [ann, pat, peter, tom].

*/