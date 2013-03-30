-module(problem4).
-export([answer/0]).

answer() -> products(999, 999, []).

products(A, B, L) when (A == 100), (B == 100) -> lists:max(L);
products(A, B, L) when (B == 99) -> products(A-1, 999, L);
products(A, B, L) ->
  case is_palindrome(A*B) of
    true  -> products(A, B-1, [A*B|L]);
    false -> products(A, B-1, L)
  end.

is_palindrome(X) -> lists:reverse(int_to_list(X)) =:= int_to_list(X).

int_to_list(X) -> [N - $0 || N <- integer_to_list(X)].
