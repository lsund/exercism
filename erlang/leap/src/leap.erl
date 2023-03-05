-module(leap).

-export([leap_year/1]).

divisible(X, N) -> abs(math:fmod(X, N)) < 0.01.

leap_year(Year) -> (divisible(Year, 4) and not divisible(Year, 100)) or divisible(Year, 400).
