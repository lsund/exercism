-module(raindrops).

-export([convert/1, pling/1]).

pling(X) -> case (round(X) rem 3) == 0.0 of true ->  "Pling"; false -> "" end.
plang(X) -> case (round(X) rem 5) == 0.0 of true ->  "Plang"; false -> "" end.
plong(X) -> case (round(X) rem 7) == 0.0 of true ->  "Plong"; false -> "" end.

show_number(Number) ->
  case (length(pling(Number)) > 0) or (length(plang(Number)) > 0) or (length(plong(Number)) > 0) of
    true -> "";
    false -> integer_to_list(Number)
  end.

convert(Number) -> lists:concat([pling(Number), plang(Number), plong(Number), show_number(Number)]).
