% functor(Term, F, N) - is true if F is the name of the principle functor of Term and N is the arity of F.
% arg(N, Term, A) - is true if A is the Nth argument of the Term

?- functor(t(f(x),a,T), Func, N).
Func = t,
N = 3.

?- arg(1,t(t(X),[]), A).
A = t(X).

?- arg(2,t(t(X),[]), A).
A = [].
 
?- functor(D,date,3), arg(1,D,11), arg(2,D,oct), arg(3,D,2005).
D = date(11, oct, 2005).

?- f(a,b) =.. L.
L = [f, a, b].

?- T =.. [is_blue,sam,today].
T = is_blue(sam, today).

?- f(2,3) =.. [F,N|Y], N1 is N*3, L=..[F,N1|Y].
F = f,
N = 2,
Y = [3],
N1 = 6,
L = f(6, 3).