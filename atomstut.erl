-module(atomstut).
-export([converts/2]).

converts(N, inch) ->
	N / 2.54;
	
converts(M, centimeter) ->
	M * 2.54.