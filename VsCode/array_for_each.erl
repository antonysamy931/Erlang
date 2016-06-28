-module(array_for_each).
-compile(export_all).

foreach(M) ->
    lists:foreach(fun(N)->
            io:format("~p~n",[N])
        end,
    M).    
