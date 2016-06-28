-module(pingpong).
-compile(export_all).
 
play(N) when is_integer(N), N > 0 ->
    Pong = spawn(fun pong/0),    
    ping(N, Pong).
 
ping(0,Pong) ->
    Pong ! exit,
    ok;
ping(N, Pong) ->
    io:format("ping hi~n"),
    Pong ! {self(), ping},
    receive
	pong ->
	    io:format("~w : pong [~w]~n", [self(), N])
    end,
    io:format("ping bye~n"),
    ping(N - 1, Pong).
 
pong() ->
    io:format("hi~n"),
    receive
	{From, ping} ->        
	    io:format("~w : ping~n", [self()]),
	    From ! pong,
	    pong();
	exit ->        
	    ok
    end.