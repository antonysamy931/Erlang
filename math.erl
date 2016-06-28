-module(math).

-export([add/2, sub/2, mul/2, division/2, convert/2]).

add(A,B) -> 
	A+B.

sub(A,B) -> 
	A-B.

mul(A,B) -> 
	A*B.

division(A,B) -> 
	A/B.

convert(M, inch) ->
    M / 2.54;

convert(N, cen) ->
	N * 2.54.