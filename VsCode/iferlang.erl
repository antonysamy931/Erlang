-module(iferlang).
-export([oh_god/1,help_me/1]).

oh_god(N) ->
    if 
        N =:= 2 ->
            true;
        true -> false  %% this is Erlang's if's 'else!'                  
    end. 
        
help_me(Animal) ->
    Talk = if
        Animal == cat -> "meow";
        Animal == dog -> "bark";
        Animal == beef -> "mooo";
        true -> "abcd"
    end,
    {Animal, "says "++Talk++"!"}.
