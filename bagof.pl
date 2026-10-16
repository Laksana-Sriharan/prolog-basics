% bagof/3 - is similar to setof/3 but items are not in order and may have duplicates.

age(peter, 7).
age(ann, 5).
age(pat, 8).
age(tom, 5).
age(ann, 5).

/* bagof/3 queries

?- bagof(Child, age(Child,Age), Results).
Age = 5,
Results = [ann, tom, ann] ;
Age = 7,
Results = [peter] ;
Age = 8,
Results = [pat].

*/
