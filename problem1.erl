-module(problem1).
-export([answer/0]).
-import(lists, [seq/2, sum/1]).

answer() -> sum(multiples(seq(1, 999))).

multiples(L)  -> [X || X <- L, (X rem 3) == 0 orelse (X rem 5) == 0].
