-module(problem20).
-compile(export_all).

answer() -> lists:sum([N - $0 || N <- integer_to_list(factorial(100))]).

factorial(1) -> 1;
factorial(N) when N > 1 ->
  N * factorial(N-1).

% Almost the same performance-wise, so use the direct-recursive cause it's prettier
factorial_acc(0, Acc) -> Acc;
factorial_acc(N, Acc) ->
  factorial_acc(N-1, N*Acc).
