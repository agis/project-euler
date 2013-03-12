-module(problem1).
-export([answer/0]).

% lists:sum & lists:seq are re-implemented here for the shake of ...

answer() -> sum(multiples(seq(1, 999))).

seq(Max, Max) -> [Max];
seq(Min, Max) -> [Min|seq(Min+1, Max)].

multiples(L)  -> [X || X <- L, (X rem 3) == 0 orelse (X rem 5) == 0].

sum([H|T]) -> H + sum(T);
sum([]) -> 0.
