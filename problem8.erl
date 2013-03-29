-module(problem8).
-compile(export_all).

coo([_]) -> 0;
coo(L) ->
  [A,B|T] = L,
  [A*B|coo([B|T])].
