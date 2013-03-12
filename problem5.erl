-module(problem5).
-export([answer/0]).

% Start trying from 2520 since the problem gives us this hint
%   although it's the same if we start from 1, in terms of speed

answer() -> answer(2520).

answer(X) when (X rem 20 =:= 0)
            andalso (X rem 19 =:= 0)
            andalso (X rem 18 =:= 0)
            andalso (X rem 17 =:= 0)
            andalso (X rem 16 =:= 0)
            andalso (X rem 15 =:= 0)
            andalso (X rem 14 =:= 0)
            andalso (X rem 13 =:= 0)
            andalso (X rem 12 =:= 0)
            andalso (X rem 11 =:= 0)
            andalso (X rem 10 =:= 0)
            andalso (X rem 9 =:= 0)
            andalso (X rem 8 =:= 0)
            andalso (X rem 7 =:= 0)
            andalso (X rem 6 =:= 0)
            andalso (X rem 5 =:= 0)
            andalso (X rem 4 =:= 0)
            andalso (X rem 3 =:= 0)
            andalso (X rem 2 =:= 0)
            andalso (X rem 1 =:= 0) -> X;
answer(X) -> answer(X+1).
