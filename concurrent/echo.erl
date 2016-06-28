-module(echo).
-compile(export_all).

go() ->
    Pid2 = spawn(echo, loop, []),
    Pid2 ! {self(), hello},    
    receive
        {Pid2, Msg} ->
            io:format("P1 ~w~n",[Msg])
    end,
    Pid2 ! stop.    
    
loop() ->    
    receive
        {From, Msg} ->            
            From ! {self(), Msg};            
            % loop();
        stop ->
           true
    end.