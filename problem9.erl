-module(problem9).
-export([answer/0]).
-import(lists, [seq/2]).

answer() ->
  [A*B*C || A <- seq(1, 350), B <- seq(2, 450), C <- seq(3, 998), A*A + B*B =:= C*C, A + B + C =:= 1000].
