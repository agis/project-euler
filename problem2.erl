-module(problem2).
-export([answer/0]).

answer() -> sum(even(fib([1,0]))).

fib([H,B|T]) when H+B =< 4000000 -> fib([H+B,H,B|T]);
fib(L) -> L.

even(L) -> [X || X <- L, (X rem 2) =:= 0].

sum([H|T]) -> H + sum(T);
sum([]) -> 0.
