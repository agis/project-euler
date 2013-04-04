-module(problem16).
-export([answer/0]).

answer() -> lists:sum([N - $0 || N <- integer_to_list(round(math:pow(2, 1000)))]).
