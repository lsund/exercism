-module(collatz_conjecture).

-export([steps/1]).

collatz(1.0)  -> [];
collatz(X) when X < 0 -> badarg;
collatz(X) when X < 0.1 -> badarg;
collatz(X) ->
  case (round(X) rem 2) == 0.0 of
    true -> [X | collatz(X / 2)];
    false -> [X | collatz(3 * X + 1)]
  end.


steps(N) -> length(collatz(N)).
