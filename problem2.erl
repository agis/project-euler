-module(problem2).
-export([answer/0]).
-import(lists, [sum/1]).

answer() -> sum(even(fib([1,0]))).

even(L) -> [X || X <- L, X rem 2 =:= 0].

fib([H,B|T]) when H+B =< 4000000 -> fib([H+B,H,B|T]);
fib(L) -> L.

