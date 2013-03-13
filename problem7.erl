-module(problem7).
-export([answer/0]).

% Todo: optimize this to use Slieve of Atkins

answer() -> get_primes(1, 10001, []).

get_primes(_X, N, Acc) when length(Acc) =:= N -> Acc;
get_primes(X, N, Acc) ->
  case is_prime(X) of
    true  -> get_primes(X+1, N, [X|Acc]);
    false -> get_primes(X+1, N, Acc)
  end.

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
