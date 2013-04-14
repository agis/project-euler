-module(problem3).
-export([answer/0]).

answer() -> lists:max(prime_factors(600851475143)).

prime_factors(X) -> [Z || Z <- factors(X), is_prime(Z)].

factors(X) -> [F || F <- lists:seq(2, round(math:sqrt(X+1))), (X rem F) =:= 0]. 

is_prime(X) when (X =:= 2) or (X =:= 3) -> true;
is_prime(X) when (X =< 1)
            orelse ((X rem 2) =:= 0)
            orelse ((X rem 3) =:= 0) -> false;
is_prime(X) -> last_check(X, 3).

last_check(X, X) -> true;
last_check(X, N) ->
  case ((X rem N) =:= 0) of
    true  -> false;
    false -> last_check(X, N+2)
  end.
