-module(tuplestut).
-export([convert/1]).

convert({centimeter, X}) ->
	{inch, X/2.54};
convert({inch, Y}) ->
	{centimeter, Y*2.54}.