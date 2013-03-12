-module(problem6).
-export([answer/0]).
-import(lists, [seq/2, sum/1, map/2]).

answer() ->
  sum(seq(1, 100)) * sum(seq(1, 100)) -
  sum(map(fun(X) -> X*X end, seq(1, 100))).
