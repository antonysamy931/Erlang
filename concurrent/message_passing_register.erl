-module(message_passing_register).
-compile(export_all).

ping(0) ->
    pong ! finished,
    io:format("Ping finished~n");
    
ping(N) ->
    pong ! {ping, self()},
    receive
        pong -> 
            io:format("Ping received pong~n",[]) 
    end,    
    ping(N-1).

pong() ->
    receive
        finished ->
            io:format("Pong finished~n");
        {ping, Ping_PID} ->
            io:format("Pong received ping~n",[]),
            Ping_PID ! pong,
            pong()         
    end.

start() ->
    register(pong, spawn(message_passing_register,pong,[])),
    spawn(message_passing_register,ping,[3]).               