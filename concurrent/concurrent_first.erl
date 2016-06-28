-module(concurrent_first).
-export([say_something/2,start/0]).

say_something(What, 0) ->
    done;

say_something(What, Times) ->
    io:format("~p~n",[What]),
    say_something(What,Times-1).
    
start() ->
    spawn(concurrent_first,say_something,[hello,3]),
    spawn(concurrent_first,say_something,[good_bye,3]).    