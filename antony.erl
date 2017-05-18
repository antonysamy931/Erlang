-module(antony).
-import(io,[format/1,format/2]).
-import(atomstut,[converts/2]).
-export([display/0]).

display() ->     
    X = converts(10,inch),
    format("~w~n",[X]),
    format("Antony create first erlang program module~n").    