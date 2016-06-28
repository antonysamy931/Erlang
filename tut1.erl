-module tut1.
-export([fac/1,multiple/2]).

fac(1) -> 
	1;

fac(N) ->
	N * fac(N-1).
	
multiple(X,Y) ->
	X * Y.