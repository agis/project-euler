-module(problem6).
-compile(answer).

% Using sum, seq & map BIFs

answer() ->
  lists:sum(lists:seq(1, 100)) * lists:sum(lists:seq(1, 100)) -
  lists:sum(lists:map(fun(X) -> X*X end, lists:seq(1, 100))).
